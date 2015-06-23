\ -*- Mode: Forth; Coding: utf-8 -*-

\ Copyright © 2015 Energy Measurement & Control, NJ, USA.
\ Redistribution: FreeBSD License.

decimal

\ Page optimized flash programming for faster compilation and extended
\ erase/write cycles durability. See: fetch-i*, store-i* & store-e*

\ IMPORTANT: Compile flash.frt as early as possible. This will make sure
\ that the _flash structure is allocated from the BSS_SEG initialized RAM.
\ Cf. preamble.inc and cold.asm.

\ #include buffer.frt

(
128 constant PAGESIZE			\ check your AVR8 spec
)

\ NOTE: _flash is initialized to zero by cold.asm
PAGESIZE 8 / cell+ buffer: _flash	\ count, set()
variable _faddr

: _flush
   _flash [ _faddr _flash - ]l erase
;

\ set() bit address:
: _fmask  ( f-addr -- mask addr )
   [ PAGESIZE 1- ]l and
   1 over 7 and lshift
   swap 3 rshift [ _flash cell+ ]l +
;

: fflush  ( -- )
   _flash @ ?dup  if			\ buffer cell count > 0
      PAGESIZE swap - ?dup  if		\ erased cell count > 0
	 _faddr @ dup PAGESIZE + swap  do
	    i _fmask lo?  if		\ erased buffer cell
	       i (@i) i (!p)		\ fill with flash value 
	       1- 0 ?=  if  leave  then	\ all erased cells filled?
	    then
	 loop
      then
      _faddr @ (!P)			\ write buffer to page
     _flush
   then
;

: fwrite  ( x f-addr -- )
   2dup (@i) =  if			\ same value
      2drop exit
   then
   
   dup [ PAGESIZE 1- invert ]l and  ( x f-addr page-f-addr )
   over _fmask 2>r                  ( R: mask addr )
   _flash @  if				\ buffer non empty
      _faddr @ over <>  if
	 fflush				\ different page
      else
	 2r@ hi?  if  fflush  then	\ superseded value
      then
   then
   _faddr !
   1 _flash +!
   2r> hi!
   (!p)
;

: fread  ( f-addr -- x )
   _flash @  if
      dup [ PAGESIZE 1- invert ]l and   ( f-addr page-f-addr )
      _faddr @  =  if
	 dup _fmask hi?  if		\ value in buffer
	    fflush
	 then
      then
   then
   (@i)
;

\ install

' fread ' @i 1+ (!i)
' fwrite ' !i 1+ (!i)
' fflush ' !e 1+ (!i)

' fread (@i)				\ :
dup ' @i (!i)
dup ' !i (!i)
' !e (!i)

