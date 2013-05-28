\ go from the XT backwards to get the Name field
: >name ( xt -- nfa )
    1- \ link address
    \ tricky: we look for the flash cell whose address + it content & 0x00ff is
    \ this address
    dup 1- >r ( -- lfa )
    $ff swap
    begin
      1- dup ( -- cnt lfa lfa )
      @i $00ff and 1+ 2/ ( -- cnt fla len )
      over + ( cnt fla lfa? )
      r@ = ( cnt fla lfa? )
      rot 1- dup >r 0= or ( fla flag )
      r> ( fla flag cnt )
      swap ( fla cnt flag )
      rot
      swap
    until
    swap drop
    r> drop
;
