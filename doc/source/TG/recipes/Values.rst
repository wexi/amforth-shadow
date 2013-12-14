.. _Values:

======
Values
======

The standard VALUE matches the EEPROM usage pattern: Write
seldom, read often. To get the current content of a value, you
only need to call its name. To change it, a seperate command ``TO``
has to be used. 

The implementation in amforth uses three pointers for every value.
One cell for an address and two cells for execution tokens that
are called when a read oder write operation is done. This generic
approach allows not only single cell data in EEPROM but nearly
arbitrary date everwhere. The following examples illustrate 
this with an implementation of a value that stores a single
byte in RAM and a cached version of the standard EEPROM value.

cvalue
------

Cvalues store a single byte in RAM. The first flash cell in the 
value data structure is the address of the RAM byte. The defining 
word allocates it. Like any other RAM based data its content is 
not preserved over resets and restarts.

.. code-block:: forth

   \ two helper functions
   : c@v @i c@ ;
   : c!v @i c! ;

   : cvalue ( n "name" -- )
     (value)           \ create a new wordlist entry
     here ,            \ the address of the RAM memory
     postpone c@v      \ method for the read operation
     postpone c!v      \ method for the write (TO) operation
     here c!           \ initialize the RAM content
     1 allot           \ formally allocate the RAM byte
   ;


Using this new value is straight forward:

.. code-block:: forth

   > 17 cvalue answer
   ok
   > answer .
   17 ok
   > 42 to answer
   ok
   > answer .
   42 ok
   >

After its definition the new size restricted value is used like any other value.
To read it, simply call its name. To write to it, use the TO command.
As a bonus, all operations are save against overflows:

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
    dup edp dup , dup cell+ to edp !e \ allocate an EEPROM cell.
    postpone @cache                   \ XT for the read method
    postpone !cache                   \ XT for the write methon
    here 2 ( 1 cell ) allot dup , !   \ allocate a RAM cell and initialize it
  ;


The following example session creates a cached value and 
demonstrates the content of the two memory's during normal 
execution.

.. code-block:: forth

   > edp \ keep the eeprom address for later direct access
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


.. note::

   This recipe requires amforth version 5.2 and newer.

