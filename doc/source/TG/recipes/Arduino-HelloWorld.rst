===================
Arduino Hello World
===================

The example for the blinking LED works on every arduino with a LED
attached to Digital-13. It is tested on a arduino mega.

What does the code do? It lets the LED blink and
gives some hints for using and enjoying amforth.

First: A few constants:

.. code-block:: forth

  > $25 constant PORTB
  > $24 constant DDRB

The sign :command:`>` is the command prompt, if you see it, you can
enter any commands. You'll never enter that character yourselves.
A command line can be up to 80 characters
long, if you need a longer one, you'll need to change the
sources and reflash the system.

The arduino uses its own numbering schema for pins, but
for now we use the atmega one: digial-13 is the same as
bit 7 of PORT-B. Port B has 8 pins and three registers, we need
only two of them: The Data Direction Register (DDR) and the PORT
(Output) Register. The third register is used for reading
from the port (PIN).

To quickly test the hardware enter the following commands:

.. code-block:: forth

  > $80 DDRB c! $80 PORTB c! <enter>

The led turns on. With:

.. code-block:: forth

  > 0 PORTB c!

the led turns off. You can repeat these commands and watch the LED.

The next step is to define some commands and use them. And add some
more features that make life easier.

Forth usually uses many small words which do exactly one thing.
When entering forth commands take care that every word is
separated by at least one space. In forth almost every character
can be used as part of a command name.

The first command in this example sets up the Data Direction Register
to make the LED Port an output pin. In arduino sketch it would be:

.. code-block:: c

  void setup() {
     pinMode(13, OUTPUT);
  }

The same in Forth is:

.. code-block:: forth

  : led-init  $80 DDRB c! ;

By entering the command line the interpreter will learn a new command:
:command:`led-init`. This command can be called immediately after the
command prompt says OK. And it can be used in further command definitions.

It writes the 8-bit number 128 (hex 80) to the register DDRB (hex 24)
as defined above. This makes the 7th bit of PORTB an Output pin.

Calling our newly defined word does not change anything
visible. But with the next word, the LED will turn on:

.. code-block:: forth

  : led-on $80 PORTB c! ;

Here the 7th bit will be set to 1, and that makes the led to be connected
to VCC (5V) and it will turn on (the LED is connected to ground already).

If the led-on command does not turn on the LED just call the
:command:`led-init` command (again). The led-init is needed after an reset
or power cycle as well.

Now that the led is active, we want a command to turn it off. One solution
is to repeat the command from above: :command:`0 PORTB c!`. Smarter is a
new command word:

.. code-block:: forth

  : led-off  0 PORTB c! ;

You can now use the newly defined commands to turn the led on and off:

.. code-block:: console

  > led-on led-off led-on led-off

(since there is no timing involved yet, you may not even see the led glow)

Our next word will simplify this, saves many keystrokes, and gives the
real blink experience:

.. code-block:: forth

  : led-blink led-on 500 ms led-off 500 ms ;

Calling this command will turn the led on, waits half a second, turn it
off again and waits again half a second before returning to the command
prompt.

With a command line like:

.. code-block:: console

  > led-blink led-blink led-blink

The led will blink for a few seconds.

To make it blink "forever", the next word is helpful

.. code-block:: forth

  : blink-forever
    ." press any key to stop "
    begin
       led-blink
       key?
    until
    key drop \ we do not want to keep this key stroke
  ;

This word prints some text ("press any key to stop") and starts a loop.
This loop lets the led blink one and checks for a keystroke. If no key
is pressed, the loops is repeated. If a key is pressed, the loop is
terminated. The last two commands are housekeeping: read the key pressed
and forget it. Otherwise the key pressed would be the first character
of the next command line.

The advantage of defining many words is that you can test them immediately.
Thus any further code can rely on words already being tested and that
makes debugging a lot easier. The drawback of that many words? You need
some more code space for the names of the commands. There is no speed
penalty.
