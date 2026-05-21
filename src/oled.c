#include "oled/PmodOLED.h"
#include "oled.h"
#include <xparameters.h>
#include <sleep.h>
#include <stdio.h>
#include <xil_cache.h>
#include <xil_printf.h>

// OLED config
const u8 orientation = 0x1; // true = onboard oled
const u8 invert_colors = 0x0; // black background - white letters

void oled_init(PmodOLED *display) {
    OLED_Init(display, GPIO_ADDR_OLED, SPI_ADDR_OLED, orientation, invert_colors);
}