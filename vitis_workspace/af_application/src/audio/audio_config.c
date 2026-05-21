#include "audio_config.h"
#include "PmodOLED.h"
#include "xparameters.h"
#include "xiic.h"
#include <xil_printf.h>
#include <xstatus.h>
#include "sleep.h"

#include "../oled/oled.h"

volatile int volume = 100;

u8 Adau1761_Init_Sequence[][2] = {
    // clocks
    {R0_CLOCK_CONTROL, 0x01},                                  // Clock control - core clock enabled (bit 0 = 1)
    {R65_CLOCK_ENABLE_0, 0x7F},                                // R65 - Clock enable 1
    {R66_CLOCK_ENABLE_1, 0x03},                                // R66 - Clock enable 2
    
    {R17_CONVERTER_CONTROL_0, 0x00},                           // Converter control - 0x00 = sampling rate = 48kHz
    {R15_SERIAL_PORT_CONTROL_0, 0x00},                         // Serial port control 0 - slave (subordinate) mode
    {R16_SERIAL_PORT_CONTROL_1, 0x00},                         // Serial port control 1 - set to default    
    {R19_ADC_CONTROL, 0x23},                                   // ADC control - enable high pass filter and enable both ADCs                           
    
    //Mixers
    {R4_RECORD_MIXER_LEFT_CONTROL_0, 0x01},                    // Record Mixer Left 0 - mixer enabled
    {R5_RECORD_MIXER_LEFT_CONTROL_1, 0x03},                    // Record Mixer Left 1 - gain -6dB
    {R6_RECORD_MIXER_RIGHT_CONTROL_0, 0x01},                   // Record Mixer Right 0 - mixer enabled
    {R7_RECORD_MIXER_RIGHT_CONTROL_1, 0x03},                   // Record Mixer Right 1 - gain -6dB
    
    {R36_DAC_CONTROL_0, 0x03},                                 // DAC control - both enabled
    {R22_PLAYBACK_MIXER_LEFT_CONTROL_0, 0x21},                 // Playback Mixer Left 0 - mixer input unmuted, mixer enabled
    {R24_PLAYBACK_MIXER_RIGHT_CONTROL_0, 0x41},                // Playback Mixer Right 0 - mixer input unmuted, mixer enabled

    {R37_DAC_CONTROL_1, 0x00},                                 // R37 - Left DAC volume attenuation
    {R38_DAC_CONTROL_2, 0x00},                                 // R38 - Right DAC volume attenuation

    {R29_PLAYBACK_HEADPHONE_LEFT_VOLUME_CONTROL, 0xFF},        // R29 - Headphone L volume control         
    {R30_PLAYBACK_HEADPHONE_RIGHT_VOLUME_CONTROL, 0xFF},       // R30 - Headphone R volume control     

    {R35_PLAYBACK_POWER_MANAGEMENT, 0x03},                     // R35 - Playback channel enable
    {R58_SERIAL_INPUT_ROUTE_CONTROL, 0x01},                    // R58 - DAC output control
    {R59_SERIAL_OUTPUT_ROUTE_CONTROL, 0x01}                    // R59 - ADC input control
};

int initI2C(XIic *iic) {
	XIic_Config *IicConfig;
    int status = 0;

	// Initialize the IIC driver so that it is ready to use.
	IicConfig = XIic_LookupConfig(XPAR_XIIC_0_BASEADDR);
	if (IicConfig == NULL) {
		return 1;
	}


	status = XIic_CfgInitialize(iic, IicConfig,	IicConfig->BaseAddress);
    if(status != 0) {
        xil_printf("Couldn't initialize I2C!\r\n");
        return 1;
    }

	status = XIic_DynamicInitialize(iic);
    status = XIic_CfgInitialize(iic, IicConfig,	IicConfig->BaseAddress);
    if(status != 0) {
        xil_printf("Couldn't initialize I2C!\r\n");
        return 1;
    }

	return 0;
}

int WriteToReg(u8 RegAddr, u8 Data) {
    u8 TxData[3];
    TxData[0] = 0x40;
    TxData[1] = RegAddr;
    TxData[2] = Data;
    
    int bytes_sent = XIic_Send(XPAR_XIIC_0_BASEADDR, IIC_SLAVE_ADDR, TxData, 3, XIIC_STOP);
    
    if (bytes_sent != 3) {
        return 1;
    }
    
    return 0;
}

int InitPLL() {

    u8 TxData[8], RxData[6];
    
    int status = WriteToReg(R0_CLOCK_CONTROL, 0x0E); // core clock disabled, f = 1024 x fs, PLL clk
    if(status != 0) {
        xil_printf("Error: could not write R0_CLOCK_CONTROL (0x0E)\r\n");
        return status;
    }

    // Values from the digilent DMA Demo
	TxData[0] = 0x40;
	TxData[1] = 0x02;
	TxData[2] = 0x00;
	TxData[3] = 0x7D;
	TxData[4] = 0x00;
	TxData[5] = 0x0C;
	TxData[6] = 0x20;
	TxData[7] = 0x01;

    status = XIic_Send(XPAR_AXI_IIC_0_BASEADDR, IIC_SLAVE_ADDR, TxData, 8, XIIC_STOP);
    if(status != 8) {
        xil_printf("Error: could not send data to R1_PLL_CONTROL (0xXXXXXX2001)\r\n");
        return XST_FAILURE;
    }

    //Wait for the PLL to lock
	do {
		int status = XIic_Send(XPAR_AXI_IIC_0_BASEADDR, IIC_SLAVE_ADDR, TxData, 2, XIIC_STOP);
        if(status != 2) {
            xil_printf("Error while locking the PLL\r\n");
            return 1;
        }

		XIic_Recv(XPAR_AXI_IIC_0_BASEADDR, IIC_SLAVE_ADDR, RxData, 6, XIIC_STOP);
		xil_printf("Audio PLL R1 = 0x%x%x%x%x%x%x \r\n", RxData[0], RxData[1],
			RxData[2], RxData[3], RxData[4], RxData[5]);
	}
	while((RxData[5] & 0x02) == 0); // 0x02 = PLL locked and enabled

    // Set core clock to enabled
    status = WriteToReg(R0_CLOCK_CONTROL, 0x0F);
	if (status != 0)
	{
		xil_printf("Error: could not write R0_CLOCK_CONTROL (0x0F)\r\n");
		return 1;
	}
    
    return 0;
}


int initADAU1761_I2C() {
    int num_registers = sizeof(Adau1761_Init_Sequence) / sizeof(Adau1761_Init_Sequence[0]);

    int i = 0;
    for(i = 0; i < num_registers; i++) {
        int status;
        status = WriteToReg(Adau1761_Init_Sequence[i][0], Adau1761_Init_Sequence[i][1]);

        if(status != 0) {
            xil_printf("I2C Write Failed at register: %x", Adau1761_Init_Sequence[i][0]);
            return 1;
        }

        // 1 ms sleep
        msleep(1);
    }

    return 0;
}

int initAudio() {
    int status = 0;

    status = InitPLL();
    if(status != 0) {
        xil_printf("Error: Could not lock PLL!");
        return 1;
    }


    status = initADAU1761_I2C();
    if(status != 0) {
        xil_printf("Error: Could not init the ADAU1761 chip!");
        return 1;
    }

    return 0;
}

void setAudioVolume(bool volUp) {
    if(volUp) {
        if(volume < 100) volume += 5;
    } else {
        if(volume > 0) volume -= 5;
    }

    uint8_t vol_6bit = (volume * 63) / 100;
    uint8_t codec_reg_val = (vol_6bit << 2) | 0x03;

    WriteToReg(R29_PLAYBACK_HEADPHONE_LEFT_VOLUME_CONTROL, codec_reg_val);
    WriteToReg(R30_PLAYBACK_HEADPHONE_RIGHT_VOLUME_CONTROL, codec_reg_val);

    oledSetVolume(volume, 0);
}