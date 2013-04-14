.. _TimeOutLoop:

=================
Loop With Timeout
=================

Many lowlevel routines require to wait for a 
specific condition come true: A transmission is
finished, a flag is set etc. Most of the time
these action do work fine. But sometimes, the 
check loop does not terminate for some (usually 
stupid) reason and the program essentially 
crashed.


.. code-block:: forth

 \ wait for twi finish
 : twi.wait ( -- )
  begin
    TWCR c@ 80 and
  until
 ;

To circumvent such unwanted endless loops, a timeout
is often a solution. This ensures that the loop will
be left, regardless what happens. This recipe is based
upon the timer module from the :file:`lib/hardware` directory, 
that provides a millisecond tick that can be used for 
timeouts as well.

A timeout loop is basically a modified begin that
takes a runtime parameter: the maximum allowed time
for a particular loop. The loop terminater (again,
until, etc) is left unchanged. If the loop terminates
properly, the timeout is ignored, otherwise an *exception* 
is thrown. It is up to the programmer
to catch that exception. If it is not catched, the
forth interpreter will do it and returns to the
command prompt.

.. code-block:: forth

 \ timeout-begin is a potentially endless loop
 \ that terminates after a predefined timeout

 \ in the case of a timeout an exception is thrown
 variable alarmtime
 : (init-alarm)
   @tick + alarmtime !
 ;

 : (check-alarm) 
   alarmtime @ expired? if -512 throw then
 ;

 : timeout-begin
    postpone (init-alarm) 
    postpone begin
    postpone (check-alarm)
 ; immediate

Since the alarm checks are simple, some precautions should be
obeyed:

* The timer gives a millisecond resolution.
* The longest timeout period is 65.535 seconds (slightly more than a minute).
* The timeout-loop cannot be nested. If you want to use it in a multitasking
   environment, change the variable to a user.
* Dont forget to initialize and start the timer.

.. code-block:: forth

 \ testcase. timeout after 100ms
 : foo
  100 timeout-begin
    noop
  again
 ;
