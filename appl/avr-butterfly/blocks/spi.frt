\ spi routines

marker _spi_

hex

PORTB 0 portpin: SS \ if SPI slave
PORTB 1 portpin: SCK
PORTB 2 portpin: MOSI
PORTB 3 portpin: MISO

\ following is for butterfly dataflash
PORTE 7 portpin: BF_DF_RESET
PORTB 0 portpin: BF_DF_CS

\ SPI constant
0 constant SPI0 
4 constant SPI1
8 constant SPI2
C constant SPI3

\ enable spi
: df-spi ( -- )
    BF_DF_RESET pin_output
    BF_DF_CS    pin_output
    MOSI pin_output
    SCK  pin_output
    MISO pin_input
    SS   pin_output \ see appnotes, input could disturb SPI
    
    BF_DF_RESET low
    BF_DF_CS high
    1ms
    BF_DF_CS low
    BF_DF_RESET high

    [
        1 6 lshift    \ SPE
	1 4 lshift or \ Mastermode
	SPI3       or \ dataflash
    ] literal SPCR c!   
    1 SPSR c! \ double speed mode
    20 0 do 1ms loop \ wait blindly for hardware operations
;

\ turn off spi
: -spi ( - )
    0 SPCR c!
;

\ send 1 byte byte
: spitx ( tx -- ) 
    spirw drop
;

\ receive byte
: spirx ( -- rx ) 
    0 spirw
;

: df-cstoggle ( -- )   \ pulse CS line, then keep it low.
  1 25 c! 1ms 0 25 c! ;

: df-adr  ( #page #bytes -- adrH adrL )
  over 9 lshift +        \ LO cell
  swap 7 rshift swap ;   \ HI cell

: df-cmd ( adrH adrL op -- ) 
  df-cstoggle
  spirw drop           \ send opcode
  df-adr               \ pack addresses into 24 bits
  swap spitx           \ send adrH LO byte, HI byte = dont care
  dup >< spitx         \ send adrL HI byte
  spirw drop ;         \ send adrL LO byte
    
: df-(32x) ( -- )  \ send 32 dont care bits
  0 spirw spirw spirw spirw drop ;

: df-(8x) ( -- )   \ send 8 dont care bits
  0 spitx  ;

: df-() ( -- ) ;  \ send no dont care bits

hex

\ **read

\ Continuous Array Read, bypass buffers, 
\ after that 264 bytes want to be transferred from
\ the eeprom to the uC
: df-car ( 24:4r,11P,9B -- ) E8 df-cmd df-(32x) ;

\ Main memory page read, bypass buffers
: df-mr  ( 24:4r,11P,9B -- ) D2 df-cmd df-(32x) ; 

\ Buffer 1 read
: df-1r  ( 24:15r,9B -- ) D4 df-cmd df-(8x) ; 

\ Buffer 2 read
: df-2r  ( 24:15r,9B -- ) D6 df-cmd df-(8x) ;

\ Status register read
: df-sr  ( -- n ) df-cstoggle D7 spirw spirw ;

\ wait till df is ready again
: df-wait ( -- )
  begin df-sr 9c = until ;

\ **write  

\  Buffer 1 write
: df-1w  ( 24:15r,9B -- ) 84 df-cmd df-() ;

\  Buffer 2 write
: df-2w  ( 24:15r,9B -- ) 87 df-cmd df-() ;

\ Buffer 1 to main memory page program with built-in erase
: df-1me ( 24:4r,11P,9x -- ) 83 df-cmd df-() ;

: df-2me ( 24:4r,11P,9x -- ) 86 df-cmd df-() ;
\ Buffer 2 to main memory page program with built-in erase

\ Buffer 1 to main memory page program without built-in erase
: df-1m  ( 24:4r,11P,9x -- ) 88 df-cmd df-() ;

\ Buffer 2 to main memory page program without built-in erase
: df-2m  ( 24:4r,11P,9x -- ) 89 df-cmd df-() ;

 \ Page erase
: df-pe   ( 24:4r,11P,9x -- ) 81 df-cmd df-() ;

 \ Block erase
: df-be  ( 24:4r,8P,12x -- ) 50 df-cmd df-() ;

\ Main memory page program through buffer 1; cstoggle after writing buffer!
: df-1wm ( 24:4r,11P,9B -- ) 82 df-cmd df-() ;

\ Main memory page program through buffer 2; cstoggle after writing buffer!
: df-2wm ( 24:4r,11P,9B -- ) 85 df-cmd df-() ;


\ **additional

\ Main memory page to buffer 1 transfer
: df-m1   ( 24:4r,11P,9x -- ) 53 df-cmd df-() ;

\ Main memory page to buffer 2 transfer
: df-m2   ( 24:4r,11P,9x -- ) 55 df-cmd df-() ;

\ Main memory page to buffer 1 compare
: df-m2c  ( 24:4r,11P,9x -- ) 60 df-cmd df-() ;

\ Main memory page to buffer 2 compare
: df-m2c  ( 24:4r,11P,9x -- ) 61 df-cmd df-() ;

\ Auto page rewrite through buffer 1
: df-m1rw ( 24:4r,11P,9x -- ) 58 df-cmd df-() ;

\ Auto page rewrite through buffer 2
: df-m2rw ( 24:4r,11P,9x -- ) 59 df-cmd df-() ;

