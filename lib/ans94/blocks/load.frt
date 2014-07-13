\ load a block and evaluate its content
\ 
: source-block1 
    blk1-buffer blocksize
;

: load ( i*x n -- j*y )
    ['] source defer@ >r >in @ >r
    0 >in !
    buffer drop 
    ['] source-block1 is source
    ['] interpret catch
    r> >in ! r> is source
    throw
;


: thru ( i*x n1 n2 -- j*y )
  1+ swap ?do i load loop
;
