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
least 8 Kbit (1 KByte) should work.

Special care must be taken when data is written across the EEPROM internal
page boundaries. Most EEPROM will wrap around the read and write operation
to the beginning of the current EEPROM page. For this library only the
block access words know about eeprom pages.

Source Code
-----------

The source code for the EEPROM is in the file :file:`lib/hardware/i2c-eeprom.frt`.
It depends on :file:`lib/hardware/i2c.frt`. It is recommended to use the
amforth-shell to upload the file since it automatically resolves all dependencies.

.. code-block:: console

   (ATmega16)> #include i2c-eeprom.frt
   .... lots of files included
    ok
   (ATmega16)>

Runtime 
-------

Using the eeprom requires the setup of the TWI module of the controller.

.. code-block:: console

   (ATmega16)> i2c.init.default  \ initialize TWI hardware module in slow speed
    ok
   (ATmega16)>

When the I2C system works (check with ``i2c.detect`` from :ref:`I2C Detect`)
everything is ready to store data. A more convenient method to handle more
data is what the :ref:`I2C EEPROM Blocks` provide.

Access
------

There are words for 1 byte data and cell sized (2 bytes) data. They need two
address information: the hardware id (usually $50) and the address within
the selected device.

``c@i2c.ee`` ( addr hwid - c )
  Fetch a byte from addr using the I2C module identified with hwid

``c!i2c.ee`` ( c addr hwid -- )
  Store a byte at addr using the I2C module identified with hwid

``@i2c.ee`` ( addr hwid - n )
  fetch a cell from addr using the I2C module identified with hwid

``!i2c.ee`` ( n addr hwid -- )
  Store a cell at addr using the I2C module identified with hwid

.. warning:: Note that the write operations *do not* wait. Most (but not all)
             I2C memory modules require a 5 millisecond delay after a write before 
             the next access can be made.


.. seealso:: :ref:`I2C EEPROM Blocks` and :ref:`I2C Values`
