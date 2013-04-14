\ ***** lcd look-up table for AVR Butterfly ***** 

hex

create sgmt \ segment lookup table
0A51 , 2A80 , 0000 , 0A00 , 0A51 , 0000 ,
5559 , 0118 , 1e11 , 1b11 , 0b50 , 1b41 ,
1f41 , 0111 , 1f51 , 1b51 , 0000 , 0000 ,
0000 , 0000 , 0000 , 0000 , 0000 , 0f51 ,
3991 , 1441 , 3191 , 1e41 , 0e41 , 1d41 ,
0f50 , 2080 , 1510 , 8648 , 1440 , 0578 ,
8570 , 1551 , 0e51 , 9551 , 8e51 , 9021 ,
2081 , 1550 , 4448 , c550 , c028 , 2028 ,
5009 , 0000 , 0000 , 0000 , 0000 , 0000 ,

\ ***** control display *****

: lcdon ( -- ) \ init lcd control registers
  \ EF E7 c!   \ lcdccr: driver time 50%; contrast 3,35V
  E0 E7 c!   \ ... 2,60V looks better.
  07 E6 c!   \ lcdfrr: (ps=0 == 1/16, cd=7) --> 36,6 Hz
  77 E5 c!   \ lcdcrb: cs=0, 2b=1, mux=11==1/4 duty, pm=111==all
  C0 E4 c! ; \ lcdcra: en=1, ab=1, if=0, ie=0, bl=0=on

: lcdoff ( -- ) 0 E4 c! ; \ disable LCD display.    

\ turn segment blank bit on&off
: segon  ( -- ) E4 c@ 0FE and E4 c! ;    
: segoff ( -- ) E4 c@   1  or E4 c! ;

\ ***** move characters into lcd display *****

: cseg ( char -- seg )     \ get segment code.
  dup 02a < 
    if drop 0 exit then  \ we start with: $2A='*' 
  dup 40 > if 5F and then  \ upper characters only
  02a - sgmt + i@ ;     

: cnib ( seg -- n0 n1 n2 n3 ) \ convert to nibbles.
  >r
  r@            0f and 
  r@  04 rshift 0f and
  r@  08 rshift 0f and
  r>  0C rshift 0f and ;
  
: lo! ( n0 n1 n2 n3 lcddr0 -- ) \ fit in even digits
  >r
  r@ 0F + c! 
  r@ 0A + c! 
  r@ 05 + c! 
  r>      c! ;
  
: hi! ( n0 n1 n2 n3 lcddr0 -- ) \ fit in odd digits
  >r
  4 lshift  r@ 0f + c@    or r@ 0f + c! 
  4 lshift  r@ 0a + c@    or r@ 0a + c! 
  4 lshift  r@ 05 + c@    or r@ 05 + c! 
  4 lshift  r@      c@ or r>         c! ;
  
: (wlcd) ( tob -- tob n0 n1 n2 n3 lcddr0 )  
    dup c@ cseg cnib 0ec 
;

: wlcd ( adr -- ) \ move 6 chars from adr to lcd data registers.
  (wlcd)     lo! 1+
  (wlcd)     hi! 1+  
  (wlcd) 1+  lo! 1+
  (wlcd) 1+  hi! 1+
  (wlcd) 2 + lo! 1+
  (wlcd) 2 + hi! 
  drop ;

\ ***** create a character buffer *****

variable >out
variable tob  0f allot \ make terminal output buffer

: cnul ( -- ) \ clear tob.
  0f 0 do bl tob i + c! loop ; 

: lcdcr ( -- ) 0 >out ! cnul ;  lcdcr \ reset cursor.

: lcdemit ( c -- ) \ emits character into character buffer.
  >out @ 0f > if drop  \ 16 characters, cut rest 
  else tob >out @ + c!   1 >out +! then ;

\ ***** redirect regular output to lcd *****

: <lcd>   ( -- )   lcdcr    ['] lcdemit is emit ;
: </lcd>  ( -- )   tob wlcd ['] tx0     is emit  ;

\ Now we can do a phrase like: ... <lcd> ." hallo" </lcd> ...
\ Or have something like: ... ( n -- ) <lcd> . </lcd> ...

\ ***** special lcd output *****

: lcd. ( n -- )  <lcd> . </lcd> ;

\ You can have something like: ... 1122 lcd. ...

: lcd" ( 'ccc' -- ) 
    postpone <lcd> postpone ." postpone </lcd> ; immediate

\ Now we can compile a phrase like: ... lcd" hallo" ...


\ finis 25.03.2007 mka
\ modified 20.05.2007 mt
