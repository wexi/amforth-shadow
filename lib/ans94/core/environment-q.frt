\ environment queries are placed in a
\ separate wordlist.

\ #require imove.frt

\ we have to distinguish between interpreted (RAM)
\ and compiled (Flash) strings. First the RAM
\ strings

: (environment?) \ addr len -- 0|x*i -1
    environment search-wordlist dup
    if >r execute r> then
;


\ the compiled (Flash) strings are transferred
\ to RAM and this copy processed afterwards.
: [environment?]
   ( iaddr len -- )
    dup >r
    here imove
    here r> (environment?)
;

\ a state smart word to decide what to do.
: environment?
   state @ if
     postpone [environment?]
   else
     (environment?)
   then
; immediate

\ some environment queries

\ save the definitions word list for this file
\ and switch to the environment queries wordlist
get-current environment set-current

: /counted-strings &60 ;
: floored 0 ;
: address-unit-bits $10 ;
: max-char $ff ;
: max-d $7fffffff. ;
: max-ud $ffffffff. ;
: max-n $7fff ;
: max-u $ffff ;

: return-stack-cells &10 ;
: stack-cells &10 ;

\ reset the definition word list
set-current
