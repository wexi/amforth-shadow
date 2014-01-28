
\ copy a counted flash string to ram
: iplace ( f-addr r-addr -- )
  >r icount $ff and ( -- f-addr' len )
  dup r@ c! r>  ( -- f-addr' len r-addr)
  1+ rot rot
  2/ 1+ bounds ?do
    i @i over !
    cell+
  loop
  drop
;
