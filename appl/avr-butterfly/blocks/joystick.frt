\ Butterfly Joystick
\ found at www.forth-ev.de
\ Authors: Michael Kalus and Ullrich Hoffmann

25 constant portB     \ used with c@ c!   20 higher than I/O-port
24 constant ddrB      \ see page 22 I/O Memory in ATmega169 manual
23 constant pinB
D0 constant maskB     \ uses pins PB7, PB6, PB4

2E constant portE
2D constant ddrE
2C constant pinE
0C constant maskE     \ uses pins PE3, PE2

: joy-init ( -- )
   ddrB c@  maskB not and ddrB c!   portB c@ maskB or portB c!
   ddrE c!  maskE not and ddrE c!   portE c@ maskE or portE c!
;

joy-init

: joy@ ( -- x )
    pinB c@ maskB and  pinE c@ maskE and or ;

: up? ( -- f )  joy@  40 and 0= ;
: down? ( -- f ) joy@ 80 and 0= ;
: left? ( -- f ) joy@ 4 and 0= ;
: right? ( -- f ) joy@ 8 and 0= ;
: center? ( -- f ) joy@ 10 and 0= ;

: .joy ( -- )
    up? if ." up " exit then
    down? if ." down " exit then
    left? if ." left " exit then
    right? if ." right " exit then
    center? if ." center " exit then ;

: ?? begin
    .joy
    500 0 do  1ms  loop
    key? until ;

\ finis
