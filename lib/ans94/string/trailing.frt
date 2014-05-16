

: -trailing  ( c_addr u1 -- c_addr u2 ) \ string dash-trailing
\ Adjust the string specified by {c-addr, u1} to remove all
\ trailing spaces. {u2} is the length of the modified string.
    begin
	dup
    while
	1- 2dup + c@ bl <>
    until  1+  then ;
