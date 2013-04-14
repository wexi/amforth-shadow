\ re-calibrate the internal oscillator with an extern
\ 32kHz quartz. Algorithm ported from buttload 2.0
\ by dean camera.2006/2007

decimal

62500 constant OSCCAL_TARGETCOUNT    \ F_CPU / (32768 / 256))

hex

: OSCCAL_CALIBRATE ( -- )
    \ Make sure all clock division is turned off (8MHz RC clock)
    1 7 lshift 61 c!
    0          61 c!

    \ Disable timer interrupts
    0 TIMSK1 c!
    0 TIMSK2 c!

    \ Set timer 2 to asyncronous mode (32.768KHz crystal)
    1 3 lshift ASSR c!
    \ Ensure timer 1 control register A is cleared
    0 TCCR1A c!
    \ Start both counters with no prescaling
    1 0 lshift TCCR1B c!
    1 0 lshift TCCR2A c!

    \ Wait until timer 2's external 32.768KHz crystal is stable
    begin
	ASSR c@
	[ 
	1 2 lshift    \ TCN2UB
	1 0 lshift or \ TCR2UB
	1 1 lshift or \ OCR2UB
	] literal
	and
    until
    \ inform the user
    ." 32kHz is stable." cr
	\ Clear the timer values
	0 TCNT1L !
	0 TCNT2 c!
        10 0 do \ maximum 10 rounds
          OSCCAL c@ .
          \ Wait until timer 2 overflows
            begin
                TIFR2 c@
                1 0 lshift \ TOV2
                and
	    until
	    \ Stop timer 1 so it can be read
	    0 TCCR1B c!
            ."  timer reached "
	    \ Check timer value against ideal constant
	    TCNT1L @
            dup u. cr
            \ timer1 may overflow,
            dup 2700 < if
              \ assume the counter value high
              drop OSCCAL_TARGETCOUNT 1+
            then
	    dup OSCCAL_TARGETCOUNT u> if
		OSCCAL c@ 1- OSCCAL c!
	    then
		OSCCAL_TARGETCOUNT u< if
                OSCCAL c@ 1+ OSCCAL c!
	    then
	    \ Clear timer 2 overflow flag
	    TIFR2 c@
	    1 0 lshift or \ TOV2
	    TIFR2 c!
	    \ Restart timer 1
	    1 0 lshift TCCR1B c! \ CS10

	    \ Reset counters
	    0 TCNT1L !
	    0 TCNT2 c!
	loop
	\ Stop the timers
	0 TCCR1B c!
	0 TCCR2A c!
    \ Turn off timer 2 asynchronous mode
    ASSR c@
    1 3 lshift invert and ASSR c!
;
