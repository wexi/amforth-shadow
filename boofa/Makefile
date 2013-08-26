# EXTRA := -D DEBUG
EXTRA ?= 

MAIN := boofa
ASM := $(MAIN).asm
HEX := $(MAIN).hex
LIST := $(MAIN).lst
SOURCES := $(wildcard *.asm)
DEF := can128def.inc
MFC := c128

ATMEL := $(HOME)/avr/Atmel/AVR\ Tools/AvrAssembler2
XASM := wine $(ATMEL)/avrasm2.exe -fI -I $(ATMEL)/Appnotes
DUDE := avrdude -P usb -c jtag2 -p $(MFC)

all: $(HEX)

$(HEX): $(SOURCES) Makefile
	$(XASM) $(EXTRA) -o $(HEX) -l $(LIST) -i $(DEF) $(ASM)

install: $(HEX)
	$(DUDE) -e -U flash:w:$(HEX):i -U efuse:w:0xfd:m -U hfuse:w:0xbe:m -U lfuse:w:0xcf:m

clean:
	rm -f $(HEX) $(LIST)

.PHONY: all clean install

