.. _SPI:

===
SPI
===

The Serial Peripheral Interface is used for high-speed data exchange between
the controller and some peripheral devices. There are several modes available.

The basic data transfer operation is a data exchange of 8 bits. The sender
transmits 8 bits and recieves 8 other bits in return from the communication
partner.

The basic forth word is ``c@!spi`` which translates to character fetch/store
via SPI. It uses the hardware SPI module of the controller and thus the
pre-defined pins of it.

Data Exchange
-------------

The basic ``c!@spi`` is the building block for the next words

.. code-block:: forth

   \ single byte transfers
   : c@spi ( -- c ) 0 c!@spi ;
   : c!cpi ( c -- ) c!@spi drop ;

   \ read len bytes from SPI and store
   \ them starting at addr
   : n@spi ( addr len -- )
      0 ?do 
       c@spi over c! 1+ 
      loop drop ; 
   \ write len bytes from addr to SPI
   : n!spi ( addr len --- )
      0 ?do 
       dup c@ c!spi 1+ 
      loop 
      drop ; 

The file :file:`core/words/n-spi.asm` contains speed optimized
implementations of the ``n@spi`` and ``n!spi`` words.


SD-Cards/MMC
------------

MMC and SD-Cards have an SPI mode which is slower than the usual
mode used on PC's but is simpler to program. 

.. code-block:: forth
    
   \ standard stuff, only if not already uploaded
   #require postpone.frt
   #require marker.frt
   #require bitnames.frt

   \ board definitions
   #include netio.frt

   \ SD Card specific
   #include spi.frt
   #include mmc.frt

The include order of the file is important. The board specfic definitions
need to define the words ``+spi``, ``-spi`` for global SPI port setup.
In addition the commands ``+mmc`` and ``-mmc`` are used to perform a
single communication with the device. The portpin definitions are not
used elsewhere but should match the hardware.

.. code-block:: forth

   PORTB 0 portpin: /ss    \ output
   PORTB 2 portpin: _mosi  \ output
   PORTB 3 portpin: _miso  \ input
   PORTB 1 portpin: _clk   \ output

   : +spi ( -- )
     /ss pin_output
     _mosi pin_output
     _miso pin_input
     _clk  pin_output
   ;
   : -spi
     _mosi low _mosi pin_input
     _miso low _miso pin_input
     _clk  low _clk  pin_input
   ;

   : +mmc
     /ss low
   ;
   : -mmc
     /ss high
   ;

After successfully loading these files, the command ``mmc_init`` initializes
the communication and enables the remaining access. It has to be issued every
time the card has changed.

.. code-block:: forth

   (ATmega640)> mmc_init
     ok
   (ATmega640)> mmc_CID . cr 10 0 mmc.
    0 
    1 50 41 53 30 32 47 46 12 39 B6 28 D6 0 B4 99  ok
   (ATmega640)>

