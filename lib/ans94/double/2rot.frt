\ 2rot	( w1 w2 w3 w4 w5 w6 -- w3 w4 w5 w6 w1 w2 )	double-ext	two_rote
: 2rot
 >r >r 2swap r> r> 2swap ;
