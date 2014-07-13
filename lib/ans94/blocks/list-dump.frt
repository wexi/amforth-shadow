
\ a trivial list in hexdump format
#require dump.frt

: list 
   dup scr ! 
   buffer blocksize dump 
   scr @ updated? 0= if ." not " then ." modified" cr
;

