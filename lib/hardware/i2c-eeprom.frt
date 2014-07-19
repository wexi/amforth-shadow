
#require value.frt
#require i2c.frt

$50 Evalue i2c.ee.hwid  \ 7bit i2c address of the eeprom

: i2c.ee.send-addr ( n -- )
  i2c.ee.hwid i2c.begin
  dup >< i2c.tx ( high byte ) i2c.tx ( low byte )
  \ no stop condition
;

\ The write methods do not wait afterwards!
\ at least 5ms have to pass
: c!i2c.ee ( c addr -- )
  i2c.ee.send-addr i2c.tx i2c.end
;

: !i2c.ee ( c addr -- )
  i2c.ee.send-addr dup >< i2c.tx i2c.tx i2c.end
;

: c@i2c.ee ( addr -- c )
  i2c.ee.send-addr 
  i2c.start \ repeated start
  i2c.ee.hwid i2c.rd i2c.tx 
  i2c.rx
  i2c.end
;

: @i2c.ee ( addr -- n )
  i2c.ee.send-addr 
  i2c.start \ repeated start
  i2c.ee.hwid i2c.rd i2c.tx 
  i2c.rx >< i2c.rxn or
  i2c.end
;
