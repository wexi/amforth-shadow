.. _Ardiuno Helloworld:

===================
Arduino Hello World
===================

The example demonstrates a blinking LED. Most arduino's have one
attached to the port Digital-13. For this recipe, the amforth system
is already loaded onto the ardiuno. Instructions to do it are in the
:ref:`User Guide`.

To quickly test the hardware start a terminal (e.g. screen /dev/ttyACM0 38400) 
and enter the following commands:

.. code-block:: forth

   > $80 $24 c!
   > $80 $25 c!
   > $00 $25 c!

The LED turned on until the last command is executed. The character
:command:`>` is the command prompt, if you see it, you can enter 
any commands. You'll never enter that character yourselves. A 
command line can be up to 80 characters long.

The commands above are pretty obscure. To make them easier to
understand we define labels for some numbers, so called 
constants:

.. code-block:: forth

  > $25 constant PORTB
  > $24 constant DDRB

The arduino uses its own numbering schema for pins, but
for now we use the atmega one: digial-13 is the same as
bit 7 of port B. Port B has 8 pins and three registers to
configure them. we need two of them: The Data Direction 
Register (DDR) and the PORT (Output) Register. The third 
register is used for reading from the port (PIN).

The above commands can now be written as

.. code-block:: forth

  > $80 DDRB c! 
  > $80 PORTB c!
  > $00 PORTB c!

Technically the same but easier to read.

Next we do not want to enter all commands interactively. Forth
has the reputation of an extendible command set. 

Good forth coding style means to have many small words which do exactly 
one thing. Most forth commands are built with only a handful other commands.

The first command in this example sets up the Data Direction Register DDR
to configire the LED Port as an output pin. In arduino sketch it would be:

.. code-block:: c

  void setup() {
     pinMode(13, OUTPUT);
  }

The same in Forth is:

.. code-block:: forth

   > : led-init  $80 DDRB c! ;
    ok
   >

With this command line the interpreter learns a new command:
:command:`led-init`. This command can be called immediately.

.. code-block:: forth

   > led-init
    ok
   >

It writes the number 128 (hex 80) to the register DDRB (hex 24)
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
   ok
  >

Since there is no timing yet, you may not even see the led flash, amforth is
pretty fast.

Our next word will simplify this and gives the real blink experience:

.. code-block:: forth

  : led-blink led-on 500 ms led-off 500 ms ;

Calling this command will turn on the led, waits for half a second, turn it
off again and waits another half a second before returning to the command
prompt.

With this command you can blink the led a few times

.. code-block:: console

  > led-blink led-blink led-blink
   ok
  >

The led will blink for a 3 seconds before the ok and returning to
the command prompt.

To make it blink "forever", we define another command word:

.. code-block:: forth

   : blink-forever
     ." press any key to stop "
     begin
        led-blink
        key?
     until
     key drop 
   ;

Since this is our first command which needs more than 1 line, the 
interpreter acts more complex. It changes the command prompt until 
the end of the command definition is reached (the command ``;``)
The ouput in the terminal window looks like

.. code-block:: console

   > : blink-forever
    ok." press any key to stop"
    okbegin
    ok led-blink
    ok key?
    okuntil
    okkey drop
    ok;
    ok
   > 

This word first prints some text ("press any key to stop") and starts a loop.
This loop lets the led blink once and checks for a keystroke. If no key
is pressed, the loops is repeated. If a key is pressed, the loop is
terminated. The last two commands are housekeeping: get the key pressed
and forget it. Otherwise the key pressed would be the first character
of the next command line.

The advantage of defining many words is that you can test them immediately.
Thus any further code can rely on words already being tested. That
makes debugging a lot easier. The drawback of that many words? You need
to remember their names.

Where to go next
................

This example is very basic. Next steps may involve library code
like :ref:`Digital Ports`. Related to it are the :ref:`Upload` for 
files with forth code.

More Arduino related stuff is in :ref:`Arduino Analog`. 
