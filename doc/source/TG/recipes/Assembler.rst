.. _Assembler:

===============
Forth Assembler
===============

Amforth is written in assembly language. Writing
assembly words usually requires a rebuild of the 
hex files and flashing them to the controller. 
Lubos Pekny developed an assembler that runs 
within amforth and does not require a change 
of the amforth sources. Its syntax is a mixture
of the standard Atmel assembly and forth. The
mnemonics are close to Atmel's. The forth influence
leads to a postfix notation and that the words
that do the actual code generation end with a
comma.

Start
.....

To use it, load the file :file:`lib/assembler.frt` and
its dependencies into a running amforth. The assembler uses
word lists to organize itself. The assembler supports all
common mnemonics regardless of the controller type.

The assembler words are in a seperate word list. 
To activate it, the following sequence is typically used:

.. code-block:: forth

   forth only also assembler

This resets the word list order and adds the assembler
word list. After successfully compiling the assembler
word, the word list can be removed with ``previous``.

Simple Example
..............

The example uses the assembler for words that could easily be
written in plain forth. Nevertheless an implementation in
assembler is done. The code itself it taken from a posting on
`Roboforum.RU <http://roboforum.ru/forum58/topic4406-75.html>`_

.. code-block:: forth

     $2F constant tccr1a
     $2E constant tccr1b

     \ stop timer1
     \ : t1> 0 TCCR1 c! ;
      code t1>   
            tccr1b R2 out,   
      end-code

      \ start timer1 @ normal mode, prescaler=8 ( 1us counter @8MHz )
      \ : <t1 2 TCCR1 ! ;
      code <t1
            R17    2   ldi,
            tccr1a R2  out,
            tccr1b R17 out,
      end-code

The new words can be used just like a ordinary forth words.

.. code-block:: forth

    \  stop timer1 & zero counter
    : <t1>  t1> 0 dup TCNT1H c! TCNT1L c!   ;

    \  show t1 counter
    : .t1
            TCNT1L c@ TCNT1H c@ 8 lshift + dup
            ." (0x" .x ." )" bl emit u. ." us" 

            TIFR dup c@ $4 and dup      \ test  TOV1 flag
            if bl emit ." overrun" 
               over c@ or swap c!      \ clear TOV1 by writing'1'
            else drop drop then cr
            ;

     \ timing test using timer1, xt - executable address
      : ?us   <t1> <t1 execute t1> .t1 ;   ( *x xt -- *y )

