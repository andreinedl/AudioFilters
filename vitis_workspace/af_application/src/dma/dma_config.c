#include "dma_config.h"
#include <stdbool.h>
#include <sleep.h>

volatile bool S2MMinterrupt = false;
volatile bool MM2Sinterrupt = false;

void S2MMIntCB(void *Callback) {
    u32 IrqStatus;
    XAxiDma *AxiDmaInst = (XAxiDma *)Callback;

    //Read all the pending DMA interrupts
	IrqStatus = XAxiDma_IntrGetIrq(AxiDmaInst, XAXIDMA_DEVICE_TO_DMA);

    //Acknowledge pending interrupts
	XAxiDma_IntrAckIrq(AxiDmaInst, IrqStatus, XAXIDMA_DEVICE_TO_DMA);

    //If there are no interrupts we exit
    if (!(IrqStatus & XAXIDMA_IRQ_ALL_MASK)) return;

    // If error interrupt is asserted, raise error flag, reset the
	// hardware to recover from the error, and return with no further
	// processing.
    if (IrqStatus & XAXIDMA_IRQ_ERROR_MASK)
	{
		XAxiDma_Reset(AxiDmaInst);
        msleep(1);
		return;
	}

    if ((IrqStatus & XAXIDMA_IRQ_IOC_MASK)) S2MMinterrupt = true;
}

void MM2SIntCB(void *Callback) {
    u32 IrqStatus;
    XAxiDma *AxiDmaInst = (XAxiDma *)Callback;

    //Read all the pending DMA interrupts
	IrqStatus = XAxiDma_IntrGetIrq(AxiDmaInst, XAXIDMA_DMA_TO_DEVICE);

    //Acknowledge pending interrupts
	XAxiDma_IntrAckIrq(AxiDmaInst, IrqStatus, XAXIDMA_DMA_TO_DEVICE);

    //If there are no interrupts we exit
    if (!(IrqStatus & XAXIDMA_IRQ_ALL_MASK)) return;

    // If error interrupt is asserted, raise error flag, reset the
	// hardware to recover from the error, and return with no further
	// processing.
    if (IrqStatus & XAXIDMA_IRQ_ERROR_MASK)
	{
		XAxiDma_Reset(AxiDmaInst);
        msleep(1);
		return;
	}

    if ((IrqStatus & XAXIDMA_IRQ_IOC_MASK)) MM2Sinterrupt = true;
}

int configDMA(XAxiDma *AxiDma) {
    XAxiDma_Config *CfgPtr;
    int status = 0;

    CfgPtr = XAxiDma_LookupConfig(XPAR_AXI_DMA_0_BASEADDR);
    if(!CfgPtr) {
        xil_printf("Error in configuring DMA!\r\n");
        return 1;
    }

    status = XAxiDma_CfgInitialize(AxiDma, CfgPtr);
    if(status != 0) {
        xil_printf("Error in configuring DMA!\r\n");
        return 1;
    }

    //Disable all the DMA related Interrupts
	XAxiDma_IntrDisable(AxiDma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);
	XAxiDma_IntrDisable(AxiDma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);

    //Enable all the DMA Interrupts
	XAxiDma_IntrEnable(AxiDma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);
	XAxiDma_IntrEnable(AxiDma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);

    return 0;
}