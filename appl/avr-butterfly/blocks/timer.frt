\ implement a timer with the 32kHz oszillator
\ generates an interval of (almost) exactly 1 second

decimal

\ comment the following definitions if atmega169.frt is loaded
\ timer/counter subsystem
182 constant ASSR

\ timer/counter2
 179 constant OCR2A
 178 constant TCNT2
 176 constant TCCR2A
 112 constant TIMSK2
 75 constant GPIOR2
 55 constant TIFR2
 4  constant    OC2addr
 5  constant    OVF2addr
\ end of block-to-comment

variable tick

\ increment the tick variable
: timer2isr ( -- )
    1 tick +!
;

\ initialize and start the timer.
: +32kHz ( -- )
    \ Set timer 2 to asyncronous mode (32.768KHz crystal)
    [ 1 3 lshift ] literal ASSR c!

    \ Start with prescaler 128
    [
    1 0 lshift 
    1 2 lshift or ] literal TCCR2A c!

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
    0 tick !
    \ use overflow interrupt
    ['] timer2isr OVF2addr int!
    1 TIMSK2 c!
;

\ Turn off interrupt
: -32kHz 
    0 TIMSK2 c!
    \ Turn off timer 2 asynchronous mode
    ASSR c@
    1 3 lshift invert and ASSR c!
    ['] noop OVF2addr int!
;
