: foo  ( selector -- )
   case
      3 of  ." three"   endof
      2 of  ." two"     endof
      1 of  ." one"     endof
      ." other"
   endcase
;
