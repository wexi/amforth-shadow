\ -*- Mode: Forth; Coding: utf-8 -*-

\ Copyright (c) 2015 Energy Measurement & Control, NJ, USA.
\ Redistribution: FreeBSD License.

\ Wordlist scope that puts words with underscore (_) prefix
\ on a _local wordlist.

:noname  ( addr len -- addr' len' wid ) 
   2dup
   1 >  if				\ name length check
      s" _" tuck icompare  if		\ name prefix check
	 _local exit
      then
   else
      drop
   then
   [ ' wlscope defer@ ]l execute
; is wlscope
