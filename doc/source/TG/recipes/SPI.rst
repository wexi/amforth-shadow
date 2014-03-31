.. _SPI:

==============================
Serial Peripheral Inteface SPI
==============================

The Serial Peripheral Interface is used for high-speed data exchange between
the controller and some peripheral devices. There are several modes available.

It consists of three signal lines plus one per peripheral device (called
slave). All peripheral devices share the signal lines and use the selecting
line exclusivly. For any given data transfer only one of the selecting lines
must be at LOW level, all others must be HIGH.

The basic data transfer operation is a data exchange of 8 bits. The sender
transmits 8 bits and recieves 8 other bits in return from the communication
partner.

The basic forth word is ``c!@spi`` which translates to character store/fetch
via SPI. It uses the hardware SPI module of the controller and thus the
pre-defined pins of it.

Basic Workflow
--------------

The built-in SPI module uses a few pins to establish the communication
with any device. To distinguish between different SPI attached devices
a separate signalling line is used: slave select. Every slave device
is connected with one such line. The SPI communication takes place with
the one which signalling line is LOW. All other lines have to be HIGH.

The setup of the slave select lines includes two steps: configuring
as output and give it HIGH level when idle. Note that a pin that is
configured as output will immediatly go to LOW level. This may disturb
a SPI slave so after configuring the line direction the port has
to go to HIGH exllicitly. When all slave select lines are configured,
the remaining SPI setup can take place

.. code-block:: forth
 
   \ requires bitnames, quotations and spi loaded
   > PORTB 0 portpin: dev.ss \ define hardware
   > dev.ss to spi.ss        \ assign ss pin to lib
   > spi.ss is_output        \ short LOW pulse
   > spi.ss high             \ de-select slave
   > +spi                    \ turn on SPI module

Data Exchange
-------------

Any SPI transfer starts with pulling the slave select line
LOW. Now any number of read/write operations may take place.
To stop an exchange, the slace select line goes back to HIGH.
This signals the slave device that the communication has ended
and it usually goes back to a state that awaits a new commication.

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

   \ SPI library
   #require quotations.frt
   #require 2rvalue.frt
   #include spi.frt

   \ SD Card specific
   #include mmc.frt

The include order of the file is important. The board specfic definitions
need to define the words ``+spi``, ``-spi`` for global SPI port setup.
In addition the commands ``+mmc`` and ``-mmc`` are used to perform a
single communication with the device. The portpin definitions are not
used elsewhere but should match the hardware.

.. code-block:: forth

   PORTB 0 portpin: sdcard
   sdcard to spi.ss

   : +mmc
     sdcard low
   ;
   : -mmc
     sdcard high
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

