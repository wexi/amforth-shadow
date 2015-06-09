\ -*- Mode: Forth; Coding: utf-8 -*-

\ Copyright © 2015 Energy Measurement & Control, NJ, USA.
\ Redistribution: FreeBSD License.

decimal

\ This module (★) protects .{ enclosed text .} output from breaking up
\ by like output from other soft ISRs. Install on start-up by: {mite}
\ (★) Name hint: { e { mit } } and keep your texts mite-proof :)

\ Your appl_defs.frt overrides:
(
2 constant STX
3 constant ETX
7 constant MITENEST
256 constant MITEBUFF
)

: .{  STX emit  ;
: .}  ETX emit  ;

\ :  test  .{ ." 12" .{ ." abcd " .} ." 34" .{ ." ABCD " .} ." 56" .}  ;
\ test
\ abcd ABCD 123456 ok

\ Suggestion:
\ Use lib/_local.frt to reduce the #include library names clutter.

MITEBUFF buffer: _tbuff
MITENEST 1+ cells buffer: _tpntr	\ i/o pointers
variable _tnest				\ .{ nesting .} level

\ valid nesting level?
: _nest?  ( -- flag )
   _tnest @ 1 [ MITENEST 1+ ]l within
;

\ highest nesting start address
: _npntr  ( -- addr )
   _tpntr _tnest @ cells +
;

\ next buffer address
: _naddr  ( addr -- addr' )
   1+ dup [ _tbuff MITEBUFF + ]l =  if
      drop _tbuff
   then
;

\ _mite_ is an "emit" pre-processor installed each start-up by: {mite}
: _mite_
   int-
   case
      STX  of
	 1 _tnest +!
	 _nest?  if
	    _tpntr @ _npntr !
	 then
      endof

      ETX  of
	 _nest?  if
	    _tpntr @ _npntr @ dup >r  ( end-addr start-addr )
	    1 _tnest -!
	    int+ 
	    begin
	       2dup <> 
	    while
	       \ NULs replace outputted text (a KISS approach)
	       dup c@ ?dup  if
		  [ ' emit defer@ ]l execute
		  0 over c!
	       then
	       _naddr
	    repeat
	    int-
	    2drop
	    r> _tpntr !
	 else
	    1 _tnest -!
	 then
      endof

      _nest?  if
	 _tpntr @ swap over c!
	 _naddr _tpntr !
      else
	 int+
	 [ ' emit defer@ ]l execute
	 int-
      then
   end-case
   int+
;

: {mite}
   _tbuff _tpntr !
   0 _tnest !
   ['] _mite_ is emit
;
