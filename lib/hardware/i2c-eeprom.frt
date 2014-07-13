#require value.frt
#require i2c.frt

$50 Evalue i2c.ee.hwid       \ 7bit i2c address of the eeprom

: i2c.ee.send-addr ( n -- )
  i2c.start i2c.ee.hwid i2c.wr i2c.tx
  dup >< i2c.tx ( high byte ) i2c.tx ( low byte )
  \ no stop condition
;

: c!i2c.ee ( c addr -- )
  i2c.ee.send-addr i2c.tx i2c.stop
;

: c@i2c.ee ( addr -- c )
  i2c.ee.send-addr 
  i2c.start \ repeated start
  i2c.ee.hwid i2c.rd i2c.tx 
  i2c.rx
  i2c.stop
;
