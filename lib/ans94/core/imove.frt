\ copy a string from flash to RAM

: imove ( i-addr len ram -- )
  rot rot dup 1 and >r                  \ ( ram i-addr len ) ( r: odd )
  2/ over + dup >r                      \ ( ram i-addr i-addr' ) ( r: odd i-addr' )
  swap                                  \ ( ram i-addr' i-addr )
  ?do  i @i over ! cell+  loop          \ ( ram' )
  r> r>                                 \ ( ram' i-addr' odd )
  if  @i swap c!  else  2drop  then
;
