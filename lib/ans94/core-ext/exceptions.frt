\ ******************************************
\ some exceptions 
\ ******************************************

: ?throw ( f exc -- )
   if throw then 
;
  
: ?comp  ( -- )
    state @ 0= -&14 ?throw
;

: ?pairs ( n1 n2 -- ) 
    - -&22 ?throw 
;
