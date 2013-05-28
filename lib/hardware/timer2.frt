\ TIMER_2 example
\ uses an external 32kHz clock quartz
\ 32kHz / 256 => 128 ticks per second
\   7.8125 ms per tick (gets approximated)
\ --> less accurate than the other timers, but...
\
\ 16 ticks are 125ms
\    125 = 15*8+5: 15x 8-tock and a short step
\ or 125 = 15*7+20:15x 7-tock and a huge step 
\ -> we choose the 1st variant
\ provides
\  timer2.tick      -- increasing ticker
\ 

variable timer2.tick
variable timer2.tock \ used internally 

: timer2.isr ( -- )
  timer2.tock @ 1+ 15 = if
    0 timer2.tock !
    5 timer2.tick +!
  else
    8 timer2.tick +!
    1 timer2.tock +!
  then
;

: timer2.init ( -- )
    1 TCCR2 c!
    8 ASSR  c!
    ['] timer2.isr TIMER2_OVFAddr int!
;

: timer2.start
    0 timer2.tick !
    0 timer2.tock !
    TIMSK c@ $40 or TIMSK c! ( enable timer2 interupt )
;

: timer2.stop
   TIMSK c@ [ $40 invert ] literal and TIMSK c! \ stop timer2 interrupt
;
