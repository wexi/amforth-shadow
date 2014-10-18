\ duplicate first wordlist entry

: also ( -- ) 
  get-order over swap 1+ set-order 
;
