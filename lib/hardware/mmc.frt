\ MMC+SD card - Lubos Pekny, www.forth.cz
\ Library for amforth 3.0, mFC modification
\ Max. 4GB no SDHC, access thru buffer 512B or short block or direct

\ V.1.0, 16.07.2009, tested on atmega32, amforth30mFC12.zip
\ - used SPI (MOSI, MISO, SCK, SS)
\ mmc_init, mmc_CID, mmc_CSD, mmc_read, mmc_mread, mmc_write,
\ mmc_blk@, mmc_blk!, mmc_c@, mmc_c!, mmc_end?, mmc_end!

hex

variable mmc_#buf          \ position in buf
variable mmc_buf 1FE allot \ 512B RAM


  \ enable spi for mmc, set I/O
: mmc_+spi ( -- )
    +spi
    -spi2x
    spi.SPE spi.MSTR or 
    spi.f/128 or
    spi.mode0 or dup u. SPCR c! ;

  \ send dummy byte x-times
: mmc_dummy ( x -- )
    0 ?do $ff c!spi loop ;


\ convert 32b block to byte addr, double 9 lshift
: mmc_blk2addr ( L H -- L H )
    swap dup 9 lshift      \ -- H L L<<9
    swap 7 rshift          \ -- H L<<9 L>>7
    rot 9 lshift or ;      \ -- L<<9 H<<9


  \ waiting for cmd response
: mmc_cresp ( -- c|-1 )
    FF 0 do
      c@spi dup 80 and 0=   \ bit7=0?
      if unloop exit then  \ -- c, 0=ok
      drop                 \ --
    loop -1 ;              \ -- -1, timeout


  \ waiting for data response
: mmc_dresp ( -- c|-1 )
    FF 0 do
      c@spi dup 11 and 1 =  \ xxx0ccc1
      if
        0F and unloop exit \ -- c, 5=ok
      then
      drop                 \ --
    loop -1 ;              \ -- -1, timeout


  \ waiting for token
: mmc_token ( -- c|-1 )
    FF 0 do
      c@spi dup FF -        \ <>FF?
      if unloop exit then  \ -- c, FC,FE=ok
      drop                 \ --
    loop -1 ;              \ -- -1, timeout


  \ waiting while busy, after write
: mmc_busy ( -- 0|-1 )
    FF 0 do
      c@spi FF =              \ =FF?
      if 0 unloop exit then  \ -- 0, ok
    loop -1 ;                \ -- -1, timeout


  \ send command cmd, data xl, xh
: mmc_cmd ( xl xh cmd -- c|-1 )
    FF c!spi                \ flush spi register
    40 or c!spi             \ send command cmd
    dup >< c!spi c!spi       \ send xhh, xhl
    dup >< c!spi c!spi       \ send xlh, xll
    95 c!spi                \ no crc
    mmc_cresp ;            \ -- c|-1, c=0 no errors 


  \ set block length
: mmc_length ( n -- c|-1 )
    0 10 mmc_cmd ;         \ CMD16


  \ stop multiread
: mmc_rstop ( -- c|-1 )
    0 0 C mmc_cmd          \ CMD12
    mmc_busy or -mmc ;     \ -- c|-1, c=0 no errors


  \ stop multiwrite
: mmc_wstop ( -- c|-1 )
    FD c!spi                \ Stop tran for CMD25
    FF c!spi                \ 1B wait
    mmc_busy -mmc ;        \ -- c|-1, c=0 no errors


  \ reset card, idle
: mmc_reset ( -- c|-1 )
    -mmc 10 mmc_dummy      \ 74< clk to reset mmc
    +mmc
    0 0 0 mmc_cmd ;        \ CMD0, -- 1, reset ok


  \ detect sd card, 0=SD, -1=timeout
: mmc_sd? ( -- c|-1 )
    0 0 37 mmc_cmd drop    \ CMD55
    0 0 29 mmc_cmd         \ ACMD41, -- c
    dup 1+                 \ -- -1 0, timeout
    if 4 and then ;        \ SD(R1.2=0) / MMC(R1.2=1)


  \ wait for init MMC card
: mmc_waitmmc ( -- 0|-1 )
    FF                     \ -- cnt
    begin
      0 0 1 mmc_cmd 0=     \ CMD1, -- cnt f
      if drop 0 exit then  \ -- 0, ok
      1- dup 0=            \ -- cnt-1 f
    until 1- ;             \ -- -1, timeout


  \ wait for init SD card
: mmc_waitsd ( -- 0|-1 )
    FF                     \ -- cnt
    begin
      0 0 37 mmc_cmd drop  \ CMD55
      0 0 29 mmc_cmd 0=    \ ACMD41, -- cnt f
      if drop 0 exit then  \ -- 0, ok
      1- dup 0=            \ -- cnt-1 f
    until 1- ;             \ -- -1, timeout




  \ check end of sector, for mmc read
: mmc_end? ( -- flag )
    200 mmc_#buf @
    > 0= dup               \ -- c c, -1=end
    if                     \ size<=#buf then
      2 mmc_dummy          \ dummy crc
    then ;


\ check end of sector, wait for no busy, for mmc write 
: mmc_end! ( -- 0|-1 )
    mmc_end?               \ -- flag, crc dummy for end
    if
      mmc_dresp 5 <>       \ -- 0, 0=ok, response
      mmc_busy  or         \ -- c, 0=ok, writed
    else 0 then ;          \ -- c, 0=ok, -1=timeout


: mmc_buf> ( addr n -- 0|-1 )
    dup mmc_#buf +!        \ +n, update buf position
    0 ?do                  \ addr n -- send n bytes from addr
       dup c@ c!spi 1+       \ -- addr+1
    loop drop
    \ n!spi
    mmc_end! ;             \ -- c, 0=ok, -1=timeout


  \ copy spi to buf
: mmc_>buf ( addr n -- )
    dup mmc_#buf +!        \ +n, update buf position
    0 ?do                  \ write n bytes to addr
      c@spi over c! 1+      \ -- addr+1
    loop drop
\    n@spi
    mmc_end? drop ;        \ crc dummy for end
    

  \ wait for token, copy first n bytes to buf
: mmc_(read) ( n 0 -- c|-1 )
    0 mmc_#buf !           \ reset buf position
    dup 0=                 \ 0 -- , cmd ok
    if
      drop mmc_token dup   \ c -- c c
      FE =
      if 
        drop mmc_buf swap  \ -- addr n
        mmc_>buf 0         \ -- 0, ok
      else
        swap drop          \ n c -- c
      then
    else
      swap drop            \ n c -- c
    then ;                 \ 0=ok, -1=timeout 


  \ copy first n bytes to card, response, busy
: mmc_(write) ( n 0 -- c|-1 )
    0 mmc_#buf !           \ reset buf position
    dup 0=                 \ 0 -- , cmd ok
    if
      drop FF c!spi   \ wait 1B
      FE c!spi              \ send start byte
      mmc_buf swap         \ -- addr n
      mmc_buf>             \ -- c, 0=ok, -1=timeout
    else
      swap drop            \ n c -- c
    then ;                 \ 0=ok, -1=timeout 


  \ copy first n bytes to card, multiwrite, busy
: mmc_(mwrite) ( n 0 -- c|-1 )
    0 mmc_#buf !           \ reset buf position
    dup 0=                 \ 0 -- , cmd ok
    if
      drop FF c!spi   \ wait 1B
      FC c!spi              \ send start byte
      mmc_buf swap         \ -- addr n
      mmc_buf>             \ -- c, 0=ok, -1=timeout
    else
      swap drop            \ n c -- c
    then ;                 \ 0=ok, -1=timeout 


\ ----- final words -----

  \ initialize card MMC or SD v.1.x
: mmc_init (  -- x|-1 )
    0 mmc_#buf !
    mmc_+spi               \ init spi, I/O
    mmc_reset              \ -- c, 1=ok
    dup 1- 
    if -mmc 100 xor exit then  \ <>1 then exit
    drop                   \ --

    mmc_sd?                \ detect SD
    dup 0<                 \ -- 0, SD
    if -mmc 200 xor exit then \ -1 --, timeout
    if
      mmc_waitmmc          \ MMC init
    else
      mmc_waitsd           \ SD init
    then
    200 mmc_length         \ set sector length
    or -mmc ;              \ -- 0|-1, 0=ok, -1=timeout


  \ read CID register 16B
: mmc_CID ( -- c|-1 )
    +mmc 10                \ length 16B
    0 0 A mmc_cmd          \ CMD10,
    mmc_(read)             \ 10 c -- c, 0=ok, -1=timeout
    2 mmc_dummy            \ dummy CRC
    -mmc ;


  \ read CSD register 16B
: mmc_CSD ( -- c|-1 )
    +mmc 10                \ length 16B
    0 0 9 mmc_cmd          \ CMD9
    mmc_(read)             \ 10 c -- c, 0=ok, -1=timeout
    2 mmc_dummy            \ dummy CRC
    -mmc ;


  \ open sector for read, copy n bytes to buf
  \   200 ABCD 7F mmc_read     \ open,copy 512B from sector
  \   0   ABCD 7F mmc_read     \ only open sector 7FABCD
: mmc_read ( n xl xh -- c|-1 ) \ length, sector addr
    +mmc
    mmc_blk2addr           \ addr*512, block->byte
    11 mmc_cmd             \ addrL addrH 11 --, CMD17
    mmc_(read)             \ n c -- c, 0=ok, -1=timeout
    -mmc ;


  \ open sector for multi read, copy n bytes to buf
: mmc_mread ( n xl xh -- c|-1 ) \ length, sector addr
    +mmc
    mmc_blk2addr           \ addr*512, block->byte
    12 mmc_cmd             \ addrL addrH 12 --, CMD18
    mmc_(read)             \ n c -- c, 0=ok, -1=timeout
    -mmc ;


  \ open sector for write, copy n bytes from buf to card
: mmc_write ( n xl xh -- c|-1 )  \ length, sector addr
    +mmc
    mmc_blk2addr           \ addr*512, block->byte
    18 mmc_cmd             \ addrL addrH 18 --, CMD24
    mmc_(write)            \ n c -- c, 0=ok, -1=timeout
    -mmc ;


  \ open sector for multi write, copy n bytes from buf to card
: mmc_mwrite ( n xl xh -- c|-1 )  \ length, sector addr
    +mmc
    mmc_blk2addr           \ addr*512, block->byte
    19 mmc_cmd             \ addrL addrH 19 --, CMD25
    mmc_(mwrite)           \ n c -- c, 0=ok, -1=timeout
    -mmc ;


  \ read short block from opened sector to buf
  \ use mmc_read or mmc_(read) first
: mmc_blk@ ( addr n -- )   \ addr, length of blk
    +mmc 
    mmc_>buf               \ addr n -- ,copy spi to buf
    -mmc ;


  \ write short block to opened sector from buf
  \ use mmc_write or mmc_(write) first
: mmc_blk! ( addr n -- 0|-1 )   \ addr, length of blk
    +mmc 
    mmc_buf>               \ addr n -- 0|-1, from buf
    -mmc ;                 \ 0=ok, -1=timeout


  \ direct read byte from opened sector
  \ note: +mmc, if end of sector then dummy crc, -mmc
: mmc_c@ ( -- c )
    c@spi             \ read byte from card
    1 mmc_#buf +! ;        \ increment position


  \ direct write byte to opened sector
  \ note: +mmc, if end of sector then mmc_end!, -mmc
: mmc_c! ( c -- )
    c!spi             \ write byte to card
    1 mmc_#buf +! ;        \ increment position


  \ view n bytes from mmc_buf+offset
: mmc. ( n offset -- )
    mmc_buf + swap
    0 ?do                  \ addr n -- view n bytes from addr
      dup c@ . 1+          \ -- addr+1
    loop drop ;


\ sptx Stop transmit

: mmc_tstmread ( n -- )    \ read n x 1MB
    0 .
    200 0 0 mmc_mread .    \ open for multiread
    +mmc
    0 ?do
      800 1 do             \ 1MB
        200 0 mmc_(read)   \ 512B
        drop
      loop
      i .
    loop 0 .
    mmc_rstop drop ;


: mmc_tstread ( n -- )     \ read n x 1MB
    0 .
    200 0 0 mmc_read .
    0 ?do
      800 1 do             \ 1MB
        200 0 0 mmc_read   \ 512B
        drop
      loop
      i .
    loop 0 . ;


\ sptx Stop transmit

