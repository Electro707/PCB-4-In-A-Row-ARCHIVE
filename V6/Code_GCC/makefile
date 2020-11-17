PORT=/dev/ttyUSB0
MCU=atmega328
TARGET=main

LDFLAGS=-Wl,-gc-sections -Wl,-relax -Wl,-Map=$(TARGET).map,--cref
#CFLAGS=-g -Wall -mcall-prologues -mmcu=$(MCU) -Os
CFLAGS=-g -Wall -mmcu=$(MCU) -Os 

default: compile size

compile:
	avr-gcc $(CFLAGS) $(TARGET).c -o $(TARGET).elf
	avr-objcopy -j .text -j .data -O ihex $(TARGET).elf $(TARGET).hex

quick: compile size program

size:
	avr-size -C --mcu=$(MCU) $(TARGET).elf

program:
	avrdude -v -P $(PORT) -p $(MCU) -cavrisp -b 19200 -U flash:w:$(TARGET).hex

clean:
	rm -rf *.hex *.bin *.o *.elf doxygen_out/

documentation:
	doxygen doxygen_config
