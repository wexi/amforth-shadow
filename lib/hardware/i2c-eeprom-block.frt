\
\ I2C EEPROM driver for BLOCK wordset
\
\ call i2c.ee.blockinit to activate the driver
\ for the BLOCK words. 

#require blocks.frt
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

\ runtime configurable parameters, taken from or
\ calculated in i2c.ee.blockinit. Never change them directly
variable i2c.ee.hwid
variable i2c.ee.pagesize
variable i2c.ee.pages/block

: i2c.ee.read-page ( addr len page hwid -- )
  dup i2c.begin
    swap i2c.ee.pagesize @ * i2c.ee.send-addr
    i2c.start \ repeated start
    i2c.rd i2c.tx 
    1- bounds over >r ?do i2c.rx i c! loop
    i2c.rxn r> c! \ last byte
  i2c.end
;

: i2c.ee.load-buffer ( a-addr u -- ) \ BLOCK API 
   1- i2c.ee.pages/block @ * \ start address
   i2c.ee.pages/block @ bounds ?do
     dup i2c.ee.pagesize @ i i2c.ee.hwid @ i2c.ee.read-page
     i2c.ee.pagesize @ +
   loop drop
;

: i2c.ee.write-page ( addr len page hwid -- )
  i2c.begin
    i2c.ee.pagesize @ * i2c.ee.send-addr
    bounds ?do i c@ i2c.tx loop
  i2c.end 5 ms \ make sure the eeprom gets ready again
;

: i2c.ee.save-buffer ( a-addr u -- ) \ BLOCK API 
   1- i2c.ee.pages/block @ * \ start address
   i2c.ee.pages/block @ bounds ?do
     dup i2c.ee.pagesize @ i i2c.ee.hwid @ i2c.ee.write-page
     i2c.ee.pagesize @ +
   loop drop
;

\ adjust the page size and update the #pages per block buffer
: i2c.ee.setpagesize ( 24cxx -- )
  blocksize over / i2c.ee.pages/block !
  i2c.ee.pagesize !
;

\ for turnkey
\ does not initialize TWI/I2C interface! (i2c.init.default)
: i2c.ee.blockinit ( pagesize hwid -- )
   block:init
   ['] i2c.ee.load-buffer is load-buffer
   ['] i2c.ee.save-buffer is save-buffer
   i2c.ee.hwid !
   i2c.ee.setpagesize
;
