\ trivial local

\ there is exactly one local called X
\ it is not initialized upon entry
\ it works like a local should do:
\ get the content by calling X, assign
\ a new value with TO

\ separate local stack
\ max. call depth 10

\ "2" means "1 cells", if portability is a concern

#10 cells constant l-size
\ the local stack pointer and the stack itself
l-size cell+ buffer: lsp

\ initialize l-stackpointer, call it
\ in e.g. turnkey prior to use!
: l-init lsp l-size + lsp ! ;

\ general stack access, unsued
: l@ lsp @ @ ;
: l! lsp @ ! ;
: l-free   2 lsp +! ;
: l-alloc -2 lsp +! ;
: >l l! l-alloc ;
: l> l-free l@  ;

: local@ negate lsp @ + @ ;
: local! negate lsp @ + ! ;

\ define a local by its offset
\ relative to the local stack pointer
: local ( offset "name" -- )
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