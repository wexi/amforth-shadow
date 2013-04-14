\ *******************************************
\  defer operates in varios memory areas 
\  ( USER )
\ *******************************************

\ #include postpone.frt
\ #include to-body.frt

\ ***************************
\ USER defered 
\ **************************
: Udefer@ ( xt1 -- xt2 )
    >body @i up@ + @
;

: Udefer! ( xt2 xt1 -- )
    >body @i up@ + !
;


: Udefer ( u "name" -- )
      user
      ['] Udefer@ ,
      ['] Udefer! ,
   does> ( i*x -- j*x ) 
      @i up@ + @ execute 
;
