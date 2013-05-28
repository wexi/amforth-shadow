

\ common words for date&time

\ holds the ever increasing time ticks
\ unfortunatly, a day has more seconds
\ a 16bit variable can store.
2variable time \ the seconds of the current day
2variable date \ a day number

\ a background task
: next-second
   time 2@ 1. d+ 2dup 
   86399. d> if 
     2drop 0. 
     date 2@ 1. d+ date 2!
   then 
   time 2!
;

: dateinit
    0. time 2!
    0. date 2!
;

: time&date ( -- sec mon hour day month year )
    date 2@ 365 um/mod 30 /mod ( -- day month year )
    time 2@ 24 um/mod 60 /mod ( -- sec min hour ) 
;
