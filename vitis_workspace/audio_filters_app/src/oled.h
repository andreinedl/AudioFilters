#ifndef OLED_H
#define OLED_H
#include <xparameters.h>
#include "oled/PmodOLED.h"

#define SPI_ADDR_OLED   0x10000
#define GPIO_ADDR_OLED  XPAR_PMODOLED_0_BASEADDR

void oled_init(PmodOLED *display);

#endif