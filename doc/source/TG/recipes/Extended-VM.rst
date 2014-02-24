.. _Extended-VM:

Extended VM
===========

At the Euroforth 2008 Stephen Pelc presented a paper 
http://www.complang.tuwien.ac.at/anton/euroforth/ef08/papers/pelc.pdf
with some interesting extensions to the Forth virtual machine
model. He proposed 4 new registers A, B, X, and Y. They can be
used to simply store temporary data. More intelligent use cases
arise from certian pointer operations with auto-increment and
auto-decrement facilities.

AmForth adapts these ideas by combining the operations for A and X
(B and Y similiarly). All commands are implemented in assembly using
free registers and are included at compile time by adding the line

.. code-block:: none

   .include "words/reg-a.asm"
   .include "words/reg-b.asm"
   
They do not depend on other files.

Basic Usage
-----------

Both registers A and B are completely equal. They are not used inside
any standard AmForth code and are not thread local. Since they use
CPU registers, they work faster than variables or other memory based
data.

To store data into a register, the command ``>a`` is used. Getting back
the data is done with ``a>``. This is unlike the similiar  looking ``>r``
and ``r>`` which put the data to the memory, the return stack pointer
points to.

.. code-block:: forth

   > a> .
     6183 ok
   > 17 >a
    ok
   > a> .
     17 ok
   >

Pointer Voodoo
--------------

The registers can work as address registers as well. 
The command ``a@`` reads the RAM location, the A register points to. By
using ``a@+`` the data is read and the register is incremented by 1 cell
(2 bytes). Similiar the ``a@-``: the data is read and the register is
decremented by 1 cell.

.. code-block:: forth

   > : dump swap >a 2/ 0 do a@+ . loop ;
    ok
   >  source dump
    7320 756F 6372 2065 7564 706D  ok
   >

To store data, the commands ``a!``, ``a!+`` and ``a!-`` 
can be used. They store the Top-Of-Stack Element to 
RAM where the A register points to and modify it 
afterwards (if applicable).

The words ``na@`` and ``na!`` give access to the memory
location n bytes relative to the current value of the
A register. The content of the A register is not changed.

.. code-block:: forth

   > : dump swap >a 2/ 0 do i cells na@ . loop ;
    ok
   >  source dump
    7320 756F 6372 2065 7564 706D  ok
   >

Portable Version
-----------------

.. code-block:: forth

   \ helper words
   : cell 1 cells ;

   variable reg:a

   : >a  reg:a  ! ;
   : a>  reg:a  @ ;
   : a@  a> @ ;
   : a!  a> ! ;
   : na@ a> + @ ;
   : na! a> + ! ;

   \ pre-increment fetch/store
   : a@+ a@ cell reg:a +! ;
   : a!+ a! cell reg:a +! ;
   : a@- a@ cell negate reg:a +! ;
   : a!- a! cell negate reg:a +! ;

   \ post-increment fetch/store
   : a@+ cell reg:a +! a@ ;
   : a!+ cell reg:a +! a! ;
   : a@- cell negate reg:a +! a@ ;
   : a!- cell negate reg:a +! a! ;

Amforth has a highly optimizied assembler implementation of these commands.