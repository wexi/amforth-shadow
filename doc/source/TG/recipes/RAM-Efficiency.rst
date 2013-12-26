
Efficient RAM Usage
===================

RAM is probably the scarcest resource
of an atmega. To make the best of it, some
additional words may be helpful.

cvariable
---------

:command:`cvariable` acts like :command:`variable` but
does not allocate a cell (2 bytes) but only 1 byte
of RAM. Access to it is limited to :command:`c@` and
:command:`c!`. To indicate the size, one may want to
use the `Hungarian Notation <http://en.wikipedia.org/wiki/Hungarian_notation>`_.

There are a few possible implementations. One uses carnal
knowledge of the inner workings, the other one relies
on the fact that 1 cell is 2 bytes RAM in amforth.

.. code-block:: forth

 : cvariable
    here constant 1 allot ; \ carnal knowledge

 \ just a variable, but gives one byte RAM back to pool
 \ : cvariable variable -1 allot ;

Use of such small variables is just like other ones:

.. code-block:: forth

  answer cvariable \ allocates 1 byte only!
  42 answer c!
  answer c@ .

  \ troublesome
  answer @ .    \ undetermined
  4242 answer ! \ destroys other data

.. seealso:: :ref:`Arrays` and the cvalue section in :ref:`Values`
