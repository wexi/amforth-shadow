\ Defines a word which resets the dictionary and removes itself when called.
\ EXPECT TROUBLE with Edefer values addressing removed code!

\ #include reverse.frt

: (marker)  ( ip -- w ip+1 )  dup @i swap 1+  ;	  \ ip is f-addr

: marker
   dp here ehere
   get-current dup @e    ( dp here ehere cur-wl-id cur-wl-ip )
   create				\ restore cur-wl to forget this marker
   get-order dup ,			\ save wl-len
   0  ?do  dup @e , ,  loop		\ save wl-ip wl-id pairs
   , ,					\ save cur-wl-ip cur-wl-id
   , , ,				\ save create ehere here dp
  does>
   (marker) swap dup >r 0     ( ip wl-len 0 ) ( R: wl-len )
   ?do		              ( ip )
      (marker) (marker) -rot  ( ... ip wl-ip wl-id ) 
      dup -rot !e swap        ( ... wl-id ip )
   loop
   r> swap >r                 ( ... wl-id wl-len ) ( R: ip )
   reverse set-order
   r> (marker) (marker) -rot !e
   (marker) swap to ehere
   (marker) swap to here
   @i to dp
;

   