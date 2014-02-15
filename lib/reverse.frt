\ LIFO made FIFO
\ ( X1 .. Xn n -- Xn .. X1 n )
: reverse
   >r
   sp@ sp@ r@ cells +                   \ ( bot-addr top-addr )
   begin
      over over <                       \ bot top cross each other?
   while                                \ no
      dup @ >r                          \ save top-cell content
      over @ over !                     \ replace top-cell
      over r> swap !                    \ replace bot-cell
      cell- swap cell+ swap
   repeat
   2drop
   r>
;

