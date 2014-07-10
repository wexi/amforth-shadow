
\ print the names of the current recognizer stack

#require to-name.frt

: .recs
   get-recognizer 0 ?do
     >name icount $ff and itype space
   loop
;
