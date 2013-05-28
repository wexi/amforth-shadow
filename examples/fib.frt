( fibonacci number ) 
: fib 
    dup 2 > if 
       dup 1- recurse swap 1- 1- recurse + exit 
    then 
    drop 1 
;

: fib-iter 0 1 rot 0 ?do over + swap loop drop ;

: dfib-iter >r 0 s>d 1 s>d r> 0 ?do 2over d+ 2swap loop 2drop .s ;

