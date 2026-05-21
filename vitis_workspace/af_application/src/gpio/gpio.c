#include "gpio.h"
#include "audio_config.h"
#include <xgpio.h>
#include <xgpio_l.h>
#include <xil_printf.h>
#include <xparameters.h>

volatile u32 switches_state = 0;
volatile u32 buttons_state = 0;
volatile bool gpio_flag = false;

int initGPIO(XGpio *gpio) {
    int status = 0;
    
    XGpio_Config *config = XGpio_LookupConfig(XPAR_AXI_GPIO_0_BASEADDR);
    if(!config)
    {
        xil_printf("Error: Could not configure GPIO\r\n");
        return 1;
    }
    
    status = XGpio_CfgInitialize(gpio, config, XPAR_AXI_GPIO_0_BASEADDR);
    if(status != 0) {
        xil_printf("Error in initializing GPIO!\r\n");
        return 1;
    }
    
    //setting both channels as inputs
    XGpio_SetDataDirection(gpio, 1, 0xFFFFFFFF); 
    XGpio_SetDataDirection(gpio, 2, 0xFFFFFFFF);
    
    switches_state = XGpio_DiscreteRead(gpio, 1);
    buttons_state = XGpio_DiscreteRead(gpio, 2);

    XGpio_InterruptClear(gpio, XGPIO_IR_CH1_MASK | XGPIO_IR_CH2_MASK);

    XGpio_InterruptEnable(gpio, XGPIO_IR_CH1_MASK | XGPIO_IR_CH2_MASK);
    XGpio_InterruptGlobalEnable(gpio);

    return 0;
}

void GPIOIntCB(void *CallbackRef)
{
    XGpio* gpio = (XGpio*)CallbackRef;

    u32 intr_status = XGpio_InterruptGetStatus(gpio);

    buttons_state = XGpio_DiscreteRead(gpio, 1);
    switches_state = XGpio_DiscreteRead(gpio, 2);

    XGpio_InterruptClear(gpio, intr_status);

    gpio_flag = true;
}