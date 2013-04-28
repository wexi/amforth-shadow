.. _Dump Utilities:

==============
Dump Utilities
==============

Stack Dumps
-----------

Stackdumps can be generated with the command
:command:`.s`. The standard does not specify,
how the output has to formatted. The built-in
command is for core development. This means that
numbers are printed as unsigned (hex is highly
recommended) and the TOS is on the left hand
side. This makes it easy to get the most important
information easily and the numbers are quickly
found in memory dumps and the assembler LST and 
MAP files.

The output looks like:

.. code-block:: console

 > -1 -2 -3 .s
 65533 65534 65535  ok
 > hex .s
 FFFD FFFE FFFF  ok
 > 

Most other forth's and the varios books use another 
stack dump format. It uses signed numbers and
places the TOS on the right side. This can be
achieved with the following definition, kindly
provided by Enoch on the mailling list:

.. code-block:: forth

 : .s  ( -- )	\ stack picture listing order
    depth
    begin dup while dup pick . 1- repeat
    drop
 ;


The output looks like:

.. code-block:: console

 > -1 -2 -3 .s
 -1 -2 -3  ok
 >

Other stack dumps are as follows. They are kindly provided by Erich:

.. code-block:: forth

 \ variations on dot-s
 \ dot-s, one way, signed output:
 :  ds  sp@ sp0 1 cells - do i @  . -2 +loop ;

 \ dot-s, one way, unsigned output:
 : uds sp@ sp0 1 cells - do i @ u. -2 +loop ;

 \ dot-s, the other way (reverse?), signed output:
 : rs  sp@ sp0      swap do i @  .  2 +loop ;

 \ dot-s, the other way, unsigned output:
 : urs sp@ sp0      swap do i @ u.  2 +loop ;

 \ dot-s, verbose, as it used to be in earlier versions of amforth:
 :  dsv  depth dup 0 do i u. dup i - 
     cells sp0 swap - dup u. @  . cr loop ;
 : udsv  depth dup 0 do i u. dup i - 
     cells sp0 swap - dup u. @ u. cr loop ;


Memory Dumps
------------

Atmegas have three different memory address spaces. Each
region has its own dump utility

:command:`dump`
  Standard Memory. Every Address unit has 8 bits.

.. code-block:: console

 > $180 $20 dump

  0180 36 30 31 33 33 02 87 75 F4 6D 74 26 8F 63 A3 CD   601CD..u.mt&.c..
  0190 44 AB FC D7 3D DA D7 16 59 EB 3F AF 76 F2 27 3F   D...=...Y.?.v.'?
 ok


:command:`edump`
  EEPROM. Similiar to RAM, every address unit has 8 bits, but since
  it used on a cell (16 bits) basis, the display uses this number width:

.. code-block:: console

 > 0 $30 edump

 0000 - FFFF 0EA3 0121 0052 0CC7 3B65 0019 0B2B   ....!.R...e;..+.
 0010 - 0014 0014 0E66 0001 0014 FFFF FFFF FFFF   ....f...........
 0020 - FFFF FFFF FFFF FFFF 0000 0000 085F 080F   ............_...
  ok

:command:`idump`
  Flash. Unlike the other memories, flash has 16bits per address unit:

.. code-block:: console

 > $dc0 $20 idump

  0DC0 - 3830 0DC5 38D0 3837 002E 381A FF05 322E   08...878...8...2
  0DC8 - 6568 0078 0DAB 3800 3B23 02D5 02DD 02DD   hex....8#;......
  0DD0 - 02FF 0430 381A FF05 342E 6568 0078 0DC6   ..0..8...4hex...
  0DD8 - 3800 3B23 02D5 02DD 02DD 02DD 02DD 02FF   .8#;............
   ok
