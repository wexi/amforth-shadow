# in debug mode .org 0 and no bypass
DEBUG ?= 1
# Which board to communicate with?
COM ?= 2
RATE ?= 38400

MAIN := boofa
ASM := $(MAIN).asm
HEX := $(MAIN).hex
LIST := $(MAIN).lst
SOURCES := $(wildcard *.asm)
MFC := c128

ATMEL := $(HOME)/avr/Atmel/AVR\ Tools/AvrAssembler2
XASM := wine $(ATMEL)/avrasm2.exe -fI -I $(ATMEL)/Appnotes $(if DEBUG,-D DEBUG,-U DEBUG)
DUDE := avrdude -P usb -c jtag2 -p $(MFC)
TTY := /dev/ttyUSB$(COM)

all: $(HEX)

$(HEX): $(SOURCES) Makefile
	$(XASM) -D BAUD=$(RATE) -o $(HEX) -l $(LIST) $(ASM)

install: $(HEX)
	$(DUDE) -e -U flash:w:$<

term:
	picocom --baud $(RATE) --flow h --parity n --databits 8 $(TTY)

clean:
	rm -f $(HEX) $(LIST)

.PHONY: all clean install term

