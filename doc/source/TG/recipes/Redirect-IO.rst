.. _Redirect IO:

===========
Redirect IO
===========

The IO system consists of 4 words: :command:`EMIT`, :command:`EMIT?`,
:command:`KEY` and :command:`KEY?`. The are deferred words, e.g.
they can be changed at runtime.

Output
------

Amforth has many words like ``."`` and ``type`` to write information.
All these words do not do the output work actually, they call
``emit`` for each and every single character.

.. code-block:: forth

  : morse-emit ( c -- )
    ... \ some code to let a buzzer beep for the character c
  ;
  ' morse-emit is emit
  \ now everything gets morsed out. even the prompt
  \ unless your morse-emit does not call the previous
  \ emit nothing will be displeyd
  s" let it beep" type

The same technique may be used for e.g. a 44780 LCD. The new
code has to take care of everything like scrolling etc as well.

To complete the picture, another word ``emit?``
should be redefined. It is called in front of <emit> to
check whether the output is possible. If no such check
is necessary or possible, just do an
``' true is emit?``

Unless you do not change the turnkey action as well, everything
gets reset to serial IO whenever you call ``WARM``.

Input
-----

Input is based upon single characters. The command :command:`key?`
checks whether an unread character is available and :command:`key`
fetches it. To read an user supplied buffer, the command :command:`accept`
can be used. It reads until either the buffer is filled or an
end-of-line character is found (caridge return and/or line feed).

Depending on the input source, different strategies may be used.
The simplest way is to poll the input device frequently and hope
that no character is lost. More sophisticated is the use of
interrupts. They can be called at any time and almost guarantee
that no characters will be lost. The interrupt usually fills an
internal small buffer :command:`key` and :command:`key?`
can deal with.

.. code-block:: forth

 : ps2-key-isr ( -- )
  \ get the most recent key stroke
  \ place the key-event in a queue
 ;
 : ps2-key? ( -- f )
  \ check the input queue, return true if
  \ a key-event is unread
 ;
 : ps2-key ( -- c )
  \ read and unqueue the oldest key-event from the
  \ queue.
 ;
 \ the next word changes the terminal input to
 \ the PS2 based system. This cannot be done interactivly!
 : ps2-init ( -- )
  \ initialize ps2-key-isr
  ['] ps2-key? is key?
  ['] ps2-key  is key
 ;

There are some notes that may affect your program

* If a multitasker is used take care to include calls
  to ``pause`` in your ``key?`` and
  ``emit?`` definitions.</li>
* It is not uncommon that ``key``
  calls ``key?`` in a loop until a character is
  available.</li>
* AmForth uses one of the following words depending on
  the WANT_RX_ISR settings. It defaults in :file:`preamble.inc`
  to WANT_RX_ISR=1.

  +--------------------+
  |   WANT_RX_ISR      |
  +==========+=========+
  |   0      |    1    |
  +----------+---------+
  | rx-poll  | rx-isr  |
  | and      | and     |
  | rx?-poll | rx?-isr |
  +----------+---------+

* All IO words with more complexity (e.g. ``type``
  or ``accept`` call any of the 4 deferred words. There
  is no need to change them.
* Amforth uses the control characters for the line editing
  (e.g. backspace, TAB, CR/LF). Characters are 8 bit numbers
  (ASCII). Multibyte-Characters are not currently supported.

.. seealso:: :ref:`Disable Command Prompt Echo`

