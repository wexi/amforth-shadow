\ Butterfly Piezo
\ found at www.forth-ev.de
\ Authors: Michael Kalus and Ullrich Hoffmann
\
25 constant portB     \ used with c@ c!   20 higher than I/O-port
24 constant ddrB      \ see page 22 I/O Memory in ATmega169 manual
23 constant pinB
20 constant piezoMask \ uses pins PB5

: piezo-init ( -- )
   ddrB c@  piezoMask or ddrB c! ;  

piezo-init

: click ( -- )  portB c@ piezoMask or portB c! ;
: clack ( -- )  portB c@ piezoMask not and portB c! ;

variable fudge  5 fudge !

: delay ( n -- )  
   begin ?dup while  fudge @ 
       begin ?dup while 1- repeat
       1-
   repeat ;

: tone ( dur 1/pitch -- ) 
     dup >r / r>  \ quotient * pitch = duration
     begin 
       over
     while
       click dup delay
       clack dup delay
       swap 1- swap 
     repeat
     drop drop ; 
     
\ name your tones

: beep ( -- )  100 3 tone ;
