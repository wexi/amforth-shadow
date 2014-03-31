.. _Quotations:

==========
Quotations
==========

Quotations are a programming technique to embed code inside
of code. These embedded code snippets have an execution token
but no name token.

Quotations use two new commands ``[:`` and ``;]``:

.. code-block:: forth

  : foo ... [: some words ;] execute ... ;

This code could be written as

.. code-block:: forth

   :noname some words ; Constant #temp#
   : foo ... #temp# execute ... ;


Quotations are not (yet) standardized by the forth2012
committee, but they seem to do so in the near future.

The amforth implementation has no dependencies and is
used to implement some value-variants: :ref:`Double Cell RAM Value` and
inside the :ref:`SPI`
