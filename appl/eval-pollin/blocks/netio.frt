
\ Definitions for the netio-addon board

\ SPI communication pins
 PORTB 4 portpin: /ss
 PORTB 5 portpin: _mosi
 PORTB 6 portpin: _miso
 PORTB 7 portpin: _clk

\ setup the SPI pins
 : +spi ( -- )
 /ss high \ activate pullup!
 _mosi high _mosi pin_output
 _clk low _clk pin_output
 ;
 
 : -spi 0 SPCR c! ;

 \ transfer 1 cell
 : ><spi ( x -- x' )
 dup >< c!@spi
 swap c!@spi
 swap >< +
 ;

: +mmc
  /ss low
;
: -mmc
  /ss high
;

