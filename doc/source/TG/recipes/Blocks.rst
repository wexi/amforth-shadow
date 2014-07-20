.. _Blocks:

Blocks
======

Blocks are a trivial mass storage for forth. They use a block number
and provide a memory region that is assoziated with it. Since the
block number is a single cell number, 65535 blocks are available.

Every block has a fixed size. The ANS94 standard set this size to
1024 bytes, which is rather huge for most atmegas (only a few would
have enough RAM to handle it). The file :file:`lib/blocks/blocks.frt`
has a configurable constant called ``blocksize`` which is set to 512.
This matches the block sizes of sd-cards too.

There is only one block buffer. The usual block commands are
available: ``block`` and ``buffer`` to load a new block and
save a modified block. ``update`` to mark a block as modfied.
To display the block contents two different ``list`` commands
are available: one for text data, and one for generic (binary)
data (based upon ``dump``). ``load`` and ``thru`` work too.

The Block commands to the buffer management and provide the
high level access. The actual read and write process is delegated
to 2 deferred words: ``save-buffer`` and ``load-buffer``. They get
the RAM address of the block buffer and the block number to do 
the data transfer. They can be changed to talk with various backends.
So far the :ref:`I2C EEPROM Blocks` serial eeprom modules and the 
built-in flash memory are supported. Other targets such as 
SD-Cards or SPI memory modules can be added as well.

