\
\ simple block wordset
\ single buffer management.
\ non-standard block size (to save RAM).
\ only basic routines. No hardware access
\

#require defer.frt
#require buffer.frt

\ high level blocksize, ANS94 says 1024 bytes, SD Cards have 512
#512 constant blocksize
variable scr

\ API for low level drivers. They get the 
\ buffer address in RAM and the block number.
Rdefer load-buffer ( buf-addr u -- )
Rdefer save-buffer ( buf-addr u -- )

\ single buffer blocks. 
variable blk1 
variable blk1-dirty
blocksize buffer: blk1-buffer

\ for turnkey
: block:init
  -1 blk1 !
  0 blk1-dirty !
;

: update -1 blk1-dirty ! ;
: updated? ( u -- f ) 
  blk1 @ = if
    blk1-dirty @ 
  else
    0 
  then
;

\ reloads the block only if the blocknumber differs
: block ( u -- a-addr )
   dup blk1 @ = if drop else
     blk1 @ updated? if
      blk1-buffer blk1 @ save-buffer
     then
     blk1-buffer swap dup blk1 ! load-buffer
     0 blk1-dirty !
   then
   blk1-buffer
;

\ a buffer is an un-initialized block.
: buffer ( u -- a-addr )  block ;

: save-buffers
  blk1 @ updated? if
    blk1-buffer blk1 @ save-buffer
  then
  0 blk1-dirty !
;

: empty-buffers
  -1 blk1 !
   0 blk1-dirty !
;

: flush save-buffers empty-buffers ;

