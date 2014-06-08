
\ split a string at position n
: split ( addr u n -- addr1 u1 addr2 u2 )
  \ addr2 = addr + n
  \ u2 = n - u
  >r            ( -- addr u)
  r@ swap       ( -- addr u1 u )
  r@ -          ( -- addr u1 u2)
  rot dup r> +  ( -- u1 u2 addr1 addr2)
  rot 2>r swap 2r>
;

\ split a string into two at the leftmost char position
: $split ( addr u char -- addr1 u1 addr2 u2 ) 
    >r 2dup r> cscan ( -- addr u addr u1 )
    nip split
;

\ mostly syntactic sugar, improves readability however
\ left part of a string
: $left ( addr len l -- addr len') 
  nip 
;

\ right part of a string
: $right ( addr len l -- addr' len' )
  /string
;

\ test cases
\ > source char r $split type cr type
\ rce char r $split type cr type
\ sou
\ > source 10 $right type
\ $right type
\ > source 8 $left type
\ source 8 ok
\