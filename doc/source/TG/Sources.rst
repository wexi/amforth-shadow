
===================
Source Organization
===================

Overview
--------

amforth is written using the standard Atmel AVR 8 bit assembly
language. That does not mean that every word is actually written in
assembly language however. Most of the words are written in forth
itself, but are precompiled into the assembler syntax. This solves
the chicken-and-egg problem: how to compile the compiler words.

The source code can be processed with both the AVR Studio and
the Linux avr assembler avra.

amforth consists of a great number of small source files. Nearly all
words are coded in their own source files. These files are organized
with include files, named after the pattern :file:`dict*.inc` or are 
located in the :file:`core/dict` directory.

The include hierarchy is as follows: Top level is the application specific
file (template.asm). It includes two files :file:`core/preamble.inc` and 
:file:`core/amforth.asm`. The :file:`core/preamble.inc` sets up the controller
specific things and the default settings for the amforth system. Most of them
can be changed in the file :file:`template.asm` afterwards until finally the
file :file:`core/amforth.asm` is included.

This file includes two files from the core/dict directory: :file:`rww.inc`
and :file:`nrww.inc`. In addition two files from the application directory
are included as well: :file:`dict_appl.inc` for the low address words (RWW space) 
and :file:`dict_appl_core.inc` for the high address space words (NRWW).

Currently only one optional dict file may be added to the user supplied
files: :file:`compiler2.inc`. It contains words which are useful but not
strictly necessairy. It is automatically included for systems with 8KB
bootloader flash space.

Device Settings
---------------

Every Atmega has its own specific settings. They are based on
the official include files provided by Atmel and define the
important settings for the serial IO port (which port and which
parameters), the interrupt vectors and some macros.

Adapting another ATmega micro controller is as easy as
copy and edit an existing file from a similar type.

The last definition is a string with the device name in clear text.
This string is used within the word
:command:`VER`.

Application Code
----------------

Every build of amforth is bound to an application. There are a 
few sample applications, which can be used either directly (AVR
Butterfly) or serve as a source for inspiration (template
application).

The structure is basically always the same. First the file
:file:`preamble.inc` has to be included. After that some 
definitions need to done: The size of the Forth buffers, 
the CPU frequency, initial terminal settings etc. As the 
last step the amforth core is included.

For a comfortable development cycle the use of a build utility such
as :command:`make` or :command:`ant`
is recommended. The assembler needs a few settings and the proper
order of the include directories.
