\ 2swap	( w1 w2 w3 w4 -- w3 w4 w1 w2 )	core	two_swap
: 2swap
 rot >r rot r> ;
