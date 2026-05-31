# Nexys Video Audio Processor using a MicroBlaze RISC-V 

## Overview
This project implements a digital audio processing system on the Digilent Nexys Video FPGA board. Driven by the MicroBlaze RISC-V soft-core processor in the block design, the system captures audio from the `Line IN` port, applies selectable digital audio effects and outputs the processed audio to the `HPH OUT` output.

The onboard OLED display provides feedback on the active audio filter, while the physical switches and buttons on the Nexys Video board are used to control the effects and output volume.

## Key Features
* **Microblaze RISC-V soft-core processor**
* **Audio Pass-Through & Processing:** Interfacing with the onboard ADAU1761 audio codec.
* **8 Selectable Audio Effects:**
    * Low Pass Filter
    * High Pass Filter
    * Distortion
    * Echo
    * Karaoke
    * Channel Swap (Left/Right)
    * 8-bit Bitcrusher
    * Reverb
* **OLED Integration:** Visual feedback displaying the currently active filter on the 128x32 integrated OLED display.
* **Hardware Volume Control:** Volume up/down adjustments using push buttons.

## Hardware Requirements
* **Board:** Digilent Nexys Video (Artix-7 FPGA)
* **Audio Source:** Any device with a standard 3.5mm audio output (connected to `Line IN`)
* **Audio Output:** Headphones or external speakers (connected to `HPH OUT`)
* **Programming Cable:** Micro-USB cable for JTAG/UART configuration

## Software Requirements
* AMD Vivado 2025.2
* Vitis Unified IDE 2025.2 

## Controls & I/O Mapping

### Switches (Audio Filters)
Toggle the slide switches (`SW0` - `SW7`) to enable the desired audio effect.

- **SW0** — Low Pass
- **SW1** — High Pass
- **SW2** — Distortion
- **SW3** — Echo
- **SW4** — Karaoke
- **SW5** — Channel Swap
- **SW6** — 8-Bit (Bitcrusher)
- **SW7** — Reverb

### Push Buttons (Volume Control)
| Button | Function |
| :--- | :--- |
| **BTNU** (Up) | Volume UP |
| **BTND** (Down) | Volume DOWN |

### OLED Display
The integrated 128x32 OLED automatically updates to display:
1.  Current Active Filter (e.g., "Filter: Reverb")
2.  Current Volume Level 

## Architecture & Implementation Overview
1.  **Hardware Design (Vivado):** The Block Design includes the Microblaze V processor, AXI IIC for configuring the ADAU1761 via I2C, an AXI I2S audio IP (made by Digilent for this board) for the audio data stream, and AXI GPIO / SPI blocks for switches, buttons and the OLED interface.
2.  **Software Application (Vitis):**
    * Written in C.
    * Initializes the ADAU1761 codec registers.
    * Sets up an interrupt or polling routine to read I2S audio data.
    * Reads the states of the GPIO pins (Switches and Buttons).
    * Applies the respective DSP algorithms to the audio buffer.
    * Sends the modified audio buffer back to the codec.
    * Drives the OLED via SPI to update the user interface.