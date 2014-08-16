.. _Blocks:

Blocks
======

Blocks are the simple mass storage for forth. The mass storage is
divided in a series of fixed size memory segments that are transferred
at once. To identify a memory segment, a block number is used. This number
start with 1 and can be as big as the cell size allows: 65535.

Every block has a fixed size. The ANS94 standard set this size to
1024 bytes, which is rather huge for most atmega's (only a few would
have enough RAM to handle it). The file :file:`lib/blocks/blocks.frt`
has a configurable constant called ``blocksize`` which is set to 512.
This matches the native block sizes of sd-cards too. That way amforth
can address 32Mb mass storage.

There is only one block buffer. The usual block commands are
available: ``block`` and ``buffer`` to load a new block and
save a modified block. ``update`` to mark the current block 
as modified. To display the block contents two different ``list`` 
commands are available: one for text data, and one for generic 
(binary) data (based upon ``dump``). ``load`` and ``thru`` work 
too.

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

The Block commands to the buffer management and provide the
high level access. The actual read and write process is delegated
to 2 deferred words: ``save-buffer`` and ``load-buffer``. They get
the RAM address of the block buffer and the block number to do 
the data transfer. They can be changed to talk with various backends.
So far the :ref:`I2C EEPROM Blocks` serial EEPROM modules and the 
built-in flash memory are supported. Other targets such as 
SD-Cards or SPI memory modules can be added as well.

