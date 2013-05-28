======
EEPROM
======

This recipe is about the internal EEPROM storage of the
atmega's. It does not deal with external devices such as I2C or
SPI EEPROM chips.

The EEPROM contains usually 512 to 2048 bytes, depending on
the actual controller type. The address range goes from zero (0)
upwards and is independent of the other memory regions flash and
RAM. The address unit is the byte, just like RAM. There is no
alignment involved.

The usage pattern of the EEPROM is <em>write seldom read often</em>.
which is slightly different from flash (write almost never, read very
often) and RAM (read and write more than often). Any data written to
EEPROM is kept over reset and power off.

built in's
----------

The basic words to access EEPROM are ``@e`` and
``!e``. They operate with the standard 2 bytes forth
cells to read and write data. There is no byte-level access.

.. code-block:: forth

  2 @e u.
  64 82 !e

Amforth uses EEPROM internally already. To keep track of the
free memory area the command ``edp`` gives the
first free EEPROM address.

::

 > edp u.
  82 ok
 >

The following commands manage EEPROM space: ``Edefer``
and ``value``. ``value`` is works according
to the ANS94 standard.

::

 > 1 value one
  ok
 > one u.
  1 ok
 > 17 to one
  ok
 > one u.
   17 ok
 >

The ``Edefer`` word defines a word that, when called
executes another word by its execution token. Amforth uses this technique
to implement the ``turnkey`` action.

::

 > Edefer foo
 ok
 > ' ver is foo
 ok
 > foo
 amforth 5.0 ATmega32 ok
 > ' words is foo
 ok
 > foo
 foo one is pick nip ...
 >

your own stuff
--------------

To use EEPROM storage without ``value`` or
``Edefer``, the command ``edp`` is the
building block. It is the pointer to the first unused byte in the EEPROM.
It is itself a ``value`` that can be adjusted with
``to`` to allocate (or free) address space.

::

 > : Ealloc edp swap over + to edp ;
 ok
 > edp u. 17 Ealloc edp u.
 84 101 ok
 > value my-eeprom
 ok
 > my-eeprom u.
 84 ok
 >

The ``Ealloc`` ( n -- ) in the example leaves the
start address of the allocated area on the stack. It is later
stored in the newly defined value ``my-eeprom``.

Adjusting ``edp`` as described above is consistent
with later use of ``value`` and ``Edefer``.

Arrays
------

Arrays can be placed in EEPROM as well

::

 >  : Ebuffer: edp value Ealloc ; ( n -- ) ( similar to buffer: from forth200x)
  ok
 >  42 Ebuffer: my-array
  ok
 >  : my-array-@ cells my-array + @e ;
  ok
 >  : my-array-! cells my-array + !e ;
  ok
 >

The recipe Using Arrays may give further ideas.
