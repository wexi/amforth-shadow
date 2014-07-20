\
\ Basic Access to I2C EEPROM 
\
\ useful words are
\ [¢]@i2c.ee/[c]!i2c.ee
\ See cookbook for further information

#require i2c.frt

: i2c.ee.send-addr ( n -- )
  dup >< i2c.tx ( high byte ) i2c.tx ( low byte )
  \ no stop condition
;

\ The write methods do not wait afterwards!
\ at least 5ms have to pass
: c!i2c.ee ( c addr hwid -- )
  i2c.begin
    i2c.ee.send-addr 
    i2c.tx 
  i2c.end
;

: !i2c.ee ( c addr hwid -- )
  i2c.begin
    i2c.ee.send-addr 
    dup >< i2c.tx i2c.tx 
  i2c.end
;

: c@i2c.ee ( addr hwid -- c )
  dup i2c.begin
    swap i2c.ee.send-addr 
    i2c.start     \ repeated start
    i2c.rd i2c.tx \ hwid for reading
    i2c.rx
  i2c.end
;

: @i2c.ee ( addr hwid -- n )
  dup i2c.begin
    swap i2c.ee.send-addr 
    i2c.start     \ repeated start
    i2c.rd i2c.tx \ hwid for reading
    i2c.rx >< i2c.rxn or
  i2c.end
;
