==============
Implementation
==============

Memory Allocation
-----------------

The ANS 94 standard defines three major data regions: name space,
code space and data space. The Atmega system architecture
uses three memory types too: Flash, RAM and EEPROM. These three
memory types have their own address space independently from the
others. Amforth does not unify these address spaces into one.

Amforth uses the flash memory as the standard location for all standard
data spaces: name, code and data. Contrary to the standard some 
words that operate on the data space use RAM adresses instead.
These words are HERE, @ (fetch), ! (store) and simimliar. In addition
the so called transient regions are in RAM as well.

Other words like , (comma) operate on the flash address and thus
directly in the dictionary.

Dictionary Management
---------------------

The dictionary can be seen from several points of view. One is
the split into two memory regions: NRWW and RWW flash. This is
the hardware view. NRWW flash cannot be read during a flash write
operation, NRWW means Non-Read-While-Write. This makes it impossible
to change there anything at runtime. On the other hand is this the place,
where code resides that can change the RWW (Read-While-Write) part of the
flash. For AmForth, the command :command:`!i` does this work: It changes
a single flash cell in the RWW section of the flash. This command hides
all actions that are necessary to achieve this.

The NRWW section is usually large enough to hold the interpreter core
and most (if not all) words coded in assembly (not to be confused with
the words that are hand-assembled into a execution token list) too.
Having all of them within a rather small memory region makes it possible
to use the short-ranged and fast relative jumps instead of slower
full-range jumps necessary for RWW entries.

Another point of view to the dictionary is the memory allocation. The key for it
is the dictionary pointer :command:`dp`. It is a EEPROM based VALUE that stores the
address of the first unused flash cell. With this pointer it is easy to allocate
or free flash space at the end of the allocated area. It is not possible to maintain
"holes" in the address range. To append a single number to the dictionary,
the command :command:`,` is used. It writes the data and increases the DP
pointer accordingly:

.. code-block:: forth

   \ ( n -- )
   : , dp !i dp 1+ to dp ;

To free a flash region, the DP pointer can be set to any value, but a lot
of care has to be taken, that all other system data is still consistent
with it.

The next view point to the dictionary are the wordlists. A wordlist
is a single linked, searchable list of entries. All wordlists create the forth
dictionary. A wordlist is identified by its ``wid``, an EEPROM address, that
contains the address of the first entry. The entries themselves contain a
pointer to the next entry or ZERO to indicate End-Of-List. When a new entry
is added to a list it will be the first one of this wordlist afterwards.

A new wordlist is easily created: Simply reserve an EEPROM cell and
initialize its content with 0:

.. code-block:: forth

   : wordlist ( -- wid )
       edp 0 over !e
       dup cell+ to edp ;

This ``wid`` is used to create new entries. The basic procedure to do it
is :command:`create`:

.. code-block:: forth

   : create
     (create) reveal
     postpone (constant) ;

:command:`(create)` parses the current source to get a space delimited string.
The next step is to determine, into which wordlists the new entry will be placed
and finally, the new entry is created, but it is still invisible:

.. code-block:: forth

  : (create)
      parse-name
      wlscope
      dup >r
      header
      r> smudge 2! ;

The :command:`header` command starts a new dictionary entry. The first action is
to copy the string from RAM to the flash. The second task is to create the link
for the wordlist management

.. code-block:: forth

   : header
    dp >r
    \ copy the string from RAM to flash
    r> @e ,
    \ minor housekeeping
   ;

``smudge`` is the address of a 4 byte RAM location, that buffers the access information.
Why not not all words are immediately visible  is something, that the forth standard
requires. The command :command:`reveal` un-hides the new entry by adjusting the content
of the wordlist identifier to the address of the new entry:



.. code-block:: forth

  : reveal
     smudge @ ?dup if \ check if valid data
       smudge 2+ @ !e \ update the wid
       0 smudge !     \ invalidate
     then ;

The command :command:`wlscope` can be used to change the wordlist that
gets the new entry. It is a deferred word that defaults to
:command:`get-current`.

The last command :command:`postpone (constant)` writes the runtime
action, the execution token (XT) into the newly created word. The XT
is the address of executable machine code that the forth inner interpreter
calls (see :ref:`Inner Interpreter`). The machine code for :command:`(constant)`
puts the address of the flash cell that follows the XT on the data stack.

Compiler
--------

The Amforth Compiler is based upon immediate words. They are always
executed, regardless of the value in the ``state`` variable. All
non-immediate words get compiled verbatim with their respective
execution token. It is simply appended to the current DP location.

Immediate words are usually executed (unless some special action such
as :command:`postpone` is applied). The immediate words do usually
generate some data or compile it to the dictionary. They are not
compiled with their execution token.

There are no optimization steps involved. The XT are written immediately
into the dictionary (flash).

Control Structures
------------------

The inner interpreter, the forth virtual machine, can, just like a real CPU, 
only execute words, one after the next. This linear control flow is usually 
not sufficient to do real work. The Forth VM needs to be redirected to other
places instead of the next one, often depending on runtime decisions.

Since Edsgar Dijkstra the structured programming is the preferred way to do it. 
AmForth provides all kinds of them: sequences, selections and repetitions. Sequences
are the simple, linear execution of consecutive words. Selections provide a conditional
jump over code segments. They are usually implemented with the :command:`ìf` command. 
Multiple selections can be made with :command:`case`. Repetitions can be unlimited or 
limited. Limited Repetitions can use flags and counter/limits to leave the loop.

There is also support for out-of-band control flow: Exceptions. They provide
some kind of emergency exits to solve hard problems. They can be catched at any
level up to the outer text interpreter. It will print a message on the command
terminal and will wait for commands.

Building Blocks
...............

All control structures can be implemented using jumps and conditional jumps. 
Every control operation results in either a forward or a backward jump. Thus
6 building blocks are needed to create them all: :command:`(branch)`,
:command:`(0branch)`, :command:`>mark`, :command:`<mark`, :command:`>resolve`
and :command:`<resolve`. None of them are directly accessible however. Most
of these words are used in pairs. The data stack is used as the control flow
stack. At runtime the top-of-stack element is the flag. All words are used in 
immediate words. They are executed at compile time and produce code for the 
runtime action.

:command:`(branch)` is a unconditional jump. It reads the flash cell after the
command and takes it as the jump destination. Jumps can be at any distance
in any direction. :command:`(0branch)` reads the Top-Of-Stack element and
jumps if it is zero (e.g. logically FALSE). If it is non-zero, the jump is not 
made and execution continues with the next XT in the dictionary. In this case, 
the branch destination field is ignored. These two words are implemented in 
assembly. A equivalent forth implementation would be

.. code-block:: forth

   : (branch) r> 1+ @i >r ;
   : (0branch) if (branch) else r> 1+ >r then ;

Note the chicken-and-egg problem with the conditional branch operation.

The ``mark`` words put the jump destination onto the data stack. This
information is used by the ``resolve`` words to actually complete the
operation. The :command:`<mark` additionally reserves one flash cell.
The :command:`<resolve` stores the information for the backward jump
at the current location of the dictionary pointer, the :command:`>resolve`
places the information at the place the :command:`>mark` has reserved and
completes the forward jump. Every mark needs to be paired with the *right*
resolve.

.. code-block:: forth

   : >mark dp -1 , ;
   : >resolve ?stack dp swap !i ;

   : <mark dp ;
   : <resolve ?stack , ;

The place holder -1 in :command:`>mark` prevents a flash erase cycle when the
jump is resolved using the :command:`!i` in :command:`>resolve`. The
:command:`?stack` checks for the existence of a data stack entry,
not for a plausible value. It the data stack is empty, an
exception -4 is thrown.

.. code-block:: forth

   : ?stack depth 0< if -4 throw then ;

Highlevel Structures
....................

The building blocks described above create the standard control
structures: conditional execution and various loop constructs.

Conditional Execution
#####################

The conditional execution compiles a forward
jump to another location. The jump destination
is resolved with :command:`then`. An :command:`else`
terminates the first jump and starts a new one for the
final :command:`then`. This way an alternate code block
is executed at runtime depending on the flag given to
the :command:`if`.

.. code-block:: forth

   : if   postpone (0branch) >mark ; immediate
   : else postpone (branch)  >mark swap >resolve ; immediate
   : then >resolve ; immediate

There is a rarely used variant of the :command:`if` command, that compiles
an unconditional forward branch: :command:`ahead`. It needs to be paired with
a :command:`then` to resolve the branch destination too. An
:command:`else` would not make any sense, but is syntactically ok.

.. code-block:: forth

   : ahead postpone (branch) >mark ; immediate

There are more variants of multiple selections possible. The
:command:`case` structure is based upon nested :command:`if`'s. Computed
goto's can be implemented with jump tables whith execution tokens as code
blocks. Examples are in the :file:`lib` directory.

Conditional Loops
#################

The loop commands create a structure for repeated execution of
code blocks. A loop starts with a :command:`begin`
to which the program flow can jump back any time.

.. code-block:: forth

   : begin <mark ; immediate

The first group of loop command are created with :command:`again` and
:command:`until`. They basically differ from each with the branch
command they compile:

.. code-block:: forth

   : until postpone (0branch) <resolve ; immediate
   : again postpone (branch) <resolve ; immediate

The other loop construct starts with :command:`begin` too. The
control flow is further organized with :command:`while` and
:command:`repeat`. :command:`while` checks wether a flag is true
and leaves the loop while repeat unconditionally repeats it.

.. code-block:: forth

   : while postpone (0branch) >mark swap ; immediate
   : repeat again >resolve ; immediate


Counted Loops
#############

Counted loops need to store the starting address
and the address of the last word of the loop body. The first
one is needed to jump back if the counter has not yet reached
its limit. The forward jump is made in :command:`leave` to
unconditionally exit the loop body.

.. code-block:: forth

   : do postpone (do) >mark <mark ; immediate
   : loop postpone (loop) <resolve >resolve ; immediate

The other loop commands :command:`?do` and :command:`+loop`
are almost identical to their respective counterparts, the
compile only a different runtime action to their goals.

The runtime action of :command:`do` (the :command:`(do)`)
puts three information onto the return stack: The loop
counter, the loop limit and the destination address for the
:command:`leave`. The first two parameters are taken from the
data stack at runtime, the leave-address comes from the compiler
(from the :command:`>mark`).

The runtime of :command:`loop` (the :command:`(loop)`)
checks the limits and with :command:`0branch` decides whether to
repeat the loop body with the next loop counter value or to exit
the loop body. If the loop has terminated, it cleans up the return
stack. The :command:`+loop` works almost identically, except that
it reads the loop counter increment from the data stack.

The access to the loop counters within the loops is done with :command:`i`
and :command:`j`. Since the return stack is used to manage the loop runtime,
it is necessary to clean it up. This is done with either :command:`unloop`
or :command:`leave`. Note that :command:`unloop` does not leave the loop!

==================
Standard Wordlists
==================

ANS94 Words
-----------



amforth implements most or all words from the ANS word
sets CORE, CORE EXT, EXCEPTION and DOUBLE NUMBERS. A loadable
floating point library that contains the basic routines is
available. Words from the word sets LOCALS and FILE-ACCESS
are dropped completely. The others are partially implemented.

Core and Core EXT
.................

Al words from the CORE word set are available. CORE EXT drops
the words C", CONVERT, EXPECT, SPAN, and  ROLL.

Loop counters are checked on signed compares.

Block
.....

amforth has limited block support with I2C/TWI
serial eeprom chips with 2 byte addresses.

Double Number
.............

Double cell numbers work as expected. Not all words
are implemented. Entering them directly using the
dot- notation work for dots at the end of the number,
not if the dot is somewhere within it.

Exception
.........

Exceptions are fully supported. The words
:command:`ABORT` and :command:`ABORT"`
use them internally.

The :command:`THROW` codes -1, -2 and -13 work as
specified.

The implementation is based upon a variable HANDLER
which holds the current return stack pointer
position. This variable is a USER variable.

Facility
........

The basic system uses the :command:`KEY?`
and :command:`EMIT?` words as deferred words
in the USER area.

The word :command:`MS` is implemented with the word
:command:`1MS` which busy waits almost exactly 1 millisecond.
The calculation is based upon the frequency specified at
compile time.

The words :command:`TIME&DATE`, :command:`EKEY`,
:command:`EKEY>CHAR` are not implemented.

To control a VT100 terminal the words
:command:`AT-XY` and :command:`PAGE`
are written in forth code. They emit the ANSI
control codes according to the VT100 terminal codes.

File Access
...........

amforth does not have filesystem support. It does
not contain any words from this word set.

Floating Point
..............

amforth has a loadable floating point library. It contains
the basic words to deal with single precision floats. The floats
are managed on the standard data stack. After loading the library
floats can be entered directly at the command prompt. Some speed
sensitive words are available as assembly code as well.

Locals
......

amforth does not currently support locals.

Memory Allocation
.................

amforth does not support the words from the memory
allocation word set.

Programming Tools
.................

Variants of the words
:command:`.S`, :command:`?`
and :command:`DUMP`
are implemented or can easily be done. The word
:command:`SEE` is available as well.

:command:`STATE` works as specified.

The word :command:`WORDS`
does not sort the word list and does not take care
of screen sizes.

The words :command:`;CODE`
and :command:`ASSEMBLER`
are not supported. amforth has a loadable assembler
which can be used with the words
:command:`CODE` and :command:`END-CODE`
.

The control stack commands
:command:`CS-ROLL` , and ,
:command:`CS-PICK` are not implemented. The
compiler words operate with the more traditional
:command:`MARK` / :command:`RESOLVE` word pairs.

:command:`FORGET`
is not implemented since it would be nearly impossible to
reset the search order word list with reasonable efforts.
The better way is using :command:`MARKER`
from the library.

An EDITOR is not implemented.

:command:`[IF]`, :command:`[ELSE]`
and :command:`[THEN]` are not implemented.

Word Lists and Search Order
...........................

Amforth supports the ANS Search Order word list. A word list consist of a linked list
of words in the dictionary. There are no limits on the number of word lists
defined. Only the length of the active search order is limited: There can be
up to 8 entries at any given moment. This limit can be changed at compile
time in the application definition file.

Internally the word list identifier is the address where the word list start
address is stored in the EEPROM. Creating a new word list means to allocate
a new EEPROM cell. Since the ANS standard does not give named word list
there is library code available that uses the old fashioned vocabulary.

Strings
.......

:command:`SLITERAL`, :command:`CMOVE>`,
:command:`CMOVE`, :command:`COMPARE>`, and
:command:`/STRING` are implemented.

:command:`-TRAILING`, :command:`BLANK`,
and :command:`SEARCH` are not implemented.

Forth 200x
----------

amforth provides the :command:`defer/is`,
:command:`buffer:` and the :command:`structure`
extensions from the forth 200x standards.

Defer and IS
............

:command:`defer` give the possibility of vectored execution. Amforth
has 3 different kind of such vectors, varying in how they are stored: EEPROM, RAM
or the USER area. The EEPROM makes it possible to save the settings permanently,
the RAM enables frequent changes. Finally the user area is for multitasking.

Buffer:
.......

The buffer allocates a named memory (RAM) region. It is superior to
the usual create foo xx allot since amforth has a non-unified
memory model and the code snippet does not the same as an unified memory
model forth (with the dictionary being at the same memory as the allot
command works).

Structures
..........

Amforth
-------

COLD
....

The startup code is in the file :file:`cold.asm`.
It gets called directly from the address 0 vector.

This assembly part of the startup code creates the basic runtime environment
to start the virtual forth machine. It sets up the stack pointers and
the user pointer and places the forth instruction pointer on the
word WARM. Then it boots the forth virtual machine
by jumping to the inner interpreter.

The start addresses of the stacks are placed to the user area
for later use as well.

WARM
....

The word WARM is the high level part of the
forth VM initialization. When called from
within forth it is the equivalent to a RESET.
WARM initializes the PAUSE
deferred word to do nothing, calls the application defined
TURNKEY action and finally hands over to QUIT.

TURNKEY
.......

The turnkey is a EEPROM deferred word that
points to an application specific startup word.

Its main task is to initialize the character IO to enable
the forth interpreter to interact with the command prompt. The
examples shipped with amforth do this by "opening" the serial
port, switching to decimal number conversion and setting up the
character IO deferred words (KEY, EMIT etc).

QUIT
....

QUIT initializes both data and return stack pointers by reading
them from the user area and enters the traditional ACCEPT -- INTERPRET
loop that never ends. It provides the topmost exception catcher as
well. Depending on the exception thrown, it prints an error message
and restarts itself.

MCU Access
..........

amforth provides wrapper words for the
micro controller instructions
:command:`SLEEP` and :command:`WDR`
(watch dog reset). To work properly, the MCU needs
more configuration. amforth itself does not call
these words.

Assembler
.........

Lubos Pekny has written an assembler for amforth. To support it, amforth
provides the two words :command:`CODE` and :command:`END-CODE`. The first
creates a dictionary entry and sets the code field to the data filed address. The
interpreter will thus jump directly into the data field assuming some machine
code there. The word :command:`END-CODE` places a JUMP NEXT into
the data field. This finishes the machine instruction execution and jumps back
to the forth interpreter.

Memories
........

Atmega micro controller have three different types of
memory. RAM, EEPROM and Flash. The words
:command:`@` and :command:`!`
work on the RAM address space (which includes IO
Ports and the CPU register), the words
:command:`@e` and :command:`!e`
operate on the EEPROM and
:command:`@i` and :command:`!i`
deal with the flash memory. All these words transfer
one cell (2 bytes) between the memory and the data
stack. The address is always the native address of
the target storage: byte-based for EEPROM and RAM,
word-based for flash. Therefore the flash addresses
64 KWords or 128 KBytes address space.

External RAM shares the normal RAM address space
after initialization (which can be done in the
turnkey action). It is accessible without further
changes.

For RAM only there is the special word pair
:command:`c@`/:command:`c!`
which operate with the lower half of a stack cell.
The upper byte is either ignored or set to 0 (zero).

All other types of external memory need special
handling, which may be masked with the block word
set.

Input Output
............

amforth uses character terminal IO. A serial console is
used. All IO is based upon the standard words
:command:`EMIT`/:command:`EMIT?` and
:command:`KEY`/:command:`KEY?`. Additionally the word
:command:`/KEY` is used to signal the sender to stop.
All these words are deferred words in the USER area
and can be changed with the :command:`IS` command.

The predefined words use an interrupt driven IO with
a buffer for input and output. They do not implement
a handshake procedure (XON/XOFF or CTS/RTS). The
default terminal device is selected at compile time.

These basic words include a call to the
:command:`PAUSE`
command to enable the use of multitasking.

Other IO depend on the hardware connected to the
micro controller. Code exists to use LCD and TV
devices. CAN, USB or I2C are possible as well.
Another use of the redirect feature is the
following: consider some input data in external
EEPROM (or SD-Cards). To read it, the words
:command:`KEY`
and
:command:`KEY?`
can be redirected to fetch the data from them.

Strings
.......

Strings can be stored in two areas: RAM and FLASH.
It is not possible to distinguish between the
storage areas based on the addresses found on the
data stack, it's up to the developer to keep track.

Strings are stored as counted strings with a 16 bit
counter value (1 flash cell)
Strings in flash are compressed: two consecutive
characters (bytes) are placed into one flash cell. The standard
word
:command:`S"`
copies the string from the RAM into flash using the
word
:command:`S,`
.
