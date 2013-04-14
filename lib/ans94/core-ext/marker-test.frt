#include ../core/postpone.frt
#include ../tools/dumper.frt
#include marker.frt

wordlist constant test-wl
get-order test-wl swap 1+ set-order 
order
marker empty

' empty 4 - 10 idump

: hallo ." Hallo " ;

order
words
empty
words
order
