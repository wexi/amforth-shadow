\ TASKS is an AmForth Shadow rewrite of MULTITASK

\ tasks-init -- initialize "main" as a running task. CALL FIRST!
\ task: --  allocate task memory
\ task-init -- initialize task in memory
\ task-run -- enable task
\ task-stop -- disable task
\ task-run? -- is task running
\ tasks-off -- disable multitasking
\ tasks-on -- enable multitasking
\ tasks -- display tasks activity

\ ----------------------------------------------------------------------

\ Task Control Block (TCB):
\ _Offset_|_Content_______________________|
\  0  tid | _task-[bypass|resume] XT      |
\  2 tid> | next task TCB                 |
\  4  rp0 | empty R stack address pointer |
\  6  sp0 | empty D stack address pointer |
\  8  sp  | D stack address pointer save  |
\ 10   α  | \1 local                      |
\ 12   β  | \2 local                      |
\ 14   γ  | \3 local                      |
\ 16  (#) | # locals                      |
\ 36  nfa | dictionary nfa                |

decimal

\ save taskᵢ VM, int-, execute tcbᵢ₊₁ tid
create _task-switch
' task.. @i ,				\ see swidn.asm
' task. ,				\ bypass or resume 

\ restore task VM, int+
create _task-resume
' ..task @i ,				\ see swien.asm
' exit ,				\ ] exit [

\ ( tcbᵢ ) _task-bypass execute ( tcbᵢ₊₁ )
create _task-bypass
' .task. @i ,				\ see swidn.asm

\ allocate task resouces
: task: ( R-stack-bytes D-stack-bytes additional-user-bytes "task-name" -- )
   create
   here ,				\ tid
   [ s" /user" environment search-wordlist drop execute ] literal
   + allot				\ TCB size
   allot here ,				\ empty D stack pointer (save pre-decrement)
   allot here 1- ,			\ empty R stack pointer (save post-decrement)
   wild @e ,				\ nfa
;  
: _task>tid  ( task -- tid )      @i  ;
: _task>sp0  ( task -- sp0 )  1+  @i  ;
: _task>rp0  ( task -- rp0 )  2+  @i  ;
: _task>nfa  ( task -- nfa )  3 + @i  ;

: task-init  ( ITC TASK -- )
\
\ ITC = endless code starting ip, TASK = dictionary stored task>parameters
\ Simple example:
\ create ITC ] begin pause again [
\ 16 16 0 task: TASK
\   
   _task-bypass over _task>tid !		\ born inactive
   2 @u over _task>tid 2+ !		\ link this new task
   dup _task>tid 2 !u
   dup _task>rp0 over _task>tid 4 + !	\ empty R stack pointer
   dup _task>sp0 over _task>tid 6 + !	\ empty D stack pointer
   swap over _task>rp0 1- !		\ IP to R stack
   dup _task>rp0 2- over _task>sp0 2- !	\ R pointer to D stack
   dup _task>sp0 2- over _task>tid 8 + !	\ D pointer to SP
   dup _task>tid 10 + 8 erase		\ zero locals
   up@ 18 + over _task>tid 18 + 18 cmove	\ inherit from calling task
   dup _task>nfa swap _task>tid 36 + !	\ name pointer
;

: tasks-init  ( -- )			\ must be called first!
   _task-resume 0 !u			\ own status is running
   up@ 2 !u				\ points to self
;

: task-run  ( task -- )
   _task>tid _task-resume swap !
;

: task-run?  ( task -- flag )
   _task>tid @ _task-resume =
;   

: task-stop  ( task | 0 -- )		\ 0 for self
   ?dup  if
      _task>tid _task-bypass swap !
   else
      _task-bypass 0 !u
      pause
   then
;

: tasks-off ( -- )
   ['] noop is pause
;

: tasks-on ( -- )
   main @  if
      _task-switch is pause
   then
;

\ list linked tasks
: tasks ( -- )
   ['] pause defer@ _task-switch =	\ true if multi-tasking
   tasks-off				\ say cheese
   main dup
   begin  ( tcb tcbₓ )
      dup up@ =  if  [char] *  else  bl  then
      emit				\ * marks current task
      dup 36 + @ name>string itype	\ dictionary name
      9 emit				\ HT
      dup u.				\ task TCB
      dup @ _task-resume ?=  if  ." running"
      else  _task-bypass ?=  if  ." stopped"
	 else
	    abort" UNKNOWN TASK STATE"
	    abort" uninitialized"
	 then
      then
      dup up@ <>  if
	 ." @" dup 8 + @ dup		\ saved D stack pointer (two copies)
	 @				\ saved R stack pointer
	 1+ 				\ addr of R stack top
	 @ u.				\ report task return point

	 2+				\ skip saved R stack pointer
	 ( TCB d-stack )
	 ." D#" over 6 + @ over - 2 u/mod u.  abort" UNEVEN DATA-STACK"
	 over 6 + @ over 6 +		    \ list no more than 3 tomost values
	 2dup u<  if  drop  else  nip  then \ unsigned minimum
	 begin				    \ picture format
	    2- 2dup u<=
	 while
	    dup @ u.
	 repeat
	 2drop
	 
	 dup 16 + @			\ #locals high byte always zero
	 ( TCB #locals )
	 dup 0 4 within  if
	    ." L#" dup u.
	    2* over 10 + dup >r + r>  ?do  i @ u. 2  +loop
	 else
	    abort" WRONG L#"
	 then
      then
      cr
      2+ @  ( tcb tcbₓ₊₁ )
      2dup =
   until
   2drop
   ." tasks: "  if  ." on" tasks-on  else  ." off"  then
   cr
;
