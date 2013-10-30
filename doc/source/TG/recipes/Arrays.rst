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

Arrays of structures
--------------------

This example uses structures. Structures can be
used after including of the :file:`structures.frt` 
file. First a hash data structure consisting of 
two elements is defined. This structure is used
to create an array of a few elements afterwards.

.. code-block:: forth

   begin-structure hash
    field: hash.key
    field: hash.value
   end-structure

   \ inspired by CELLS
   \ ( n -- size )
   \ calculates the size of n items of the
   \ type hash
   : hash-cells hash * ;

   \ define a hash-array
   : hash:
       hash-cells buffer:
     does>
       swap hash-cells  + 
   ;

The helper word ``hash-cells`` calculates the size of the 
data structure in terms of byes, just like the standard 
word ``cells`` does it.

Now we're using the words (using the amforth-shell). 
First define an array of 4 hash pairs. After that store 
a key/value pair at a particular position and retrieve 
it again later.

.. code-block:: console

   (ATmega16)> 4 hash: my-hash
     ok
   (ATmega16)> 42 3 my-hash hash.key !
     ok
   (ATmega16)> 4711 3 my-hash hash.value !
     ok
   (ATmega16)> 3 my-hash hash.key @ .
     42  ok
   (ATmega16)> 3 my-hash hash.value @ .
     4711  ok
   (ATmega16)> 

If you place the data structure in a different memory (e.g. the EEPROM) adapt the
code accordingly. ``buffer:`` needs to be replaced with a similiar allocation word and
``@``/``!`` with the proper memory access words. Remember, memory is not always 2 bytes per
cell.
