========
Hardware
========

Controller
----------

amforth is designed to run on AVR Atmega
micro controllers. It requires
ca 8KB flash memory for the basic
system and can address 128KB of
flash memory.

The ATtiny micro controllers and a a few ATmega types lack
the minimum flash capacity. The ATtiny's some machine instructions
as well.

Bootloader Support
------------------

Most bootloaders will not work with amforth since they do
not provide an application programming interface to rewrite a
single flash cell. The default setup will thus replace any
bootloader found with some core routines.

It is possible to change the word
``!i`` to use an API and work
with existing bootloaders. ``!i``
is a deferred word that can be re-targeted
to more advanced words that may do address range
checks, write success checks or simply turn
on/off LEDs to visualize the flash programming.

Fuses
-----

Amforth uses the self programming feature of the ATmega
micro controllers to work with the dictionary. It is ok to use the
factory default settings plus the changes for the oscillator
settings. It is recommended to use a higher CPU frequency to meet
the timing requirements of the serial terminal.

Fuses are the main cause for problems with the flash write operations.
If the !i operation fails, make sure that the code for
it is within the boot loader section. It is recommended to make the
bootloader section as large as the NRWW section, otherwise the basic
machine instruction spm may fail silently and the controller becomes
unresponsive.

External Modules
----------------

Most external modules are accessed with library modules.
