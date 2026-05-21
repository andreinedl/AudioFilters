#ifndef INT_CONFIG_H
#define INT_CONFIG_H

#include <xintc.h>
#include <xstatus.h>
#include <xaxidma.h>
#include <xgpio.h>

int initIntController(XIntc *intC, XAxiDma *dma, XGpio *gpio);

#endif
