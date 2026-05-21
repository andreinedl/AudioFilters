#ifndef GPIO_H
#define GPIO_H
#include "xgpio.h"
#include "stdbool.h"

extern volatile u32 switches_state;
extern volatile u32 buttons_state;
extern volatile bool gpio_flag;

#define VOL_DN_MASK 0x01
#define VOL_UP_MASK 0x02

int initGPIO(XGpio *gpio);
void GPIOIntCB(void *CallbackRef);

#endif