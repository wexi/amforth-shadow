\ ***************************
\ RAM values: Useful for not-so-seldom
\ changing values.
\ ***************************
: Rvalue ( n "name" -- )
    (create) reveal
    postpone (value)
    here , 
    postpone @
    postpone !
    here ! 2 allot
;
