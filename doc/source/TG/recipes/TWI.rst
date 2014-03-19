.. _TWI:

==========================
Two Wire Interface TWI/I2C
==========================

The Two Wire Interface connects peripheral devices with the 
controller. It is compatible with the I2C bus so any I2C
device can be connected to the TWI. The bus consits of 2 signal
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

