\ test routines for timer

\ prints the tick value every second (or so)
\ until a key is pressed. Usage:
\ ' test-every-second every-second
: test-every-second
    @tick u. key?
;

\ runs a single word n-times. prints the milliseconds
\ for the whole run
\ usage
\  ' foo 10 benchme
\ executes too 10 times and prints the elapsed time

: benchme ( xt n -- )
   dup >r
   @tick >r
   0 ?do dup execute loop drop
   @tick r> -
   cr r> u. ." iterations in " u. ." ms" cr
;
