\ *******************************************
\  defer operates in varios memory areas 
\ *******************************************

\ #include postpone.frt

: action-of
    state @
    if
       postpone ['] postpone defer@
    else
       ' defer@
    then
; immediate
