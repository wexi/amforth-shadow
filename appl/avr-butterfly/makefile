# user modifiable secion is up here

MCU=atmega169

AMFORTH=../../core

# some programs
AVRDUDE=avrdude

AVRA=avra -I ../../Atmel/Appnotes
AVRASM=wine ../../Atmel/avrasm2.exe -I ../../Atmel/Appnotes2

INCLUDE=-I $(AMFORTH)

USB=-c avr911  -P /dev/ttyUSB1
PP=-c stk200  -P /dev/parport0
JTAG=-c jtag2 -P /dev/ttyUSB2
ISP=-c avrisp2 -P usb

bf: bf.hex
	$(AVRDUDE) $(USB) -p $(MCU) -e -U flash:w:bf.hex:i -U eeprom:w:bf.eep.hex:i

bf.hex: bf.asm $(AMFORTH)/*.asm $(AMFORTH)/*.inc $(AMFORTH)/words/*.asm $(AMFORTH)/devices/*.asm 
#	$(AVRA) $(INCLUDE) --listmac -l bf.lst -m bf.map bf.asm
	$(AVRASM) $(INCLUDE) -fI -v1 -W+iw  -e bf.eep.hex -l bf.lst bf.asm

bf.back:
	$(AVRDUDE) $(USB) -p $(MCU)  -U flash:r:bf.hex:i -U eeprom:r:bf.eep.hex:i

clean:
	rm -f bf.hex bf.eep.hex bf.lst bf.map bf.cof bf.obj

