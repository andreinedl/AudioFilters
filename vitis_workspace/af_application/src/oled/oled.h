#include "../oled_driver/PmodOLED.h"
#include <stdbool.h>

void initOLED(PmodOLED *oled);
void oledWriteOnCenter(int row, char* text, bool storeText);
void oledSetVolume(int volume, bool revertToPrevText);