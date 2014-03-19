
\ dump free ressources
: .res ( -- ) 
    base @ >r
    decimal
    ver ."  running at " f_cpu 1000 um/mod . drop ." kHz " cr
    s" mcu-info" environment? if
       2 + @i 2/ dp -
	." free FLASH cells        " u. cr
	else 
	  ." no flash size information available " cr 
	then
	." free RAM bytes          " unused u. cr
	." used EEPROM bytes       " ehere u. cr
	." used data stack cells   " depth u. cr
	." used return stack cells " rp0 rp@ - 1- 1- 2/ u. cr
	." free return stack cells " rp@ sp0 - 1+ 1+ 2/ u. cr
    r> base !
;
