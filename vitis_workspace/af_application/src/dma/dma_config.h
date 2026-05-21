#ifndef DMA_CONFIG_H
#define DMA_CONFIG_H
#include <xaxidma.h>
#include <xstatus.h>
#include <stdbool.h>

extern volatile bool S2MMinterrupt;
extern volatile bool MM2Sinterrupt;

void S2MMIntCB(void *Callback);
void MM2SIntCB(void *Callback);
int configDMA(XAxiDma *AxiDma);

#endif