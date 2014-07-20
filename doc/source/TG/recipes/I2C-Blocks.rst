.. _I2C EEPROM Blocks:

I2C EEPROM Blocks
=================

Stores Blocks in I2C serial eeprom attached to TWI.

Code
----

A quick start with the amforth-shell is as follows

.. code-block:: console

   (ATmega16)> #include i2c-eeprom-block.frt
   .... lots of files included, approx 1,5kB dictionary space
   ... for testing and inspekting
   > #include list-dump.frt \ from lib/ans94/block
   ... loading code and dependencies
    ok

Runtime
-------

The I2C hardware drivers need two initialization steps. The
first is the I2C/TWI hardware init (``i2c.init`` or simply
``i2c.init.default``) and the block init as ``i2c.ee.init``.
Only after these two commands, which need to run at turnkey,
the I2C memory modules can be accessed.

.. code-block:: console

   > i2c.init.default  \ initialize TWI hardware module in slow speed
   > i2c.ee.init       \ set up defers and pointers for the blocks

Place these two commands (or similiar ones) in the application
turnkey word.

Now the words from the Block word set are ready to use.

.. code-block:: forth

   > hex 1 list
    0143 FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF   ................
    0153 FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF   ................
    0163 FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF   ................
    0173 FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF   ................
    ....
    not modified
   > s" .( This is screen #1)" 1 block cmove update
   > 1 list 
    0143 2E 28 20 54 68 69 73 20 69 73 20 73 63 72 65 65   .( This is scree
    0153 6E 20 23 31 29 FF FF FF FF FF FF FF FF FF FF FF   n #1)...........
    0153 FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF   ................
    0163 FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF   ................
    0173 FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF FF   ................
    ....
    modified
   > flush-buffers \ or load a different block to write back block 1

More Information is in the recipe :ref:`Blocks`.

The specs of almost every serial EEPROM mention, that after a write
action, 5 milliseconds have to pass before the next access can be
made. The library takes care of this for every page written. It
splits the the data transfer of the (possibly) larger buffer size
to the actual page size of the controller too. To configure the
page sizes, the command ``i2c.ee.setpagesize`` should be used. It
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

The code assumes 2byte addresses inside the memory and a single
I2C hardware address (0x50). Modules which use multiple I2C
addresses  work within the limits of a single address. This address
can be changed any time.

.. code-block:: forth

   > $51 to i2c.ee.hwid
    ok
   >

.. seealso:: :ref:`TWI` :ref:`I2C Values`
