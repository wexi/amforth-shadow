
\ watcher
\ catch a read/write action on a particular address
\ and execute a predefined debug action.

\ core routines
variable watch-addr
defer watch-action
\ redefine memory access words
: ! dup watch-addr @ = if watch-action then ! ;
: c@ dup watch-addr @ = if watch-action then c@ ;
: c! dup watch-addr @ = if watch-action then c! ;
\ this one is last
: @ dup watch-addr @ = if watch-action then @ ;
\ simply use the debugshell
' ?? is watch-action

\ possible modifications
\  use an address range
\  use a list of addresses (address ranges)
\ ?