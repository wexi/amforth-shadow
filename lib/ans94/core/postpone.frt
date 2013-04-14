\ always compile the next word
\ Implementation by Ulrich Hoffmann

: postpone ( -- )
    parse-name find-name dup 0< 
    if \ immediate word found
	   drop compile compile , exit 
    then
    if \ normal word found
	  , exit 
    then
    drop
    -&13 throw 
; immediate
