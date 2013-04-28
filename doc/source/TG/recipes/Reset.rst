.. _Reason For Reset:

================
Reason For Reset
================

If the controller constantly resets and prints only (part of)
the version string, it could be really nice to know why it behaves that way.
The controller itself stores the reset reason in the machine control register,
which gets unfortunatly overwritten real soon. amforth reads its content
upon startup into an unused register for later usage however.


Adding the following few lines to the applturnkey.asm file prints
the numeric information at every reset

::

    ; print the numeric reason for reset
    ; forth code: 10 c@ . cr
    .dw XT_DOLITERAL
    .dw 10
    .dw XT_CFETCH
    .dw XT_DOT
    .dw XT_CR

The following screen shows the program output after
power on reset (4), pressing the reset button (2)
and an ordinary call to ``cold``:

.. code-block:: console

 -- power on --
 > 4 
 amforth 4.7 ATmega328P 16000 kHz 
 -- pressing reset button --
 > 2 
 amforth 4.7 ATmega328P 16000 kHz 
 > cold
 0 
 amforth 4.7 ATmega328P 16000 kHz 
 > 


The exact meaning of the numbers is available by reading 
the respective controller datasheet (8 usually means watch 
dog reset).
