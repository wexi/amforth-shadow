\ dump cells from addr upward for len.                mk03.10.2008

\ We want xdump ( addr len -- ) doing output like this: 
\ xxx0 cccc cccc cccc cccc cccc cccc cccc cccc 
\ xxx8 cccc cccc cccc cccc cccc cccc cccc cccc
\ ...

\ That is, we alway print 8 cells. And want to see them in segments of 8 cells,
\ all starting at xxx0 or xxx8 addresses. 
\ So we have to trimm addr and len first:
\ Clear lower 3 bits of addr, then set lower 3 bits of len
\ The rest shoud be obvious.

hex

\ helper word
\ print a number in a field with 0 filled 
: u.r ( u w -- )
      >r 0 \ see u.
      <# 
      r> 0 ?do # loop 
      #>  
      type
;

( item -- )
: .item     4 u.r space ; 

( addr -- )
: i?     @i .item ;
: e?     @e .item ;
: ?       @ .item ;

( addr n -- addr+n )
: .icells   0 do  dup i?    1+ loop ; \ flash
: .ecells   0 do  dup e? cell+ loop ; \ eeprom
: .rcells   0 do  dup  ? cell+ loop ; \ ram

( addr -- )
: .addr     cr .item space ;

( addr1 len1 -- addr2 len2 )
: trimm     swap fff8 and swap 7 or ; 

( adr len -- )
: <dump     postpone trimm postpone 0 postpone ?do postpone dup 
            postpone .addr  8 postpone literal ; immediate

( n -- )
: dump>     postpone +loop postpone drop ; immediate

( addr len -- )
: idump     <dump .icells   8 dump> ; 
: edump     <dump .ecells  10 dump> ; 
:  dump     <dump .rcells  10 dump> ; 

\ finis   tested ok on amforth-2.9 05.10.2008 mk
