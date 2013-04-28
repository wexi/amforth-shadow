.. _Efficient Bitmanipulation:

==========================
Efficient Bit Manipulation
==========================

Idea and Implementation: Enoch

Some Atmegas have a number of General Purpose
IO Registers. They are not connected to any
hardware but can be used with special instructions.
They are executed in one CPU cycle and have the
additional advantage to be interrupt safe.

This solution differs from the bitnames approach in
that it does not operate on addresses but creates
new commands that do so.

.. code-block:: forth

 PORTA 0 port:hi! relay_on
 PORTA 0 port:lo! relay_off

A bitname solution would look like

.. code-block:: forth

  PORTA 0 portpin: relay
  : relay_on relay high ;
  : relay_off relay low ;

The implementation of the first solution generates highly
optimized machine code. The bitname solution is more generic
but significantly slower and is not interrupt safe. 

.. code-block:: forth

 : port:hi ( portadr bitno -- )	    \ SBI
    swap $20 - 3 lshift or $9A00 or code , end-code
 ;

 : port:lo ( portadr bitno -- )	    \ CBI
    swap $20 - 3 lshift or $9800 or code , end-code
 ;

Additionally some range checks should be applied
to make sure that the instruction does actually work
as it should be

.. code-block:: forth

 : _bitio
    dup $1F U> if &-9 throw then
    over $7 U> if &-9 throw then
 ;

 : port:hi ( portadr bitno -- )	    \ SBI
    swap $20 - _bitio
    3 lshift or $9A00 or
    code , end-code
 ;

 : port:lo ( portadr bitno -- )	    \ CBI
    swap $20 - _bitio
    3 lshift or $9800 or
    code , end-code
 ;

.. seealso: :ref:`Digital Ports` :ref:`Interrupt Critical Section`
