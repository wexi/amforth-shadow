
=======================
User's Manual For Linux
=======================

Initial Setup
-------------

This guide makes a few assumtions. Your linux should be a fairly recent
linux distribution. For this document an Ubuntu 12.04 LTS is used, 
others should work in a similiar way.

First you'll have to install some packages with the package manager:

* wine (any version)
* ant or make (any version)
* avrdude

They may need quite a lot more packages, install all of them.

Next download the amforth package and un-tar (or unzip) it 
into a new, empty folder:

.. code-block:: bash

  > pwd
  .../amforth
  > ls
  > tar xvf amforth-x.y.tgz
  .. lots of files
  > ls
  appl  core  doc  examples  lib  LICENSE.txt  readme.txt  
  tools
  > mkdir Atmel
  >

Now you need access to an installed Atmel Studio 6 installation. Locate
the program directory and copy the file :file:`avrasm2.exe` and the whole
:file:`Appnotes2` directory into a newly created directory called 
:file:`Atmel`:

.. code-block:: bash

   > ls Atmel
   avrasm2.exe Appnotes2/
   >

The :file:`Appnotes2` directory contains a lot of :file:`inc` files. 
They are text files. There is no need to convert them from DOS to unix 
text format. Take them as they are.

Testing
-------

To test if the installation is complete, change into the directory
:file:`appl/template`. There run either :command:`make` or
:command:`ant` with the target name ``template.hex`` to 
test the assembler setup.

.. code-block:: bash

   > make template.hex
   wine ../../Atmel/avrasm2.exe -I ../../Atmel/Appnotes2 
     -I ../../core -I ../../core/devices/atmega1284p -fI 
     -v0 -e template.eep.hex -l template.lst template.asm
   >

Ant works similiar, note the warning at startup, it can safely
ignored:

.. code-block:: bash

   > ant template.hex
   Unable to locate tools.jar. Expected to find it in 
   /usr/lib/jvm/java-6-openjdk-amd64/lib/tools.jar
   Buildfile: ....amforth/appl/template/build.xml

   template.hex:
     [echo] Producing Hexfiles for atmega128

   BUILD SUCCESSFUL
   Total time: 4 seconds
   >

After this step, there  should be a number of new files in the 
directory:

.. code-block:: bash

   > ls
   build.xml           dict_appl.inc  template.asm      
   template.hex  template.map   dict_appl_core.inc  
   makefile       template.eep.hex  template.lst  words

If something went wrong, read the error messages, fix them and
repeat this step until all is well.

Create Your Project
-------------------

If everything works fine, it is now possible to start your
own project. This as simple as making a copy of the template
directory and editing a few files there.

.. code-block:: bash

   > pwd
   ... amforth/appl
   > cp -r template my
   > cd my
   >

Now edit the files :file:`template.asm` and :file:`makefile` (or
:file:`build.xml` if you use ant). The file :file:`template.asm`
has a lot of settings, to get a quick start only the lines

.. code-block:: none

   .equ BAUD = 9600
   .include "drivers/usart_0.asm"

may need to be changed. The baud number should be obvious. The line
usart_x.asm defines the usart port of the controller on which the
command prompt will be available. There are only *real* usart ports
available, no USB devices (this may change in future releases..)

In the :file:`makefile` find the lines

.. code-block:: makefile

   # set the fuses according to your MCU
   LFUSE=0xnn
   HFUSE=0xnn
   # some MCU have this one, see write-fuses target below
   EFUSE=0xnn

resp. the :file:`build.xml` for ant:

.. code-block:: xml

    <target name="p1284-8.fuses" description="Set fuses for P1284-8">
	<echo>Writing fuses</echo>
	<avrdude-3fuses
		    type="${programmer}"
		    mcu="${mcu}"
		    efuse="0xff"
		    hfuse="0x99"
		    lfuse="0xc6"
	/>
    </target>

and change the fuses to meet you hardware settings. Be careful with these
numbers, they can potentially corrupt your controller cpu beyond repair.

The next essential setting is the controller itself

.. code-block:: makefile

   # the MCU should be identical to the device
   MCU=atmega1284p

in the :file:`build.xml` find and change all occurances that look like

.. code-block:: xml
  
   mcu="atmega1284p"

with the proper name. The mcu names are taken verbatim as file names
in the :file:`Atmel/Appnotes2` directory and as directory names in the 
:file:`core/devices` directory. Case is significant (should be almost 
always lower case).

With these changes, rebuild the hex files as described above.

Program The Controller
----------------------

Hardware and System Setup
.........................

The last and final step is to transfer the hex files to the
controller. The build tools use the program :command:`avrdude`.
To get the hex files to the controller a special hardware called
*programmer* is needed. There are many different ones available, 
ranging from simple parallelport tools like the STK200 to expensive 
tools like the Atmel JTAG ICE MK2. Dont start trying to use exotic 
tools like ponyser or other self-made el-cheapo tools unless you 
know what you're doing.

The Atmel tools AVR ISP MK2 and Dragon are not that expensive and
work with the USB port of your computer. Linux needs a file named
:file:`/etc/udev/rules.d/99-atmel.rules` to make them accessible for
users:

.. code-block:: none

   # Atmel AVR ISP mkII
   SUBSYSTEM=="usb", ATTRS{idVendor}=="03eb", ATTRS{idProduct}=="2104", GROUP="users", MODE="0660"
   # usbprog bootloader
   ATTRS{idVendor}=="1781", ATTRS{idProduct}=="0c62", GROUP="users", MODE="0660"
   # USBasp programmer
   ATTRS{idVendor}=="16c0", ATTRS{idProduct}=="05dc", GROUP="users", MODE="0660"
   # USBtiny programmer
   ATTRS{idVendor}=="1781", ATTRS{idProduct}=="0c9f", GROUP="users", MODE="0660"

Note, that the correct GROUP name should include one of the groups your
linux account is a member of:

.. code-block:: bash

  > id
  uid=1000(user) gid=1000(user) groups=1000(user),4(adm),24(cdrom),
    27(sudo),30(dip),46(plugdev),109(lpadmin),124(sambashare),125(libvirtd)

Here the GROUP name "users" would not work! But "user" or "plugdev" would
do. If you do not have a setup like this, only root can access the
programmer. If you want to use the parallelport programmer STK200, your
account should be a member of the "lp" group (check with ``ls -l /dev/parport*``).

Any changes to the rules file are detected almost immediately, there should
be no reason to restart any linux program.

Project Setup
.............

If your hardware setup is finished, you need to edit the :file:`makefile`
or :file:`build.xml` to reflect the settings. In the :file:`makefile` find 
and edit the lines

.. code-block:: makefile

   USB=-c avr911  -P /dev/ttyUSB3
   PP=-c stk200  -P /dev/parport0
   JTAG=-c jtag2 -P /dev/ttyUSB2
   BURNER=$(USB)

The :file:`build.xml` is different. This file uses a property file named :file:`programmer.properties` 
to set the name and the port of the programmer hardware. The :file:`build.xml` file uses a substring
from the label to define the programmer. If you want to use e.g. the AVR Dragon as the programmer,
just use the name "dragon" as programmer idenifier in your :file:`build.xml`. The ant utility will expand 
this to "avr.programmer.<label>port" for the -P parameter and "avr.programmer.<label>" 
to the -c parameter to generate the right command line for :command:`avrdude` from the property file.

Serial programmers may be difficult while getting the right port name if using RS232-to-USB 
converters. The mapping may change over time (e.g. every reboot or USB bus reset).

If everything goes ok, the final command :command:`make template` should re-generate the
hex files and transfer them to the controller. The default program output should be verbose 
enough to track any error messages.
