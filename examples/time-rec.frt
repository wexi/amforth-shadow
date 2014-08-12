
\ recognize a time information in the format
\ hh:mm:ss (two : between numbers)
\ returns either r:fail (if unsuccessful) or
\ a double number representing the seconds of the
\ time stamp

\ append it to the recognizer stack with
\ ' rec:h:m:s get-recognizers 1+ set-recognizers
\ and than enter 02:00:00 to get 7200. (double 
\ cell number) which is the number of seconds 
\ 2 hours have.

#require m-star-slash.frt

\ some factors.
\ is the character a ':' ?
: ':'? ( addr len -- addr+1 len-1 f ) 
   over >r 1 /string r> c@ [char] : = ;

\ extract a number from the current string
: get-number ( addr len -- d addr' len' )
  0. 2swap >number
;

\ (hours*60+minutes)*60+seconds, factor during calculation
: a+60b 2swap 60 1 m*/ d+ ;

: rec:h:m:s ( c-addr u -- d r:dnum | r:fail )
          get-number ( -- hh. addr len )
          ':'? 0= if 2drop 2drop r:fail exit then

          get-number ( -- hh. mm. addr+1 len-1 )
          \ add hours to minutes
          2>r a+60b  2r>  
          ':'? 0= if 2drop 2drop r:fail exit then

          get-number \ -- (hh*60+mm). ss. addr len
          \ len must now be 0 or its not a time stamp
          if drop 2drop 2drop r:fail exit then drop 
          \ add minutes to seconds and finish
          a+60b  r:dnum
;

' rec:h:m:s get-recognizers 1+ set-recognizers

\ wishlist: 
\ validate the values for minutes and seconds (between 0 and 59)
\ factor the code
\ add milliseconds?

\ test cases (xy=XT of r:dnum, ab=XT of r:fail)
\ tests are made outside of the interpreter, thus the
\ need for explicit strings.

\ > s" 01:00:00" rec:h:m:s . d.
\ xy 3600
\ > s" 01:00:0a" rec:h:m:s .
\ ab
\ > s" 72:00:09" rec:h:m:s . d.
\ xy 259200
