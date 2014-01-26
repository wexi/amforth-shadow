
\ add a number to a value.
\ depends on carnal knowlegde
: +to
    ( n "name" -- )
    state @ if
      postpone '
    else
      '
    then 
    dup >r defer@ + r> defer! 
;
