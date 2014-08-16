
\ a list in text format. not suitable
\ for binary data!

\ #16 constant #lines
\ #64 constant #cols

 #8 constant #lines
#64 constant #cols

: list      ( blk -- )                  \ list selected screen
   dup scr  !
   dup cr  ." Listing of screen ("  .
   dup updated? if ." not " then ." modified)" cr
   buffer
   #lines  0
   do
     cr  i  0  <# [char] : hold # # #>  type  space
	  dup i  #cols  *  +
	  #cols  type
	  [char] |  emit
   loop
   cr
 ;
