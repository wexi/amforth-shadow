\ ansi terminal codes

decimal

: ESC[ 27 emit [char] ] emit ;

\ some helper words: print a number *without*
\ leading space in decimal
: .n    base @ swap decimal 0 u.r base ! ;
: .;n   [char] ; emit .n ;
: ESC[  27 emit [char] [ emit ;

\  position curser on terminal
: at-xy ( u1 u2 -- ) 
  1+ swap 1+ swap ESC[ .n .;n [char] H emit
;

\ clear page
: page ( -- ) 
  ESC[ ." 2J" 0 0 at-xy 
;

\ more definitions based on gforth' ansi.fs

: foreground ( n -- | set foreground color to n )
  ESC[ 30 + .n [char] m emit 
;

: background ( n -- | set background color to n )
  ESC[ 40 + .n [char] m emit 
;

: text_normal ( -- | set normal text display )
  ESC[ [char] 0 emit [char] m emit 
;

: text_bold ( -- | set bold text )
  ESC[ [char] 1 emit [char] m emit 
;

: text_underline ( -- | set underlined text )
  ESC[ [char] 4 emit [char] m emit
;

: text_blink ( -- | set blinking text )
  ESC[ [char] 5 emit [char] m emit
;

: text_reverse ( -- | set reverse video text )
  ESC[ [char] 7 emit [char] m emit
;


0 constant Black
1 constant Red
2 constant Green
3 constant Yellow
4 constant Blue
5 constant Brown
6 constant Cyan
7 constant White
