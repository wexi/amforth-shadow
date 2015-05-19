\ -*- Mode: Forth; Coding: utf-8 -*-

\ Copyright (c) 2015 Energy Measurement & Control, NJ, USA.
\ Redistribution: FreeBSD License.

vocabulary _local			\ _ prefixed words are not worth of mention

\ Note: It is YOUR responsibility to add _local to the search order

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
