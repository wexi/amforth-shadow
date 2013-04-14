\ *******************************************
\  defer operates in varios memory areas 
\  ( EEPROM, RAM, USER )
\ *******************************************

\ #include postpone.frt
\ #include to-body.frt

\ ****************************
\ generic words
\ some are commented out since they 
\ are part of the core system
\ ****************************
\ xt2 is the word associated to word xt1
\ : defer@ ( xt1 -- xt2 ) 
\    dup   ( -- xt xt)
\    >body ( -- xt pfa )
\    1+    ( -- xt 'xt-dodefer@ )
\    i@    ( -- xt xt-dodefer@ )
\    execute 
\ ;

\ set the word xt1 to execute the word xt2
\ : defer! ( xt1 xt2 -- ) \ part of minimal
\    dup   ( -- xt1 xt2 xt2 )
\    >body ( -- xt1 xt2 pfa )
\    1+ 1+ ( -- xt1 xt2 'xt-dodefer! )
\    @i    ( -- xt1 xt2 xt-dodefer! )
\    execute 
\ ;

\ : is ( x <name> -- ) \ part of minimal
\    state @   
\    if 
\       ['] postpone defer!
\    else
\       ' defer!
\    then
\ ; immediate 
