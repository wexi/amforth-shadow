\ 2010-05-24 EW ewlib/spi.fs
\ spi, using hw interface
\ needs in dict_appl.inc:
\ .include "words/spirw.asm"

\ words:
\ +spi ( -- )
\ -spi ( -- )
\ ><spi ( x -- xÆ ) transfer 2 bytes

\ Needs at least these definitions
\ SPI
\  $2D constant SPCR \ SPI Control Register
\  $2F constant SPDR \ SPI Data Register
\  $2E constant SPSR \ SPI Status Register

 \ needs lib/bitnames.frt

 \ SPCR (control register)
 \ . 7 SPIE spi interrupt enable
 \ . 6 SPE spi enable
 \ . 5 DORD data order, 0 msb first
 \ . 4 MSTR master/slave mode, 1 master
 \ . 3 CPOL clock polarity, 0 clock low on idle
 \ . 2 CPHA clock phase, 0 sample on lead. edge
 \ . 01 SPIR data rate, 00 f/4, 01 f/16,
 \ 10 f/64, 11 f/128
 \ SPE | MSTR | SPIR0 ==> $51

 \ needs these defined before loading:
 PORTB 4 portpin: /ss
 PORTB 5 portpin: _mosi
 PORTB 6 portpin: _miso
 PORTB 7 portpin: _clk

 : +spi ( -- )
 /ss high \ activate pullup!
 _mosi high _mosi pin_output
 _clk low _clk pin_output
 \ not needed, see datasheet
 \ _miso pin_pullup_on

 \ enable, master mode, f/128 data rate
 $53 SPCR c!
 ;
 
 : -spi 0 SPCR c! ;

 \ transfer 1 byte
 \ use c!@spi ( c -- cÆ )

 \ transfer 1 cell
 : ><spi ( x -- xÆ )
 dup >< c!@spi
 swap c!@spi
 swap >< +
 ;
