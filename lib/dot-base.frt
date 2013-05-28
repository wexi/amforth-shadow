
\ print current BASE in decimal, keep BASE intact
: .base ( -- )
    base @ dup decimal . base !
;  
