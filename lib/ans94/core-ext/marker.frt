\ Defines a word which resets the dictionary and removes itself
\ when called. Better then forget but still has limitations.

\ Saved to flash and restored by the defined marker word
\ are E² cells from MARKER1 to MARKER2. See (marker).

: marker
   dp here edp				\ RAM based pointers
   get-current dup @e swap		\ ( last-word wid )
   create
   (marker)  do
      dup i =  if			\ created marker replaced
	 drop				\ by last-word instead
      else
	 i @e
      then
      ,
   2 +loop
   , , ,
  does>
   (marker)  do
      dup @i i !e 1+
   2 +loop
   dup @i to edp 1+
   dup @i to here 1+
   @i to dp
;
