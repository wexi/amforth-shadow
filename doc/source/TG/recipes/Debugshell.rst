.. _Debug Shell:

===========
Debug Shell
===========

A debugger is a tool to check data at runtime. For amforth there is no
single tool for that purpose. There are a :ref:`Tracer`
and a :ref:`Profiler` available. They modify the code
generation to achieve their goals. The debugshell presented here
is called at explicit breakpoints to stop the execution of the
current word and gives an independent command prompt to execute
arbitrary commands.

This debugshell core can be modified and expanded in many ways.
One example is the Watcher Utility for memory access.

Core
----
The debug shell core is quite small. Only 3 lines of code:

.. code-block:: forth

 82 buffer: debugbuf
 : (?) cr ." debug> " debugbuf dup 80 accept ;
 : ?? begin (?) dup while (evaluate) repeat 2drop ;

Technically it is an isolated command shell activated at
any time. With this debugger you can place the command
``??`` anywhere in your code and you'll get the
``debug>`` prompt whenever execution reaches it.

Extensions
----------

The first extension is to have an on-off feature of
the debugger. This can be achieved by an global flag
or using deferred words:

.. code-block:: forth

 0 value debug?
 \ re-defines the ?? command and uses the old one
 \ internally
 : ?? debug? if ?? then ;

assigning  a non-zero value to debug?
(``true to debug?``) will activate
the debug prompt. Note that the debug flag
is stored in EEPROM und the settings survive
a reset.

Another on-off implementation uses the deferred
word technique.

.. code-block:: forth

  Edefer breakpoint
  ' ?? is breakpoint
  \ ' noop is breakpoint

Here you use the command ``breakpoint`` in
your code instead of the basic ``??`` command.

.. code-block:: forth

 : foo bar breakpoint baz ;

Note that the deferred vector is stored in EEPROM and
the settings survive a reset.

The third extension uses interrupts. Since amforth
executes them as ordinary forth code it is possible to
assign any interrupt source to the ``??``
command (0 is an example interrupt number)

.. code-block:: forth

 > ' ?? 0 int!
 > 0 int-trap

 debug> rp@ hex .
 82D
 debug>
  ok
 >

When you use an external interrupt via a simple
key you get the debug prompt whenever you press
it. If you configure and enable the external interrupt
of course. Note that in this case the debug prompt
is executed in the interrupt mode of the controller, you
have to use the polling implementation of the
usart receive module.

