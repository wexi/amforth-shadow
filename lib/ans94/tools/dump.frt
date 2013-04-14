
\ dump memories
\ usage is 
\    addr len [ei]dump
\ output looks like (for word oriented memories)
\ (ATmega32)> 0 10 edump
\ 0000 - FFFF D9FF 17D9 2117 0121 5201 0052 DE00   .......!!..RR...
\ 0008 - 0CDE 6F0C 3B6F 193B 0019 3200 0B32 140B   ...oo;;....22...

\ RAM dump is byte oriented:
\ 00B0 BD 3E 55 33 5B E6 C4 9B 4A 63 72 20 63 72 20 24   .>U3[...Jcr.cr.$
\ 00C0 62 30 20 32 30 20 64 75 6D 70 20 63 72 20 63 72   b0.20.dump.cr.cr

hex

: ?ascii ( char -- printable-char )
  dup 20 < if drop 2e
           else dup 7e > 
                if drop 2e then
           then ;

: .2hex s>d <# # # #> type ;
: .4hex s>d <# # # # # #> type ;

: dump ( addr count -- )
  cr 0
  do dup .4hex space
     10 0 do dup i + c@ .2hex space loop 2 spaces
     10 0 do dup i + c@ ?ascii emit loop
     10 + cr 
  10 +loop drop ;

: split ( n - c c ) dup $ff and swap $ff00 and $100 / $ff and swap  ;

: idump ( addr count -- )
  cr 0
  do dup .4hex space [char] - emit space
  8 0 do dup i + @i   .4hex space loop 2 spaces
  8 0 do dup i + @i split ?ascii emit ?ascii emit loop
     8 + cr
  8 +loop drop ;

: edump ( addr count -- )
  cr 0
  do dup .4hex space [char] - emit space
  08 0 do dup i cells + @e   .4hex space loop 2 spaces
  08 0 do dup i cells + @e split ?ascii emit ?ascii emit loop
     10 + cr
  10 +loop drop ;

