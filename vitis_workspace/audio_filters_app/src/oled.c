#include "oled/PmodOLED.h"
#include <xparameters.h>
#include <sleep.h>
#include <stdio.h>
#include <xil_cache.h>
#include <xil_printf.h>

#include "cache.c"

PmodOLED oled;
#define SPI_ADDR_OLED   0x10000
#define GPIO_ADDR_OLED  XPAR_PMODOLED_0_BASEADDR

// OLED config
const u8 orientation = 0x1; // true = onboard oled
const u8 invert_colors = 0x0; // black background - white letters

void oled_init() {
    EnableCaches();
    OLED_Begin(&oled, GPIO_ADDR_OLED, SPI_ADDR_OLED, orientation, invert_colors);
}