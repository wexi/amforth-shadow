\ trivial local

\ there is exactly one local called X
\ it is not initialized upon entry
\ it works like a local should do:
\ get the content by calling X, assign
\ a new value with TO

\ separate local stack
\ max. call depth 10

#10 cells constant l-size
l-size buffer: l \ the stack
variable lsp     \ the stackpointer

\ initialize l-stackpointer, call it
\ in turnkey prior to use it!
: l-init
  l l-size + 2 - lsp !
;

\ general stack access, unsued
: l@ lsp @ @ ;
: l! lsp @ ! ;
: l-free   2 lsp +! ;
: l-alloc -2 lsp +! ;
: >l l! l-alloc ;
: l> l-free l@  ;

: local@ negate lsp @ + @ ;
: local! negate lsp @ + ! ;

: local ( n "name" -- )
    (value) ,
    ['] local@ ,
    ['] local! ,
;

\ should be smarter, it should
\ check whether X is used at all
\ and allocate the local stack
\ only if needed.
: : : l-alloc ;
: ; l-free postpone ; ; immediate

\ globally define a label for the first
\ local variable. The X is a global name
\ but has local content. If using more, 
\ add a l-alloc/l-free pair in the : and ;
\ definitions above.

0 local X

\ test cases
\ l-init
\ : test1 to X X . ;
\ 1 test1
\ -> 1
\ : test2 1 test1 to X X . ;
\ 2 test2
\ -> 1 2 
\