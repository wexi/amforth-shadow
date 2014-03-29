.. _Coroutines:

==========
Coroutines
==========

Coroutines are a computer science building block. From a users
perspective they form a way to let code in different words
communicate with each other. Thus coroutines can be seen as
a simple way to multitask.

The key command is ``co``:

.. code-block:: forth

   : co r> r> swap >r >r ;

Producer/Consumer
-----------------

A producer generates data which a consumer deals with. The
example simply generates sequence of numbers which are printed
to the terminal. The sequence ends when a value of 10 is reached.

.. code-block:: forth

   : producer ( n -- n' n' ) begin 1+ dup co again ;
   : consumer 
     0 producer
     begin dup . 10 < while co repeat
     r> drop drop ;

The producer is quite simple. It is an endless loop that
increases the TOS element, duplicates it and calls the
partner. It creates a potentially endless stream of increasing
numbers on the stack. For every new number, the other process
(the consumer) is called via ``co`` to ... consume this number.

.. code-block:: console

   > consumer                                                                      
    0 1 2 3 4 5 6 7 8 9 10 ok                               
   >

The consumer has a little more to do. It is responsible to initially
call the producer and to clean up after finishing.

Ceavats
-------

Since there is dark stack magic in place, a construct like

.. code-block:: forth

   : producer ( n -- n' n' ) begin 1+ dup co again ;
   : consumer  begin dup . 10 < while co repeat ;
   : runit 0 producer consumer r> drop drop ;

wont work. For such code, the ``co`` command needs
to go deeper into the return stack.

For the same reason calls to CO inside DO-loops wont work.
This is due to the loop parameters on the return stack.
