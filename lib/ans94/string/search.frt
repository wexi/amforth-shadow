
\ mostly from gforth. Minor modifications however..

: str= ( c-addr1 u1 c-addr2 u2 -- f ) \ gforth
    compare 0= ;

: string-prefix? ( c-addr1 u1 c-addr2 u2 -- f ) \ gforth
    \ Is c-addr2 u2 a prefix of c-addr1 u1 ?
    tuck 2>r min 2r> str= ;

: >= < 0= ;

: search ( c-addr1 u1 c-addr2 u2 -- c-addr3 u3 flag ) \ string
    2>r 2dup
    begin
    dup r@ >= \ 2r@ nip >=
    while
    2dup 2r@ string-prefix? if
        2swap 2drop 2r> 2drop true exit
    then
    1 /string
    repeat
    2drop 2r> 2drop 0 ;
