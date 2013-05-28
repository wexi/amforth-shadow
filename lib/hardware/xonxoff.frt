\
\ enrich the serial IO with XON/XOFF
\  this is not a complete and fool-proof 
\

$11 constant XON
$13 constant XOFF

\ original refill
variable xt-refill

: refill-xon
  XON emit
  xt-refill @ execute
  XOFF emit
;

: +xonxoff
  ['] refill defer@ xt-refill !
  ['] refill-xon is refill 
;

: -xonxoff
  xt-refill @ is refill
;
