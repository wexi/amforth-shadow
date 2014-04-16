\ This file contains variations of the
\ standard VALUE. in amforth values are
\ stored in EEPROM and occupy 1 cell (2bytes).
\ Calling the name of a value returns this
\ information on the stack. With the command
\ TO this data can be changed. Implementation
\ allows to extend this schema to any data
\ in any memory.

\ First example is a 1byte value in RAM:

\ two helper words,
: c@v @i c@ ;
: c!v @i c! ;

: cvalue ( n "name" -- )
     (value)           \ create a new wordlist entry
     here ,            \ the address for the methods
     postpone c@v      \ method for the read operation 
     postpone c!v      \ method for the write (TO) operation
     here 1 allot !    \ allocate the memory and initialize it
   ;

\ $dead cvalue answer will store only the lower byte
\ of the number ($ad). The upper byte is either ignored
\ (TO) or set to 0


\ a buffered value is a value that tolerates heavy write access
\ by using a RAM cell as a cache.

\ you need to define a trigger, that flushes the cache
\ warm-cache initializes the cache with the stored data
\ (to be called in turnkey and similiar actions)

\ it is a matter of style whether a sequence should be
\ ' vvv method
\   or 
\ method vvv
\ is used. The implementation below goes the first way
\ since parsing words are considered suboptimal by the
\ gurus (they are state smart and less flexible)

\ 2 is a magic number
: @cache 2 + @i @ ;
: !cache 2 + @i ! ;

: flush-cache 1+ dup 2 + @i @ swap @i !e ;
: warm-cache  1+ dup @i @e swap 2 + @i ! ;

: cache-value 
    (value)
    dup ehere dup , dup cell+ to ehere !e
    postpone @cache
    postpone !cache
    here 2 ( 1 cell ) allot dup , ! \ 3 address units, remember?
;

\ \ test case
\ ehere dup . \ keep the eeprom address
\ 42 cache-value c-dp 
\ 17 to c-dp
\ c-dp . dup @e . \ prints 17 and 42
\ ' c-dp flush-cache
\ c-dp . dup @e . \ prints 17 and 17
