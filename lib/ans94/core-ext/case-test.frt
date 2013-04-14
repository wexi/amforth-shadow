    : foo ( selector -- )
       case
         3         of  ." three"   endof
         5 9 range of  ." between" endof
         1         of  ." one"     endof
       endcase
  ;
