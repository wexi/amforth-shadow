\ *******************************************
\  defer operates in varios memory areas 
\  ( RAM )
\ *******************************************

\ #include postpone.frt
\ #include to-body.frt

\ ***************************
\ RAM defered
\ ***************************

: Rdefer@ ( xt1 -- xt2 )
    >body @i @
;

: Rdefer! ( xt2 xt1 -- )
    >body @i !
;

: Rdefer ( "name" -- )
      variable
      ['] Rdefer@ ,
      ['] Rdefer! ,
   does> ( i*x -- j*x ) 
      @i @ execute 
; 
