.. _Digital Ports:

=============
Digital Ports
=============

Atmegas have digital ports each with 8 individual pins. They that can 
be configured as input and output pins. To make an easy use of them, amforth 
has a small library :file:`bitnames.frt` in the lib directory.

With this library, you can give any pin a name and can manipulate 
it afterwards regardless of others.

.. code-block:: forth

  PORTB 1 portpin: led

Output pins
-----------

.. figure:: LED-Basic.*
    :align: right

The simplest hardware is a LED connected to one pin.
The following sequence initializes the pin and turns 
the LED on:

::

 > PORTB 1 portpin: led
  ok
 > led is_output
  ok
 > led low

To turn it off, simply execute

::

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

::

 >  PORTB 0 portpin: mykey
  ok
 >  mykey is_input
  ok
 >  mykey pin_pullup_on

If the key is not pressed, the resistor (either the internal
pullup or the external resistor) drive the voltage to high. If you
read the pin, you will get a 1 in this example:

::

  > mykey pin@ .
  1 ok

if the key gets pressed, it will connect the controller pin with
ground level, giving a 0

::

  > mykey pin@ .
  0 ok
