\ test routines for the atmel evaluation
\ boards from www.pollin.de
\ needs the device register definitions loaded

#require ms.frt

marker _pollin_

decimal

\ wait some milliseconds
: blinkdelay 250 ms ;

PORTD 5  portpin: led1
PORTD 6  portpin: led2

PORTD 2 portpin: key1
PORTD 3 portpin: key2
PORTD 4 portpin: key3

GICR  7 portpin: en_int1
GICR  6 portpin: en_int0
GICR  5 portpin: en_int2

: +demoports
    led1 pin_output
    led2 pin_output
    key1 pin_input
    key2 pin_input
    key3 pin_input

    05 MCUCR c! \ int0/1
    en_int1 high
    en_int0 high
    en_int2 low
;

\ test runs until a terminal-key is pressed

\ as long as a key on the board is pressed the
\ corresponding led/buzzer is turned on
: keys
    begin
        PIND c@
	[ hex ] fc and
	3 lshift
	PORTD c!
    key? until
    key drop \ we do not want to keep this key stroke
;


: blink ( -- )
  led1 high blinkdelay
  led2 high blinkdelay
  led2 low blinkdelay
  led1 low blinkdelay
;

: led1blink
  led1 high
  blinkdelay
  led1 low
;

\ simple lights on/off
: led
    begin
	blink
	key?
    until
    key drop \ we do not want to keep this key stroke
;

\ interrupt processing takes a long time, do not
\ press the key while it runs...
\ ' led1blink 1 int!
\ ' noop 2 int!

\ autoconfig the i/o ports
\ ' portinit 'turnkey e!
