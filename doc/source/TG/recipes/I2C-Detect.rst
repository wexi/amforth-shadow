.. _I2C Detect:

I2C Bus Scanner
===================

The word ``i2c.detect`` from file :file:`i2c-detect.frt` provides
a nicely formatted overview of all connected I2C devices.

.. code-block:: console

   (ATmega1280)> i2c.init.default
     ok 
   (ATmega1280)> i2c.detect 
          0  1  2  3  4  5  6  7  8  9  A  B  C  D  E  F
     0:                       -- -- -- -- -- -- -- -- --
    10:  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
    20:  -- -- -- -- -- -- -- 27 -- -- -- -- -- -- -- --
    30:  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
    40:  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
    50:  50 51 -- -- -- -- -- -- -- -- -- -- -- -- -- --
    60:  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
    70:  -- -- -- -- -- -- -- --                        
     ok
  (ATmega1280)>

In this example, two devices are connected: a port expander
(PCF 8574) and two EEPROMs (a 24c64 and a ST 4128 BWP).

The missing addresses are excluded since they are not valid
I2C 7bit device addresses. They are not probed as well.

A similiar command exists on Linux platforms.

.. seealso:: :ref:`TWI`, :ref:`I2C Generic`
