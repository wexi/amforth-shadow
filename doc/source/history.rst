
History
=======

5.4.2013: release 5.1
.....................

* core: Automatic scoping of words. A system hook can be used to
  use a different wordlist than CURRENT to place a new word in.
  Thanks to Enoch for the idea and the code.
* lib: very flexible CRC8 checksum generator and checker. Thanks to Enoch.
* recipes: :ref:`Interrupt Critical Section`, :ref:`Unbreakable`,
  :ref:`Efficient Bitmanipulation`, :ref:`Dump Utilities`, :ref:`Ctrl-C`
  Thanks to Enoch and the others on the mailling list for code and inspiration.
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

   : foo ... [: bar baz ;] ... ;

which is equivalent to

.. code-block:: forth

   :noname bar baz ; Constant#temp#
   : foo ... #temp# ...;

27.12.2012: release 5.0
.......................

* lib: Access to :ref:`1-Wire`.
  Based on code and ideas by Bradford J. Rodriguez for the
  `4€4th project <http://www.4e4th.eu>`_.
* lib: many Arduino ports have more than one purpose. The forth200x
  `Synonym <http://www.forth200x.org/synonym.html>`_
  gives them useful alias names.</a>
* Arduino: Added definitions for all ports based upon :ref:`Digital Ports`.
* recipes: There are now more than 30 :ref:`Cookbook` in the cookbook: many
  debug tools, loop with timeout, porting from C, and interrupts to mention some of them.
* core: autogenerate :command:`sleep` depending on register availability.
  :command:`sleep` on an Atmega32 is very different from an Atmega328p. The parameters for
  calling it at the forth level are the same however. The include list for the assembler
  is expanded with :file:`core/<device>/` to find the right :file:`sleep.asm` file.
* core: rudimentary error checks in the compiler: There has to be branch destination
  on the stack. If there is nothing, a stack underflow exception gets thrown.

.. code-block:: forth

      > : ?do i . loop ;
      ?? -4 14
      > : t2 ?do i . loop ;
       ok
      >

* core: Number sign may follow the number base prefix as specified in
  `Forth200x Number Prefix <http://www.forth200x.org/number-prefixes.html>`_.
  Added the character # as prefix for decimal as well.
* core: fixed a regression in :command:`toupper` caused by making :command:`within`
  standards compliant. Thanks to Arthur for the fix. :command:`[compile]` fixed as well.


27.7.2012: release 4.9
......................

* core: initialisation of the USER area is now done in WARM. please check your TURNKEY to remove
  the call to it. Thanks to Erich for pointing to.
* core: regenerated the devices files with the part description files from studio v6.
  added bitnames to the forth and python modules (later to be used with the shell).
* tools: completly new shell program with cool upload features from Keith:
  `amforth-shell <http://amforth.svn.sourceforge.net/viewvc/amforth/trunk/tools/amforth-shell.py?view=log>`_
  It has command completion, full command history, automatic controller identification with
  all register names and much more. Updated the :ref:`Upload` for this task
* lib: re-arranged source files, improved timer modules.
* lib: :command:`case` did not work at all. Thanks to Jan for telling.
* core: the new variable :command:`latest` has the XT of the currently being defined
  colon word.
* core: :command:`unused` should tell the free amount of memory in the area :command:`here`
  points to: RAM. Thanks to Carsten for the hint.
* core: introducing an environment query for basic controller information: memory sizes,
  max dictionary address: :command:`mcu-info`. The structure itself is not yet finalized.
  See at the end of a
  `core/<device>/device.asm <http://amforth.svn.sourceforge.net/viewvc/amforth/trunk/core/devices/atmega328/device.asm?view=markup>`_
  file for details.
* tools: The upload utilities were unable to process absolute filenames (those beginning
  with a /) Thanks to Carsten for the fix.

26.3.2012: release 4.8
......................
* core: fixed a bug in :command:`na@` and :command:`nb@` (extended VM registers).
* core: redesigned :command:`to` for use in LOCALs and RAM-based values.
* core: :command:`.s` is stripped down to a single line output of the stack content only.
  Looks better in the call tracer and is more like other forth's.
* core: small atxmega updates. Unfortunatly avrdude cannot flash the boot loader
  section as expected.
* core: optional Unified memory address space. :command:`@` and :command:`!` use the
  range from 0 to RAMEND as RAM, from RAMEND+1 upwards the next addresses from EEPROM,
  until EEPROMEND is reached and the remaining addresses from flash.
* core: :command:`environment?` can now be used in colon definitions. changed into
  loadable forth source instead of compile-time assembly.
* core: :command:`itype` now sends proper (e.g. single byte) characters to
  :command:`emit`.
* core: :command:`type` is made more robust against :command:`emit` errors.
* lib: :command:`macro` and a :ref:`Defining and using Macros` recipe
  for using them.
* :ref:`Profiler` to count the number of calls.
* lib: :command:`evaluate` for both RAM and Flash based strings.


4.2.2012: release 4.7
.....................

* recipes: :ref:`Multitasking`, :ref:`Reason For Reset` and :ref:`Tracer`
* core: new words from the STRINGS word set: :command:`sliteral` and
  :command:`compare`. Latter is a simplified version of the ANS94 spec:
  max 255 chars, (in)equality tests only.
* core: :command:`source`, :command:`refill` are now deferred words, based on the USER area. :command:`>in`
  likewise. Based on ideas from `Strong Forth <http://home.vrweb.de/stephan.becher/forth/doc/chapter11.htm>`_.
* core: :command:`/key` removed, it can be implemented by changing :command:`refill`.
* lib: The multitasker could not work after power cycles. Thanks to Erich for fixing.

6.10.2011: release 4.6
......................

* core: :command:`words` shows the *first* entry in the search order list as
  specified by DPANS94.
* lib: new word :command:`m*/` (d1 n1 n2 -- d2), uses a triple cell intermediate for d1*n1.
* lib: new words :command:`bm-set`, :command:`bm-clear` and :command:`bm-toggle` that
  efficiently change bits in RAM byte addresses. e.g. :command:` %0010 here bm-toggle` changes
  bit 2 in the RAM location at :command:`here`.
* lib: renamed :command:`spirw` to :command:`c!@spi`, new word :command:`!@spi`
  exchanges two bytes via SPI. Follows remotly the memory access word naming conventions.

29.6.2011: release 4.5
......................

* arduino: re-arranged word placing to maximize usable flash (at least on a duemilanove device, the bigger
  variants like the sanguino and mega* still have room for improvement). The target mega is now called mega128.
* lib: :file:`lib/buffer.frt`  implements  `buffer: <http://www.forth200x.org/buffer.html>`_.
* doc: improved refcard. Thanks to Erich for input and patches.
* core: changed API of the `Recognizer </pr/Recognizer-en.pdf>`_
  to the final addr/len pairs. Do not use counted strings any longer!
* core: new words :command:`find-name` and :command:`parse-name` follow
  `Forth 200x <http://www.forth200x.org/parse-name.html>`__
  and operate on the current input buffer, :command:`word` is no longer used internally. Lots of internal code simplifications.
* core: :command:`(create)` throws exception -16 if no name is given.
* core: exception -42 is really -4 (stack underflow).
* core: :command:`digit?` again. Stack effect now compatible to gforth: :command:`( char -- n true | false)`.
  Current setting of :command:`base` is now taken internally.

24.5.2011: release 4.4
......................

* examples: added a game of life and a queens puzzle solver.
* core: restructure of the RAM usage. You need to remove the :command:`.set here = ...` line from your
  application definition file (template.asm).
* core: turn :command:`cold` into the main initialization word and :command:`warm` into some
  high level initialization.
* doc: updated Technical Documentation of Recognizers and Interrupt Processing. Reformatted the
  :ref:`RefCard` to a more compact style.
* core: added :command:`n>r` and :command:`nr>` from `Forth 200x <http://www.forth200x.org/n-to-r.html>`__.
* core: Redesign of Interrupt Handling. ISR Routines are still normal Colon Words and
  can deal with every kind of interupts. There are no lost interupts any longer. Based on
  Ideas from Wojciech (Tracker ID 2781547) and Al (mailling list).
* appl: Fixed a regression in the floating point library due to changes in :command:`number` in post 4.0 releases.
  :command:`>float` can now be used as the main part of a recognizer.
* core: added a compile time option WANT_IGNORECASE to make amforth case-insensitve, disabled by default.

1.5.2011: release 4.3
.....................

* core: :command:`u>` had wrong stack effect in case of true result.
* core: :command:`int-trap` triggers an interrupt from software.
* core: :command:`/user` environment query gives the size of the USER area
* core: :command:`sleep` takes the sleep mode as parameter.
* ex: added timer-interrupt.frt as an example for using interrupts with forth.
* pub: Erich has presented amforth at the Fosdem 2011 `Slides </pr/Fosdem2011-slides-amforth.pdf>`_
  and `Proceedings </pr/Fosdem2011-proceedings-amforth.pdf>`_ (published with permission). Thanks Erich!
* core: simplified :command:`get/set-order` with a changed eeprom content.
* doc: new user guide version from Karl (for version 4.2).
* core: renamed :command:`e@/e!` to :command:`@e/!e` to comply with the
  memory access wordset from forth200x, same with :command:`i@/i!`.
* core: documentation fixes in many files: :ref:`RefCard`.
* core: re-design of the (outer) interpreter using recognizers (dynamically extend the interpeter to
  deal with new semantics. Defined :command:`get/set-recognizer` similiar to :command:`get/set-order`.

19.9.2010: release 4.2
......................

* core: fixed a regression for :command:`i!` which made :command:`marker` useless
  (among other oddities). Thanks to Marcin for the fix
* core: currently defined colon words are invisible until the final ;.
* applications: Leon contributed a IEEE754 floating point library in plain
  forth, Pito translated some basic words into assembly for speed.

2.9.2010: release 4.1
.....................

* core: new words :command:`2>r`, :command:`2r>` and :command:`2literal`.
* core: converted most of the atmega part definition files with the pd2amforth utility.
  Please report any success / failure.
* doc: set the fuses to make the bootloader size as large as the NRWW size.
* core: abort assembling if flash usage is above limits.
* core: allow double cell numbers in colon definitions. Thanks to Pito for reporting the bug.

1.7.2010: release 4.0
.....................

* tools: amforth-upload.py optionally loads a device specific module and replaces
  register definitions with their values prior to sent the code to the controller.
  The device modules are auto-generated from the part description files.
* core: ANS94 mention that HERE points to the data (RAM) region. Re-introduced DP
  as the dictionary (Flash) pointer. :command:`HEAP` is gone. Migrate old HEAP to
  HERE and old HERE to DP.
* core: save and clear the initial value of the MCU Status Register at address 10.
* tools: pd2amforth is now capable to generate the device definition files. It is no
  longer necessary to edit them manually.
* core: finally separated the terminal IO settings from the device definition files.
* core: optionally set ``WANT_SPI`` (or any other IO Module) to include the register
  definion names at build time.
* core: massivly restructured the :file:`devices/` filesystem entry. Change your application
  files to include :file:`device.asm` instead of the device name. Set the include directory
  to the proper subdirectory under :file:`core/devices` as well.
* core: dynamically calculate the free space. Do not use all of it however, the data stack may grow.

.. code-block:: forth

   s" /pad" environment?


* core: Simplified the Pictured Numeric Output words. They now use the memory area below
  :command:`pad` (which is 100 bytes above HEAP) as the buffer region.
* appl: added the arduino board with some example codes. Currently with the
  Mega (Atmega1280), Duemilanove (Atmega328) and Sanguino (Atmega644p) controller types.

25.5.2010: release 3.9
......................

* web: updated the Howto page to
  demonstrate :ref:`Redirect IO`.
* core: The Atmega2561 now fully works (incl the compiler).
* core, appl: Andy Kirby donated the device files and a full implemention for
  Arduino Mega with the Atmega1280.
* core: CPU Name, Forthname and Version strings can be accessed as environment queries.

25.4.2010: release 3.8
......................

* core: turned :command:`i!` into a deferred word.
* core: fix for :command:`icompare` to make it work with all addr/len strings.
  Bug found and fixed by Michael and Adolf.
* core: re-implemented the :command:`i!` in (mostly) assembly language to ease
  integration into bootloaders.
* core: factor the three prompts into compile time changable words.
* appl: the :file:`dict_minimum.inc` und :file:`dict_core.inc` files need to be included
  within the application defition files.
* core: :command:`pad` is no longer used by amforth itself.
* core: reorder internal code in :command:`interpret` to get rid of :command:`0=` calls.

24.1.2010: release 3.7
......................

* core: atxmega 128 support (no compiler yet).
* core: new word :command:`>number`. :command:`number` accepts trailing (!)
  dots to enter double cell numbers.
* lib: enhanced multitasker with turnkey support. Thanks to Erich W&auml;lde for
  in depth debugging and testing.
* lib: new word :command:`anew` drops word definitions if already defined, starts
  a new generation.
* core: USER area is now split into system and application user areas, system user
  area is pre-set from EEPROM.
* new: source repository `Incubator <http://amforth.svn.sourceforge.net/viewvc/amforth/incubator/>`_
  for not-yet-ready-but-interesting projects, volunteers welcome.

1.10.2009: release 3.6
......................

* core: new word :command:`environment`. It provides the environment wordlist identifier,
  thus make it possible to create own environment queries as standard words.
* core: new word :command:`d=`.
* core: amforth runs partially on an atmega2561 and atxmega's, there is still no
  working flash store word (:command:`i!`) therefore only the interpreter
  is available yet.
* core: moved the usart init values to appl section.
* core: added a poll-only receive word, selectable at compile
  time. Disable the rx interrupt to use it.

1.9.2009: release 3.5
.....................

* core: re-structure the usart code, added a non-interrupt based transmit word (TX),
  selectable at compile time.
* lib:  added :command:`xt>nfa` that goes from the XT to the name field address.
* core: bugfix :command:`recurse`.
* core: restructured EEPROM, never depend on fixed
  addresses for system values.
* core: added a :file:`dict_wl.inc` file with most
  of the non-core wordlist commands.

11.4.2009: release 3.4
......................

* core: renamed the words for the serial terminal to be more generic since they can
  deal with any serial port, not only the first one.
* lib: dropped :command:`forget` since it cannot work with multiple wordlists, fixed
  :command:`marker`.
* core: changed again :command:`digit?` stack effect (and fixed a little bug).
* core: :command:`number` honors a leading &, $ or % sign to temporarily switch to DECIMAL,
  HEX or BIN base resp. Thanks to Michael Kalus for factoring the code.

22.2.2009: release 3.3
......................

* core: faster :command:`noop`.
* added ANS94 search order wordlist.
* core: :command:`within` had problems with signed boundaries, literal numbers are processed
  faster (again).
* core: improved :command:`digit?` and :command:`number`. They now
  report errors on invalid characters at the wrong position.
  The following strings are no longer valid numbers: --1 or 0@ (in base hex).
* core: :command:`-1 spaces` now prints nothing, Fix from Lothar Schmidt.
* core: :command:`(loop)` (runtime of loop) now checks for equality only, as
  specified in ANS94.

10.1.2009: release 3.2
......................

* core: bugfix for trailling 0x00 byte during :command:`itype`.
* core: enable use of other usart port than 0.
* pc-host: `Ken Staton <http://staton.us/electronics/remote_IO/atmega_bit_whacker.html>`_
  wrote a nice pc based terminal with upload functionality.
* core: New controllers: ATmega328P and ATmega640.
* core: changed :command:`digit` to :command:`digit?` found in many other forth's.
* core: new word :command:`within`.
* core: split application dictionary definition into 2 parts, one for the lower flash, one for the
  upper (NRWW) flash. Both can be empty, but need to exists.
* core: changed some names for internal constants (baudrate -> BAUD) and registers (EEPE vs EEWE).
* core: new directory :file:`drivers/` for low level driver functions. Currently only the generic
  ISR and the USART0 interrupt handler.

10.11.2008: release 3.1
.......................

* core: :command:`icompare` now has a similiar stack effect as :command:`compare`.
* core: new word: :command:`environment?`. Supports :command:`/hold` query.
* core: Strings in flash (incl. names in the dictionary)
  contain now 16bit length information, previously only 8 bit.

17.10.2008: release 3.0
.......................

* core: :command:`s"` new with interpreter semantics.

.. code-block:: forth

   s" hello world" type`

works at the command prompt. The compiled version is

.. code-block:: forth

   : hw s" hello world" itype ;

* core: Placement of Stacks is now an application setting. See example apps.
* core: added VM register A and B. See
  `Stephen Pelc' Slides <http://www.complang.tuwien.ac.at/anton/euroforth/ef08/papers/pelc.pdf>`_
  for details. Uses Atmega Register R6:R7, R8:R9 resp.
* core: added :command:`cmove` as a primitve.
* core: :command:`f_cpu` used the old (pre-2.7) stack order for double cell values.
* lib: moved some definitions to more appropriate files.

1.8.2008: release 2.9
.....................

* core: :command:`heap`, :command:`here` and :command:`edp` are now VALUEs.
  :command:`dp` is gone (use :command:`here`)
* lib: more VT100 sequences.
* core: The TIB location and size are accessible with the VALUEs :command:`TIB` and :command:`TIBSIZE`.
* core: fixed TIBSIZE default configuration.
* lib: created math.frt, contains among others the standard words
  :command:`sm/rem`, :command:`fm/mod`.
* Alexander Guy fixed a bug in :command:`u*/mod`.
* Bernard Mentink adapted Julian Noble's Finite State Machine code.
* applications: Lubos Pekny designed a smart computer with a 4line character LCD and a PS/2 keyboard.
  Details are in the `Application Repository <http://amforth.svn.sourceforge.net/viewvc/amforth/applications>`_,
  a video is `available <http://www.forth.cz/Download/App/LCD+KbdPS2.avi>`_ as well.


27.6.2008: release 2.8
......................

* core: Lubos Pekny found that :command:`-jtag` sometimes used the wrong mcu register.
* core: Bernard Mentink wrote a Atmega128 device file, Thanks alot.
* core: Atmega88 & Atmega168 work too.
* core: Fixed regression for atmega128.
* core: Moved serial interface words to application dictionary (not every amforth installation
  may have a serial terminal).
* library: Updated assembler from Lubos Pekny.
* examples: sieve benchmark, optimized for 1K RAM.

5.4.2007: release 2.7
.....................

* core, lib and sample applications are now in one package.
* restructured repository layout. Now the trunk has most of the sources.
* core: re-arranged the register mapping.
* core: :command:`m*` was in fact :command:`um*`.
* core: double cell numbers changed stack order: TOS is now the
  most significant cell.
* library: new: assembler written by Lubos Pekny,
  `www.forth.cz <http://www.forth.cz>`_. Thank you!
* examples: PWM example from Bruce Wolk. TWI/I2C EEPROM access

27.1.2008: release 2.6
......................

* core: new defining words :command:`code` and :command:`end-code`. :command:`code` starts a new dictionary header
  with the XT set to the data field. The 2nd one appends the :command:`jmp NEXT` call into the dictionary.
* core: removed the pre-assembled :command:`case` / :command:`endcase` words. Added them as forth
  library.
* core: new words :command:`-jtag` (turns off JTAG at runtime) and :command:`-wdt` (turns off
  watch dog timer at runtime. They need to be implemented as primitives due to timing requirements.
* core: :command:`quit`: Keep :command:`base` when handling an exception.
* library: TWI/I2C EEPROM Support.

6.12.2007: release 2.5
.......................

* Bug: :command:`hex 8000 .` froze the controller. Now it prints -8000.
  Thanks to Lubos for the hint.
* Moved init of :command:`base` from :command:`quit` to :command:`cold`. :command:`turnkey` be
  used to change it permanently. Thanks to Lubos for the hint.
* nice looking dumper words for RAM/EEPROM/FLASH, dropped idump.asm.
* Extended Upload utility (:file:`tools/amforth-upload.py`) from piix:
  include files using following syntax:

.. code-block:: none

  \ demo file
  #include ans94/marker.frt
  marker empty

* usart transmit (:command:`tx0`) made more robust.
* User Area restructured for the new multitasker.
* added documentation: Karl's :ref:`User Guide`
  and a :ref:`Technical Guide`.

11.10.2007: release 2.4
........................

* Added AT90CAN128. Other Atmega128 style controllers should work too.
* lot of fine tuning.
* dropped the assembler device init portion.
* New file: :file:`dict_compiler.inc`. Without these words the forth system is (more or less) a
  pure interactive system without extensibility.
* new words :command:`[char]`, :command:`fill`.
* re-arranged usart code. fixed bug when usart baud rate calculation leads to values greater 255.
* renamed :command:`/int` to :command:`-int` and :command:`int` to :command:`+int`, it's more fortish ;=)

29.7.2007: release 2.3
......................

* new words :command:`spaces` and :command:`place`.
* Improved :command:`i!`.
* bugfixing runtime parts of :command:`do`/:command:`loop` and co.
* re-coded :command:`find` and :command:`icompare` for better readability.
* eliminated code duplets in some primitives.
* moved usart init from :command:`cold` to application specific turn key action. Added
  error checking in receive module.

17.6.2007: release 2.2
......................

* new download section: application
* optional dictionary is now part of the application, therefore renamed to dict_appl.
* new words: :command:`leave` and :command:`?do`.

22.5.2007 release 2.1
.....................

* changed stack effect for :command:`#` to ansi (from single cell value to double cell). Double cell values do not work (yet).
* introduced :command:`deferred` words instead of tick-variables. Works for EEPROM based vectors (turnkey),
  RAM based (:command:`pause`) and User based (:command:`emit` etc) vectors.
* new words: :command:`wdr` (Watchdog reset), :command:`d>` and :command:`d<` (double cell compare).

2.5.2007 release 2.0
....................

* internal restructure of targets.
* new words: :command:`u>` and :command:`u<`.
* bugfixing interrupts.
* new word: :command:`log2` logarithm to base 2, or the number of the highest 1 bit.
* fixed wrong addresses for usart-io (esp. butterfly)

25.4.2007 release 1.9
.....................

* renamed :file:`dict_low.asm` to :file:`dict_minimal.asm`.
* new word :command:`parse` ( c -- addr len) parses :command:`source` for char delimited strings.
* new word :command:`sleep` ( -- ) puts the controller into (previously defined) sleep mode.
* new words :command:`s"` ( -- addr len) parses TIB for " character and compiles it into flash,
  :command:`s,` ( addr len -- ) does the real copying of the string into flash at :command:`here` together with
  the invisible word :command:`(sliteral)` (-- flash-addr len).
* bugfix: :command:`f_cpu` had wrong word order. Use :command:`swap` as a temporary work around.`
* re-wrote initialisation of usart0 ( baud -- ) to forth code. Startup speed is taken from (eeprom) VALUE :command:`baud0`.

10.4.2007 release 1.8
......................
* interrupt handling redesigned. Now every interrupt (except those for usart0) can be used.
  :command:`intcounter` is gone. New words are :command:`int@`, :command:`int!` and :command:`#int`.
* double and mixed cell arithmetics.`
* bugfix: proper initialization of data stack pointer. Thanks to Maciej Witkowiak.
* move TOS into register pair.

3.4.2007 release 1.7
....................
* new word: :command:`f_cpu` sets a double cell value with the cpu clock rate.
* :command:`hld` is now at :command:`pad` to save RAM.
* :command:`pad` did return some compile-time stochastic value`
* lots of internal changes.
* optional dictionary: :command:`d-`, :command:`d+`, :command:`s>d` and :command:`d>s`.

25.3.2007 release 1.6
.....................
* split :file:`blocks/ans.frt` into pieces.
* :command:`sign` no longer inserts a space for non-negative values.
* new word: :command:`/key`. It is vectorized via
  :command:`'/key` and gets called by :command:`accept`
  to signal the sender to stop transmission.
  See :file:`blocks/xonxoff.frt` for example usage.
* replaces :command:`up` with :command:`up@` and :command:`up!`.
* new word: :command:`j` ( -- n).
* new word: :command:`?execute` ( xt|0 -- ) if non-zero execute the XT.
* The Atmega644 works fine :=) but needs the Atmel assembler (see :ref:`FAQ`) :=(
* Bugfix: :command:`+!` did a :command:`+` only.
* Bugfix: too many spaces in :command:`.` (dot).
* give user variables :command:`rp` and :command:`sp` a name.

14.3.2007 release 1.5
.....................
* changed: :command:`itype` and (new) :command:`icount` refactored by Michael Kalus. These words now have similiar
  stack effects as there RAM counterparts.
* changed: :command:`.` now operates on signed values.
* new word: :command:`u/mod` is basically the former :command:`/mod`.
* new word: :command:`u.` to display unsigned values.
* fixed bug in :command:`/mod` for values less -FF (hex).
* :command:`create` left the address of the XT insted of the PFA. Fixed.
* deleted word: :command:`idump`. It is now in the file :file:`blocks/misc.frt`.
* new word: :command:`:noname` ( -- xt) creates headerless entry in the dictionary.
* new word: :command:`cold` as main entry point. It executes the turnkey action.
  :command:`abort` & co do not trigger the turnkey action.

5.3.2007 release 1.4
....................
* :command:`pad` is now in the unsed (according to :command:`heap`) ram. That may help :command:`word` to store longer strings.
* new word: :command:`unused` ( -- n) gives the number of unused flash cells in the dictionary.
* :command:`/mod` (and :command:`/` and :command:`mod`) now honor signed numbers, division is symmetric.
* new word: :command:`abort"`
* :command:`quit` now aborts on every catched exception.
* :command:`quit` no longer prints anything, :command:`ver` is now a turnkey action.
* new optional dictionary, included at compiletime. Contains now :command:`case` &amp; Co and some :command:`d-` words for
  double cell arithmetics.

24.2.2007 release 1.3
.....................
* bug: :command:`digit` did not work properly
* bug: :command:`<`: equal is not less
* interrupts are processed faster
* Interrupt counter are now only 1 byte long (access with :command:`c@`)
* change: :command:`allot` works now for ram not for flash
* added/corrected stack comments
* bug: :command:`create` leaves flash address insted of first cell content
* change: :command:`.s` nicer for empty stack
* internal: :command:`i!` internally completly turns off interrupts
* bug: :command:`abort` now works again, error was in :command:`quit`
* bug: :command:`while` and :command:`repeat` changed stack effects
* bug: :command:`r@` now works correctly
* new word: :command:`immediate`
* removed words: :command:`forget`, :command:`postpone` (these and many more are now in the :command:`blocks/ans.frt` library)
* bug: if :command:`'` (tick) does not find the word, it now throws the exception -13
  Many thanks to Ulrich Hoffmann for providing feedback and corrections!

3.2.2007 release 1.2
....................
* anyone missed :command:`emit?`?.
* increased user area to 24 bytes (12 cells). Fixed a overlap between :command:`handler`
  and :command:`emit` ff.
* AVR :ref:`AVR Butterfly`  works (again). Many thanks to the
  `German FIG <http://www.forth-ev.de/>`_ for donating one.
* internal changes for multitarget development (for the AREXX asuro minirobot).

20.1.2007 release 1.1
.....................
* :command:`emit`, :command:`key` and :command:`key?` are now vectored via :command:`user` based
  variables.
* :command:`forget` frees most of the flash space too
* internal go back for :command:`i!` to previous code
* Code for Atmega8 was broken due to nrww flash overflow (found by Milan Horkel)
* Bugfix: backspace key in :command:`accept` now stops at beginning of line (found by Milan Horkel)

4.1.2007 release 1.0
....................

* new immediate word: :command:`[']`
* new word :command:`user` defines user variables
* new controller: atmega169 (Atmel Butterfly)
* renamed :command:`eheap` to :command:`edp`.

17.12.2006 release 0.9
......................

* interrupts in high level forth colon words (INT0 and INT1 for now).
* new word: :command:`noop` a colon word for doing nothing.
* :command:`number` respects minus sign
* changed :command:`turnkey` into :command:`'turnkey`. The &quot;turn-off&quot; value
  is now 0 (zero)
* new words: :command:`pause` and :command:`'pause`. :command:`pause` will execute
  the XT stored in :command:`'pause` (a RAM cell) when non zero
* :command:`handler` (used by :command:`cactch` and :command:`throw`) is a USER variable.

7.12.2006 release 0.8
.....................

* new words: :command:`create`, :command:`does>`, :command:`up`, :command:`0`
* Support for user variable, turned :command:`base`, :command:`rp0` and :command:`sp0` into user variables
* words like :command:`(do)` which should not by called by user
  are now invisible to save nrww flash space
* bugfix for negative increment for :command:`+loop`.

24.11.2006 release 0.7
......................

* new word: :command:`turnkey`: executed whenever :command:`quit` starts.
* numbers may contain lower case characters (if :command:`base` permits)
* bugfixing :command:`case` & co.
* :command:`number` emits -13 if an invalid character is found
* renamed :command:`vheader` to :command:`(create)`
* :command:`abort` re-initializes both stacks
* made backslash :command:`\\` immediate

20.11.2006 release 0.6
......................

* backspace now works in :command:`accept`
* :command:`depth` based on :command:`sp0`/:command:`sp@`
* "unused" control characters are treated as spaces
* bugfixes for :command:`(loop)` and :command:`(+lopp)`.
* New words: :command:`1ms` busy waits 1 millisecond

13.11.2006 release 0.5
......................
* definition files for varios atmega types
* core wordlist should be complete
* internal cleanups and bugfixes


5.11.2006 release 0.4
.....................

* start using :command:`catch`/:command:`throw`
* Atmega8 works fine
* few new words (:command:`case`, comments)
* nicer prompt

31.10.2006 release 0.3
......................

* New website
* Atmega16 works fine
* Bugfixing, true flag always 0xffff

27.10.2006 release 0.2
......................

* Compiler works
* Many new wrds

16.10.2006 release 0.1
......................

* first public release
* interpreter over serial terminal

