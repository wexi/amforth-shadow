\ 2013-01-21  EW  ewlib/1wire_crc8.fs
\ 1wire 8bit crc check, as used by ds18s20
\ based on C code by Colin O'Flynn and M.Thomas, found at
\ http://www.siwawi.arubi.uni-kl.de/avr_projects/tempsensor/ds18x20_demo_20110209.zip


$18 constant 1w.crc8.polynom
variable 1w.crc.shreg     \ crc shift register
variable 1w.crc.byte    \ current input byte
variable 1w.crc.fbit    \ feedbackbit

\ process 1 bit from input
: ((1w.crc8))
  1w.crc.shreg @ 1w.crc.byte @ xor $01 and
  dup 1w.crc.fbit !
  if \ fbit set
    1w.crc.shreg @ 1w.crc8.polynom xor
    1w.crc.shreg !
  then
  1w.crc.shreg @ 1 rshift $7f and
  1w.crc.shreg !
  1w.crc.fbit @ if
    1w.crc.shreg @ $80 or
    1w.crc.shreg !
  then
;
\ process 1 byte of input
: (1w.crc8) ( x -- )
  ( tos ) 1w.crc.byte !
  8 0 do
    ((1w.crc8))
    1w.crc.byte @ 1 rshift
    1w.crc.byte !
  loop
;

\ process N bytes from stack, leave crc
: 1w.crc8 ( xN-1 .. x0 N -- crc )
  0 1w.crc.shreg !
  0 1w.crc.byte  !
  0 1w.crc.fbit  !
  0 ?do
    (1w.crc8)
  loop
  1w.crc.shreg @
;
\ process N bytes from stack, compare with crc, leave flag
: 1w.crc8? ( crc xN-1 .. x0 N -- t/f )
  1w.crc8  =
;

\ same as 1w.crc8, but process data in reverse (stack) order!
: 1w.crc8.rev  ( x0 .. xN-1 N -- crc )
  0 1w.crc.shreg !
  0 1w.crc.byte  !
  0 1w.crc.fbit  !
  1 over ?do i pick (1w.crc8)  -1 +loop
  0 ?do drop loop
  1w.crc.shreg @
;
: 1w.crc8.rev? ( x0 .. xN-1 crc N -- t/f )
  swap >r \ save crc
  1w.crc8.rev
  r> =
;
