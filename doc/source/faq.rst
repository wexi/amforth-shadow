FAQ
===

Where do I find more information?
    There are 2 documentation files: a `User Guide <amforth-userguide.pdf>`_ written by
    Karl Lunt and a more `Technical Documentation <amforth.pdf>`_.

    More can be found in the `Maillinglist archive <http://sourceforge.net/mailarchive/forum.php?forum_name=amforth-devel>`_

How do I start with amforth?
    
    First: You will have to build your own amforth first. To do this you really want to make
    copy of the appl/template directory and edit the files in it to fit your environment: 
    controller type, cpu frequency, serial port settings  etc. The files are well documented. 
    Once the assembler produces two hex files and no errors (warnings should not come up either) 
    you can proceed.

    Second you need a programmer to transfer the hex files you generated 
    to the controller. The only programmers that can be used are those that can work 
    on bare (microcontroller) systems: ISP (e.g. the Atmel AVRISPmk2 or stk200 or ponyser), 
    JTAG (e.g. the AVR Dragon),  High Voltage programming (rarely used) or DebugWire (same: 
    rarly used). Programming tools that relies on a boot loader on the micro-controller itself
    can not load amforth (the reasons are explained in the <amforth.pdf">technical 
    handbook</a>). 

    The program to talk with the programmer is avrdude. It is a swiss army knife like
    tool, that works for almost all devices on all operating systems (Linux, Windows, MacOS and
    few more). The `Makefiles / ANT <http://amforth.svn.sourceforge.net/viewvc/amforth/trunk/appl/template/>`_
    files use it. Other programs (just like the famous Atmel Studio) are never used by me, you are on your own.

    After you transferred "burned" both hex files (one for the flash memory, one for the
    EEPROM memory), you can begin working with amforth on the serial connection.

How do I use amforth interactivly?
    At the command prompt you can enter any command and can explore the controller. To simply
    add two numbers just do the following::

        > 24 42 + .
        66 ok
        >

    To get the content of an IO register just use the memory mapped address (the example reads
    the 16bit return stack pointer which the just the normal mcu stack pointer)::

        > $5d @ .
        1101  ok
        > rp@ .
        1101  ok
        > 

    8bit registers just use the c@ command insted of the @. Writing to any address is just as simple::

        > 17 pad !
         ok
         > pad @ .
         17  ok
         > 

There are no hexfiles in the distribution archive!

    Hexfiles are very specific to the hardware, even the change of the oszillator frequency needs
    a rebuild. And every processor wants its own settings. There would be far too many different hexfiles.
    For some targets a hexfile is provided (e.g AVR Butterfly).

I get no serial prompt!

    First you need to check your hardware. Plug off all programmers (they may keep the RESET
    pin). Check the serial settings. Default is 9600 8N1, no flow control. Check the fuses. Try
    to maximize the CPU frequency. The factory default of 1MHz works almost never reliably.

    Ask on the mailling list for help.

What do all the words do?

    amforth tries to implement the ans94 dialect of forth. The last public
    version is available at (e.g.) `Taygeta Archive <http://www.taygeta.com/forth/dpans.htm>`_

Can I embed amforth into other programs?

    Embedding amforth into other programs (e.g. written in C) is almost impossible.
    Amforth is designed to run stand-alone and does not follow any conventions that may
    be used on other systems.

Can I use code written in C (or any other language) with/in amforth?

    Short answer: no.

How do I send forth code to the system?

    Basically send them as ascii text via the terminal line. A command line like::
    
    > ascii-xfr -s -c 10 -l  100  devices/atmega32.frt > /dev/ttyS0

    can be used. amforth does not currently support any kind of flowcontrol. Any transfer 
    has to be slow enough to not overrun the buffers. A more sophisticated aproach is
    described in :ref:`Upload`

I found a bug

    Too bad. Please send all information to the `Mailling List <mailto:amforth-devel@lists.sourceforge.net>`_

Does amforth run on hardware xy?

    amforth is targeted to Atmel AVR Atmega controllers. It does not and never will run on
    Attiny controllers or on completely different architectures like PIC or 8051 etc. Work is currently
    under way to fully support Atmels ATXMega's.

What about the fuses?

    Just set them to the factory defaults and adjust the oszillator settings only. amforth uses
    the selfprogramming capabilities so if any bootloader works, amforth should do so.
    Make sure that the bootloader size is as large as the NRWW flash size, otherwise the flash write
    operation may fail silently and crash your system completly.

What about bootloaders?

    amforth overwrites them, they are no longer existent. And this can only be changed for bootloaders
    with an application usable API to use the flash self programming feature. There are none currently 
    available. With such an API the only word thats need to be rewritten is <code>i!</code>.

What do I need for linux?

    The linux assembler avra comes without the controller definition files. They need
    to copied from the Atmel AVR Studio. Please use the version 1 of the files from the 
    AvrAssembler/appnotes directory. The Makefiles in the applications expect the files in the
    directory ~/lib/avra. Please note that these files are horribly outdated and do not cover
    all controller types. For those controllers you need the Atmel AVR Assembler version2. See
    next note.

How do I use Atmels assembler with linux?

    First you need a working setup of a recent wine. Then put the ``avrasm2.exe`` and the ``Appnotes``
    directory somewhere on your system. Then edit the ``makefile`` to look similiar too::

      AVRDUDE=/usr/local/bin/avrdude

      PP=-c stk200  -P /dev/parport0
      JTAG=-c jtag1 -P /dev/ttyUSB2

      AVRASM=wine ~/projects/avr/AvrAssembler2/avrasm2.exe
      AVRASMOPTS=-fI -I ~/projects/avr/AvrAssembler2/Appnotes -e $@.eep -l $@.lst -m $@.map

      p8.hex: *.asm words/*.asm devices/*.asm
        $(AVRASM) $(AVRASMOPTS) p8.asm

      p8: p8.hex
        $(AVRDUDE) $(PP) -p atmega644 -e -U flash:w:p8.hex:i -U eeprom:w:p8.hex.eep:i

    please note that the filenames are sligtly different from the avra generated code. Good luck.

What ressources are available in my own assembly words?

  You can use any ressource if you take care. There are some things you need to obey: Never
  use the T flag in the machine status register SREG. Only the CPU registers named temp0..temp5 
  are save to use without the need of restauration. Any other register change may be harmful.
