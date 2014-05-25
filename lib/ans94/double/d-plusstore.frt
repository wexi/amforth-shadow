
: d+! ( d addr -- ) \ same as +! but for double cell numbers
   dup >r 2@ d+ r> 2!
;
