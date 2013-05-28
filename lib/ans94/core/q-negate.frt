\ ?negate  n1 n -- n2  negate n1 if n is negative
: ?negate
  0< if negate then
;
