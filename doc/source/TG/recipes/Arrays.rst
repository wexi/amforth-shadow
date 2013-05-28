.. _Arrays:

=========================
Defining and using Arrays
=========================

The traditional approach is the following:

.. code-block:: forth

  create my-array 42 cells allot

This creates the dictionary entry named my-array and 
allocates 42 cells in RAM. BUT: the my-array dictionary entry
is not connected to the allocated RAM. The correct solution is:

.. code-block:: forth

 variable my-array  42 cells allot

This makes the dictionary entry named my-array, sets up the
link to the RAM address and allocates an *additional*
amount of 42 cells in RAM.

Forth 200x introduced a new word named 
`Buffer: <http://www.forth200x.org/buffer.html>`_.
With it the above code turns into 

.. code-block:: forth

  43 buffer: my-array

please note the different sizes! The :file:`variable`-implementation
allocates one cell *more* than :file:`buffer`.

The use of the array is quite simple:

.. code-block:: forth

  : my-array-@ cells my-array + @ ;
  : my-array-! cells my-array + ! ;
