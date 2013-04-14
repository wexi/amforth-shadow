.. _Disable Command Prompt Echo:

===================================
Disabling the terminal command echo
===================================

Sometimes it may be desirable to turn off the echo function
in :command:`accept` when entering commands. One solution to
do it is to temporarily redirect the :command:`emit` to do
nothing.

.. code-block:: forth

 variable tmpemit
 : -emit ['] emit defer@ tmpemit !
        ['] drop is emit ;
 : +emit tmpemit @ is emit ;

.. code-block:: console

 > 1 2 3
 ok
 >  .s
   0 809 3
   1 80B 2
   2 80D 1
 ok
 > -emit .s +emit
 ok
 >

Alternately the definition

.. code-block:: forth

 : +emit tmpemit @ ['] emit defer! ;

could be used as well.
