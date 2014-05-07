Authore: Andy Kirby (andy@kirbyand.co.uk), Based on the Amforth Application Template.
Licensing: as per the Amforth Project.

These are demo application templates for using standard off the shelf Arduino Boards (or Clones) as an Amforth development system. Three of the templates are useable with DIL devices for cheap entry level use or embeding into your own breadboard/stripboard deisgns.

Models Described are:-

Model		Microcontroler	Host	Xtal	DBG-LED	Flash	B-Load			Ram	Fuses (E,H,L)
Mega		ATMega 1280	uart0	16Mhz	PB7	128K	512b/1k/2k/4k		8k	F7 D9 FF
Diecimila	ATMega 168	uart0	16Mhz	PB5	16K	128b/256b/512b/1k	1k	F9 DD FF
Duemilanove	ATMega 328	uart0	16Mhz	PB5	32k	256b/512b/1k/2k		2k	05 D9 FF
Uno             ATMega 328	uart0	16Mhz	PB5	32k	256b/512b/1k/2k		2k	05 D9 FF
Sanguino	ATMega 644	uart0	16Mhz	PB0	64k	512/1k/2k/4k		4k	FD F9 FF


Notes

0. double check the fuses settings. Esp. the duemilanove may have the wrong settings. set the HFuse to 0xd9
   to maximize the bootloader size.

1. Whilst most errors and problems you encounter are likely to be those I have created rather than the original 
   code on which this is based, please report forward comments, feedback, reports, bugs, fixes and patches etc 
   through the Amforth Projects development mailing lists and forums etc.

2. The binary Amforth images cannot be loaded/programmed using the Arduino Bootloader. An ICSP programmer 
   (avrisp, etc) must be used to load the image.

3. The Arduino bootloader is over writen with the Amforth code and is no longer available after programing. 
   To restore your board for use with the Arduino IDE you must overwrite the Amforth image with an Arduino 
   Bootloader image.

4. The Sanguino is not correctly speaking an Arduino Project design, but forms the basis of the Reprap 
   controller designed and made popular by Makerbot. This processor/board is also notable for being the 
   largest ATMega device available in a DIL format that makes it poular for prototyping and ammateur constructors.

5. The 168 and 328 devices similar to note 4 above are available in DIL packaging making them popular for 
   prototyping and ammateur constructors.

6. The 1280 device is only available in surface mount options and is likely only to be found in commercialy 
   produced boards and used by dedicated electronics enthusiasts.
 
7. Whilst described as using a 328 device early versions of the Duemilanove may actualy have a 168 installed. 
   This can be easily exchanged for a 328 if more resources are needed.  

8. The Diecimila board is also compatible with the 328 device commonly found in the newer Duemilanove board.

9. For the arduino mega the content of the dict_appl.inc can be moved to dict_appl_core.inc. This gives more
   usable dictionary space.
   
10. The UNO has the same controller as the duemilanove, the hexfiles are the same.