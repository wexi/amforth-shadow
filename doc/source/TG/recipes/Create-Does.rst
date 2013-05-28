==================
Using create/does>
==================
A subtle error will be made with the following code

.. code-block:: forth

 : const create , does> @ ;

This code does *not* work as expected. The value compiled with ``,``
is compiled into the dictionary, which is read using the ``@i`` word. The
correct code is

.. code-block:: forth

 : const create , does> @i ;

Similarly the
sequence

.. code-block:: forth

 : world create ( sizeinformation )  allot
  does> ( size is on stack) ... ;

does not work. It needs to be changed to

.. code-block:: forth

 : world variable ( sizeinformation) allot
    does> @i ( sizeinformation is now on stack) ... ;
 ;

