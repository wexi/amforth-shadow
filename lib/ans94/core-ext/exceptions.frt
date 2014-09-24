\ ******************************************
\ some exceptions 
\ ******************************************

: ?throw ( f exc -- )
   swap if throw then drop
;
  
: ?comp  ( -- )
    state @ 0= -&14 ?throw
;

: ?pairs ( n1 n2 -- ) 
    - -&22 ?throw 
;
