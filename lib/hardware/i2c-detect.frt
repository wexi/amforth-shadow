\ detect presence of all possible devices on I2C bus
\ only the 7 bit address schema is supported
: i2c.detect   ( -- )
    base @ hex
    \ header line
    4 spaces $10 0 do i 3 .r loop
    $80 0 do
      i $0f and 0= if
        cr i 2 .r [char] : emit space
      then
      i i2c.ping? if \ does device respond?
          i 3 .r
        else
          ."  --" 
      then
    loop 
    cr base !
;

\ output looks like
\ (ATmega1280)> i2c.detect 
\       0  1  2  3  4  5  6  7  8  9  A  B  C  D  E  F
\  0:  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
\ 10:  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
\ 20:  -- -- -- -- -- -- -- 27 -- -- -- -- -- -- -- --
\ 30:  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
\ 40:  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
\ 50:  50 -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
\ 60:  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
\ 70:  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
\  ok
\ 
