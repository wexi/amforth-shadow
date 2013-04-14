
\ calculates the baudrate register values
\ the two bytes of the result should be
\ transferred in high - low order

\ ( baudrate -- baud-rate-register)
: calc-baudrate
    f_cpu
    d2/ d2/ d2/ d2/
    rot um/mod
    swap drop 1-
;
