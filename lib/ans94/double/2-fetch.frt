\ 2@ ( addr -- n1 n2 )
: 2@
  dup ( -- addr addr )
  cell+ ( -- addr addr+2 )
  @     ( -- addr n2 )
  swap  ( -- n2 addr )
  @ ;   ( -- n2 n1 )
