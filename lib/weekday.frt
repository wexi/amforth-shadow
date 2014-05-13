\ compute the day of the week using Zeller Congruence
\ wd: 0=Mon, .., 6=Sun
\ See http://rosettacode.org/wiki/Day_of_the_week#Forth

decimal

: weekday  ( d m y -- wd)				
   over 3 <  if  1- swap 12 + swap  then
   100 /mod
   dup 4 / swap 2* -
   swap dup 4 / + +
   swap 1+ 13 5 */ + +
   \ since in Zeller Sat = 0 do:
   5 + 7 mod
;  
