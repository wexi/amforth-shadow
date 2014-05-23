\
\ flash-block
\ contiguous flash region, starting at a block boundary
\
\ requires blocks.frt
\
variable flash:base-addr

: flash:load-buffer ( u -- a-addr )
   blk-buffer1 swap
   blocksize 2/ * base-addr @ +
   blocksize 2/  bounds ?do i @i over ! 2 + loop drop
;

: flash:save-buffer ( u -- )
   blk-buffer1 swap
   blocksize 2/ * base-addr @ +
   ." still debugging. no actual flash write!" 
   blocksize 2/ bounds ?do dup @ i 2drop 2 + loop drop
;

: flash:init ( -- )
   ['] flash:load-buffer is load-buffer
   ['] flash:save-buffer is save-buffer
;
