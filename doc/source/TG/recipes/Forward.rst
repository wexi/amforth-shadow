.. _Forward:

====================
Forward Declarations
====================

Forward declarations are used to create recursive calls.

.. code-block:: forth

   forward: foo
   : bar foo ;

One solution for this task is :ref:`Defer`.

.. code-block:: forth

   Edefer foo
   : bar foo ;
   :noname ... ; is foo

They work usually fine. Furthermore they are based upon
standard techniques.

Another solution for forward declarations uses a Just-In-Time (JIT)
approach. With it a forward declaration resolves itself when called
without further user (or programmer) interaction:

.. code-block:: bash
   :linenos:

   > forward: foo
   > : bar foo ;
   > bar
    found only forward declaration.
   > : foo ." hey" ;
   > bar
     hey
   >

Line 1 declares foo to be defined later. This ``foo`` must not be called directly!
The next line defines a word ``bar`` that uses foo. Note that ``foo`` is not yet
a code definition. The word ``bar`` can be safely executed however. When the program 
execution of ``bar`` arrives at ``foo``, the JIT module starts. This module first gets
the name of the forwardly defined word (foo) and looks it up in the dictionary
If ``find-name`` gets an XT for ``foo`` it is checked whether it is the XT of the 
``forward:`` declaration or another one. If it is the XT of the ``forward:`` 
declaration, execution is aborted with an error message.

If an XT is found, that fulfils the requirements, two things happen: First the call 
to ``foo`` in the callee (bar) is changed from the original one (that goes to the forward
declaration) to the new one that is found by ``find-name``. Plus the XT is
executed itself. As a result, a repeated call to ``bar`` will not call the
JIT runtime checks again but hands over directly to the new foo.

``foo`` can be redefined again. Any already resolved references will remain, still not
resolved references will resolve to the new definition:

.. code-block:: forth

   > forward: foo
   > : bar foo ;
   > : baz foo ;
   > bar
     found only forward declaration.
   > : foo ." I'm number 1" ;
   > bar
     I'm number 1 ok
   > : foo ." I'm number 2" ;
   > baz
     I'm number 2 ok
   > bar
     I'm number 1 ok
   > baz
     I'm number 2 ok
   > 

The implementation uses internal data structure knowhow.
The word ``forward:`` creates words that performs the above
discussed runtime behaviour when called inside another
definition. It is assumed that they are only called within a colon
definition.

.. code-block:: forth

   : forward:
    dp create ,
    does>
    dup 1- swap @i here iplace here count ( copy to temporary ram)
    find-name if \ unless some wordlist voodoo ...
      swap over = abort" found only forward declaration."
      dup r@ 1- !i execute
    else
      \ can only happen if search wordlist has been changed
      true abort" unresolved forward declaration"
    then
   ;

Late Binding
============

A similiar definition to ``forward:`` can be used to implement late binding. In 
this case a forward reference will not get permanently resolved but looks up 
the dictionary every time it get called.

.. code-block:: forth

   : execute-late:
    dp create ,
    does>
    dup 1- swap @i here iplace here count ( copy to temporary ram)
    find-name if \ unless some wordlist voodoo...
      swap over = abort" found only forward declaration."
      execute
    else
      \ can only happen if search wordlist has changed
      true abort" unresolved forward declaration"
    then
   ;

This has a huge runtime penalty since on every invocation a dictionary lookup
will be made. An option would be the use of ``search-wordlist`` command instead of
``find-name`` if a proper (short) word list exists.

.. code-block:: bash

   > execute-late: foo
   > : bar foo ;
   > bar
     found only forward declaration.
   > : foo ." I'm number 1" ;
   > bar
     I'm number 1 ok
   > : foo ." I'm number 2" ;
   > bar
     I'm number 2 ok
   > 
