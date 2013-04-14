\ FSM routines, from a paper presented by J . Noble-----
\ ---------------------------------------------------------
\ you can find the paper at http://www.forth.org/literature/noble.html
\ The fsm: word has been modified to correctly increment addresses by 
\ word, instead of byte. and to also use the i@ dictionary fetch word.
\ Ver 1.1 fsm: now implements "The best FSM so far" (see paper). State 
\ is now a heap variable with it's address in the dictionary of the fsm.
\ Written by Bernard Mentink

marker _fsm_

hex

\ dummy nop word for readability
: wide ;

\ perform word that executes vector
: perform 
     @i execute  ;  

\ Get 2 cells from dictionary space
: 2@i 
	dup 1+ @i swap @i ;

\ comment if you have this word.
: tuck swap over ;

\ Allocate a RAM variable on the data space, init with x, and return RAM address
: >ram  ( x -- addr )  here 1 cells allot tuck ! ; 


\ This word creates FSM transition tables
: fsm:   ( width -- )
      create  0 >ram  ,  ,   ] 	\ ram addr of state stored in dict,also width.
      does>               ( col# adr -- )
          dup dup >r 2@i  @  * 2* +   ( -- col#+width*state ) 
          swap 2* 1+ 1+ + 	    ( -- offset-to-action)
          dup >r           ( -- offset-to-action)
          perform          ( ? )
          r> 1+            ( -- offset-to-update)
          perform          ( -- state')
          r>  @i !  ;       \ update state


\ ......... some test code .............. 
\ un-comment the code lines to test state changes dependant on input supplied
\ e.g 2 test_fsm, 0 test_fsm etc
\ If you want the address of the state variable associated with your state 
\ machine, create the following word : mystate ['] test_fsm 1+ i@ ;

\ : one ." one " ;
\ : two ." two " ;
\ : three ." three " ;
\ : four ." four " ;
\ : nop ." nop " ;

\ 0 constant >0
\ 1 constant >1
\ 2 constant >2

\ a test state-machine table  
\ 4 wide fsm: test_fsm 
\ input:  |  0      |  1      |   2    |     3     |
\ state:  ---------------------------------------------
\    ( 0 )     nop >0    one >1   one >1     two >2
\    ( 1 )     four >1    one >1   nop >1     two >2
\    ( 2 )     nop >2    two >2   nop >2     nop >2 ;
