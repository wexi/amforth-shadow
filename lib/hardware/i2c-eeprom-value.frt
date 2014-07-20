\
\ A value stored in I2C EEPROM.
\

#require value.frt
#require quotations.frt
#require ms.frt
#require i2c-eeprom.frt

\ initial addr hwid ...
\ 17      0    $50  i2c.value "name"
: i2c.ee.value ( n addr hwid -- )
    (value)
    over ,   \ store the addr
    [: dup @i ( addr ) swap 3 + @i ( hwid) @i2c.ee ;] , 
    [: dup @i ( addr ) swap 3 + @i ( hwid) !i2c.ee 5 ms ;] ,
    dup ,    \ store hwid
    !i2c.ee  \ store inital data
;
