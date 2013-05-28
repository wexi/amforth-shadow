\ From: John Hayes S1I
\ Subject: tester.fr
\ Date: Mon, 27 Nov 95 13:10:09 PST  

\ (C) 1995 JOHNS HOPKINS UNIVERSITY / APPLIED PHYSICS LABORATORY
\ MAY BE DISTRIBUTED FREELY AS LONG AS THIS COPYRIGHT NOTICE REMAINS.
\ VERSION 1.1

\ modified for amforth by Matthias Trute 2007

marker -ans-tester

\ SET THE FOLLOWING FLAG TO TRUE FOR MORE VERBOSE OUTPUT; THIS MAY
\ ALLOW YOU TO TELL WHICH TEST CAUSED YOUR SYSTEM TO HANG.
variable VERBOSE
   0 VERBOSE !

: EMPTY-STACK	\ ( ... -- ) EMPTY STACK: HANDLES UNDERFLOWED STACK TOO.
   depth ?dup if dup 0< if negate 0 do 0 loop else 0 do drop loop then then ;

: ERROR		\ ( C-ADDR U -- ) DISPLAY AN ERROR MESSAGE FOLLOWED BY
		\ THE LINE THAT HAD THE ERROR.
   itype source type cr			\ DISPLAY LINE CORRESPONDING TO ERROR
   EMPTY-STACK				\ THROW AWAY EVERY THING ELSE
;

variable ACTUAL-DEPTH			\ STACK RECORD
variable ACTUAL-RESULTS 20 cells allot  \ reserve space in RAM

: {		\ ( -- ) SYNTACTIC SUGAR.
   ;

: ->		\ ( ... -- ) RECORD DEPTH AND CONTENT OF STACK.
   depth dup ACTUAL-DEPTH !		\ RECORD DEPTH
   ?dup if				\ IF THERE IS SOMETHING ON STACK
      0 do ACTUAL-RESULTS i cells + ! loop \ SAVE THEM
   then ;

: }		\ ( ... -- ) COMPARE STACK (EXPECTED) CONTENTS WITH SAVED
		\ (ACTUAL) CONTENTS.
   depth ACTUAL-DEPTH @ = if		\ IF DEPTHS MATCH
      depth ?dup if			\ IF THERE IS SOMETHING ON THE STACK
         0 do				\ FOR EACH STACK ITEM
	    ACTUAL-RESULTS i cells + @	\ COMPARE ACTUAL WITH EXPECTED
	    <> if s" INCORRECT RESULT: " ERROR unloop exit then
	 loop
      then
   else					\ DEPTH MISMATCH
      s" WRONG NUMBER OF RESULTS: " ERROR
   then ;

: TESTING	\ ( -- ) TALKING COMMENT.
   source VERBOSE @
   if dup >r type cr r> >in !
   else >in ! drop
   then ;

