==============
Simple Strings
==============

On the command line, strings are part of the current
SOURCE buffer. Their content is usually lost, when SOURCE
gets REFILL'ed. The command

::

 > s" hi there" type
  hi there ok
 >

works fine. If you split the commands into two lines like

::

 > s" hi there"
  ok
 > type
  ei there ok
 >

it will print the last character of ``type`` and the remaining characters
from the previous command line. If a string has to be used later on, it needs
to be moved to another buffer within the same command line or ``accept``
is used to enter the string into some other buffer (see below for an example).

::

 > s" hi there" pad swap cmove> \ length information gets lost
  ok
 > pad 7 type
  hi ther ok
 >

In colon definitions, :command:`s"` does something completely different:
It copies the whole string from the :command:`SOURCE` buffer to flash (into the dictionary)
and at runtime provides the flash address and length of the string. This data
can be used with e.g. :command:`ITYPE`.

.. code-block:: forth

 \ allocate RAM for the string content.
 20 buffer: namestring
 variable age

 \ enter string and print them
 : input ( buf-addr buf-len prompt-addr prompt-len -- buf-addr buf-len )
  cr itype over swap accept ;

 : getname  ( -- addr len )
    namestring 20
    s" Who are you? " input ; \ [1]
 : getage
         0. \ [2]
     pad 3  \ [3]
     s" How old are you? " input
     >number 2drop d>s     \ [4]
     age ! ;;

 : .name    ( addr len -- ) type ;
 : .age     (  -- ) age @ u. ;

 : .hallo   cr ." Nice to meet you"
    .age ."   year old "
    .name                  \ [5]
    ." ." cr ;

 \ putting it all together
 : ask      getname getage .hallo ;

Running the command ``ask`` gives the following session

::

 > ask

 Who are you? Hannu

 How old are you? 23

 Nice to meet you 23 year old Hannu.
  ok
 >



Notes

#. ``s"`` compiles a string into flash. The compiled string gets a 
    runtime that leaves the address/length pair of the compiled 
    string *and* skips its content for further program execution.
#. Places a double cell zero value onto the stack to be used at
     ``>number``.
#. ``pad`` is a commonly used temporary storage pool. It
    is not used by the system itself. Its location is relative to
    HERE, so every change to HERE will move PAD as well.
#. ``>number`` is a standard word that converts a string
    to a number. To get the actual age (assuming a reasonable value)
    the :command:`2drop` removes some returned data. Finally the double cell
    age is converted to single cell and stored at the variable
    ``age``.
#. ``getname`` leaves the actual length of the name string
    on the stack. This length information is not stored elsewhere.
    ``.name`` removes this information so you cannot reconstruct
    this data.

.. code-block:: forth

   > : label: create s, , does> ;
    ok
   > 42 s" hello" label: example
    ok
   > example icount itype
    hello ok
   > example icount 2/ 1+ + @i .
    42 ok
   >

``s,`` copies a string from RAM to flash, increasing the DP.
The storage format follows the counted string schema: first cell is
the length information, followed by the characters, 2 per flash
cell. A zero byte is appended if necessary to fill the last flash
cell. It is an internal factor of ``s"``.

This recipe is based upon ideas from Hannu Vuolasaho and Michael Kalus.

