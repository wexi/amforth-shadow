.. _Defining and using Macros:

=========================
Defining and using Macros
=========================

Macros are small code snippets that do not represent
a colon word for itself but the code is used verbatim in
other definitions. To use them, include the file 
:file:`lib/macro.frt` (requires :file:`evaluate.frt` 
and amforth version 4.7ff)

.. code-block:: console

 >  macro square " dup *"  
 ok
 >  : foo 5 square . ;  
 ok
 >  foo 
 25  ok

square can be called just like a word definition as well.

.. code-block:: console

 > 6 square .
 36 ok
 >

There is only one drawback: the macro string cannot
contain the delimiting character itself. You're free to
choose any character however

.. code-block:: console

 >  macro square2 _ dup *_  
 ok
 >  5 square2 .
 25  ok
 >
