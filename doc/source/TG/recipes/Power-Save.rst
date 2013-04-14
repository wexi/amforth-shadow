============
Saving Power
============

The Atmegas have a number of power saving options. All of
them are available with the sleep instruction. Amforth has
a wrapper word with the same name which works on newer atmegas
only. You can simply include the file :file:`words/sleep.asm`
into your dict_appl.inc file and try assembling. If it does
not produce an error, the sleep instruction can be used.



The next step is a system that uses interrupt driven terminal
IO and possibly other interrupt sources. This makes it possible
to include the sleep call into the pause deferred word.

.. code-block:: forth

  : mypause 0 sleep ; ' mypause is pause

The exact meaning of the parameter (0) should be checked
with the datasheet. Also make sure, that the interrupts
are working properly. Otherwise the controller will sleep
until the reset button is pressed..

