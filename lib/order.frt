
: >order  ( wid -- )  >r get-order r> swap 1+ set-order ;
: order>  ( -- wid )  get-order swap >r 1- set-order r> ;
