\ Gerry dlf 31.8.2012 "Single Step Debugging.."
\ modified: prints a debug prompt. Exits the
\ debug mode when entering an empty line

\ more usage examples can be found at the cookbook
\  http://amforth.sf.net/recipes

82 buffer: debugbuf
: (?) cr ." debug> " debugbuf dup 80 accept ; 
: ?? begin (?) dup while (evaluate) repeat 2drop ; 
\ maybe add a special debug wordlist
