\ generic timer routines, based
\ upon hardware modules.

\ requires
\   timer0.frt OR timer1.frt
\ provides
\   expired?  -- checks whether a counter has expired
\   elapsed   -- get the elapsed time in ms
\   after     -- execute a word after n ms after now
\   ms        -- alternative implementation for ANS94 ms
\   every     -- runs a word every cycle. the word provides an exit flag
\   every-second -- runs a word every second
\
: @tick 
   timer0.tick @ 
   \ timer1.tick @ 
   \ timer2.tick @
;

\ a timer is generally a timer tick number.
\ the actual meaning is either the start time
\ or the desired end time. All math is done 
\ using unsigned numbers. The maximum interval
\ is 65.535 seconds (little more then a minute)

\ check if the the timer t has expired
: expired? ( t -- flag )
   pause @tick - 0> invert
;

\ alternative implementation for ms
: ms @tick + begin dup expired? until drop ;

\ get the elapsed time since t
: elapsed ( t -- n )
    @tick swap -
;

\ execute the word after u milliseconds
\ ex: ' foo 10 after
: after ( xt u -- )
   ms execute
;

\ execute a word every u ms. The word
\ has the stack effect ( -- f). If f is
\ false, the loop ends
: every ( xt u -- )
   begin over over after until drop drop
;

\ 
: every-second ( xt -- )
   1000 every
;

