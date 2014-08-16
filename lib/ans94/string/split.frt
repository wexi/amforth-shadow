\ Newsgroups: comp.lang.forth
\ Date: Sat, 21 Jun 2014 13:48:57 -0700 (PDT)
\ From: Julian Fondren <julian....@gmail.com>
\ slightly modified for amforth (rdrop, false)

\ split a string at the first occurance

\ #require 2over.frt
\ #require search.frt

: split ( 'string' 'separator' -- 'before' 'after' -1 | 0 )
  dup >r 2over 2swap search 0= if 2drop 2drop r> drop 0 exit then
  2>r r@ - 2r> r> /string  true 
;

