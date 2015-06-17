\ -*- Mode: Forth; Coding: utf-8 -*-

\ Copyright © 2015 Energy Measurement & Control, NJ, USA.
\ Redistribution: FreeBSD License.

decimal

\ Page optimized flash programming for faster compilation and extended
\ erase/write cycles durability. See: fetch-i*, store-i* & store-e*
\ On start-up call "flash". "flush" after compilation is done by "eesy"

\ #include buffer.frt

(
128 constant PAGESIZE			\ check your AVR8 spec
)

PAGESIZE 8 / cell+ buffer: _flash	\ count, set()
variable _faddr

: flash
   _flash [ _faddr _flash - ]l erase
;

\ set() bit address:
: _fmask  ( f-addr -- mask addr )
   [ PAGESIZE 1- ]l and
   1 over 7 and lshift
   swap 3 rshift [ _flash cell+ ]l +
;

: flush  ( -- )
   _flash @ ?dup  if			\ buffer cell count > 0
      PAGESIZE swap - ?dup  if		\ erased cell count > 0
	 _faddr @ dup PAGESIZE + swap  do
	    i _fmask lo?  if		\ erased buffer cell
	       i @i i (!p)		\ fill with flash value 
	       1- 0 ?=  if  leave  then	\ all erased cells filled?
	    then
	 loop
      then
      _faddr @ (!P)			\ write buffer to page
      flash
   then
;

: fwrite  ( x f-addr -- )
   dup [ PAGESIZE 1- invert ]l and  ( x f-addr page-f-addr )
   over _fmask 2>r                  ( R: mask addr )
   _flash @  if				\ buffer non empty
      _faddr @ over <>  if
	 flush				\ different page
      else
	 2r@ hi?  if  flush  then	\ superseded value
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
	    flush
	 then
      then
   then
   (@i)
;
   
\ plug in:

flash

' fread  ' @i 1+ (!i)
' fwrite ' !i 1+ (!i)
' flush  ' !e 1+ (!i)

' flash  (@i)				\ :
dup ' @i (!i)
dup ' !i (!i)
    ' !e (!i)
