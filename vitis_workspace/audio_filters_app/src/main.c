#include "xparameters.h"
#include "xil_printf.h"
#include "xgpio.h"
#include "xil_types.h"
#include "xaxidma.h"
#include "xiic.h"
#include "xil_io.h"
#include "xintc.h"
#include <xaxidma_hw.h>
#include <xiic_l.h>
#include <xil_cache.h>
#include <xil_exception.h>
#include <xstatus.h>

XAxiDma AxiDma;
XIic i2c;
XGpio switches;
XIntc Intc;
volatile int rx_done = 0;

//DDR Adresses
#define SAMPLES_PER_FRAME   1024
#define DDR_BASE_ADDR       XPAR_MIG_0_BASEADDRESS
#define RX_BUFF_BASE        DDR_BASE_ADDR
#define TX_BUFF_BASE        (DDR_BASE_ADDR + SAMPLES_PER_FRAME * 4) // 4 bytes / sample (u32)

#define I2C_AUDIO_ADDR 0x38

u8 Adau1761_Init_Sequence[][3] = {
    {0x40, 0x15, 0x01}, // R15_SERIAL_PORT_CONTROL_0
    {0x40, 0x16, 0x00}, // R16_SERIAL_PORT_CONTROL_1
    {0x40, 0x17, 0x00}, // R17_CONVERTER_CONTROL_0
    {0x40, 0xF8, 0x00}, // R64_SERIAL_PORT_SAMPLING_RATE
    {0x40, 0x19, 0x13}, // R19_ADC_CONTROL
    {0x40, 0x2A, 0x03}, // R36_DAC_CONTROL_0
    {0x40, 0x29, 0x03}, // R35_PLAYBACK_POWER_MANAGEMENT
    {0x40, 0xF2, 0x01}, // R58_SERIAL_INPUT_ROUTE_CONTROL
    {0x40, 0xF9, 0x7F}, // R65_CLOCK_ENABLE_0
    {0x40, 0xFA, 0x03}, // R66_CLOCK_ENABLE_1
    {0x40, 0x20, 0x03}, // R26_PLAYBACK_LR_MIXER_LEFT_LINE_OUTPUT_CONTROL
    {0x40, 0x22, 0x01}, // R28_PLAYBACK_LR_MIXER_MONO_OUTPUT_CONTROL
    {0x40, 0x21, 0x09}, // R27_PLAYBACK_LR_MIXER_RIGHT_LINE_OUTPUT_CONTROL
    {0x40, 0x25, 0xE6}, // R31_PLAYBACK_LINE_OUTPUT_LEFT_VOLUME_CONTROL
    {0x40, 0x26, 0xE6}, // R32_PLAYBACK_LINE_OUTPUT_RIGHT_VOLUME_CONTROL
    {0x40, 0x27, 0x03}, // R33_PLAYBACK_MONO_OUTPUT_CONTROL
    {0x40, 0x10, 0x01}, // R10_RECORD_MICROPHONE_BIAS_CONTROL
    {0x40, 0x28, 0x00}, // R34_PLAYBACK_POP_CLICK_SUPPRESSION
    {0x40, 0x23, 0xE7}, // R29_PLAYBACK_HEADPHONE_LEFT_VOLUME_CONTROL
    {0x40, 0x24, 0xE7}, // R30_PLAYBACK_HEADPHONE_RIGHT_VOLUME_CONTROL
    {0x40, 0x0A, 0x01}, // R4_RECORD_MIXER_LEFT_CONTROL_0
    {0x40, 0x0B, 0x0D}, // R5_RECORD_MIXER_LEFT_CONTROL_1
    {0x40, 0x0C, 0x01}, // R6_RECORD_MIXER_RIGHT_CONTROL_0
    {0x40, 0x0D, 0x05}, // R7_RECORD_MIXER_RIGHT_CONTROL_1
    {0x40, 0x0E, 0x03}, // R8_LEFT_DIFFERENTIAL_INPUT_VOLUME_CONTROL
    {0x40, 0x0F, 0x03}, // R9_RIGHT_DIFFERENTIAL_INPUT_VOLUME_CONTROL
    {0x40, 0x1C, 0x21}, // R22_PLAYBACK_MIXER_LEFT_CONTROL_0
    {0x40, 0x1D, 0x00}, // R23_PLAYBACK_MIXER_LEFT_CONTROL_1
    {0x40, 0x1E, 0x41}, // R24_PLAYBACK_MIXER_RIGHT_CONTROL_0
    {0x40, 0x1F, 0x00}, // R25_PLAYBACK_MIXER_RIGHT_CONTROL_1
    {0x40, 0xF3, 0x01}, // R59_SERIAL_OUTPUT_ROUTE_CONTROL
    {0x40, 0xF4, 0x00}, // R60_SERIAL_DATA_GPIO_CONGIURATION
};

int AudioWriteRegister(u8 RegHigh, u8 RegLow, u8 Data) {
    u8 SendBuffer[3];
    SendBuffer[0] = RegHigh;
    SendBuffer[1] = RegLow;
    SendBuffer[2] = Data;
    int sent_bytes = XIic_Send(XPAR_XIIC_0_BASEADDR, I2C_AUDIO_ADDR, SendBuffer, 3, XIIC_STOP);
    if(sent_bytes == 3) 
        return XST_SUCCESS;
    else
        return XST_FAILURE;
}

int ConfigAndInit_DMA(){
    XAxiDma_Config* Cfg_Ptr = XAxiDma_LookupConfig(XPAR_AXI_DMA_0_BASEADDR);
    if(!Cfg_Ptr)
    {
        xil_printf("Unable to find DMA configuration.\r\n");
        return XST_FAILURE;
    }
    
    int status = XAxiDma_CfgInitialize(&AxiDma, Cfg_Ptr);
    if(status != XST_SUCCESS)
    {
        xil_printf("Unable to initialize DMA engine.\r\n");
        return XST_FAILURE;
    }
    
    XAxiDma_IntrEnable(&AxiDma, XAXIDMA_IRQ_IOC_MASK, XAXIDMA_DEVICE_TO_DMA);
    return XST_SUCCESS;
}

int Send_i2c_init_sequence(u8 sequence [] [3], int no_commands)
{
    for(int i = 0; i < no_commands; i++)
    {
        int status = AudioWriteRegister(sequence[i][0],
                                        sequence[i][1],
                                        sequence[i][2]);
        if(status != XST_SUCCESS)
        {
            xil_printf("Failed to send the I2C command: %x, %x, %x",
                                                        sequence[i][0],
                                                        sequence[i][1],
                                                        sequence[i][2]);
            return XST_FAILURE;
        }
    }
    return XST_SUCCESS;
}

void DMA_RX_Handler(void *CallbackRef)
{
    XAxiDma *AxiDmaInst = (XAxiDma *)CallbackRef;
    u32 IrqStatus;

    IrqStatus = XAxiDma_IntrGetIrq(AxiDmaInst, XAXIDMA_DEVICE_TO_DMA);
    
    XAxiDma_IntrAckIrq(AxiDmaInst, IrqStatus, XAXIDMA_DEVICE_TO_DMA); //interrupt acknowledge
    
    rx_done = 1;
}

int Init_INTC()
{
    int status = XIntc_Initialize(&Intc, XPAR_MICROBLAZE_RISCV_0_AXI_INTC_BASEADDR);
    if(status == XST_FAILURE)
    {
        xil_printf("Unable to initialize Interrupt Controller.\r\n");
        return XST_FAILURE;
    }
    
    status = XIntc_SelfTest(&Intc);
    if(status == XST_FAILURE)
    {
        xil_printf("Interrupt Controller Self Test failed.\r\n");
        return XST_FAILURE;
    }
    
    status = XIntc_Connect(&Intc, XPAR_FABRIC_AXI_DMA_0_INTR, (XInterruptHandler)DMA_RX_Handler, &AxiDma);
    if(status == XST_FAILURE)
    {
        xil_printf("Unable to connect interrupt handler to DMA.\r\n");
        return XST_FAILURE;
    }

    status = XIntc_Start(&Intc, XIN_REAL_MODE);
    if(status == XST_FAILURE)
    {
        xil_printf("Unable to start interrupt controller.\r\n");
        return XST_FAILURE;
    }
    
    XIntc_Enable(&Intc, XPAR_FABRIC_AXI_DMA_0_INTR);

    Xil_ExceptionInit();
    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler)XIntc_InterruptHandler, &Intc);
    Xil_ExceptionEnable();
    return XST_SUCCESS;
}

int main() {
    // sending the i2c init sequence
    int no_init_cmds = sizeof(Adau1761_Init_Sequence) / sizeof(Adau1761_Init_Sequence[0]);
    Send_i2c_init_sequence(Adau1761_Init_Sequence, no_init_cmds);
    
    Xil_Out32(XPAR_D_AXI_I2S_AUDIO_0_BASEADDR, 1);
    //Initializing the DMA engine
    ConfigAndInit_DMA();
    //Initializing the Interrupt Controller
    Init_INTC();
    
    xil_printf("System successfully initialized.\r\n");

    Xil_DCacheDisable();
    XAxiDma_SimpleTransfer(&AxiDma, (UINTPTR)RX_BUFF_BASE, SAMPLES_PER_FRAME * 4, XAXIDMA_DEVICE_TO_DMA);

    while(1)
    {    if(rx_done == 1)
        {
            rx_done = 0;
            
            int* rx_buffer_ptr = (int*)RX_BUFF_BASE;
            int current_sample = rx_buffer_ptr[0];
            xil_printf("Sample: %d\r\n", current_sample);
            XAxiDma_SimpleTransfer(&AxiDma, (UINTPTR)RX_BUFF_BASE, SAMPLES_PER_FRAME * 4, XAXIDMA_DEVICE_TO_DMA);
        }
    }
}

