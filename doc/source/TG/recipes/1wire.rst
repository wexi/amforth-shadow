.. _1-Wire:

=====================
Dallas 1-Wire Devices
=====================

Dallas 1-Wire devices use 1 wire (besides ground level) to connect a peripheral
device with the hostmaster. A common use case are the temperature sensors
DS18[S|B]20. The communication protocol between the device and the micro controller
is simple but at some points very timing sensible.

The typical wiring is shown in the picture. The pull up resistor is recommended as
well as the connection to VCC.

.. figure:: 1wire-basic.*
    :align: right

This recipe is based upon work from Brad Rodriguez for the 4€4th project. He split
the 1-wire module into two parts: a bit level layer for all the dirty, time critical
work with only 2 small assembly words, and all other stuff in portable forth code.
Despite the fact, that he uses another controller type, the forth code remained
almost the same.


To use the 1-wire module new AmForth hexfiles have to be created with the
file :file:`drivers/1wire.asm` included into your project master file (e.g.
:file:`template.asm`) All configuration is done with 2 constants that are set
in the same file. They define, which pin is connected to the 1-wire bus.
There are no defaults

.. code-block:: none

  ; Port and Pin for the 1-wire bus.
  .equ OW_BIT=4
  .equ OW_PORT=PORTE

  .include "drivers/1wire.asm"

After burning the new system into the controller, two new words are
available: :command:`1w.reset` and :command:`1w.slot`. The :command:`1w.reset`
reinitializes the 1-wire bus and gives a flag, whether at least one device is
present or not. It would not make much sense to continue, if no device is
recognized.

.. code-block:: forth

  : 1wirejob ... 1w.reset if
      do-the-job
    then ... ;

The :command:`1w.slot` writes the LSB to the 1-wire bus and reads
one bit back, if a 1 was written. It turns off all interrupts for approx
60 microseconds to achieve the correct timing. The lower byte of the
TOS is rotated so repeated calls to :command:`1w.slot` can transfer
all bits of a bytes without further code. It is probably the smartest
word of the whole package.

.. code-block:: forth

  : 1w.touch ( c1 -- c2 )
      1w.slot 1w.slot 1w.slot 1w.slot
      1w.slot 1w.slot 1w.slot 1w.slot ;

  : 1w.put ( c -- ) 1w.touch drop ;
  : 1w.get ( -- c ) $ff 1w.touch ;

1-Wire Tools
------------

The first useful tool is the low level :command:`1w.reset`.
It checks whether at least one 1-wire device is present and
working or not. Other useful tools are in the file
:file:`1wire.frt`. They perform a ROM search to print all
ROM id's of the connected devices.

.. code-block:: console

  (ATmega1280)> hex 1w.showids

   10 11 E5 68  2  8  0 2A
   28 4C 75 CC  2  0  0 CD
  ok
  (ATmega1280)>

Code specialized for temperature sensors is in the file
:file:`1wire-temp.frt`. Keep in mind, that at least 2 different
sensor types are available with different result encoding’s. The
code is not currently capable to take care of the differences.

.. code-block:: console

  > hex create sensor2 28 , 4C , 75 , CC , 2 , 0 , 0 , CD ,
  ok
  > decimal sensor2 1w.convert 750 ms sensor2 readtemp temp>pad pad count type
  18.0 ok
  >

Possible Improvements
---------------------

The module opens the door to the 1-wire world. It is by far not complete
or finished. Some things could (or should?) be done better. Feel free to
improve them and share them, please.
