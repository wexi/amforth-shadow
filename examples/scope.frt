\ The following example shows how to create a library of words under a special
\ wordlist (can_lib). This example also shows how to chain scope calls safely.

wordlist constant can_lib

get-order 1+ can_lib swap set-order     \ can_lib would be searched first

: can_scope  ( addr len -- addr' len' wid )
   2dup
   4 >  if                              \ name length check
      s" can_" tuck icompare  if        \ name prefix check
         4 /string                      \ drop prefix from created word
         can_lib exit
      then
   else
      drop
   then
   [ ' wlscope defer@ ] literal execute
;

' can_scope is wlscope
