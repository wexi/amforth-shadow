.. _TWI:

==========================
Two Wire Interface TWI/I2C
==========================

The Two Wire Interface TWI connects peripheral devices with the 
controller. It is compatible with the I2C bus so any I2C
device can be connected to the TWI. The bus has 2 signal
lines (plus ground and V+). Every device has its own unique address. 
Multiple devices can be connected as long as they use different 
addresses. Most I2C devices use jumpers to select from a (usually 
short) list of possible devices, limiting the number of identical 
devices.

SCL Clock Calculator
--------------------

.. raw:: html
  :file: twi.html

Most client devices want a clock speed of 100 kHz or 400 kHz.
The bitrate register should be well above 10 if the controller
is the bus master. The calculation formula is

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
wraps the low level access to the TWI module registers and defines the 
basic commands. It depends on the bitnames library.

The library uses the 7bit addresses. The 8th bit to distinguish between
read and write access is added internally with the words ``i2c.wr`` and
``i2c.rd``.

I2C Data Exchange
-----------------

The I2C Data Exchange is initiated with ``i2c.begin``. This word takes
a 7bit I2C hardware address as parameter and aquires the bus. It sends
the I2C START condition too.

Next the data read/write actions take place. All communication is
directed to the selected device only. Do not send a STOP condition.

The final action is the ``i2c.end`` which releases the bus and
sends the I2C STOP condition. Thereafter the next bus cycle can
start.


.. seealso:: :ref:`i2C Generic`, :ref:`I2C Detect`, :ref:`I2C Values`, 
   :ref:`I2C EEPROM`  and :ref:`I2C EEPROM Blocks`
