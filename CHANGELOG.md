This document describes the changes between the different revision:

- V1: Initial Release
- V2: 
    - Updated to a more symetrical design. 
    - Added on-off switch
    - Replaced Darlington transistor pair IC with individual MOSFETs
- V3:
    - Complete redesign to use an ATmega328P and 74HC595s instead of the STM32
    - Seperated the driver board and LED board
- V4:
    - Changed Micro-USB to USB-B
    - Added transistors to drive the rows (to allow more than 1 LED on at a time)
- V5:
    - Removed "Connect-4" trademarked silkscreen text (except I forgot to change it in the back of the PCB)
- V6:
    - Added FT230X for easy programming
    - Changed ALL "Connect-4" references to "4-In-A-Row" due to potential trademark issues
- V7 (WIP):
    - Fixed reversed USB+ and USB- data connections to the FT230X
