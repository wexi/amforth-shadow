\ defines a word which resets the dictionary when called 
\ better then forget but has still limitations


: marker ( c<chars> -- )
    get-order
    get-current dup @e
    dp
    edp
    here
    \ maybe save turnkey as well
    create 
    , , , , ,
    \ for save the search order wordlists
    dup ,
    0 ?do
	dup ,
	@e  ,
    loop
    does>
       dup @i to here
    1+ dup @i to edp 
    1+ dup @i to dp
    1+ dup @i swap 1+ dup @i swap >r
    swap over !e set-current
    r>
    1+ dup @i \ # of entries in search order
       dup >r
       0 ?do
        1+ dup @i 
	swap 1+ dup @i over !e
       loop
    drop
    r> set-order
;

