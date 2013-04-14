\ To test the ANS Forth Double-Number word set and double number extensions

\ Copyright (C) Gerry Jackson 2006

\ This program is free software; you can redistribute it and/or
\ modify it any way.

\ This program is distributed in the hope that it will be useful,
\ but WITHOUT ANY WARRANTY; without even the implied warranty of
\ MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

\ The tests are not claimed to be comprehensive or correct 

\ --------------------------------------------------------------------
\ Version 0.2   30 Oct 2006 Updated following GForth test to include
\               various constants from core.fr
\         0.1   Oct 2006 First version released

\ --------------------------------------------------------------------
\ The tests are based on John Hayes test program for the core word set
\ and requires those files to have been loaded

\ Words tested in this file are:
\     d+ d- d0< d0= d2* d2/ d< d= 2constant 2literal 2variable
\     dmax dmin d>s dabs dnegate d. d.r m* m+ 2rot du<

\ --------------------------------------------------------------------
\ Assumptions and dependencies:
\     - running on a case insensitive system. Strictly speaking ANS 
\       Forth words should be in upper case only, this file is mostly
\       lower case
\     - tester.fr have been loaded prior to this file
\ --------------------------------------------------------------------
\ Constant definitions replicated from core.fr

0 invert 1 rshift        constant max-int
0 invert 1 rshift invert constant min-int
0 invert 1 rshift        constant mid-uint
0 invert 1 rshift invert	constant mid-uint+1
0 invert constant 1s
1s 1 rshift invert constant msb

0 0= constant true
1 0= constant false

\ --------------------------------------------------------------------
TESTING Double-Number word set

decimal

TESTING d+ with simple small integers

{  0 s>d  5 s>d d+ ->  5  0 }
{  5 s>d  0 s>d d+ ->  5  0 }
{  0 s>d -5 s>d d+ -> -5 -1 }
{ -5 s>d  0 s>d d+ -> -5 -1 }
{  1 s>d  2 s>d d+ ->  3  0 }
{  1 s>d -2 s>d d+ -> -1 -1 }
{ -1 s>d  2 s>d d+ ->  1  0 }
{ -1 s>d -2 s>d d+ -> -3 -1 }
{ -1 s>d  1 s>d d+ ->  0  0 }

TESTING d+ with mid range integers

{  0  0  0  5 d+ ->  0  5 }
{ -1  5  0  0 d+ -> -1  5 }
{  0  0  0 -5 d+ ->  0 -5 }
{  0 -5 -1  0 d+ -> -1 -5 }
{  0  1  0  2 d+ ->  0  3 }
{ -1  1  0 -2 d+ -> -1 -1 }
{  0 -1  0  2 d+ ->  0  1 }
{  0 -1 -1 -2 d+ -> -1 -3 }
{ -1 -1  0  1 d+ -> -1  0 }

{ min-int 0 2dup d+ -> 0 1 }
{ min-int s>d min-int 0 d+ -> 0 0 }

TESTING d+ with large double integers

{ 1s mid-uint 1 s>d d+ -> 0 mid-uint+1 }
{ 1 s>d 1s mid-uint d+ -> 0 mid-uint+1 }
{ min-int max-int min-int 0 d+ -> 0 min-int }
{ min-int max-int 2dup d+ -> 0 1s }

: dbl1 1234567890. ;
: dbl2 -1825831516. ;

{ dbl1 dbl1 d+ ->  dbl2 }

\ --------------------------------------------------------------------

TESTING d- with small integers

{  0 s>d  5 s>d d- -> -5. }
{  5 s>d  0 s>d d- ->  5. }
{  0 s>d -5 s>d d- ->  5. }
{ -5 s>d  0 s>d d- -> -5. }
{  1 s>d  2 s>d d- -> -1. }
{  1 s>d -2 s>d d- ->  3. }
{ -1 s>d  2 s>d d- -> -3. }
{ -1 s>d -2 s>d d- ->  1. }
{  0 s>d  1 s>d d- -> -1. }

TESTING d- with mid-range integers

{  0  0  0  5 d- ->  0 -5 }
{ -1  5  0  0 d- -> -1  5 }
{  0  0 -1 -5 d- ->  1  4 }
{  0 -5  0  0 d- ->  0 -5 }
{ -1  1  0  2 d- -> -1 -1 }
{  0  1 -1 -2 d- ->  1  2 }
{  0 -1  0  2 d- ->  0 -3 }
{  0 -1  0 -2 d- ->  0  1 }
{  0  0  0  1 d- ->  0 -1 }

{ min-int 0 2dup d- -> 0. }
{ min-int s>d mid-uint 0 d- -> 1 1s }

TESTING d- with large integers

{ 0 mid-uint+1 0 1 d- -> 0 mid-uint }
{ 0. 1s mid-uint   d- -> 1 mid-uint+1 }
{ 0 min-int min-int 0 d- -> min-int max-int }
{ min-int min-int max-int max-int d- -> 1 1 }
{ 0 mid-uint+1 0 1 d- -> 0 mid-uint }

{ dbl1 dbl1 d- ->  0. }

\ --------------------------------------------------------------------

TESTING d2* d2/

{ min-int 0 d2* -> 0 1 }
{ 1s max-int 1 rshift d2* -> -2 max-int }
{ min-int dup d2* -> 0 1 }

{ 0 1 d2/ -> min-int 0 }
{ 1s dup d2/ -> 1s dup }
{ 1s 1 xor 1s d2/ -> 1s 1s }
{ 0 msb d2/ msb and -> 0 msb }

\ --------------------------------------------------------------------

TESTING d< d=

{ 0. 1. d< -> true }
{ 0. 0. d< -> false }
{ 1. 0. d< -> false }
{ -1. 1. d< -> true }
{ -1. 0 max-int d< -> true }
{ max-int min-int 0 min-int 1+ d< -> true }
{ 0 max-int 1- 0 max-int d< -> true }
{ 0 min-int 1s max-int d< -> true }

{ -1. -1. d= -> true  }
{ -1.  0. d= -> false }
{ -1.  1. d= -> false }
{  0. -1. d= -> false }
{  0.  0. d= -> true  }
{  0.  1. d= -> false }
{  1. -1. d= -> false }
{  1.  0. d= -> false }
{  1.  1. d= -> true  }

{ 0 -1 0 -1 d= -> true  }
{ 0 -1 0  0 d= -> false }
{ 0 -1 0  1 d= -> false }
{ 0  0 0 -1 d= -> false }
{ 0  0 0  0 d= -> true  }
{ 0  0 0  1 d= -> false }
{ 0  1 0 -1 d= -> false }
{ 0  1 0  0 d= -> false }
{ 0  1 0  1 d= -> true  }

{ 0 max-int 0 min-int d= -> false }
{ 0 max-int 0 0 d= -> false }
{ 0 max-int 0 max-int d= -> true }
{ 1s max-int 0 max-int d= -> false }
{ 1s max-int 0 min-int d= -> false }
{ 0 min-int 0 min-int d= -> true }
{ 0 min-int 1s min-int d= -> false }
{ 0 min-int 1s max-int d= -> false }

\ --------------------------------------------------------------------

TESTING 2constant 2literal 2variable

{ 1111 2222 2constant 2c1 -> }
{ 2c1 -> 1111 2222 }
{ : cd1 2c1 ; -> }
{ cd1 -> 1111 2222 }
{ : cd2 2constant ; -> }
{ dbl1 2constant 2c2 -> }
{ 2c2 -> dbl1 }
{ : cd3 [ dbl2 ] 2literal ; -> }
{ cd3 -> dbl2 }
{ 2variable 2v1 -> }
{ 2c1 2v1 2! -> }
{ 2v1 2@ -> 2c1 }
{ : cd3 2variable ; -> }
{ cd3 2v2 -> }
{ : cd4 2v2 2! ; -> }
{ dbl2 cd4 -> }
{ 2v2 2@ -> dbl2 }

\ --------------------------------------------------------------------

\ --------------------------------------------------------------------

TESTING d>s dabs dnegate

{  1234  0 d>s ->  1234 }
{ -1234 -1 d>s -> -1234 }
{ max-int  0 d>s -> max-int }
{ min-int -1 d>s -> min-int }

{ dbl1 dnegate dbl1 d+ -> 0 0 }
{ dbl3 dnegate dbl3 d+ -> 0 0 }
{ 0 1 dnegate -> 0 -1 }
{ 0 -1 dnegate -> 0 1 }

{ dbl1 dabs -> dbl1 }
{ dbl3 dabs -> dbl3 dnegate }


\ --------------------------------------------------------------------

TESTING d. d.r

{ : DoubleOutput
	cr ." You should see lines duplicated:" cr
	5 spaces ." 1234567890123456789" cr 5 spaces dbl1 d. cr
	5 spaces ."    1234567890123456789" cr 5 spaces dbl1 22 d.r cr
	5 spaces ." -2345678901234567890" cr 5 spaces dbl3 d. cr
	5 spaces ."      -2345678901234567890" cr 5 spaces dbl3 25 d.r cr
	cr
; -> }

{ DoubleOutput -> }

\ --------------------------------------------------------------------

TESTING m*/ m+

{ dbl1  1 m+ -> dbl1  1. d+ }
{ dbl1 -1 m+ -> dbl1 -1. d+ }
{ dbl3  1 m+ -> dbl3  1. d+ }
{ dbl3 -1 m+ -> dbl3 -1. d+ }

{ 4153874092166845345. 2constant dp1 -> }
{ 98656350292512810.   2constant dp2 -> }
{ dp1          234567 9876321 m*/ -> dp2         }
{ dp1 dnegate  234567 9876321 m*/ -> dp2 dnegate }
{ dp1 dnegate -234567 9876321 m*/ -> dp2         }
{ dp1         -234567 9876321 m*/ -> dp2 dnegate }

\ --------------------------------------------------------------------

TESTING 2rot du<

{ dbl1 dbl2 dbl3 2rot -> dbl2 dbl3 dbl1 }

{ dbl1 dbl1 du< -> false }
{ dbl1 dbl2 du< -> true }
{ dbl2 dbl1 du< -> false }
{ dbl3 dbl3 du< -> false }
{ dbl3 dbl4 du< -> false }
{ dbl4 dbl3 du< -> true }
{ 0 min-int 0 min-int du< -> false }
{ 0 min-int 0 min-int 1. d+ du< -> true }
{ 0 min-int 1. d+ 0 min-int du< -> false }

\ --------------------------------------------------------------------

cr .( End of Double-Number word tests) cr

