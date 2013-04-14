========
Overview
========

Amforth is a Forth system for the AVR ATmega microcontroller
family. It works on the controller itself and does not depend on any
additional hard- or software. It places no restrictions on using
external hardware.

Amforth implements a large subset of the Forth standard ANS94.
Most of the CORE and CORE EXT words and a varying number of words
from the other word sets are implemented. It is very easy to extend
or shrink the actual word list for a specific application by just
editing the dictionary include files.

The dictionary is located in the flash memory. The built-in
compiler extends it directly.

amforth provides full access to all interrupts. The interrupt
handler routines can be code or forth words.

Amforth is published under the GNU General Public License
version 2.

The name amforth has no special meaning.

Amforth is a new implementation. The first code was written in
the summer of 2006. It is written "from scratch" using assembly
language and forth itself. It does not have a direct relationship to
any other forth system.

