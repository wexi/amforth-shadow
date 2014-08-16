
\ a value in RAM with 2 cells data storage
\ requires quotations and 2@/2! from double wordset

#require quotations.frt
#require 2-fetch.frt
#require 2-store.frt

: 2rvalue ( d -- )
    (value)
    here ,
    [: @i 2@ ;] ,
    [: @i 2! ;] ,
    here 2! 4 allot
;
