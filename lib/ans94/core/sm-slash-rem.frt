
: sm/rem ( d1 n1 -- n2 n3 )
  2dup xor >r
  over >r
  abs >r dabs r> um/mod
  swap r> ?negate
  swap r> ?negate
;
