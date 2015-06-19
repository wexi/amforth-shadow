\ -*- Mode: Forth; Coding: utf-8 -*-

\ Copyright © 2015 Energy Measurement & Control, NJ, USA.
\ Redistribution: FreeBSD License.

decimal

\ As a project develops and adds words to its word-lists compilation gets
\ slower. This is particularly annoying when compiling large numeric
\ tables. This is where lib/t-create.frt can help.
\ Note, there is no syntax check!

\ fast table compiler:
\ t-create "name" n₁ , n₂ , .. , nₓ ;   \ 16bit decimal numbers
: t-create  ( "name" -- )
   create p_rd				\ ." > "
   false >r 0 key
   begin     ( num char ) ( R: sign )
      13 ?=  if
	 cr p_rd
      else
	 dup emit			\ echo
	 dup 48 58 within  if		\ digit
	    48 - swap 10* +		\ decimals only
	 else
	    45 ?=  if			\ minus
	       r> not >r
	    else
	       44 ?=  if		\ comma
		  r>  if  negate  then
		  ,
		  false >r 0
	       else
		  59 ?=  if		\ semicolon
		     r>  if  negate  then
		     ,
		     eesy exit
		  else
		     32 ?= not  if      \ skip space & tab
			9 ?= not  if    \ anything else starts "a comment"
			   begin  13 <>  while  key  repeat
			   cr p_rd
			then
		     then
		  then
	       then
	    then
	 then
      then
      key
   again
;
