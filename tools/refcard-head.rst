.. _RefCard:

Reference Card
==============

General
-------

AmForth is a 16bit ITC forth. It is almost compatible with
the forth standards from 1994 and 200x. It runs on the
bare metal controller with no further dependencies. 
The interpreter operates on whitespace delimited words.
The compiler is a single pass compiler that writes
directly to the flash based dictionary.

There are three distinct address spaces for flash, 
eeprom and RAM. Flash is addressed word wise (16 bits 
per address unit), RAM  and EEPROM is accessed byte 
wise (8bits per address unit). The standard return stack
has 40 cells, the data stack is limited by the available
RAM size.

Numbers can be prefixed by $ to indicate hexadecimal,
% for binary and \# for decimal numbers. A trailing
dot is used for double cell numbers.

Words not found here are not part of the compileable core
system. Their forth sources are in the :file:`/lib` directory,
usually named after the word name: e.g. :command:`2dup` is
defined in a file named :file:`2dup.frt`.

