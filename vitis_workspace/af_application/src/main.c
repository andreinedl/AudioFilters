#include "xparameters.h"
#include "xaxidma.h"
#include "xil_io.h"
#include "xil_cache.h"
#include <stdbool.h>
#include <xgpio.h>
#include <xiic.h>
#include <xil_printf.h>
#include <xintc.h>

#include "audio/audio_config.h"
#include "dma/dma_config.h"
#include "interrupt/int_config.h"
#include "oled/oled.h"
#include "gpio/gpio.h"
#include "dsp/dsp.h"

#define MEM_BASE_ADDR       0x80000000
#define BUFFER_0            (MEM_BASE_ADDR + 0x00100000) 
#define BUFFER_1            (MEM_BASE_ADDR + 0x00200000) 

#define MAX_PKT_LEN         16384 

static XIic     i2c;
static XAxiDma  axiDma;
static XIntc    intC;
static PmodOLED oled;
static XGpio    gpio;
FilterType current_audio_filter = FILTER_NONE;
FilterType previous_audio_filter = FILTER_NONE;

int debounce_timer = 0;
int oled_vol_timer = 0;

int main() {
    // init peripherals
    initI2C(&i2c);
    configDMA(&axiDma);
    initGPIO(&gpio);
    initAudio();
    initOLED(&oled);

    oledWriteOnCenter(2, "DISABLED", 1);
    oledSetVolume(volume, 1);

    initIntController(&intC, &axiDma, &gpio);

    // enabling DMA interrupts
    XAxiDma_IntrEnable(&axiDma, XAXIDMA_IRQ_IOC_MASK | XAXIDMA_IRQ_ERROR_MASK, XAXIDMA_DEVICE_TO_DMA);
    XAxiDma_IntrEnable(&axiDma, XAXIDMA_IRQ_IOC_MASK | XAXIDMA_IRQ_ERROR_MASK, XAXIDMA_DMA_TO_DEVICE);

    // init Digilent I2S IP registers
    Xil_Out32(I2S_TRANSFER_CONTROL_REG, 0x00000000); 
    Xil_Out32(I2S_STREAM_CONTROL_REG, 0x00000000); 
    Xil_Out32(I2S_CLOCK_CONTROL_REG, 0x00000005); 
    Xil_Out32(I2S_RESET_REG, 0x00000001); 
    
    Xil_Out32(I2S_RESET_REG, 0x00000000); 
    Xil_Out32(I2S_PERIOD_COUNT_REG, (MAX_PKT_LEN / 4)); 

    int current_rx_buf = 0; 
    int current_tx_buf = 1; 

    S2MMinterrupt = false;
    MM2Sinterrupt = false;

    Xil_DCacheInvalidateRange((UINTPTR)BUFFER_0, MAX_PKT_LEN);
    Xil_DCacheFlushRange((UINTPTR)BUFFER_1, MAX_PKT_LEN);

    XAxiDma_SimpleTransfer(&axiDma, (u32)BUFFER_0, MAX_PKT_LEN, XAXIDMA_DEVICE_TO_DMA);
    XAxiDma_SimpleTransfer(&axiDma, (u32)BUFFER_1, MAX_PKT_LEN, XAXIDMA_DMA_TO_DEVICE);

    Xil_Out32(I2S_TRANSFER_CONTROL_REG, 0x00000003); 
    Xil_Out32(I2S_STREAM_CONTROL_REG, 0x00000003); 


    while(1) {
        //DMA
        while(!S2MMinterrupt || !MM2Sinterrupt); 

        S2MMinterrupt = false;
        MM2Sinterrupt = false;

        // Digilent IP restart
        Xil_Out32(I2S_STREAM_CONTROL_REG, 0x00); 
        Xil_Out32(I2S_STREAM_CONTROL_REG, 0x03); 

        // Ping - Pong buffers
        u32 rx_addr = (current_rx_buf == 0) ? BUFFER_0 : BUFFER_1;
        
        if(current_rx_buf == 0) {
            current_rx_buf = 1; current_tx_buf = 0;
        } else {
            current_rx_buf = 0; current_tx_buf = 1;
        }

        u32 next_rx_addr = (current_rx_buf == 0) ? BUFFER_0 : BUFFER_1;
        u32 next_tx_addr = (current_tx_buf == 0) ? BUFFER_0 : BUFFER_1;

        processAudioFrame(rx_addr, MAX_PKT_LEN, current_audio_filter);

        Xil_DCacheInvalidateRange((UINTPTR)next_rx_addr, MAX_PKT_LEN);
        Xil_DCacheFlushRange((UINTPTR)next_tx_addr, MAX_PKT_LEN);

        // DMA Transfers
        XAxiDma_SimpleTransfer(&axiDma, next_rx_addr, MAX_PKT_LEN, XAXIDMA_DEVICE_TO_DMA);
        XAxiDma_SimpleTransfer(&axiDma, next_tx_addr, MAX_PKT_LEN, XAXIDMA_DMA_TO_DEVICE);
        
        // Timers for interrupts
        if (oled_vol_timer > 0) {
            oled_vol_timer--;
            if (oled_vol_timer == 0) {
                oledSetVolume(volume, 1); 
            }
        }

        if (debounce_timer > 0) {
            debounce_timer--;
        }

        // GPIO interrupts
        if (gpio_flag) {
            gpio_flag = false;

            if (switches_state & 0x01) {
                current_audio_filter = FILTER_LOW_PASS;
            } 
            else if (switches_state & 0x02) {
                current_audio_filter = FILTER_HIGH_PASS;
            } 
            else if (switches_state & 0x04) {
                current_audio_filter = FILTER_DISTORTION;
            } 
            else if (switches_state & 0x08) {
                current_audio_filter = FILTER_ECHO;
            }
            else if (switches_state & 0x10) {
                current_audio_filter = FILTER_KARAOKE;
            } 
            else if (switches_state & 0x20) {
                current_audio_filter = FILTER_CH_SWAP;
            }
            else if (switches_state & 0x40) {
                current_audio_filter = FILTER_8_BIT;
            }
            else if (switches_state & 0x80) {
                current_audio_filter = FILTER_REVERB;
            }
            else {
                current_audio_filter = FILTER_NONE;
            }

            if (debounce_timer == 0) {
                bool action_taken = false;

                if (buttons_state & VOL_DN_MASK) { 
                    setAudioVolume(false);
                    oled_vol_timer = 117; // 117 packets * 42.6ms = ~ 5 seconds
                    action_taken = true;
                }
                else if (buttons_state & VOL_UP_MASK) {
                    setAudioVolume(true);
                    oled_vol_timer = 117; 
                    action_taken = true;
                }

                if (action_taken) {
                    debounce_timer = 2;
                }
            }
        }

        if (current_audio_filter != previous_audio_filter) {
                
                switch (current_audio_filter) {
                    case FILTER_LOW_PASS:   
                        oledWriteOnCenter(2, "LOW PASS", 1); 
                        break;
                    case FILTER_HIGH_PASS:  
                        oledWriteOnCenter(2, "HIGH PASS", 1); 
                        break;
                    case FILTER_DISTORTION: 
                        oledWriteOnCenter(2, "DISTORTION", 1); 
                        break;
                    case FILTER_ECHO:       
                        oledWriteOnCenter(2, "ECHO", 1); 
                        break;
                    case FILTER_KARAOKE:       
                        oledWriteOnCenter(2, "KARAOKE", 1); 
                        break;
                    case FILTER_CH_SWAP:
                        oledWriteOnCenter(2, "CH SWAP", 1);
                        break;
                    case FILTER_8_BIT:
                        oledWriteOnCenter(2, "8 BIT", 1);
                        break;
                    case FILTER_REVERB:
                        oledWriteOnCenter(2, "REVERB", 1);
                        break;
                    case FILTER_NONE:       
                        oledWriteOnCenter(2, "DISABLED", 1); 
                        break;
                }
                
                previous_audio_filter = current_audio_filter;
            }
    }

    return 0;
}