==============
Deferred Words
==============

Deferred words a technique that allows to change the behaviour of
a word at runtime. This is done by storing an execution token under
a certain name that is executed whenever that name is called. The stack
effect is entirely that of the stored execution token code. The basic
specification is at `www.forth200x.org/deferred.html 
<http://www.forth200x.org/deferred.html>`_ which is a must-read now.

AmForth has 3 different variants of :command:`defer` which differ 
in the place, where the execution is stored: :command:`Edefer` stores in 
EEPROM, :command:`Rdefer` stores in RAM and :command:`Udefer` stores 
in the USER area. The definition of a deferred word does not set a useful 
execution token. Using a deferred word without giving it a XT will crash 
the system. After the definition of the words, the further handling is 
always the same: :command:`IS` stores the execution token into the 
deferred word. Further the standard words :command:`defer@` and 
:command:`defer!` read and write the execution token regardless of 
the exact storage location.

AmForth uses the deferred words technique already internally:

* :command:`turnkey` is an EEPROM based deferred word that is executed
  from :command:`QUIT` usually during startup and reset.
* the words :command:`key`, :command:`key?`,
  :command:`emit`, and :command:`emit?` are USER
  deferred words for low level terminal IO.
* :command:`refill` and :command:`source` are
  USER deferred words used by the forth interpreter
  to get the next command line.
* :command:`pause` is a RAM based deferred word
  that is called whenever a task switch can be done.
* :command:`!i` does the actual flash write of a single
  cell. It is intended for :ref:`Unbreakable`

Since there is no standard defer word, the programmer
has to take care where to store the execution tokens. An
EEPROM location is keept over resets/restarts and is valid 
without further initialization. A USER based deferred word 
can be targeted to different words in a multitasking environment 
and finally a RAM based deferred word can be changed frequently. 
To get a standard however, the following definition may be
helpful:

.. code-block:: forth

 > Edefer defer      \ keeps the assignment during resets
 ok
 > ' Rdefer is defer \ assignment is lost after reset
 ok
 >

Sealing Defers
==============

It is sometimes necessairy to prevent a deferred word from
changing. This can be achieved with the following word

.. code-block:: forth

   : defer:seal ( XT -- )
    dup defer@ ( -- XT' XT )
    swap ( -- XT XT')
    dup ['] quit @i ( get DO_COLON) swap !i
    1+   dup rot swap !i
    1+ ['] exit swap !i
   ;


With it, the dictionary entry is patched directly to
change it from beeing a defer to a colon word named as
the deferred word calling only the current XT stored in
it

.. code-block:: forth

   (ATmega32)> Edefer mytest
    ok
   (ATmega32)> ' ver is mytest
    ok
   (ATmega32)> mytest
    amforth 5.3 ATmega32 ok
   (ATmega32)> ' mytest 5 - 10 idump
    10E0 - FF06 796D 6574 7473 10CB 0836 005C 07D6   ..mytest..6.\...
    10E8 - 07E0 FFFF ...
    ok
   (ATmega32)> ' mytest defer:seal 
    ok
   (ATmega32)> ' mytest 5 - 10 idump
    10E0 - FF06 796D 6574 7473 10CB 3800 078C 381A   ..mytest...8...8
    10E8 - 07E0 FFFF ...
    ok
   (ATmega32)> mytest
    amforth 5.3 ATmega32 ok
   (ATmega32)> 

Technically the word ``mytest`` is changed to the same dictionary
content as if it was defined as

.. code-block:: forth

   : mytest ver ;

This is possible since a deferred word occupies 3 flash cells in the body
and the faked colon definition needs only 2: the XT of the deferred word
and the exit call.

.. note:: sealing a deferred word is a hack.
