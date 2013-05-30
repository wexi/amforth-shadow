\ Defines a word which resets the dictionary and removes itself
\ when called.
\ Better then forget but still has limitations.

\ all information is in the first few EEPROM cells.
\ (marker) is a value that holds the max eeprom address

: marker
    \ get information to remove the marker itself
    get-current @e dp
    \ create the wordlist entry
    create
    \ save all data
    (marker) 0 do i @e , 2 +loop
    \ save the marker-remove data
    , ,
  does>
    \ restore data from saved state
    (marker) 0 do dup @i i !e 1+ 2 +loop
    \ purge the marker itself
    dup @i to dp
    1+  @i get-current !e
;
