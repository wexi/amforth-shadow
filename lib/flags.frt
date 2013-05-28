\ 2008-01-01 EW   w4_flags.fs

\ die bits einer Variablen als "flags" benutzen

\ flag@ ( var bitnum -- f ) und flag! ( flag var bitnum -- )

\ variable mainFlags
\ mainFlags 0 flag: Fdebug
\ Fdebug fset       ( set bit 0 in Variable mainFlags )
\ Fdebug fclr       ( clear bit )
\ Fdebug fset?      ( true if bit is set )
\ Fdebug fclr?      ( true if bit is NOT set )

\ compile time: store address and bitmask into pfa
\ run time:     fetch bitmask and address to stack
: flag: create ( addr bit -- )
  1 swap lshift , ,
does>          ( -- bitmask addr )
  dup @i swap 1+ @i
;

\ bitvalue, convert number of bit [0..7] to mask
: bv ( bitnumber -- bitmask )
  1 swap lshift
;

: fset ( bitmask addr -- )
  dup @         ( mask addr value )
  rot           ( addr value mask )
  or            ( addr new-value )
  swap !
;

: fclr ( bitmask addr -- )
  dup @         ( mask addr value )
  rot           ( addr value mask )
  invert and    ( addr new-value )
  swap !
;


: fset? ( bitmask addr -- t/f )
  @ and 0<>
;

: fclr? ( bitmask addr -- t/f )
  @ and 0=
;

: ftgl ( bitmask addr -- )
  over over     ( mask addr mask addr )
  fset?
  if fclr else fset then
;
