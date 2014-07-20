.. _Conditional Interpret:

=====================
Conditional Interpret
=====================

It is often desirable to do actions conditionally. E.g. define
a word if it's not there. For that, the words ``[defined]`` and
``[undefined]`` can be used. Amforth lacks an ``[if]`` to really
make use of them. A real ``[if]`` is not that easy and a huge
piece of code since it has to support nested ``[if]`` too. A way
simpler solution is the following. It is restricted to the 
current SOURCE content, which is usually the current command line.

The basic idea is a conditional comment: ``?\``. It takes a flag
and works like ``\`` if the flag is true. if the flag is false, 
the remaining line is interpreted as if nothing has happened.

.. code-block:: forth

   : ?\ ( f -- ) 
     if postpone \ then 
   ; immediate


The use is straigt forward:

.. code-block:: forth

   \ define foo unless it already exists
   [undefined] foo ?\ : foo ." I'm foo " ;

   \ call a word if defined
   [defined] ver 0= ?\ ver

This recipe is based on a usenet posting of Bruce McFarling, 13.7.2014, on comp.lang.forth.
