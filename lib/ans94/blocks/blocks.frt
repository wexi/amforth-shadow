\
\ simple block wordset
\ single buffer management.
\ non-standard block size (to save RAM).
\ only basic routines. No hardware access
\ use flash-block.frt to turn flash into block storage
\
\ list requires dump.frt
\ requires defer.frt
\ requires buffer.frt
\
#64 constant blocksize

variable blk1 
variable blk1-dirty
blocksize buffer: blk-buffer1

Rdefer load-buffer ( u buf-addr -- )
Rdefer save-buffer ( u buf-addr -- )

\ for turnkey
: block:init
  0 blk1 !
  0 blk1-dirty !
;

: block ( u -- a-addr )
   dup blk1 ! blk-buffer1 load-buffer
   0 blk1-dirty !
   blk-buffer1
;

: update -1 blk1-dirty ! ;

: buffer ( u -- a-addr )
  blk1-dirty @ if
    blk1 @ blk-buffer1 save-buffer
  then
  block
;

: save-buffers
  blk1-dirty @ if
    blk1 @ blk-buffer1 save-buffer
  then
  0 blk1-dirty !
;

: empty-buffers
  -1 blk1 !
   0 blk1-dirty !
;

: flush save-buffers empty-buffers ;

variable scr

: list dup scr ! buffer blocksize dump ;
