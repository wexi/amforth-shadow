.. _Watchdog:

========
Watchdog
========

The watchdog is a build-in module present in all atmega controllers. It
triggers a reset if for a predefined period of time nothing is done to 
prevent it.

The controller has a special machine instruction for the watchdog reset
called ``wdr``. Amforth has a wrapper forth word with the same name after
including the file :file:`core/words/wdr.asm`.

This word needs to be called often enough to keep the watchdog from resetting
the controller. For a system that basically waits at the command prompt the
``pause`` command could be sufficient:

.. code-block:: forth

   > ' wdr is pause

Another potential place for adding a wdr is the inner interpreter 
by either changing :file:`amforth-interpreter.asm` or the 
:file:`core/words/exit.asm`.  Adding the (machine) wdr instruction 
there makes sure that the watchdog is reset as long as the inner 
interpreter works.

Initialization
--------------

Early atmega variants need to initialize the watchdog every time after
a reset, newer ones keep it active even over resets. This may cause troubles
since the WDR needs to be called much earlier for these controllers.
One solution is to place the WDR activation at the beginning of the
turnkey actions.

Acknowledgements
----------------

This recipe is based upon work by David Wallis.
