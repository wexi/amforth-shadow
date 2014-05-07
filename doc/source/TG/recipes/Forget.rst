====================
Un-Doing Definitions
====================

During development and testing it is often desirable to start over again and forget
everything. Traditional forth's have the word :command:`FORGET`. Amforth uses another,
more modern approach: :command:`marker`.

:command:`marker` needs planning. Before use, include the `file:`dict_compiler2.inc` into
your list of include packages to generate the hex files. Next upload the file 
:file:`lib/ans94/core-ext/marker.frt`. If you encouter errors that
the word ``set-current`` is not defined, you forgot to include the file
:file:`dict_compiler2.inc`.

Now the command :command:`marker` creates a named snapshot of the current
memory state to that you can return to any time afterwards. This includes 
all definitions and wordlists defined after the snapshot is taken. They 
get completely deleted and the occupied memories (flash, ram, eeprom) are 
available again.

.. code-block:: console

 > marker empty
  ok
 > : foo ." foo" ;
  ok
 > foo
 foo ok
 > empty
  ok
 > foo
 foo ?? -13 3
 > empty
 empty ?? -13 5
 >

Note that the snapshot itself is gone as well. If you want it again, just
re-create it.
