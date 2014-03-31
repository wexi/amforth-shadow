.. _Digital Ports:

=============
Digital Ports
=============

Atmegas have digital ports each with 8 individual pins. They that can
be configured as input and output pins. To make an easy use of them, amforth
has a small library :file:`bitnames.frt` in the :file:`lib` directory.

The name port indicate that only IO ports can be used with this library.
Since the addresses used are RAM addresses, the whole address can be used, 
not only the IO range. The addresses are accessed on byte level. For single 
bits (portpin: definitions) the bitnumber can exceed the 8 bits a byte can 
hold. In this case the address is increased to a value that contains the 
bit specified: e.g. bit 24 of address 80 is the same as bit 0 of address 83.
Bitmaps are bound to the byte they address.

.. code-block:: forth

  PORTB 1 portpin: led

Output pins
-----------

.. figure:: LED-Basic.*
    :align: right

The simplest hardware is a LED connected to one pin.
The following sequence initializes the pin and turns
the LED on:

.. code-block:: forth

 > PORTB 1 portpin: led
  ok
 > led is_output
  ok
 > led low

To turn it off, simply execute

.. code-block:: forth

  > led high

Input pins
----------

Input pins are used to get the voltage state: High or Low.
A simple hardware would be as follows:

::

             VCC
               ^
               |
              +-+
              | |
              | |
              +-+
   |           |
 0 +-----------+
   |           |
               \
 Port           \
               + \>
               |
               |
             ----
              GND

The resistor is not really needed, the pin can be configured to use an internal
resistor.

.. code-block:: forth

   >  PORTB 0 portpin: mykey
    ok
   >  mykey is_input
    ok
   >  mykey pin_pullup_on

If the key is not pressed, the resistor (either the internal
pull up or the external resistor) drives the voltage to high. If you
read the pin, you will get a 1 in this example:

.. code-block:: forth

   > mykey pin@ .
   1 ok

if the key gets pressed, it will connect the controller pin with
ground level, giving a 0

.. code-block:: forth

  > mykey pin@ .
  0 ok

Bit Pattern
-----------

The library can deal with bit patterns as well.

::

  +-----+-----+-----+-----+-----+-----+-----+-----+
  |  0  |  0  |  0  |  0  |  1  |  1  |  1  |  1  |
  +-----+-----+-----+-----+-----+-----+-----+-----+

.. code-block:: forth

   > addr $0f bitmask: addr-low
   > %01000000 addr c! \ set all bits at addr
   > $ff addr-low pin! \ set only a few bits
   > $03 addr-low pin!

The pin! command changes the bits to the value given
only for those bits which are set to 1 in the bitmask.
In this example, only the lower 4 bits are changed, the
upper ones are left unchanged:

::

  +-----+-----+-----+-----+-----+-----+-----+-----+
  |  0  |  1  |  0  |  0  |  1  |  1  |  1  |  1  |
  +-----+-----+-----+-----+-----+-----+-----+-----+

  +-----+-----+-----+-----+-----+-----+-----+-----+
  |  0  |  1  |  0  |  0  |  0  |  0  |  1  |  1  |
  +-----+-----+-----+-----+-----+-----+-----+-----+

The same masking policy applies to pin@. Internally the
portpin definition is converted into a bitmask. The
words ``high`` and ``low`` which set resp. clear the
bitpositions are optimized versions of pin!:

.. code-block:: forth

   : high $ff rot rot pin! ;
   : low $00 rot rot pin! ;

.. note::

   The extended bit range for single bits are available in amforth 5.3 or 
   later. The file bitnames.frt works with older version too.

