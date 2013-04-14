\ sieve benchmark, modified version of
\ marcel hendrix' sources. Uses single bits
\ insted of whole bytes to store the is-prime
\ marker cuts memory footprint to 1/8th.

\ runtime: ATMega644 @ 16MHz 2,3 seconds per DO-PRIME

marker _sieve_

decimal

1000 constant #times
8192 constant size   \ needs 1KB 

variable flags  size 8 / allot

\ highly un-optimized words
: bit-addr ( addr bit -- eff-addr )
    \ every byte has 8 bits. addr = addr + (bit >> 3)
    3 rshift  ( -- addr off)
    +         ( -- eff-addr)
;

: bit? ( addr bit -- f )
    swap over bit-addr swap ( -- eff-addr bit )
    7 and 1 swap lshift     ( -- eff-addr bitmask)
    swap c@ and             ( -- f)
;

: bit-reset ( addr bit -- )
    swap over bit-addr swap ( -- eff-addr bit )
    7 and 1 swap lshift     ( -- eff-addr bitmask)
    invert over c@ and swap c!     
;

: 2drop drop drop ;

: DO-PRIME      flags [ size 8 / ] literal -1 fill
                0  size 0 do 
		         flags i
                         bit? if 
			    i 2*  3 +
                            dup  i +
                            begin  
				dup 
				size u< 
			     while  
			       flags over bit-reset
                               over +
                             repeat
                             2drop 1+
                          then
                        loop ;

: primes        cr #times u. ."  iterations." 
                0 #times 0 do  drop  DO-PRIME  loop
                cr .  ."  primes found, " ;

