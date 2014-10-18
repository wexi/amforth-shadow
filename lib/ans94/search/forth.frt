\ replace the first search order entry
\ with forth-wordlist

: forth
    get-order nip
    forth-wordlist swap set-order
;
