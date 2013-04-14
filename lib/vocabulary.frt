
\ some compatability definitions

\ create a vocabulary, at runtime replace
\ the first entry in the search-list
: vocabulary ( "char" -- )
    wordlist constant
    does>
    @i >r
    get-order swap drop 
    r> swap
    set-order
;
