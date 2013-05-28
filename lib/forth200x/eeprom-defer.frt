\ *******************************************
\  defer operates in varios memory areas 
\  ( EEPROM )
\ *******************************************

\ #include postpone.frt
\ #include to-body.frt

\ ****************************
\ EEPROM defers
\ ****************************
: Edefer@ ( xt1 -- xt2 )
    >body @i @e
;

: Edefer! ( xt2 xt1 -- )
    >body @i !e
;

: Edefer ( "name" -- )
      create  
      edp  
      dup ,             \ save in dictionary
      ['] Edefer@ ,
      ['] Edefer! ,
      dup 1+ 1+ to edp  \ allot 1 cell in EEPROM
      ['] abort swap !e \ default action is abort
   does> ( i*x -- j*x ) 
      @i @e execute
; 

\ Edefer defer ' Edefer is defer
