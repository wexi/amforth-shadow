.. _TWI:

==========================
Two Wire Interface TWI/I2C
==========================

The Two Wire Interface connects peripheral devices with the 
controller. It is compatible with the I2C bus so any I2C
device can be connected to the TWI. The bus conidts of 2 signal
lines. Every device has an address. Multiple devices can be connected
as long as they use different addresses. Most I2C devices use jumpers
to select from a (usually short) list of possible devices, limiting
the number of identical devices.

SCL Clock Calculator
--------------------

.. raw:: html
  :file: twi.html

Most client devices want a clock speed of 100 kHz or 400 kHz.
The bitrate register should be well above 10 if the controller
is the bus master. The calculation formula

:math:`twiclock = \dfrac{cpu clock}{16+2*bitrateregister*{4^{prescaler}}}`

The next table shows the resulting twi clocks for a 8MHz device clock

+-----------+------------------------------------------------------------------+
| prescaler |  bitrate register (may be any value between 0 and 255)           |
|           +---------+---------+---------+---------+--------+--------+--------+
|           |     4   |     8   |      16 |     32  |    64  |    128 |  255   |
+===========+=========+=========+=========+=========+========+========+========+
|  0        | 333.333 | 250.000 | 166.667 | 100.000 | 55.556 | 29.412 | 15.209 |
+-----------+---------+---------+---------+---------+--------+--------+--------+
|  1        | 166.667 | 100.000 | 55.556  | 29.412  | 15.152 | 7.692  | 3.891  |
+-----------+---------+---------+---------+---------+--------+--------+--------+
|  2        | 55.556  | 29.412  | 15.152  | 7.692   | 3.876  | 1.946  |   978  |
+-----------+---------+---------+---------+---------+--------+--------+--------+
|  3        | 15.152  | 7.692   | 3.876   | 1.946   |  975   |  488   |  245   |
+-----------+---------+---------+---------+---------+--------+--------+--------+

Basic words
-----------

The foundation of the TWI/I2C library is the file :file:`i2c.frt`. It
wraps the low level access to the registers and defines the basic
commands. It depends on the bitnames library.

The library uses the 7bit addresses. The 8th bit to distinguish between
read and write access is added internally with the words ``i2c.wr`` and
``i2c.rd``.

The specs of almost every serial EEPROM mention, that after a write
action, 5 milliseconds have to pass before the next access can be
made. The library does *not* wait. It is up to the user to make sure
that a write access gets enough time. An example how to do it is 
shown in the I2C value section below.

I2C/TWI Bus Scanner
-------------------

The word ``i2c.detect`` from file :file:`i2c-detect.frt` provides
a nicely formatted overview of all connected I2C devices.

.. code-block:: shell

   (ATmega1280)> i2c.init.default
     ok 
   (ATmega1280)> i2c.detect 
          0  1  2  3  4  5  6  7  8  9  A  B  C  D  E  F
     0:  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
    10:  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
    20:  -- -- -- -- -- -- -- 27 -- -- -- -- -- -- -- --
    30:  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
    40:  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
    50:  50 -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
    60:  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
    70:  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
     ok
  (ATmega1280)>

In this example, two devices are connected: a port expander
(PCF 8674) and an EEPROM (24c64).

I2C/TWI VALUEs
--------------

A nice feature of the VALUE concept is that the storage where
the data is actually kept is not disclosed. That makes it easy
to create a VALUE that behaves exactly like any other VALUE
and keeps the data in an external i2C eeprom.


.. code-block:: forth

   #require value.frt
   #require quotations.frt
   #require ms.frt
   #require i2c-eeprom.frt

   \ initial addr ...
   \ 17      0    i2c.value "name"
   : i2c.value ( n addr -- )
     (value)
     dup ,
     [: @i @i2c.ee ;] , 
     [: @i !i2c.ee 5 ms ;] ,
     !i2c.ee
   ; 

The #require directives are processed by the amforth-shell, of you don't use
it, comment them out and make sure that the files and their further dependencies
are sent to the controller beforhand. 

The usage is straightforward:

.. code-block:: shell

   (ATmega16)> $beef 0 i2c.value answer
     ok
   (ATmega16)> answer hex u.
    BEEF  ok
   (ATmega16)> $dead to answer
    ok
   (ATmega16)> answer hex u.
    DEAD  ok
   (ATmega16)>

Since there is no memory manager for the serial eeprom, the location of the data
is given explicitly when creating the value (0). Note the 5 ms delay after writing
the data. This is to make sure that the eeprom get enough time to complete its
internal activities.

TWI/I2C Blocks
--------------

TBD/WiP

