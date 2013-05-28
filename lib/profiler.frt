\ A profiler counts the number of calls
\ of any word being defined afterwards.
\
\ global state: on and off
variable profiling?
: profile:on -1 profiling? ! ;
: profile:off 0 profiling? ! ;

: profiler profiling? @ if 1 swap +! else drop then ; 
\ re-define colon
: : :
  here 2 allot postpone literal postpone profiler
;

\ get the address of the profiling data.
: xt>prf ( xt -- addr )
  cell+ @i
;

\ useful stuff
: .prf xt>prf @ u. ;
: prf-reset xt>prf 0 swap ! ;

\ usage
\   : foo bar baz ;
\   profile:on      -- turn on profiling
\   ' foo .prf      -- gets the number of calls to foo
\   ' foo prf-reset -- resets this number
\   profile:off     -- turn off profiling
\ wanna profile system words? just re-define them now ;)
\   e.g. : + + ;
