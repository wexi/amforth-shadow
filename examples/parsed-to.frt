
\ prepend -> to a value name and act like TO
\   42 to answer 
\ is the same as 
  \ 42 ->answer
\ The -> should be made a synonymous to TO
\
\ actions
:noname defer! ;
:noname postpone literal postpone defer! ;
:noname . . -48 throw ;
recognizer: r:parsed-to

: rec-parsed-to ( addr len -- addr r:parsed-to | r:fail )
   over @ $3e2d = ( -> ) 0= if 2drop r:fail exit then
   \ something left?
   2 /string dup 0= if 2drop r:fail exit then
   \ search for the name
   find-name 0= if r:fail exit then
   ( -- xt )
   r:parsed-to
;

' rec-parsed-to place-rec
