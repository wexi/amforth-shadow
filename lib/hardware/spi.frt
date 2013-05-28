\ SPI routines
\ V.1.0, Matthias Trute
\ V.1.1, 15.07.2009, Lubos Pekny, choose asm version

hex

PORTB 0 portpin: SPI_SS  
PORTB 1 portpin: SPI_SCK
PORTB 2 portpin: SPI_MOSI
PORTB 3 portpin: SPI_MISO
: SPI_PORT $f0 PORTB ;    \ PB.4,5,7 out, PB.6 in

1 6 lshift constant spi.SPE    \ SPI enabled
1 5 lshift constant spi.DORD   \ Data order, 0=MSB first
1 4 lshift constant spi.MSTR   \ Master mode

$0 constant spi.mode0  \ sample rising/--
$4 constant spi.mode1  \ --/sample falling
$8 constant spi.mode2  \ sample falling/--
$c constant spi.mode3  \ --/sample rising

0 constant spi.f/4
1 constant spi.f/16
2 constant spi.f/64
3 constant spi.f/128


  \ enable spi, set I/O
  \ MSTR + f/64 + mode3
: +spi ( -- )
    SPI_SS pin_output
    SPI_MISO pin_output
    SPI_MOSI pin_input
    SPI_SCK pin_output
    spi.SPE spi.MSTR spi.f/64 or or
    spi.mode3 or SPCR c!
    0 SPSR c! ;


  \ turn off spi, all I/O input
: -spi ( - )
    0 SPI_PORT 1- pin!    \ input
    0 SPI_PORT pin!       \ no pullup
    0 SPCR c! ;


  \ set clk, SPCR.0,1, f/xxx
: spi_clk ( c -- )
    03 SPCR pin! ;  \ c pinmask port --


  \ double speed mode
: +spi2x 
    1 SPSR c! ;


: -spi2x
    0 SPSR c! ;

\ -sptx Stop transmit

\ send a byte
: spi! ( c -- )
    c!@spi drop
;

  \ receive a byte
: spi@ ( -- c)
    0 c!@spi
;
