\ print the wids of the current word list and the search order

: order ( -- )
    get-current u. cr
    get-order dup u. 
    0 ?do u. space loop
;
