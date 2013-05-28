\ 2over	( w1 w2 w3 w4 -- w1 w2 w3 w4 w1 w2 )	core	two_over
: 2over
  >r >r
  over over
  r>
  rot rot
  r>
  rot rot ;
