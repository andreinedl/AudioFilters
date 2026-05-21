#include "oled.h"
#include "../oled_driver/PmodOLED.h"
#include <xparameters.h>
#include <sleep.h>
#include <stdio.h>
#include <stdbool.h>

// To change between PmodOLED and OnBoardOLED is to change Orientation
const u8 orientation = 0x1; // Set up for Normal PmodOLED(false) vs normal
                            // Onboard OLED(true)
const u8 invert = 0x0;      // true = whitebackground/black letters
                            // false = black background /white letters

char* currentText = NULL;
PmodOLED *sOled;

void initOLED(PmodOLED *oled) {  
    OLED_Begin(oled, XPAR_PMODOLED_0_BASEADDR, 0x10000, orientation, invert);

    OLED_DisplayOn(oled);
    sOled = oled;
}

void oledClearRow(int row) {
    OLED_SetCursor(sOled, 0, row);
    OLED_PutString(sOled, "                ");
}

void oledWriteOnCenter(int row, char* text, bool storeText) {
    int len = strlen(text);
    if (len > 16) len = 16; // max 10 characters
    
    int start_col = (16 - len) / 2;

    oledClearRow(row);
    
    OLED_SetCursor(sOled, start_col, row);
    OLED_PutString(sOled, text);

    OLED_Update(sOled);

    if(storeText) currentText = text;
}

void oledSetVolume(int volume, bool revertToPrevText) {
    char tempText[17];
    char barText[17] = "[              ]"; 
    
    int numBars = (volume * 14) / 100;
    for(int i = 0; i < numBars; i++) {
        barText[i+1] = '=';
    }
    oledWriteOnCenter(0, barText, 0);
    
    if (!revertToPrevText) {
        sprintf(tempText, "Vol: %d%%", volume);
        oledWriteOnCenter(2, tempText, 0);
    } else {
        oledWriteOnCenter(2, currentText, 0);
    }
    
    // Trimitem modificarile catre ecranul fizic
    OLED_Update(sOled);
}