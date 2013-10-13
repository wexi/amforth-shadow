.. _FAQ:

===
FAQ
===

Where do I find more information?
---------------------------------

There are 2 documentation files: a :ref:`User Guide`
written by Karl Lunt and a more :ref:`Technical Guide`.

More can be found in the
`Maillinglist archive <http://sourceforge.net/mailarchive/forum.php?forum_name=amforth-devel>`_

How do I start with amforth?
----------------------------

First: You will have to build your own amforth first. To do this you really want to make
copy of the :file:`appl/template` directory and edit the files in it to fit your environment:
controller type, cpu frequency, serial port settings  etc. The files are well documented.
Once the assembler produces two hex files and no errors (warnings should not come up either)
you can proceed.

Second you need a programmer to transfer the hex files you generated
to the controller. The only programmers that can be used are those that can work
on bare (micro controller) systems: ISP (e.g. the Atmel AVRISPmk2 or stk200 or ponyser),
JTAG (e.g. the AVR Dragon),  High Voltage programming (rarely used) or DebugWire (same:
rarely used). Programming tools that relies on a boot loader on the micro-controller itself
can not load amforth (the reasons are explained in the :ref:`Technical Guide`.

The program to talk with the programmer is avrdude. It is a swiss army knife like
tool, that works for almost all devices on all operating systems (Linux, Windows, MacOS and
few more). The `Makefiles / ANT <http://amforth.svn.sourceforge.net/viewvc/amforth/trunk/appl/template/>`_
files use it. Other programs (just like the famous Atmel Studio) are never used by me, you are on your own.

After you transferred "burned" both hex files (one for the flash memory, one for the
EEPROM memory), you can begin working with amforth on the serial connection.

How do I use amforth interactively?
-----------------------------------

At the command prompt you can enter any command and can explore the controller. To simply
add two numbers just do the following:

.. code-block:: forth

        > 24 42 + .
        66 ok
        >

To get the content of an IO register just use the memory mapped address (the example reads
the 16bit return stack pointer which the just the normal mcu stack pointer):

.. code-block:: forth

        > $5d @ .
        1101  ok
        > rp@ .
        1101  ok
        >

8bit registers just use the :command:`c@` command instead of the :command:`@`.
Writing to any address is just as simple:

.. code-block:: forth

        > 17 pad !
         ok
         > pad @ .
         17  ok
         >

There are no hexfiles in the distribution archive!
--------------------------------------------------

Hex-files are very specific to the hardware, even the change of the oscillator frequency needs
a rebuild. And every processor wants its own settings. There would be far too many different hex-files.
For some targets a hex-file is provided (e.g AVR Butterfly).

I get no serial prompt!
-----------------------

You need to program two hex files, one for the flash memory and one for the EEPROM.
The makefiles do that already automatically.

Next check are the frequency settings. Atmegas need a configuration (fuse setting) to
use an external clock source. By default they run with an unstabilized 1MHz internal
clock source, which is not well suited for serial communication. Check the datasheet 
of your controller to find the correct fuse settings, they are different for different
atemgas and very sensitive, be absolutly careful! Rebuilt the hex files with the proper
frequency (F_CPU setting).

Finally check the terminal settings: default are 9600 8N1, no flow control. If your terminal
has different settings, change them.

Finally check the hardware. You may add a LED (or a scope) to the TX pin to check wether 
the controller sends out the boot message upon reset. Plug off all programmers (they may 
keep the RESET pin). 

Check the mailing list archive for other hints or (finally) ask there for help.

What do all the words do?
-------------------------

amforth tries to implement the ans94 dialect of forth. The last public
version is available at (e.g.) `Taygeta Archive <http://www.taygeta.com/forth/dpans.htm>`_

Can I embed amforth into other programs?
----------------------------------------

Embedding amforth into other programs (e.g. written in C) is almost impossible.
Amforth is designed to run stand-alone and does not follow any conventions that may
be used on other systems.

Can I use code written in C (or any other language) with/in amforth?
--------------------------------------------------------------------

Short answer: no.

How do I send forth code to the system?
---------------------------------------

Basically send them as ascii text via the terminal line. A command line like:

.. code-block:: bash

   > ascii-xfr -s -c 10 -l  100  devices/atmega32.frt > /dev/ttyS0

can be used. amforth does not currently support any kind of flow control. Any transfer
has to be slow enough to not overrun the buffers. A more sophisticated approach is
described in :ref:`Upload`

I found a bug
-------------

Too bad. Please send all information to the `Mailling List <mailto:amforth-devel@lists.sourceforge.net>`_

Does amforth run on hardware xy?
--------------------------------

amforth is targeted to Atmel AVR Atmega controllers. It does not and never will run on
Attiny controllers or on completely different architectures like PIC or 8051 etc. Work is
currently under way to fully support Atmels ATXMega's.

What about the fuses?
---------------------

Just set them to the factory defaults and adjust the oscillator settings only. amforth uses
the self programming capabilities so if any boot loader works, amforth should do so.
Make sure that the boot loader size is as large as the NRWW flash size, otherwise the flash write
operation may fail silently and crash your system completely.

What about boot loaders?
------------------------

amforth overwrites them, they are no longer existent. And this can only be changed for boot loaders
with an application usable API to use the flash self programming feature. There are none currently
available. With such an API the only word that’s need to be rewritten is :command:`!i`.

What do I need for linux?
-------------------------

The linux assembler avra comes without the controller definition files. They need
to copied from the Atmel AVR Studio. Please use the version 1 of the files from the
:file:`AvrAssembler/appnotes` directory. The Makefiles in the applications expect the files in the
directory :file:`~/lib/avra`. Please note that these files are horribly outdated and do not cover
all controller types. For those controllers you need the Atmel AVR Assembler version2. See
next note.

How do I use Atmel's assembler with linux?
------------------------------------------

First you need a working setup of a recent wine. Then put the :file:`avrasm2.exe` and the :file:`Appnotes`
directory somewhere on your system. Then edit the :file:`makefile` to look similiar too:

.. code-block:: makefile

      AVRDUDE=/usr/local/bin/avrdude

      PP=-c stk200  -P /dev/parport0
      JTAG=-c jtag1 -P /dev/ttyUSB2

      AVRASM=wine ~/projects/avr/AvrAssembler2/avrasm2.exe
      AVRASMOPTS=-fI -I ~/projects/avr/AvrAssembler2/Appnotes -e $@.eep -l $@.lst -m $@.map

      p8.hex: *.asm words/*.asm devices/*.asm
        $(AVRASM) $(AVRASMOPTS) p8.asm

      p8: p8.hex
        $(AVRDUDE) $(PP) -p atmega644 -e -U flash:w:p8.hex:i -U eeprom:w:p8.hex.eep:i

please note that the file names are slightly different from the avra generated code. Good luck.

What resources are available in my own assembly words?
------------------------------------------------------

You can use any resource if you take care. There are some things you need to obey: Never
use the T flag in the machine status register SREG. Only the CPU registers named temp0..temp5
are save to use without the need of restoration. Any other register change may be harmful.
