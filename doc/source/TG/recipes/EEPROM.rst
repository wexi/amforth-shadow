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

The usage pattern of the EEPROM is *write seldom read often*.
which is slightly different from flash (write almost never, read very
often) and RAM (read and write very often). Any data written to
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
free memory area the command ``ehere`` gives the
first free EEPROM address.

.. code-block:: forth

   > ehere u.
    82 ok
   >

The following commands manage EEPROM space: ``Edefer``
and ``Evalue``. ``Evalue`` is works according
to the ANS94 standard word ``value``.

.. code-block:: forth

    > 1 Evalue one
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

.. code-block: forth

    > Edefer foo
     ok
    > ' ver is foo
     ok
    > foo
     amforth 5.3 ATmega32 ok
    > ' words is foo
     ok
    > foo
     foo is pick nip ...
    >

your own stuff
--------------

To use EEPROM storage without ``Evalue`` or
``Edefer``, the command ``ehere`` is the
building block. It is the pointer to the first unused 
byte in the EEPROM. It is itself a ``Evalue`` that can 
be adjusted with ``to`` to allocate (or free) address 
space.

.. code-block:: forth

    > : Eallot ehere + to ehere ;
     ok
    > ehere u. 17 Eallot ehere u.
     84 101 ok
    > 84 constant my-eeprom
     ok
    > my-eeprom u.
     84 ok
     >

Adjusting ``ehere`` as described above is consistent
with later use of ``Evalue`` and ``Edefer``.

Arrays
------

Arrays can be placed in EEPROM as well

.. code-block:: forth

    >  : Ebuffer: ehere constant Eallot ; ( n -- ) ( similar to buffer: from forth200x)
     ok
    >  42 Ebuffer: my-array
     ok
    >  : my-array-@ cells my-array + @e ;
     ok
    >  : my-array-! cells my-array + !e ;
     ok
    >

The recipes :ref:`Arrays` and :ref:`Values` may give further ideas.

.. note:: 

   Evalue was called simply value in revisions earlier than 5.3. 
   Eallot was Ealloc and did leave the start address of the allocated
   memory region.
   