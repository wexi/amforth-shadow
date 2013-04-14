
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
with include files, named after the pattern
:file:`dict*.inc`.

The include hierarchy is as follows: Top level is the application specific
file (template.asm). It included the file :file:`core/amforth.asm` only. This file includes
the two files from the application directory: :file:`dict_appl.inc` for the low address words (RWW space) and the
file :file:`dict_appl_core.inc` for the high address space words (NRWW). These two include
files use other :file:`dict*` files and direct words defintion files. Any cross-references
are solved by the assembler. The user needs to take care that the highest used address
is within the flash address range, an assembler error message is generated in that case.

Currently the following pre defined dict files exist:

Source Filenames
----------------

+------------------+-----------------------------+-------------------------------------------+
| Filename         | Purpose                     | Placement                                 |
+------------------+-----------------------------+-------------------------------------------+
| dict_minimum.inc | All basic words             | Usually included via                      |
|                  |                             | dict_appl.inc and placed in the           |
|                  | beyond the primitives.      | RWW section. If possible put it into the  |
|                  |                             | NRWW section however.                     |
+------------------+-----------------------------+-------------------------------------------+
| dict_mcu.inc     | Microcontroller specific    | It can be placed everywhere. Usually in   |
|                  | primitives.                 | dict_appl_core.inc.                       |
+------------------+-----------------------------+-------------------------------------------+
| dict_core.inc    | All essential primitives.   | Always near the inner interpreter (NRWW,  |
|                  |                             | dict_appl_core.inc).                      |
+------------------+-----------------------------+-------------------------------------------+
| dict_compiler    | All Compiler words.         | Usually part of the dict_appl.inc.        |
+------------------+-----------------------------+-------------------------------------------+
| dict_vm          | Not-Yet proposed additional | Usually part of the dict_appl.inc.        |
|                  | VM registers A and B        |                                           |
+------------------+-----------------------------+-------------------------------------------+
| dict_wl          | words dealing with          | Usually part of the dict_appl.inc         |
|                  | word lists.                 |                                           |
+------------------+-----------------------------+-------------------------------------------+

The order in which the files are included defines the search order
and there location within the flash memory. Most words can be moved
from one include file to another to optimize the flash usage.

There are additional files:
:file:`amforth.asm` and :file:`macros.asm`. The first one is the master 
file and the only one the application needs to include. The file
:file:`macros.asm` contains some useful assembler macros that make 
the source code easier to read. :file:`user.inc` contains the layout 
of the system user area.

Core system
-----------

The file :file:`amforth.asm` is the core of amforth. Here is the startup code 
for the microcontroller, and the forth inner interpreter with the interrupt
service routine. It includes the dictionary files.

Dictionary files
----------------

The dictionary files have two tasks: First they include the word
definition files. Second, they determine each word's location in
the resulting flash layout.

There are a few words left out from the dictionary lists.
These words are either not always needed or are some variants of
existing words or simply cannot be included in the core system due
to size limitations in the NRWW section with smaller atmegas. They
are usually included by the application specific include file(s).

:file:`dict_core.inc`
.....................

The file :file:`dict_core.inc`
contains all words for the NRWW flash section, Since the word
:command:`!i` cannot write to this address range, no
new words can be compiled to this section at runtime. Thus it
is advisable to include as many words as possible in
:file:`dict_core.inc` if the amount of writable
dictionary space is an issue. As a helper the file
:file:`dict_appl_core.inc` can be used to place
application specific words in the core area.

:file:`dict_minimum.inc`
........................

A useful forth system needs in addition to the above at least the
file :file:`dict_minimum.inc`, which includes the
forth interpreter words.

:file:`dict_compiler.inc`
.........................

An almost complete forth system with a compiler gives the third
include file: :file:`dict_compiler.inc`.

:file:`dict_appl.inc` and :file:`dict_appl_core.inc`
....................................................

Some words have their source files within the
:file:`core/words` directory but have to be included via the
:file:`dict_appl.inc` or :file:`dict_appl_core.inc`
files. These words may provide the hardware dependencies to access the
amforth system. The serial line terminal is an example.

Device Settings
---------------

Every Atmega has its own specific settings. They are based on
the official include files provided by Atmel and define the
important settings for the serial IO port (which port and which
parameters), the interrupt vectors and some macros.

Adapting another ATmega microcontroller is as easy as
copy and edit an existing file from a similar type.

The last definition is a string with the device name in clear text.
This string is used within the word
:command:`VER`.

Application Code
----------------

Every build of amforth needs an application. There are a few
sample applications, which can be used either directly (AVR
Butterfly) or serve as a source for inspiration (template
application).

The structure is basically always the same. First the file
:file:`macros.asm`
has to be included. After that some definitions need to done: The
size of the Forth buffers, the CPU frequency, initial terminal
settings etc. Then the device specific part needs to be included and
as the last step the amforth core is included.

For a comfortable development cycle the use of a build utility such
as :command:`make` or :command:`ant`
is recommended. The assembler needs a few settings and the proper
order of the include directories.


