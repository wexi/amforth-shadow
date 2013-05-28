.. _Interrupt Critical Section:

Interrupt Critical Section
..........................

There are situations where no interrupts should be allowed. These
code segments are usually named critical sections.

.. code-block:: forth

 : bar ." bar" int? . ;
 : baz ." baz" int? . ;
 : qux ." qux" int? . ;

 : foo \ prints bar-1 baz0 qux-1.
  bar
  critical[
    \ nothing will disturb us here
    baz
  ]critical \ now interrupts or other things may happen again
  qux ;

If the standard interrupt enabled system setup is used, calling :command:`foo`
should print ``bar-1 baz0 qux-1``. :command:`baz` can call words that use
the critical[] word pair itself.

To temporarily turn off interrupts, the current state has to be stored.
Since the critical section could be nested, a global variable is not the
best solution. The following code example stores the information on the
return stack. This requires some stack shuffling since a colon word is
usually not allowed to manipulate the return stack outside of its own
scope. This is the reason, why the critical section must be paired
within one definition afterwards. Otherwise the return stack will
have data that crashes the system.

.. code-block:: forth

 \ global interrupt enable state as forth flag
 : int? ( -- f )
    SREG c@ SREG_I and 0> \ use the amforth-shell for the constants
 ;

 : critical[ \ ( -- ) R( XT -- f XT )
    r> int? >r >r \ keep the current state
    -int
 ;

 : ]critical \ ( -- ) R( f XT -- XT )
    r> r> if +int then >r \ will crash if not matched
 ;

A possible modification is to add the PAUSE vector as well and
turn off the cooperative multitasker during the critical section.

.. code-block:: forth

 : critical[ \ ( -- ) R( XT -- n*f XT )
    r>
       int? >r  \ get the global interrupt flag
       ['] pause defer@ >r \ get current multitasker
     >r \ restore the returnstack
    -int single
 ;

 : ]critical \ ( -- ) R( n*f XT -- XT )
    r>
    r> ['] pause defer! \ restore multitasker
    r> if +int then     \ restore global interrupt flag
    >r \ will crash if not matched
 ;
