\
\ I2C driver for BLOCK wordset
\
\ uses the i2c.ee.hwid from i2c-eeprom.frt
\ call i2c.ee.init to activate the driver
\ for the BLOCK words. default settings
\ use a 24c64 (8KByte) module.

#require value.frt
#require blocks.frt
#require bounds.frt
#require i2c-eeprom.frt
#require ms.frt

\ select a eeprom module. 
\ the pages differ in size. 
\ do not overrun them
#16 constant 24c08
#16 constant 24c16
#32 constant 24c32
#32 constant 24c64
#64 constant 24c128
#64 constant 24c256
#128 constant 24c512
#256 constant 24c1024

\ runtime configurable parameters
#32 Evalue i2c.ee.pagesize

\ use i2c.ee.setpagesize to change this number
 #2 Evalue i2c.ee.pages/block

\ adjust the page size and update the #pages per block buffer
: i2c.ee.setpagesize ( 24cxx -- )
  blocksize over / to i2c.ee.pages/block
  to i2c.ee.pagesize
;

: i2c.ee.read-page ( addr len page -- )
  \ ." reading page " dup . cr
  i2c.ee.pagesize * i2c.ee.send-addr
  i2c.start \ repeated start
  i2c.ee.hwid i2c.rd i2c.tx 
  1- bounds over >r ?do i2c.rx i c! loop
  i2c.rxn r> c! \ last byte
  i2c.stop
;

\ loads a buffer from eeprom to a-addr

: i2c.ee.load-buffer ( a-addr u -- )
  \ ." loading buffer " dup . cr .s cr
   1- i2c.ee.pages/block * \ start address
   i2c.ee.pages/block bounds ?do
     dup i2c.ee.pagesize i i2c.ee.read-page
     i2c.ee.pagesize +
   loop drop
;

: i2c.ee.write-page ( addr len page -- )
  \ ." writing page " dup . cr .s cr
  i2c.ee.pagesize * i2c.ee.send-addr
  bounds ?do i c@ i2c.tx loop
  i2c.stop 5 ms \ make sure the eeprom gets ready again
;

: i2c.ee.save-buffer ( a-addr u -- )
   1- i2c.ee.pages/block * \ start address
   i2c.ee.pages/block bounds ?do
     dup i2c.ee.pagesize i i2c.ee.write-page
     i2c.ee.pagesize +
   loop drop
;

\ for turnkey
: i2c.ee.init ( -- )
   block:init
   i2c.init.default
   ['] i2c.ee.load-buffer is load-buffer
   ['] i2c.ee.save-buffer is save-buffer
;
