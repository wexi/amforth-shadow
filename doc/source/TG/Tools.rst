=====
Tools
=====

Host
----

There a few number of tools on the host side (PC) that
are specifically written to support amforth. They are
written in script languages like Perl and python and
should work on all major operating systems. They are
not needed to use amforth but may be useful.

Part description Converter
..........................

The :command:`pd2amforth.pl` script reads a part
description file in XML format (comes with
the Atmel Studio package) and produces
the controller specific :file:`devices/controllername/*` files.

Documentation
.............

The tool :command:`makerefcard`
reads the assembly files from the
:command:`words` subdirectory and creates a reference card. The
resulting LaTeX file needs to be processed with
:command:`latex` to generate a nice looking overview of all words
available in the amforth core system.

The command :command:`make-htmlwords`
creates the linked overview of all words on the
amforth homepage.

Uploader
........

To transfer forth code to the micro controller some
precautions need to taken. During a flash write
operation all interrupts are turned off. This may
lead to lost characters on the serial line. One
solution is to send very slowly and hope that the
receiver gets all characters. A better solution is
to send a character and wait for the echo from
the controller. This may sound awfully slow at the
glance but it turned out to be a fast and reliable
strategy.

An example for the first strategy can be used with
the program :command:`ascii-xfer`. Calling
it with the command line parameters

.. code-block:: console

 $ ascii-xfr -s -c $delayChar -l $delayLine file > $tty

will work but the upload of longer files needs a
very long time: $delayChar can be 1 or 2 ms,
$delayLine around 800 ms.

Uploader++
..........

The powerful Python script :command:`amforth-shell.py` is using
echo to regulate uploading. It recognizes Forth comments, single
and multi line, and skips uploading them. The shell also features
automatic file inclusion via `#include filename.frt`
meta commands and, what can save a lot of dictionary space and
clutter, it does constant substitution for the AVR register names
and the project's own definitions (via a locally provided
:file:`appl_defs.frt` file). The shell has much more to offer,
please read its script.

Controller
----------

There are a few tools that may be useful on the controller. They
are implemented as loadable forth code that may affect internal
data and work flows in a non-portable way. In particular are available
a profiler (counting calls to words), a call tracer (printing a
stack trace while executing the words), a timing utility
(:command:`benchme`), a few memory dump tools and a
:command:`see` that may be useful to revert the compilation
process (gets some forth code from compiled words).

.. seealso::
  :ref:`Profiler`
  :ref:`Debug Shell`
  :ref:`Watcher`
  :ref:`Tracer`
