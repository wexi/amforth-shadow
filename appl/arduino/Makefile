# Simple makefile for building the 
# Arduino amforth vor various targets

# Examples of usage for Arduino leonardo:
#
# 1) Assemble the whole flash and eemprom files
#     make leonardo.hex
#
# 2) Backup the current flash & eeprom values 
#     make leonardo.bak
#
# 3) Erase the whole MCU Flash
#    make leonardo.era
#
# 4) Upload the new firmware using the hex file generated
#    make leonardo
#
# 5) Set the appropiate MCU fuses
#    make leonardo.fuse
#
# 6) Clear files (except backup)
#    make leonardo.clr


SHELL=/bin/bash

##############################
# TARGET DEPENDANT VARIABLES #
##############################

# 1) MCU should be identical to the device
#    Look at the /core/devices/ folder
# 2) PART is the device model passed to avrdude.
# 3) LFUSE, HFUSE, EFUSE are the device-specific fuses
#    there is a useful fuse calc tool at:
#    http://www.engbedded.com/fusecalc/
# --------------------------------------
# Example fuse settings for 'leonardo'
# Low Fuse LFUSE=0xFF
#  - No Div8 prescaler, 
#  - No ouptput Clock, 
#  - Low Crystal mode: >=8 MHz + start-up time: 16K CK cycles + 65 ms
# High Fuse HFUSE=0xD9
# - Enable Serial Programming & Downloading
# - Bootsize 2048 words (4096 bytes)
# Extended Fuse EFUSE=0xF9
# - Brown-out detection @ 3.5V
# - no Hardware Boot Vector (=boot at $0000)
# --------------------------------------

leonardo:         PART=m32u4
leonardo.hex:     MCU=atmega32u4
leonardo.era:     PART=m32u4
leonardo.bak:     PART=m32u4
leonardo.fuse:    PART=m32u4
leonardo.fuse:    LFUSE=0xFF
leonardo.fuse:    HFUSE=0xD9
leonardo.fuse:    EFUSE=0xE9

uno:              PART=m328p
uno.hex:          MCU=atmega328p
uno.era:          PART=m328p
uno.bak:          PART=m328p
uno.fuse:         PART=m328p
uno.fuse:         LFUSE=0xFF
uno.fuse:         HFUSE=0xD9
uno.fuse:         EFUSE=0x05

mega128:        PART=m1280
mega128.hex:    MCU=atmega1280
mega128.era:    PART=m1280
mega128.bak:    PART=m1280
mega128.fuse:   PART=m1280
mega128.fuse:   LFUSE=0xFF
mega128.fuse:   HFUSE=0xD9
mega128.fuse:   EFUSE=0xF7

sanguino:         PART=m644p
sanguino.hex:     MCU=atmega644p
sanguino.era:     PART=m644p
sanguino.bak:     PART=m644p
sanguino.fuse:    PART=m644p
sanguino.fuse:    LFUSE=0xFF
sanguino.fuse:    HFUSE=0xF9
sanguino.fuse:    EFUSE=0xFD 

duemilanove:      PART=m328p
duemilanove.hex:  MCU=atmega328p
duemilanove.era:  PART=m328p
duemilanove.bak:  PART=m328p
duemilanove.fuse: PART=m328p
duemilanove.fuse: LFUSE=0xFF
duemilanove.fuse: HFUSE=0xD9
duemilanove.fuse: EFUSE=0x05

diecimila:        PART=m168
diecimila.hex:    MCU=atmega168
diecimila.era:    PART=m168
diecimila.bak:    PART=m168
diecimila.fuse:   PART=m168
diecimila.fuse:   LFUSE=0xFF
diecimila.fuse:   HFUSE=0xDD
diecimila.fuse:   EFUSE=0xF9

# AMFORTH VERSION TO USE
# 'code' for trunk and x.y for the releases (i.e 5.0)
#VERSION=5.0
VERSION=code
AMFORTH=$(HOME)/amforth-$(VERSION)
CORE=$(AMFORTH)/core

# directories
ATMEL=$(HOME)/atmel

# ------------------------
# PROGRAMMER CONFIGURATION
# ------------------------

PROGRAMMER=avrisp2
PORT=/dev/ttyUSB0

AVRDUDE=avrdude
AVRDUDE_FLAGS=-q -P $(PORT) -c $(PROGRAMMER)

# ----------------
# ASSEMBLER TO USE
# ----------------

AS_INCLUDE=-I $(ATMEL)/include -I$(CORE)

ASM=wine $(ATMEL)/avrasm2.exe
# flags Specific to avrasm2.exe
AS_FLAGS=$(AS_INCLUDE) -fI -v0

#ASM=avra $(AS_FLAGS)

#--------------------------
# Generic assemble patterns
#--------------------------

# Assemble the target
%.hex : %.asm
	@echo "Producing Hexfiles for Arduino $*" 
	@$(ASM) $(AS_FLAGS) -I $(CORE)/devices/$(MCU) -e $*.eep.hex -m $*.map -l $*.lst $<

# Flash the target
% : %.hex
	@echo "Uploading Hexfiles to Arduino $*" 
	$(AVRDUDE) $(AVRDUDE_FLAGS) -p $(PART) -e -U flash:w:$*.hex:i -U eeprom:w:$*.eep.hex:i

# Set the fuse bits
%.fuse :
	@echo "Setting fuses to Arduino $*" 
	$(AVRDUDE) $(AVRDUDE_FLAGS) -p $(PART) -U efuse:w:$(EFUSE):m -U hfuse:w:$(HFUSE):m -U lfuse:w:$(LFUSE):m

# Erase the whole MCU
%.era :
	@echo "Erasing entire Arduino $*" 
	$(AVRDUDE) $(AVRDUDE_FLAGS) -p $(PART) -e

# Clear assembled & auxilars files
%.clr:
	@echo "Cleaning all aux files" 
	@rm -f $*.hex ; rm -f $*.eep.hex ; rm -f $*.lst ; rm -f $*.map ; rm -f $*.cof ; rm -f $*.obj

# Backup arduino Flash & EEPROM files
%.bak:
	@echo "Backup Flash & EEPRON from Arduino $*" 
	$(AVRDUDE) $(AVRDUDE_FLAGS) -p $(PART) -U flash:r:$*.hex.bak:i -U eeprom:r:$*.eep.hex.bak:i

# ----------------------------------------------------------

GENERIC_DEPENDECIES=*.inc words/*.asm $(CORE)/*.asm $(CORE)/words/*.asm $(CORE)/drivers/*.asm

# Assemble all targets is the default action

TARGET = leonardo.hex uno.hex duemilanove.hex mega128.hex sanguino.hex diecimila.hex

%.asm: MCU=atmega328p

default: $(TARGET)

$(TARGET) :  $(GENERIC_DEPENDENCIES)  $(CORE)/devices/*/*.asm $(CORE)/devices/*/*.inc


# Cleans everything
clean:
	rm -f *.hex ; rm -f *.eep.hex ; rm -f *.lst ; rm -f *.map ; rm -f *.cof ; rm -f *.obj

# All other rules are target specific and must be typed one by one
# as shown in the top.

