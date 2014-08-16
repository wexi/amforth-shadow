.. _I2C EEPROM Blocks:

I2C EEPROM Blocks
=================

Stores Blocks in I2C serial EEPROM attached to TWI.

Code
----

A quick start with the amforth-shell is as follows

.. code-block:: console

   (ATmega16)> #include i2c-eeprom-block.frt
   .... lots of files included, approx 1,5kB dictionary space
   ... for testing and inspekting
   (ATmega16)> #include list-dump.frt \ from lib/ans94/block
   ... loading code and dependencies
    ok

Configuration
-------------

The I2C hardware drivers need two initialization steps. The
first is the I2C/TWI hardware init (``i2c.init`` or simply
``i2c.init.default``) and the device init as ``i2c.ee.blockinit``.
After these two commands, which need to run before use in 
e.g. turnkey, the I2C memory modules can be accessed.

.. code-block:: console

   > i2c.init.default  \ initialize TWI hardware module in slow speed
   > 24c64 $50 i2c.ee.blockinit \ set up for block level access

Place these two commands (or similar ones) in the application
turnkey word. The parameters to the ``i2c.ee.blockinit`` are the
page-size (there are some convenient constants, see below) and 
the I2C hardware id ($50). All subsequent access to the device
depend on these information. They can be changed any time.

More Information is in the recipe :ref:`Blocks`.

The specs of almost every serial EEPROM mention, that after a write
action, 5 milliseconds have to pass before the next access can be
made. The library takes care of this for every page written. It
splits the the data transfer of the (possibly) larger buffer size
to the actual page size of the controller too. To configure the
page sizes, the command ``i2c.ee.setpagesize`` has to be used. It
takes the page size in bytes as the parameter. To make the source
code more readably, constant names like ``24c64`` are provided.

+--------------+-------+-----------+
| Device Type  | Size  | Page Size |
+--------------+-------+-----------+
| 24c08        |  1KB  |  16       |
+--------------+-------+-----------+
| 24c16        |  2KB  |  16       |
+--------------+-------+-----------+
| 24c32        |  4KB  |  32       |
+--------------+-------+-----------+
| 24c64        |  8KB  |  32       | 
+--------------+-------+-----------+
| 24c128       | 16KB  |  64       | 
+--------------+-------+-----------+
| 24c256       | 32KB  |  64       | 
+--------------+-------+-----------+
| 24c512       | 64KB  | 128       | 
+--------------+-------+-----------+
| 24c1024      |128KB  | 256       | 
+--------------+-------+-----------+

The code assumes 2-byte addresses inside the memory and a single
I2C hardware address (0x50). Modules which use multiple I2C
addresses  work within the limits of a single address.

.. seealso:: :ref:`TWI` :ref:`I2C Values`
