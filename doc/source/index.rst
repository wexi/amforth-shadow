
AmForth
=======

AmForth is an easily extendible command interpreter for the Atmel
AVR8 Atmega micro controller family. It has a turnkey feature
for embedded use too.

AmForth runs completely on the controller. It does not need additional
hardware beyond a power supply. It makes no restrictions for hardware
extensions that can be connected to the controller.

The command language is `Forth <http://www.forth.org/tutorials.html>`_.
AmForth implements an almost compatible `ANS94 <http://forth.sourceforge.net/std/dpans/>`_
indirect threading 16bit Forth. There are some extensions from the
`Forth 2012 <http://www.forth200x.org/>`_ standard.

The interpreter has a command prompt in a serial terminal. Other
connections like TCP/IP telnet or radio links are possible.

AmForth is published under the GNU Public License v2 (GPL).

AmForth needs approx. 8KB Flash memory, 80 bytes EEPROM, and 200 bytes
RAM for the core system.

Karl Lunt has written an excellent :ref:`User Guide`
on how to start and work with AmForth. For those who want
to take a deeper look into the system is the :ref:`Technical Guide`.
The whole documentation is available as `PDF <amforth.pdf>`_
and `EPUB <AmForth.epub>`_.

.. raw:: html
  :file: html/leon-video.html

.. raw:: html
  :file: html/recognizers.html

Work In Progress
................

Here you'll find things that are not yet
released but will be part of the next release.
See the code section at Sourceforge to get the
`most recent sources <http://sourceforge.net/p/amforth/code/HEAD/tree/trunk/>`__

* core: Bugfix in :command:`warm` to initialize the interpreter for 
  :command:`turnkey`. Thanks to David.
* core: bugfixes for handling some negative numbers in :command:`+loop` 
  and :command:`*/`.
* core: simplified assembly primitves for counted loops. They are
  now faster except for :command:`i`. The return stack gets different
  numbers now.
* core: rewrite of :command:`accept`. The user visible change is that the final CR/LF
  is no longer sent here. The forth text interpreter does it elsewhere thus
  the user interface is unchanged.

16.8.2014: release 5.4
......................


* lib: Almost complete :ref:`Blocks` wordset support. Only a few dark corners behave differently.
* lib: renamed TWI to I2C, added many tools for it :ref:`I2C Values`, :ref:`I2C EEPROM Blocks` and 
  a few more.
* recipes: `Test Driven Development <http://en.wikipedia.org/wiki/Test-driven_development>`_ 
  with :ref:`Amforth <Testing>`, :ref:`Conditional Interpret`
* lib: Fully support the ANS94 String wordset.
* core: Double cell return stack access words (:command:`2>r` and 
  :command:`2r>`) missed the internal swap's. Added new :command:`2r@`.
* lib: Limited LOCALs

7.5.2013: release 5.3
......................

* core: 2nd generation of :ref:`Recognizers` and their use for native 
  :ref:`String literals <Recognizer>`.
* core: renamed :command:`edp` to :command:`ehere`. :command:`here` 
  points to data space, :command:`ehere`   points to eeprom data space.
* core: merged code for defer's and value's. Speed improvements
  for defer actions.
* community: MMC/SD-Card from Lubos (So Sorry for beeing late) and 
  TCP/IP (:ref:`Telnet`). Many Thanks to Jens. Speed optimized
  words for SPI in amforth core.
* doc: `Japanese Getting Started <http://amforth-installation-ja.readthedocs.org/ja/latest/index.html>`__
* doc: new recipes: :ref:`Forward`, :ref:`Extended-VM`, :ref:`Quotations`, :ref:`Exceptions`,
  :ref:`Coroutines`,  updated recipes: :ref:`SPI`, :ref:`Ardiuno Helloworld`

More To Read
----------------

.. toctree::
   :maxdepth: 2

   UG/amforth_user
   faq
   TG/TG
   TG/Cookbook
   TG/refcard
   history


