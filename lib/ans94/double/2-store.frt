\ 2! ( n1 n2 addr -- )
: 2!
  swap ( -- n1 addr n2 )
  over ( -- n1 addr n2 addr )
  !    ( -- n1 addr )
  cell+ ( -- n1 addr+2 )
  ! ;
