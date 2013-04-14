
\ place a recognizer as the last active one

: place-rec ( xt -- )
    get-recognizer 
    1-  n>r    \ move away all but the last one
    swap       \ place the new recognizer
    nr> 1+ 1+  \ get all others back and increase the count
    set-recognizer  \ save and activate
;
