# simple makefile for building the 
# template project. 

SHELL=/bin/bash

# --- edit these values ------------------------------------
# Name of your application (useful, if you rename template.asm)
TARGET=template

# versions before 2.1 may produce some warnings
# but should produce a running system. You should
# _always_ use the trunk.

#AMFORTH=../../releases/3.6
AMFORTH=../../core

# the MCU should be identical to the device
MCU=atmega1284p
# set the fuses according to your MCU
LFUSE=0xnn
HFUSE=0xnn
# some MCU have this one, see write-fuses target below
EFUSE=0xnn

# serial port
CONSOLE=/dev/ttyUSB0

# directories
DIR_ATMEL=../../Atmel

# programms / flags
USB=-c avr911  -P /dev/ttyUSB3
PP=-c stk200  -P /dev/parport0
JTAG=-c jtag2 -P /dev/ttyUSB2
BURNER=$(USB)
AVRDUDE=avrdude
AVRDUDE_FLAGS=-q $(BURNER) -p $(MCU)

AVRA=avra -I $(DIR_ATMEL)/Appnotes2

AVRASM=wine $(DIR_ATMEL)/avrasm2.exe -I $(DIR_ATMEL)/Appnotes2

# ----------------------------------------------------------

INCLUDE=-I $(AMFORTH) -I $(AMFORTH)/devices/$(MCU)

default:  $(TARGET).hex

erase:
	$(AVRDUDE) $(AVRDUDE_FLAGS) -e

install: $(TARGET).hex
	$(AVRDUDE) $(AVRDUDE_FLAGS)  -e -U flash:w:$(TARGET).hex:i -U eeprom:w:$(TARGET).eep.hex:i

$(TARGET).hex: $(TARGET).asm $(AMFORTH)/*.asm $(AMFORTH)/words/*.asm $(AMFORTH)/devices/$(MCU)/*.asm
#	$(AVRA) $(INCLUDE) --listmac -l $(TARGET).lst -m $(TARGET).map $(TARGET).asm
	$(AVRASM) $(INCLUDE) -fI -v0 -e $(TARGET).eep.hex -l $(TARGET).lst $(TARGET).asm

$(TARGET).back:
	$(AVRDUDE) $(AVRDUDE_FLAGS)  -U flash:r:$(TARGET).hex:i -U eeprom:r:$(TARGET).eep.hex:i

clean:
	rm -f $(TARGET).hex
	rm -f $(TARGET).eep.hex
	rm -f $(TARGET).lst
	rm -f $(TARGET).map
	rm -f $(TARGET).cof
	rm -f $(TARGET).obj

read-fuse:
	$(AVRDUDE) $(AVRDUDE_FLAGS) -U hfuse:r:-:h -U lfuse:r:-:h -U lock:r:-:h
	# $(AVRDUDE) $(AVRDUDE_FLAGS) -U hfuse:r:-:h -U lfuse:r:-:h -U efuse:r:-:h -U lock:r:-:h

write-fuse:
	$(AVRDUDE) $(AVRDUDE_FLAGS) -U hfuse:w:$(HFUSE):m -U lfuse:w:$(LFUSE):m
#	$(AVRDUDE) $(AVRDUDE_FLAGS) -U efuse:w:$(EFUSE):m -U hfuse:w:$(HFUSE):m -U lfuse:w:$(LFUSE):m
