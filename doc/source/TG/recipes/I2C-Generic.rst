.. _I2C Generic:

I2C Generic
===========

The basic low-level words provide a rather raw access to the
I2C bus and its devices. Since the bus has some standard 
actions, which are always the same, some combinations are useful
factors.

``i2c.begin`` ( addr -- )
  start a I2C communication with the device addr. This involves sending
  the start condition and the address with the write bit cleared.

  In addition, the variable i2c.current gets the addr information to
  be available for user applications.

``i2c.end`` ( -- )
  The communication ends with sending the I2C stop condition and the 
  bus is released. The variable ``i2c.current`` is cleared.

With these commands an I2C transaction becomes

.. code-block:: forth

   i2c.hw.id i2c.begin .... i2c.end

Inside the begin/end scope, the basic I2C routines for
writing (``i2c.tx``) and reading can be used. They work
with the device selected with ``i2c.begin``.

Most I2C devices use rather small data packets they
exchange with the host. It's not uncommon to place the
data on the data stack instead of providing a RAM buffer.

For these tasks the following words are provided. They
to work within the begin/end scope described above.

``i2c.>n`` ( x_n .. x_1 n addr -- )
  Creates the i2C scope and send n bytes to the device. Afterwards
  the STOP condition is sent and the bus is released.

``i2c.n>`` ( n addr -- x_n .. x_1 )
  Create the I2C transaction scope and receive n bytes from the
  device. To acomplish that, a repeated start is triggered with
  the read bit of the addr set. Afterwards the STOP condition is
  sent and the bus is released.

``i2c.m>n`` ( n xm .. x1 m addr -- x1 .. xn )
  A combination of the two above. It creates the I2C transaction
  scope and sends m bytes to the device. Afterwards the data
  transfer direction is switched by sending a repeated start
  and n bytes are read from the device. Finally the STOP condition is
  sent and the bus is released.

Example - Compass
------------------

This example communicates with an I2C compass sensor 
mmc2120 (memsic). The I2C address is fixed at $30.

A measurement is triggered by putting the sensor in a
stable state and triggering the measurement. Finally 5
bytes are read back that contain the actual sensor data
and a status information.

.. code-block:: forth
   :linenos:

   #require i2c.frt
   #require ms.frt

   $30 constant i2c.compass
 
   \ internal commands
   : i2c.compass.setcoil
     %00000010 0 2 i2c.compass i2c.n>
   ;
   : i2c.compass.resetcoil
     %00000100 0 2 i2c.compass i2c.n>
   ;

   : i2c.compass.measure
     %00000001 0 2 i2c.compass i2c.n>
   ;

   : i2c.compass.fetchdata ( -- status x y )
     5 0 0 i2c.compass i2c.m>n
     ( -- status msb-x lsb-x msb-y lsb-y)
     swap >< or $fff and >r \ Y
     swap >< or $fff and r> \ X
   ;

   : i2c.compass.get ( -- status x y )
     i2c.compass.resetcoil 1ms
     i2c.compass.setcoil   5 ms
     i2c.compass.measure   5 ms
     i2c.compass.fetchdata
   ;

Communication is not time critical, so the slow speed standard
initialization is sufficient. To chack whether the device is
present and works properly, an I2C bus scan is made first

.. code-block:: console

   (ATmega1280)> i2c.init.default 
    ok
   (ATmega1280)> i2c.detect 
         0  1  2  3  4  5  6  7  8  9  A  B  C  D  E  F
    0:                       -- -- -- -- -- -- -- -- --
   10:  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
   20:  -- -- -- -- -- -- -- 27 -- -- -- -- -- -- -- --
   30:  30 -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
   40:  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
   50:  50 51 -- -- -- -- -- -- -- -- -- -- -- -- -- --
   60:  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
   70:  -- -- -- -- -- -- -- --                        
    ok
   (ATmega1280)>

Now it is time to read the data. Between the two get's
the sensor was rotated by approx 90 degrees.

.. code-block:: console

   (ATmega1280)> i2c.compass.get u. u. u.
    2006 1805 0  ok
   (ATmega1280)> i2c.compass.get u. u. u.
    2172 1900 0  ok
   (ATmega1280)>

Big Data
--------

Big data means that a device sends or receives more data
than the data stack can hold. In this case, the ``i2c.begin``
and ``i2c.end`` in combination with the low level ``i2c.tx``, 
``i2c.rx`` etc should be used. One example is the I2C EEPROM 
block driver. It transfers 512 bytes in one transaction and uses
a RAM buffer to actually hold the data.

.. seealso:: :ref:`I2C EEPROM`, :ref:`I2C Detect`,
   and :ref:`I2C EEPROM Blocks`
