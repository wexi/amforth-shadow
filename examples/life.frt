\ Conway's Game of Life, or Occam's Razor Dulled

\ The original ANS Forth version by Leo Wong (see bottom)
\   has been modified slightly to allow it to run under
\   kForth. Also, delays have been changed from 1000 ms to
\   100 ms for faster update --- K. Myneni, 12-26-2001
\
marker  Genesis

\ needs portpone.frt, marker.frt, 2x.frt, ans.frt
\ and finally vt100.frt already loaded

decimal

\ ANS Forth this life is remains and
1 chars constant /char
: c+!  ( char c-addr -- )  dup >r  c@ +  r> c! ;

\ the universal pattern; optimum is 25x80, but that
\ requires memory. The 10x20 screen works on an Atmega16

&10 constant How-Deep
&20 constant How-Wide

\ nothing beyound this line should be changed

How-Wide How-Deep *  1-  \ 1- prevents scrolling on my screen
   constant Homes

\ world wrap
: World
    variable  ( -- ) Homes chars allot
    does>  ( u -- c-addr )  @i swap Homes +  Homes mod  chars + ;

World old
World new

\ biostatistics

\ begin hexadecimal numbering
hex  \ hex xy : x holds life , y holds neighbors count

10 constant Alive  \ 0y = not alive

\ Conway's rules:
\ a life depends on the number of its next-door neighbors

\ it dies if it has fewer than 2 neighbors
: Lonely  ( char -- flag )  12 < ;

\ it dies if it has more than 3 neighbors
: Crowded  ( char -- flag )  13 > ;

: -Sustaining  ( char -- flag )
    dup Lonely  swap Crowded  or ;

\ it is born if it has exactly 3 neighbors
: Quickening  ( char -- flag )
    03 = ;

\ back to decimal
decimal

\ compass points
: N  ( i -- j )  How-Wide - ;
: S  ( i -- j )  How-Wide + ;
: E  ( i -- j )  1+ ;
: W  ( i -- j )  1- ;

\ census
: Home+!  ( -1|1 i -- )  >r  Alive *  r> new c+! ;

: Neighbors+!  ( -1|0|1 i -- )
   2dup N W new c+!  2dup N new c+!  2dup N E new c+!
   2dup   W new c+!  (     i      )  2dup   E new c+!
   2dup S W new c+!  2dup S new c+!       S E new c+! ;

: Bureau-of-Vital-Statistics ( -1|1 i -- )
   2dup Home+!  Neighbors+! ;

\ mortal coils
char ? constant Soul
    bl constant Body

\ at home
: Home  ( char i -- )  How-Wide /mod at-xy  emit ;

\ changes, changes
: Is-Born  ( i -- )
   Soul over Home
   1 swap Bureau-of-Vital-Statistics ;
: Dies  ( i -- )
   Body over Home
   -1 swap Bureau-of-Vital-Statistics ;

\ the one and the many
: One  ( c-addr -- i )
   0 old -  /char / ;
: Everything  ( -- )
   0 old  Homes
   begin  dup
   while  over c@  dup Alive and
      if   -Sustaining if  over One Dies     then
      else  Quickening if  over One Is-Born  then then
      1 /string
   repeat  2drop
   How-Wide 1- How-Deep 1- at-xy ;

\ in the beginning
: Void  ( -- )
   0 old  Homes blank ;

\ spirit
: Voice  ( -- c-addr u )
   page
   ." Say: "  0 new  dup Homes accept ;

\ subtlety
: Serpent  ( -- )
   0 2 at-xy  ." Press a key for knowledge."  key drop
   0 2 at-xy  ." Press space to re-start, Esc to escape life." ;

\ the primal state
: Innocence  ( -- )
   Homes 0
   do  i new c@  Alive /  i Neighbors+!  loop ;

\ children become parents
: Passes  ( -- )  0 new  0 old  Homes  cmove ;

\ a garden
: Paradise  ( c-addr u -- )
   >r  How-Deep How-Wide *  How-Deep 2 mod 0=  How-Wide and -
   r@  -  2/  old
   r>  cmove
   0 old  Homes 0
   do  count bl <>
       dup if  Soul i Home  then
       Alive and  i new c!
   loop  drop
   Serpent
   Innocence Passes ;

: Creation  ( -- )  Void Voice Paradise ;

\ the human element

( 1000) 100 constant Ideas
: Dreams  ( -- )  Ideas ms ;

( 1000) 100 constant Images
: Meditation  ( -- )  Images ms ;

\ free will
: Action  ( -- char )
   key? dup
   if  drop key
       dup bl = if  Creation  then
   then ;

\ environmental dependence
27 constant Escape

\ history
: Goes-On  ( -- )
   begin  Everything Passes
          Dreams Action Meditation
          Escape = until ;

\ a vision
: Life  ( -- )  Creation Goes-On ;


\ run the word Life and enjoy

\ Copyright 1995 Leo Wong
\ hello@albany.net
\ http://www.albany.net/~hello/
