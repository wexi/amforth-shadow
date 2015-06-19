\ -*- Mode: Forth; Coding: utf-8 -*-

\ Copyright © 2015 Energy Measurement & Control, NJ, USA.
\ Redistribution: FreeBSD License.

decimal

\ As the project grows and adds more words compilation gets slower and
\ slower. This is in particular annoying when compiling large numerical
\ tables. The following "t-create" is the answer.  Note, if you replace
\ "t-create" with "create" and remove the last semicolon the table could be
\ compiled by the interpreter.

: truncate  ( key -- )  begin  13 <>  while  key  repeat  ;

\ fast table compiler:
\ t-create "name" n₁ , n₂ , .. , nₓ ;   \ unsigned decimal numbers
: t-create  ( "name" -- )
   create
   p_rd
   0 key
   begin
      13 ?=  if
	 cr p_rd
      else
	 dup emit
	 dup 48 58 within  if		\ digit
	    48 - swap 10* +
	 else
	    44 ?=  if			\ comma
	       , 0
	    else
	       59 ?=  if		\ semicolon
		  ,
		  key truncate
		  p_ok p_rd
		  exit
	       else
		  32 ?= not  if		\ space
		     9 ?= not  if	\ tab
			truncate cr p_rd \ anything else is a comment
		     then
		  then
	       then
	    then
	 then
      then
      key
   again
;
	       

		  
