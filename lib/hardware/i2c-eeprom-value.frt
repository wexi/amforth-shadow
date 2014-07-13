
#require value.frt
#require quotations.frt
#require ms.frt
#require i2c-eeprom.frt

\ initial addr ...
\ 17      0    i2c.value "name"
: i2c.value ( n addr -- )
    (value)
    dup ,
    [: @i @i2c.ee ;] , 
    [: @i !i2c.ee 5 ms ;] ,
    !i2c.ee
;
