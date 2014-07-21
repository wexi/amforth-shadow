.. _Values:

======
Values
======

The standard VALUE gives access to memory content like a variable
does. The difference between these two is that a value gives a actual
data whereas a variable leaves the address of the data on the stack.
The place, where a value stores the data is usually not known. There
is only one way to change it: use of :command:`TO`.

.. code-block:: forth

   > 42 value answer
    ok
   > answer .
    42 ok
   > 4711 to answer
     ok
   > answer .
     4711
   >

This resembles the intended usage pattern for EEPROM: Write
seldom, read often.

The forth standard defines a few value types: :command:`2VALUE` for 
double cell data, :command:`FVALUE` for floating point numbers and 
the single cell sized :command:`VALUE` itself.  They all use the same
:command:`TO` command to change their content. This requires 
a non-trivial implementation to achieve it. Amforth uses a simple data 
structure for each value in the dictionary (flash). The first element contains 
the address of the actual data. This first field is followed by 2 execution 
tokens (XT) for the read and write operations. This makes the runtime operations 
fairly easy. The read operation (the 2nd element in the data structure) is 
called with the address of the 1st element. It is expected that the read 
operation leaves the data on the data stack. Similiar the write operation. 
The :command:`TO` command simply executes the write execution token (the 
3rd element).

This generic approach allows not only single cell data in EEPROM but 
any data everwhere. The following examples illustrate 
this with an implementation of a value that stores a single
byte in RAM and a cached version of the standard EEPROM value. They have
in common that calling their names give the data and applying :command:`TO`
to them stores new data.

cvalue
------

Cvalues store a single byte in RAM. The first element in the
value data structure in the dictionary is the address of the RAM byte.
The defining word allocates it. Like any other RAM based data its
content is not preserved over resets and restarts.

.. code-block:: forth

   \ two helper functions, not called directly
   : c@v @i c@ ;
   : c!v @i c! ;

   : cvalue ( n "name" -- )
     (value)           \ create a new wordlist entry
     here ,            \ the address of the RAM memory
     ['] c@v ,         \ method for the read operation
     ['] c!v ,         \ method for the write (TO) operation
     here c!           \ initialize the RAM content
     1 allot           \ formally allocate the RAM byte
   ;


Using this new value is straight forward:

.. code-block:: forth

   > 42 cvalue answer
   ok
   > answer .
   42 ok
   > 17 to answer
   ok
   > answer .
   17 ok
   >

After its definition the new size restricted value is used like
any other value. To read it, simply call its name. To write to it,
use the TO command. As a bonus, all operations are save against
overflows:

.. code-block:: forth

   > $dead to answer
   ok
   > hex answer .
   AD ok
   >

cached Value
------------

A cached value is a value that stores the data in EEPROM but
tolerates heavy write access by using a RAM cell as a cache.
This RAM cell gets all write operations. The eeprom is not written
until an explicit flush is performed. At startup the cache needs 
to be warmed, this is not done automatically.

.. code-block:: forth

   \ 2 is a magic number
   : @cache 2 + @i @ ;
   : !cache 2 + @i ! ;

   \ cache related words
   : flush-cache 1+ dup 2 + @i @ swap @i !e ;
   : warm-cache  1+ dup @i @e swap 2 + @i ! ;

   : cache-value 
    (value)                           \ create the vocabulary entry
    dup ehere dup , dup cell+ to ehere !e \ allocate an EEPROM cell.
    ['] @cache ,                      \ XT for the read method
    ['] !cache ,                      \ XT for the write methon
    here 2 ( 1 cell ) allot dup , !   \ allocate a RAM cell and initialize it
  ;


The following example session creates a cached value and 
demonstrates the content of the two memory's during normal 
execution.

.. code-block:: forth

   > ehere \ keep the eeprom address for later direct access
    ok
   > 42 cache-value c-dp
    ok
   > 17 to c-dp
    ok
   > c-dp . dup @e .
   \ RAM and EEPROM contents are different!
    17 42 ok
   > ' c-dp flush-cache
    ok
   > c-dp . dup @e .
    17 17 ok
   >

Note that there is a difference in programming style between 
the load/store and the addiional warm/flush operations. The 
latter use a code sequence like

.. code-block:: forth

  ' value method

instead of the standard ``TO`` schema

.. code-block:: forth

   method value

Its fairly simple to achieve the ``TO`` schema for the other
commands as well, but since this requires a parsing word 
(which is state smart too) the forth gurus consider this suboptimal.
A second argument against may be the growing acceptance of
the OO notation ``object method`` with object beeing kind
of an address.

.. code-block:: forth

   : flush 
    ' state @ if
      postpone literal postpone flush-cache
    else 
      flush-cache
    then
  ; immediate

.. _Double Cell RAM Value:

Double Cell RAM Value
---------------------

A very compact implementation (a single short
word) makes use of :ref:`Quotations`:

.. code-block:: forth

   \ a value in RAM with 2 cells data storage
   \ requires quotations and 2@/2! from double wordset

   : 2rvalue ( d -- )
     (value)
     here ,
     [: @i 2@ ;] ,
     [: @i 2! ;] ,
     here 2! 4 allot
   ;

This value stores a double cell information in RAM. The read and write
methods are embedded as quotations.

.. note::

   This recipe requires amforth version 5.2 and newer.

.. seealso:: :ref:`I2C Values`
