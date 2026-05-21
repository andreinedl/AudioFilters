#include "int_config.h"
#include <xgpio.h>
#include <xil_exception.h>
#include <xil_types.h>
#include <xintc.h>
#include <xintc_l.h>
#include <xstatus.h>
#include <xparameters.h>
#include <xaxidma.h>
#include "../dma/dma_config.h"
#include "../gpio/gpio.h"

int initIntController(XIntc *intC, XAxiDma *dma, XGpio *gpio) {
    int status = 0;

    status = XIntc_Initialize(intC, XPAR_MICROBLAZE_RISCV_0_AXI_INTC_BASEADDR);
    if(status != 0) {
        xil_printf("Failed to initialize the interrupt controller\r\n");
        return status;
    }    

    //MM2S interrupt
    status = XIntc_Connect(intC, XPAR_FABRIC_AXI_DMA_0_INTR, (XInterruptHandler)MM2SIntCB, dma);
    if(status != 0) {
        xil_printf("Failed to initialize the interrupt controller for MM2S\r\n");
        return status;
    }

    //S2MM interrupt
    status = XIntc_Connect(intC, XPAR_FABRIC_AXI_DMA_0_INTR_1, (XInterruptHandler)S2MMIntCB, dma);
    if(status != 0) {
        xil_printf("Failed to initialize the interrupt controller for S2MM\r\n");
        return status;
    }

    //GPIO interrupt
    status = XIntc_Connect(intC, XPAR_FABRIC_AXI_GPIO_0_INTR, (XInterruptHandler)GPIOIntCB, gpio);
    if(status != 0) {
        xil_printf("Failed to initialize the interrupt controller for GPIO\r\n");
        return status;
    }

    status = XIntc_Start(intC, XIN_REAL_MODE);
    if(status != 0) {
        xil_printf("Failed to initialize the interrupt controller\r\n");
        return status;
    }  

    // Enabling the interrupts
    XIntc_Enable(intC, XPAR_FABRIC_AXI_DMA_0_INTR);
    XIntc_Enable(intC, XPAR_FABRIC_AXI_DMA_0_INTR_1);
    XIntc_Enable(intC, XPAR_FABRIC_AXI_GPIO_0_INTR);

    Xil_ExceptionInit();
    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler)XIntc_InterruptHandler, intC);
    Xil_ExceptionEnable();

    return 0;    
}