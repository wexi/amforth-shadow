\
\ flash-block
\ contiguous flash region used a block storage
\
\ requires blocks.frt (for init and blocksize)
\

\ start address for blocks.
\ the block data starts at
\   flash:base-addr + (blocknum*blocksize)
\ it could be beyond the 128K limit, if the
\ !i and @i are replaced by words which take a
\ doube cell address or handle the block at once
\ (preferred)
\
variable flash:base-addr

\ remember a flash cell contains 2 bytes

: flash:load-buffer ( u a-addr -- )
   swap
   blocksize 2/ * flash:base-addr @ +
   blocksize 2/  bounds ?do i @i over ! 2 + loop drop
;

: flash:save-buffer ( u a-addr -- )
   swap
   blocksize 2/ * flash:base-addr @ +
   ." still debugging. no actual flash write!" 
   blocksize 2/ bounds ?do dup @ i 2drop ( !i) 2 + loop drop
;

\ for turnkey
: flash:init ( -- )
   ['] flash:load-buffer is load-buffer
   ['] flash:save-buffer is save-buffer
   0 flash:base-addr !
;
