.. _Exceptions: 

==========
Exceptions
==========

Exceptions are a way to commicate situations that cannot easily handled.
An exception is a number. And only a number. The process to send an exception 
is called throw. The communication process follows the call stack upwardly. 
At any level it can be catched. Catching an exception means to handle it. 
It is possible to re-throw an unhandled exception. The standard amforth system
has an outermost exception catcher. It handles all exceptions by printing their
number and returning to the command prompt.

Exceptions are thread local. It is up to the user to catch all exceptions that
may occure, since threads do not have an outermost exception catcher. An unhandled
exception freezes the system.

The Forth standard specifies a number of exceptions already. Amforth provides
a :ref:`Subset <ExceptionTable>`

The general way to catch an exception is to call a word by it's execution
token with ``catch``. ``catch`` is much like execute except that it is 
capable to handle exceptions:

.. code-block:: forth

   : foo -2883 throw ;
   : bar ....
     ['] foo catch 
     ?dup if ( -- e )
       \ ... handle exception or
       throw \ re-throw it, leaving bar
     then
     \ only executed if no exception occured or one got handled
     ...
   ;


User supplied exception codes should be in the range -65000 .. -4096. To garantuee
uniquness, an exception number generator should be used. It can be as simple
as

.. code-block:: forth

   -4096 Evalue exception
   : exception ( -- n ) exception dup 1- to exception ;

Every call to ``exception`` allocates a new exception number. It can be used
as

.. code-block:: forth

   exception constant !!foo
   exception constant !!bar


   ... if !!foo throw then ...

   ... if !!bar throw then ...
