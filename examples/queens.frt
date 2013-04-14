\ Copyright (c) 2007 the authors listed at the following URL, and/or
\ the authors of referenced articles or incorporated external code:
\ http://en.literateprograms.org/Eight_queens_puzzle_(Forth)?action=history&offset=20070512025943
\ 
\ Permission is hereby granted, free of charge, to any person obtaining
\ a copy of this software and associated documentation files (the
\ "Software"), to deal in the Software without restriction, including
\ without limitation the rights to use, copy, modify, merge, publish,
\ distribute, sublicense, and/or sell copies of the Software, and to
\ permit persons to whom the Software is furnished to do so, subject to
\ the following conditions:
\ 
\ The above copyright notice and this permission notice shall be
\ included in all copies or substantial portions of the Software.
\ 
\ THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
\ EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
\ MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
\ IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
\ CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
\ TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
\ SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
\ 
\ Retrieved from: http://en.literateprograms.org/Eight_queens_puzzle_(Forth)?oldid=10015
marker queen

 : bits ( bits -- mask ) 1 swap lshift 1- ;
 : lowBit  ( mask -- bit ) dup negate and ;
 : lowBit- ( mask -- mask ) dup 1- and ;
 : third ( a b c -- a b c a ) 2 pick ;

 variable solutions
 variable nodes
 : poss ( a b c -- a b c a&b&c ) dup 2over and and ;

 : next3 ( dl dr f Qfilebit -- dl dr f dl' dr' f' )
   invert >r
   third r@ and 2* 1+
   third r@ and 2/
   third r> and ;

 : try ( dl dr f -- )             \ bitmasks for unused diagonals and files
   dup if 1 nodes +!  poss
     begin ?dup while
       dup >r lowBit next3 recurse r> lowBit-
     repeat
   else ( .sol) 1 solutions +! then
   drop drop drop ;

 : queens ( n -- ) >r
   0 solutions ! 0 nodes !
   -1 dup r@ bits try
   r> . ." queens: " solutions @ u. ." solutions, " nodes @ u. ." nodes" ;

