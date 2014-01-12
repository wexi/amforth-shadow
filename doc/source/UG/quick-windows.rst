
Instructions for Building amforth-5-1 using Atmel Studio 6.1 Components
=======================================================================

Author: Craig Lindley
Date: November, 2013

Motivation
----------

Building AmForth requires a compatible assembler. Atmel Studio 6.1 for
Windows includes avrasm2.exe which works great for this process but 
using Atmel Studio is overkill in my opinion. On my Mac Atmel Studio 
6.1 takes forever to load and execute (using the Parallel's Desktop) 
plus it crashes half the time when I try to make changes to my amforth 
project's configuration.

I wanted to be able to quickly make changes to AmForth and turn around new
hex and eep files for downloading into an Arduino Uno. Note: the technique 
I discuss here can be used for any Atmel target hardware, not just an Arduino 
Uno.

Prerequisites
-------------

#. Download and installation of the free version of Atmel Studio 6.1 on a
   Windows computer
#. Being comfortable running a command prompt in the Windows environment

Process
-------

#. Create a project directory into which we are going to copy a bunch of
   files. I chose :file:`c:\\amforth` for my project directory.

#. Copy avrasm2.exe and the complete include directory from
   :file:`c:\\Program Files\\Atmel\\Atmel Toolchain\\AVR Assembler\\Native\\2.1.39.1005\\avrassembler`
   into the project directory

#. Uncompress and un tar the amforth-5.1 distribution file
   (:file:`amforth-5.1.tar.gz`) into the project directory

#. Go into the :file:`amforth-5.1\\appl\\arduino` directory of the distribution and
   copy :file:`uno.asm`, :file:`dict_appl_code.inc`, :file:`dict_appl.inc` and the 
   :file:`words` directory into the project directory.

#. Go into the :file:`amforth-5.1\\core\\devices` directory and find the directory
   named with the processor you are going to use (in my case atmega328p) and 
   from that directory copy :file:`device.asm` and :file:`device.inc` into the
   project directory.

#. Create a bat file in the project directory with the following content:

.. code-block:: bat

   REM batch file for assembling amforth on windows
   avrasm2.exe -fI -o uno.hex -e uno.eep -l uno.lst -I .\ -I amforth-5.1\core -I include -v0 uno.asm

I named my bat file make.bat.

When you have completed these steps you should have a directory structure
as follows:

.. code-block:: none

  c:\amforth          - your project directory
    amforth-5.1       - the uncompressed and untarred amforth-5.1 distribution
      appl
      core
      doc
      . . .
      include           - copied from c:\Program Files\Ateml\AtmelToolchain\AVR Assembler\Native\2.1.39.1005\avrassembler
      words
      applturnkey.asm
      avrasm2.exe       - copied from c:\Program Files\Ateml\AtmelToolchain\AVR Assembler\Native\2.1.39.1005\avrassembler
      device.asm
      device.inc
      dict_appl.inc
      dict_appl_core.inc
      make.bat

If all is well, change directory to your project directory and type make
from a command prompt. In less than a second you will have the new amforth 
files (hex file and eep file) for programming into you target hardware.
You could now uninstall Atmel Studio if you want as it is no longer
required.

Making changes to amforth is now very easy and turn around is very fast.
