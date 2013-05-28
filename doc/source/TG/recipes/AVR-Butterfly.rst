.. _AVR Butterfly:

=============
AVR Butterfly
=============

The Butterfly Demo board from Atmel uses an Atmega169 controller.
It uses the internal 8MHz oscillator which can be calibrated with
the external 32kHz quartz.

amforth uses the serial connection (3pin connection on the left side)
as it's terminal.

amforth *completely* replaces the flash content. It overwrites the
bootloader. You definitely need ISP or JTAG to upload amforth to
the controller. Afterwards the serial programming does not work anymore.
You've been warned!

A lot of useful code and examples how to use the various parts of the
butterfly can be found at the wiki of the German FIG Forth e.V. at 
`www.forth-ev.de/wiki/doku.php/projects:avr:hilfsmittel 
<http://www.forth-ev.de/wiki/doku.php/projects:avr:hilfsmittel>`_.
Basic Knowledge of the German language is required.

The 32 kHz external quartz can be used to generate a timer tick. The following
definition may help:

.. code-block:: forth

 \ implement a timer with the 32kHz oszillator
 decimal
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

 variable tick

 \ increment the tick variable
 : timer2isr ( -- )
    1 tick +!
 ;

 \ initialize and start the timer.
 : +32kHz ( -- )
    \ Set timer 2 to asyncronous mode (32.768KHz crystal)
    1 3 lshift ASSR c!
    \ Start with prescaler 128
    1 0 lshift
    1 2 lshift or TCCR2A c!
    \ Wait until timer 2's external 32.768KHz crystal is stable
    begin
        ASSR c@
        1 2 lshift    \ TCN2UB
        1 0 lshift or \ TCR2UB
        1 1 lshift or \ OCR2UB
        and
    until
    0 tick !
    \ use overflow interrupt
    ['] timer2isr OVF2addr int!
    1 TIMSK2 c!
 ;

 : -32kHz
    \ Turn off interrupt
    0 TIMSK2 c!
    \ Turn off timer 2 asynchronous mode
    ASSR c@
    1 3 lshift invert and ASSR c!
 ;
