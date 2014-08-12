
\ place a recognizer as the last one

: place-rec ( xt -- )
    get-recognizers 1+ set-recognizers
;
