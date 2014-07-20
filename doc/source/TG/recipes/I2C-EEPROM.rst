.. _I2C EEPROM:

I2C EEPROM
==========

I2C EEPROMs are attached to the I2C bus (TWI). They provide usually
a few KB of storage which can be re-programmed quite often (millions
of write cycles). Some chips can be reprogrammed withouts limits (FRAM's).

Every I2C module has one (or more) hardware identifier(s). This address 
is needed to select one chip of possibly many on the bus.The
default for EEPROMs is $50. If a chip is selected, the actual memory 
address and the data are transferred. The current I2C library works 
with chips that use a 2 byte address. Consult the datasheet, if in 
doubt. EEPROMs with only one I2C address (``i2c.detect``) and at 
least 8Kbit (1KByte) should work.

Source Code
-----------

The source code for the EEPROM is in the file :file:`lib/hardware/i2c-eeprom.frt`.
It depends on :file:`lib/hardware/i2c.frt`. It is recommended to use the
amforth-shell to upload the file sind it automatically resolves all dependencies.

.. code-block:: console

   (ATmega16)> #include i2c-eeprom.frt
   .... lots of files included
    ok
   (ATmega16)>

Runtime 
-------

Using the eeprom requires the setup of the TWI module of the controller and
selecting a chip hardware id.

.. code-block:: console

   (ATmega16)> i2c.init.default  \ initialize TWI hardware module in slow speed
    ok
   (ATmega16)> i2c.ee.hwid hex .
    50 ok
   (ATmega16)>

If your hardware uses a different hwid, change it:

.. code-block:: console

    (ATmega16)> $54 to i2c.ee.hwid
     ok
    (ATmega16)>

This number is kept in the controller EEPROM (an Evalue) and is permanently stored.

When the I2C system works (check with ``i2c.detect`` from :ref:`I2C Detect`)
everything is ready to store data. A more convenient method to handle more
data is what the :ref:`I2C EEPROM Blocks` provide.

Access
------

There are words for 1 byte data and cell sized (2 bytes) data. They follow the usual
name pattern: 

``c@i2c.ee`` ( addr - c )
  Fetch a byte from addr using the I2C module identified with i2c.ee.hwid

``c!i2c.ee`` ( c addr -- )
  Store a byte at addr using the I2C module identified with i2c.ee.hwid

``@i2c.ee`` ( addr - n )
  fetch a cell from addr using the I2C module identified with i2c.ee.hwid

``!i2c.ee`` ( n addr -- )
  Store a cell at addr using the I2C module identified with i2c.ee.hwid

Note that the write operations *do not* wait. Most (but not all)
I2C eeproms require a 5 millisecond delay after a write before 
the next access can be made. Add this delay youself!


.. seealso:: :ref:`I2C EEPROM Blocks` and :ref:`I2C Values`
