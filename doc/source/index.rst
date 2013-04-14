.. AmForth documentation master file, created by
   sphinx-quickstart on Fri Feb 22 08:58:42 2013.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

AmForth
=======

.. toctree::
   :maxdepth: 2

   faq
   TG/TG
   TG/Cookbook
   TG/refcard


AmForth is an easily extendable command interpreter for the Atmel 
AVR8 Atmega microcontroller family. It has a turnkey feature
for embedded use too. 


AmForth runs completely on the controller. It does not need additional
hardware beyond a power supply. It makes no restrictions for hardware 
extensions that can be connected to the controller.


The command language is `Forth <http://www.forth.org/tutorials.html>`_.
AmForth implements an almost compatible `ANS94 <http://forth.sourceforge.net/std/dpans/>`_
indirect threading 16bit Forth. There are some extensions from the 
`Forth 2012 <http://www.forth200x.org/>`_ standard.


The interpreter has a command prompt in a serial terminal. Other 
connections like TCP/IP telnet or radio links are possible.</a>


AmForth is published under the GNU Public License v2 (GPL).


AmForth needs approx. 8KB Flash memory, 80 bytes EEPROM, and 200 bytes 
RAM for the core system.


Karl Lunt has written an excellent `User Guide <amforth-userguide.pdf>`_
on how to use and work with AmForth. For those who want 
to take a deeper look into the system is the `Technical Guide <TG/index.html>`_
(`PDF <amforth.pdf>`_, `EPUB <amforth.epub>`_ 8.2.2013).

News
----

trunk
.....

* core: :command:`-int` does no longer leave the SREG register. It
     only turns off the global interrupt flag. Thanks to Enoch.
* lib: major 1-wire enhancements: CRC checks and a better naming
     convention for all words. Thanks to Erich for help and substantial
     contributions.
* appl: added the Arduino Leonardo. avrdude needs a small patch to
      write properly the eeprom on the Atmega32U4.
* core: New :command:`popcnt` (n -- m) counts the 
     `Hamming Weight <http://en.wikipedia.org/wiki/Hamming_weight>`_
     of the given number.
* core: renamed :command:`baud` to :command:`ubrr`.
* core: :command:`nfa>lfa` is a factor in a number of words. It
     generates the link field address from a given name field address.
* doc: Farewell docbook XML, welcome reST. All documentation will
     be written in `reStructured Text <http://sphinx-doc.org/>`_. 
* lib: Simple Quotations. Their typical use case is

.. code-block:: forth

     : foo ... [: bar  baz  ;] ... ;

which is equivalent to

.. code-block:: forth

 :noname bar baz ; Constant #temp#
 : foo ... #temp# ... ;

A contribution from the "me too" department ;).

Notes
-----

amforth uses a serial line interface as the terminal. 
Serial line settings are 9600 8N1, no flow control.

The source is developed with and for Atmels avrasm2. The alternative assembler
avra (linux) needs a few patches to get it work.

Some word names like :command:`find-name` may change in future releases to
keep contact to `Forth 2012 <http://www.forth200x.org/>`_.

Indices and tables
==================

* :ref:`genindex`
* :ref:`modindex`
* :ref:`search`

