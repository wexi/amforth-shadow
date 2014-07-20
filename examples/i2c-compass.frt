\
\ compass module mmc2120 (memsic)
\ hwid is always $30
\ provides:
\
\   i2c.compass.get ( -- status X Y) 
\        X and Y are around 2000 (raw data)
\        status is 0 if no error occured

\ further calculation?

$30 constant i2c.compass

\ internal commands
: i2c.compass.setcoil
  i2c.compass i2c.begin
    0 i2c.tx
    %00000010 i2c.tx \ set coil
  i2c.end
;
: i2c.compass.resetcoil
  i2c.compass i2c.begin
    0 i2c.tx
    %00000100 i2c.tx \ reset coil
  i2c.end
;

: i2c.compass.measure
  i2c.compass i2c.begin
    0 i2c.tx
    %00000001 i2c.tx \ start measurement
  i2c.end
;

: i2c.compass.fetchdata ( -- status x y )
  i2c.compass i2c.begin
    0 i2c.tx
    i2c.start \ rep-start
    i2c.compass i2c.rd i2c.tx
    4 0 do i2c.rx loop i2c.rxn
  i2c.end
  ( -- status msb-x lsb-x msb-y lsb-y)
  swap >< or $fff and >r \ Y
  swap >< or $fff and r> \ X
;

\ get the raw data from the module
\ the numbers for X/Y are usually around 2000.
\ status is 0 if everything is ok
: i2c.compass.get ( -- status x y )
   i2c.compass.resetcoil 1ms
   i2c.compass.setcoil   5 ms
   i2c.compass.measure   5 ms
   i2c.compass.fetchdata
;
