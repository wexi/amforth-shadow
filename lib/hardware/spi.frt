\ SPI routines

\ requires: 2rvalue (with further deps)
\           bitnames

\ definitions from application, matching the
\ SPI hardware pins
\ PORTB 1 portpin: spi.clk
\ PORTB 2 portpin: spi.mosi
\ PORTB 3 portpin: spi.miso

\ usage

\ specific slave select pin
\ PORTX PINY portpin: appl.ss_line
\ appl.ss_line to spi.ss

0. 2rvalue spi.ss

\ update spi.ss to the actual setup
\ +spi  -- turn on SPI module, sets up the pins as well
\ spi.modeX spi.setmode  -- switch clock polarity/clock phase
\ spi.f/X   spi.setspeed -- select spi clock rate relative to f_cpu
\ +spi.2x                -- double speed
\ -spi.2x                -- normal speed
\ -spi                   -- turn off SPI
\

\ following definitions are the same for all atmegas

SPSR 0 portpin: spi.2x

SPCR 6 portpin: spi.enable
SPCR 5 portpin: spi.dord
SPCR 4 portpin: spi.master
SPCR %00001100 bitmask: spi.mode
SPCR %00000011 bitmask: spi.speed

$0 constant spi.mode0  \ sample rising/--
$4 constant spi.mode1  \ --/sample falling
$8 constant spi.mode2  \ sample falling/--
$c constant spi.mode3  \ --/sample rising

0 constant spi.f/4
1 constant spi.f/16
2 constant spi.f/64
3 constant spi.f/128

: +spi
   \ Slave select *must* be *always* at a controlled level when SPI is activated.
   \ Changing a pin into output mode change its level to low. that makes a SPI think
   \ a communication has started which is not the case when this word is called.
   spi.ss high       \ deselect slave
   spi.ss pin_output \ possibly short low pulse
   spi.ss high       \ 

   \ now its save to turn on the SPI module
   spi.master high
   spi.enable high

   \ since spi.ss is HIGH, nobody will be confused
   spi.clk pin_output
   spi.mosi pin_output
   \ miso is controlled by SPI module internally
;

: -spi 0 SPCR c! ;

\ check SPI device datasheet for mode settings
: spi.setmode ( spi-mode -- )
  spi.mode pin!
;

\ speed relative to f_cpu, constants see above
: spi.setspeed ( spi.speed -- )
  spi.speed pin!
;

\ double speed mode
: +spi2x 
    spi.2x high
;


: -spi2x
    spi.2x low
;

\ send a byte, ignore recieved byte
: c!spi ( c -- )
    c!@spi drop
;

  \ receive a byte, send a dummy one
: c@spi ( -- c)
    0 c!@spi
;

\ send a cell, check data order for MSB/LSB
\ untested so far
: !@spi
  dup >< ( -- low high )
  spi.dord is_high? if swap then \ LSB first
  c!@spi swap c!@spi
  spi.dord is_low? if swap then  \ MSB was first
  >< or \ upper nibble is set to 0 automatically
;
