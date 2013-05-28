
\ simple random number generator.
\ based upon comus by Will Baden

variable rnd \ holds some entropy

\ get a random number
: random ( -- n )
    rnd @  31421 *  6927 +  dup rnd ! 
;

\ get a random number between 0 and u
: rand ( u -- 0..u-1)
  random um* nip ;
;
