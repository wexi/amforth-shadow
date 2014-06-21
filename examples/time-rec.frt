
\ recognize a time information in the format
\ hh:mm:ss (two : between numbers)
\ returns either r:fail (if unsuccessful) or
\ a double number representing the seconds of the
\ time stamp

\ append it to the recognizer stack with
\ ' rec:h:m:s get-recognizer 1+ set-recognizer

#require m-star-slash.frt

: rec:h:m:s ( c-addr u -- d r:intdnum | r:fail )
          0. 2swap >number ( -- hh. addr len )
          over c@ [char] : <> if 2drop 2drop r:fail exit then

          1 /string 0. 2swap >number ( -- hh. mm. addr len )
          over c@ [char] : <> if 2drop 2drop 2drop r:fail exit then

          2>r 2swap 60 1 m*/ d+ 2r>  \ -- (hh*60+mm). addr len

          1 /string 0. 2swap >number \ -- (hh*60+mm). ss. addr len

          \ len must now be 0 or its not a time stamp
          if drop 2drop 2drop r:fail exit then
          drop 2swap 60 1 m*/ d+ 
          r:intdnum
;

\ wishlist: 
\ validate the values for minutes and seconds (between 0 and 59)
\ factor the code
\ add milliseconds?

\ test cases (xy=XT of r:intdnum, ab=XT of r:fail)
\ > s" 01:00:00" rec:h:m:s . d.
\ xy 3600
\ > s" 01:00:0a" rec:h:m:s .
\ ab
\ > s" 72:00:09" rec:h:m:s . d.
\ xy 259200
