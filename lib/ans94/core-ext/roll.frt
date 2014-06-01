
: roll  ( x0 x1 .. xn n -- x1 .. xn x0 ) \ core-ext
    dup 0> 0= if
	drop
    else
	swap >r 1- recurse r> swap 
    then ;
