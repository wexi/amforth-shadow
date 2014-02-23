\ double unsigned divide by 256
: du256/  ( ud -- ud/256 )
   swap >< $ff and over $ff and >< or swap >< $ff and
;
