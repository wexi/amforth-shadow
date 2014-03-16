\ double unsigned multiply by 256
: du256*  ( ud -- ud*256 )
   $ff and >< over >< $ff and or swap $ff and >< swap
;
