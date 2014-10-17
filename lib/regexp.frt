\ Regular Expressions by Brian W. Kernighan and Rob Pike
\ Believed to be in the public domain (The Beez)

\ adaption for amforth by MT
Edefer (matchhere)

: false 0 ;
: 0<> 0= 0= ;
\ end adaption for amforth

: (match*)                             ( a n ra rn c --f)
  begin
    >r 2over 2over (matchhere) if r> drop 2drop 2drop true exit then
    2over if c@ dup [char] . = swap r@ = or else dup xor then r> swap
  while                                \ character equals text?
    >r 2>r 1 /string 2r> r>            \ if so, match again
  repeat
  drop 2drop 2drop false               \ clean up, return false
;

: (match?)                             ( a n ra rn c --f)
  >r 2over 2over (matchhere) if r> drop 2drop 2drop true exit then
   2over if c@ dup [char] . = swap r> = or else r> drop dup xor then
  if 2>r 1 /string 2r> (matchhere) else 2drop 2drop false then
;                                      \ character equals text? 
:noname                                ( a n ra rn -- f)
  dup if                               \ regular expression a null string?
    over char+ c@ dup [char] * =       \ if not, does it equal a '*'
    if                                 \ if so, call (match*)
      drop over c@ >r 2 /string r> (match*) exit
    else                               \ otherwise, does it equal a '?'
      [char] ? =
      if                               \ if so, call (match?)
        over c@ >r 2 /string r> (match?) exit
      else                             \ otherwise does it equal a '$'
        over c@ [char] $ = over 1 = and
        if                             \ and is it the last character?
          2drop nip 0= exit            \ is so, check length of text
        else                           \ finally, check if it char matches
          2over 0<> >r c@ >r over c@ dup
          [char] . = swap r> = or r> and
          if 1 /string 2>r 1 /string 2r> recurse exit then false
        then                           \ if so recurse, otherwise quit
      then
    then
  else
    true                               \ zero length regular expression
  then >r 2drop 2drop r>               \ clean up and exit
; is (matchhere)                       \ assign to DEFER (we got 'em)

: match                                ( a n ra rn  --f)
  dup if over c@ [char] ^ =  if 1 /string (matchhere) exit then then
  begin                                \ if caret, chop it
    2over 2over (matchhere) if 2drop 2drop true exit then
    >r over r> swap                    \ match characters
  while                                \ until no more text
    2>r 1 /string 2r>                  \ chop text
  repeat 2drop 2drop false             \ clean up
;

\ s" 0,9"   s" ^0,?9$" match . .s cr
\ s" 0:9"   s" ^0,?9$" match . .s cr
\ s" 09"    s" ^0,?9$" match . .s cr
\ s" 009"   s" ^0,?9$" match . .s cr
\ s" 0,,9"  s" ^0,?9$" match . .s cr cr 
