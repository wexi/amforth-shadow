
: fm/mod ( d1 n1 -- n2 n3 )
  dup >r
  2dup xor >r
  >r
  dabs r@ abs um/mod
  swap r> ?negate swap
  r> 0< if
    negate
    over if
      r@ rot - swap 1-
    then
  then
  r> drop
;
