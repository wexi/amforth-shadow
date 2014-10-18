\ Make the compilation word list the same as the current first word list in the search order.

: definitions ( -- )
    get-order over set-current
    0 ?do drop loop \ clean up
;
