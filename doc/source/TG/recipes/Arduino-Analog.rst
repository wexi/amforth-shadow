.. _Arduino Analog:

==============
Arduino Analog
==============

Accessing the Analog ports for reading needs the files
:file:`lib/bitnames.frt` for basic routines, the file
:file:`appl/arduino/blocks/ports-arduinotype.frt` for the actual ports and
:file:`appl/arduino/blocks/wiring_analog.frt` for the code to do the work.
After loading the files, the Analog Conversion Module has to be initialized
with the :command:`adc.init`. This has to be done after a reset and power
cycle as well.

Now it is time to connect some hardware to one of the ports labled *Analog In*.
Once this is done, some simple commands will work:

.. code-block:: console

  > analog.1 adc.get u.
  67 ok
  >

The ADC on the ATmega has a resolution of 10 bits, thus a number between
0 and 1023 can be expected as the result.

Note that the ADC module needs some time between two conversion. If you do it too
fast, expect malfunctions or even crashes. A simple :command:`50 ms`
circumvent most problems.

.. code-block:: forth

 \ continuously read the adc port
 \ and print the new value if it
 \ has changed considerably since last round
 \ note the 50ms delay to keep things
 \ run smoothly. A key press will
 \ return to the command prompt
 : analog-test
    0
    begin
      ( -- old )
      analog.1 adc.get ( -- old new  )
      swap over        ( -- new old new )
      - abs 6 >        ( -- new f )
      50 ms            ( wait...)
      if dup u. then   ( -- new )
      key?             ( -- new f )
    until
    key drop
    drop ;
