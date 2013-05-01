=================
Customize AmForth
=================

Customization takes place when you create the hex files. It requires
to edit files and re-generate them using the assembler.

All customization is done in the application master file. A good
starting point is :file:`template/template.asm`. If you change any other
file, good luck. You can look for these options in the code however.


Application / Board specific
----------------------------

Every application is unique. Thus you need to create your own
amforth specific to your intended environment. There is no generic
image that works everywhere.

First make a copy of the :file:`appl/template` directory (myapp in this example).

.. code-block:: bash

 mt@ayla:~/amforth/appl$ cp -r template myapp


Next edit the :file:`template.asm` in the mayapp directory. You may
want to rename the file later. There are only a few lines that
need your attention.

.. code-block:: none

 ; include the amforth device definition file. These
 ; files include the *def.inc from atmel internally.
 .include "device.asm"

This line is tricky. It uses the generated include file
but does not specify the controller type itself. The magic
is in the list of INCLUDE directory that is defined in the
Makefile. Alternatively change the line to

.. code-block:: none

 .include "devices/atmega1280/device.asm"

please use the same directory name from the pd2amforth run
above. The downside of using the controller-dependent directory name
instead of some makefile variables is that you have to keep the
definition of the controller type in sync in <em>two</em> files.
The makefile always need the information for the programmer.

The next essential information is the frequency your controller
uses. It is necessary (at least) to calculate the proper usart settings
and to get the right delay in the forth word ``ms``.

.. code-block:: none

 ; amforth needs two essential parameters
 ; cpu clock in hertz, 1MHz is factory default
 .equ F_CPU = 16000000

The last setting is the command terminal for the prompt. There are
a few predefined settings. Unfortunately Atmel has changed the wording
over time. In most cases make sure that the number in the
_0 reflects the number in the RXEN0 definitions and the final 0 in the
UCSZ00. Elder controllers do not have a number suffix, just delete it
(atmega32 may serve as an example for it).


.. code-block:: none

 ; initial baud rate of terminal
 .include "drivers/usart_0.asm"
 .equ BAUD = 9600
 .equ USART_B_VALUE = (1<&lt;TXEN0) | (1<&lt;RXEN0) | (1<&lt;RXCIE0)
 .equ USART_C_VALUE = (3<&lt;UCSZ00)

The next file to edit is the Makefile (or the :file:`build.xml` if you want
to use the ant utility). First set the right controller type:

.. code-block:: none

  # the MCU should be identical to the device
  # setting in template.asm, it set
  MCU=atmega1280

The last change is the placement of the :file:`avrasm2.exe` and the
:file:`Appnotes2` directory.

.. code-block:: make

 # directories
 DIR_ATMEL=../../Atmel

To flash the controller, the program :command:`avrdude`
is used. Depending on your programmer, define the BURNER
variable as well:

.. code-block:: make

 # programmers / flags
 USB=-c avr911  -P /dev/ttyUSB3
 PP=-c stk200  -P /dev/parport0
 JTAG=-c jtag2 -P /dev/ttyUSB2
 BURNER=$(USB)
 AVRDUDE=avrdude
 AVRDUDE_FLAGS=-q $(BURNER) -p $(MCU)

All other settings can be kept for now. Just run make and look for errors.

WANT - Options
--------------

WANT Options are used to select certain features. There is
always a default value in place (0).

The files :file:`core/devices/$MCU/device.asm` contain among other things a
complete list of WANT Options that can be used to include device specific
Names into the dictionary.

.. code-block:: none

 .set WANT_AD_CONVERTER = 0
 .set WANT_ANALOG_COMPARATOR = 0
 .set WANT_BOOT_LOAD = 0
 .set WANT_CPU = 0
 ....

Changing these options to 1 includes the matching sections from :file:`device.inc`
into the generated dictionary. The same effect could be achieved by selectively
send the :file:`device.frt` file sections.


Another such option is the WANT_IGNORECASE option. If it is set to 1, the
amforth dictionary lookup routine is extended to handle upper and lower case
words the same. This makes foo and FOO the same. This is a dictionary wide
setting, valid for both pre-defined and self-defined words.

The 3rd group switches the USART terminal communication between
interrupt and poll based routines:

.. code-block:: none

 .set WANT_ISR_TX = 0
 .set WANT_ISR_RX = 1

Settings the value of 1 select the interrupt based routines, otherwise the
poll driven routines are used. It is recommended to leave the options as
they are set.

.. seealso:: :ref:`Redirect IO`
