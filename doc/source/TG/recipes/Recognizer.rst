.. _Recognizer:

==========
Recognizer
==========

The Forth text interpreter is able to work with numbers and command
words. Its main purpose is to transform the text representation into
a format closer to the system level and deal with them. Numbers are
converted to their binary form for the data stack, command words are
found in the dictionary and are further dealt with their execution tokens
(and header flags).

In standard Forth there is no easy way to add new data types to the text 
interpreter and to associate actions with them for the different interpreter 
states. For example there are no native string literals. They are mimicked 
by using a command word (``s"``).

A recognizer fills this gap. It consists of two major parts: A word which
does the parsing and converting. And a group of three methods for dealing with
the data, the parsing word produces. These methods are used in interpret and
compile state, and to postpone the data in colon definitions.

Amforth has recognizers for dealing with numbers and words from the dictionary
built-in. To create and manage more recognizers, the words ``get/set-recognizer``
are used. They work similar to the ``get/set-order`` for word lists. 

The word ``recognizer:`` takes three execution tokens and defines the method table.
The word to parse the input stream takes a string as input and leaves either
the method table ``r:fail`` (and no further data) or some data together with the
method table defined with ``recognizer:``. The interpreter takes care of the rest.
It is possible to modify ``>in`` inside the parsing word if the data contains
whitespace. Debugging such words can be tricky however.

String Literals
---------------

A string is delimited by two ``"`` symbols. The first one starts
the string and the next one is the end of it. Everything in between
is the string content. A string is denoted by its start address and 
its length. When compiling, the string needs to copied to the 
dictionary together with a runtime action.

Since a string can contain whitespace, the parsing word needs to deal
with ``>in``. The string address and length is valid for the lifetime
of the SOURCE buffer only, a ``refill`` will change the content.

.. code-block:: forth

     ' noop 
     ' sliteral 
     :noname type -48 throw ; 
   recognizer: r:string

   : rec:string ( addr len -- )
      over c@ [char] " <> if 2drop r:fail exit then
      negate 1+ >in +! drop \ expand parse area 
      [char] " parse  \ get trailing delimiter
      -1 /string \ remove limiter
      r:string
   ;

   ' rec:string place-rec

The first line is simply the method table definition. The first two methods
are already defined in amforth so nothing special here. The third method is
called when the data is beeing postponed. For now, a string cannot be postponed,
which would essentially lead to a string copy from the defining word to
the new one. Instead an exception -48 is thrown.

The rec:string definition is more complex. The first line

.. code-block:: forth

      over c@ [char] " <> if 2drop r:fail exit then

is the check whether the current word start with a ``"`` character.
If it does not, the two arguments are dropped and the special
method table ``r:fail`` is returned.

If the first character is a ``"`` the main task is to find the delimiting
next ``"``. Since the ``>in`` needs to be set to the location of this
character as well, we use the word ``parse`` which does this work for us.

.. code-block:: forth

      negate 1+ >in +! drop \ reset parse area to SOURCE

This line re-adjusts the parsing area to the beginning of the word inside SOURCE.
The code 

.. code-block:: forth


      [char] " parse  \ get trailing delimiter

scans the whole input for the delimiting ``"`` and returns it. Finally some address
cosmetics has to be done to include the very first character as well.

Finally the ``r:string`` method table is returned together with the string itself.
The last command adds the string recognizer to the list of the recognizers the
interpreter uses and activates it this way. Now we can enter strings as native
data without the ``s"`` command.

.. code-block:: console
 
   > "foo" type
    foo ok
   > " foo" type
     foo ok
   >    " foo" type
    foo ok
   >    "    foo" type
      foo ok
   >    "    foo bar baz        " type
       foo bar baz         ok
   > : test "  foo bar   " itype ;
    ok
   > test
     foo bar    ok
   >

