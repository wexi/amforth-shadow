\ -*- Mode: Forth; Coding: utf-8 -*-

\ Copyright © 2015 Energy Measurement & Control, NJ, USA.
\ Redistribution: FreeBSD License.

\ Include this file first. Call _local after installing all library files.

vocabulary local also local		\ add local to the search order

\ Wordlist scope that puts words with underscore (_) prefix on local

:noname  ( addr len -- addr' len' wid ) 
   2dup
   1 >  if				\ name length check
      s" _" tuck icompare  if		\ name prefix check
	 local exit
      then
   else
      drop
   then
   get-current
; is wlscope

: _local
   previous				\ remove local from search order
   ['] get-current is wlscope		\ restore original scope
; immediate