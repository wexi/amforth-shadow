
=================
Walking Wordlists
=================

Wordlists are the building block of the dictionary. A wordlist
is a single linked list of entries. Entries are compiled colon words,
assembly words or data structures created with create. The link
chain ends when the next pointer is zero. A wordlist grows usually
upward in the flash memory, while the links point downwards.

The anchor of a wordlist is the stored in an EEPROM cell, which
address is the wordlist identifier.

Walking a wordlist requires the following steps

#. get the WID (e.g. environment)
#. read the starting address from the EEPROM (line 2) It the name field address of the
   first word.
#. start the loop until zero is reached (lines 4+5)
#. keep the vital iterator data (line 6)
#. do some work with the entry, consuming the NFA-copy from the previous line  (line 7)
#. go to the next entry (line 8)
#. repeat the loop body

The implementation of the word :command:`show-wordlist` may illustrate this:

.. code-block:: forth
   :linenos:

   : show-wordlist ( wid -- )
     @e
     begin
       ?dup
     while
       dup
       icount $ff and itype space
       nfa>lfa @i
     repeat
    ;

The sequence `$ff and` masks the entry flags (e.g. immediate) and
extracts the actual string length for use with the following :command:`itype`.
