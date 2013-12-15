\ Defines a word which resets the dictionary and removes itself
\ when called.
\ Better then forget but still has limitations.

\ all information is in the first EEPROM cells.
\ (marker) is a constant that holds the max eeprom address saved

: marker
   eesy					\ RAM → E²
   create
   (marker) 0 do i @e , 2 +loop		\ flash first (marker) count E² bytes
  does>
   (marker) 0 do dup @i i !e 1+ 2 +loop	\ restore first (marker) count E² bytes
   drop
   syee					\ E² → RAM
;
