================
Port Code From C
================

There is a lot of C code out there. And there is no easy way
to use it in AmForth. This recipe gives some hints for porting
C code. A lot of more examples can be found at 
`Rosetta Code <http://rosettacode.org/wiki/Category:Forth>`_.

Register Names and Bits
-----------------------

AmForth provides the same register names as C. All addresses are
memory mapped. Many registers are split into bitgroups, that got
names as well. In C these names are usually bitnumbers, AmForth
uses the bitmaps as specified in the Atmel ressource files.

Single bits are straight forward:

.. code-block:: forth

 C:
   TIMSK0 |= (1<<OCIE0); /* set the bit */
   TIMSK0 &= ~(1<<OCIE0); /* clear the bit */
 AmForth:
   \ set the bit
   : or! dup c@ rot or swap c! ;
   OCIE0 TIMSK0 or! 

   \ clear the bit
   : and! dup c@ rot and swap c! ;
   OCIE0 invert TIMSK0 and!

..
 <!-- Some registers have a whole bitmap range at various positions.
 Unfortunatly there is no easy way to recognize them from the
 source only. One example is the timer configuration register TCCR0.
 It uses the 3 bits beginning from 0 to configure various prescaler
 settings. 
 C:
  TCCR1A = (1 << COM1A)|(1 << WGM1)
 AmForth:
  TCCR1A_COM1A TCCR1A1_WGM1 or TCCR1A c!
 </pre>

 Some registers are 16bit wide. The standard read and fetch
 operators make sure, that the byte access order gives accurate
 data. -->

Control Structures
------------------

The controlstructures are basically all the same. The differences
are subtle and usually small.
Conditional Execution

::

 C: 
   if(flag) { foo(); } else { bar(); }

 AmForth:
   flag if foo else bar then 

Counted Loops

::
 
 C:
   for(i=0;i<10;i++) {
     foo();
   }
 AmForth:
   10 0 do foo loop

If the loop increment is not 1, Forth uses the word ``+loop`` instead
of ``loop``:

::

 C:
   for(i=0;i<10;i+2) {
     foo();
   }
 AmForth:
   10 0 do foo 2 +loop
