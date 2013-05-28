\ 
\ Module: hd44780 routines
\ use the hd44780 module in 8bit mode
\  v 0.9

\ needs marker.frt and bitnames.frt from lib

marker _hd44780_

\ helper routine
: ms 0 ?do 1ms loop ;

hex

\ for the pollin addon board 1.0
1b 20 + constant hd44780-data \ PORTA
18 20 + constant hd44780-ctrl \ PORTB

hd44780-ctrl 1 portpin: hd44780-rw
hd44780-ctrl 0 portpin: hd44780-en
hd44780-ctrl 2 portpin: hd44780-rs

2 constant hd44780-pulse-delay
a constant hd44780-short-delay

: hd44780-pulse-en
    hd44780-en high
    hd44780-pulse-delay ms
    hd44780-en low
    hd44780-pulse-delay ms
;

: hd44780-data-mode
    hd44780-rs high
;

: hd44780-command-mode
    hd44780-rs low
;


: hd44780-read-mode
    0 hd44780-data 1- c! \ input
    hd44780-rw high
;

: hd44780-write-mode
    ff hd44780-data 1- c! \ output
    hd44780-rw low
;

: hd44780-read-data ( -- c )
	hd44780-read-mode
	hd44780-pulse-en
	hd44780-short-delay ms
	hd44780-data 1- 1- c@ 
;

: hd44780-wait
    hd44780-read-mode
    hd44780-rw high
    hd44780-rs low
    hd44780-pulse-en
    begin
        hd44780-data 1- 1- c@
	80 and
    until
;

: hd44780-command ( n -- )
    hd44780-wait
    hd44780-write-mode
    hd44780-command-mode
    hd44780-data c!
    hd44780-pulse-en
;

: hd44780-emit ( c -- )
    hd44780-write-mode
    hd44780-data-mode
    hd44780-data c!
    hd44780-pulse-en
;

: hd44780-init
    hd44780-rw pin_output
    hd44780-en pin_output
    hd44780-rs pin_output
;
\ from tracker: hd44780.frt - added LCD initialization - ID: 2785157
: hd44780-cmd-no-wait ( n -- )
  hd44780-write-mode
  hd44780-command-mode
  hd44780-data c!
  hd44780-pulse-en
;

: hd44780-start
  hd44780-init
  15 ms
  30 hd44780-cmd-no-wait
  4 ms
  30 hd44780-cmd-no-wait
  1 ms
  30 hd44780-cmd-no-wait
  38 hd44780-command
  6 hd44780-command
  c hd44780-command
  1 hd44780-command
;


: hd44780-page ( clear page )
    1 hd44780-command ( clear hd44780 )
    3 hd44780-command ( cursor home )
;

