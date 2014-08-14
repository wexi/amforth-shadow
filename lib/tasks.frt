\ TASKS is an AmForth Shadow rewrite of MULTITASK

\ tasks-init -- initialize "main" as a running task. CALL FIRST!
\ task: --  allocate task memory
\ task-init -- initialize task in memory
\ task-run -- enable task
\ task-stop -- disable task
\ tasks-off -- disable multitasking
\ tasks-on -- enable multitasking
\ tasks -- display tasks activity

\ ----------------------------------------------------------------------

\ Task related user area variables:
\ _Offset__|_Content_______________________|
\  0  tid  | IP of task bypass/resume code |
\  2 tid>  | next task user area           |
\  4  rp0  | empty R stack address pointer |
\  6  sp0  | empty D stack address pointer |
\  8   sp  | D stack address pointer save  |
\ 28  nfa  | dictionary nfa                |

decimal

dp ]  ( tid1 -- tid2 )
cell+ @ dup @ >r exit
[ constant task-bypass

dp ]  ( tid -- )
up! 8 @u sp! rp!			\ restore stack pointers
int+
exit					\ returns from a task-switch
[ constant task-resume

: task-switch  ( -- tid )     
   int-
   rp@ sp@ 8 !u				\ save stack pointers
   2 @u					\ next task user area
   dup @ >r				\ continue as task-bypass or task-resume
;

\ allocate task resouces
: task: ( R-stack-bytes D-stack-bytes additional-user-bytes "task-name" -- )
   create
   here ,				\ tid
   [ s" /user" environment search-wordlist drop execute ] literal
   + allot				\ user area size
   allot here ,				\ empty D stack pointer (save pre-decrement)
   allot here 1- ,			\ empty R stack pointer (save post-decrement)
   wild @e ,				\ nfa
  does>					\ task (faddr)
;  
: task>tid  ( task -- tid )      @i  ;
: task>sp0  ( task -- sp0 )  1+  @i  ;
: task>rp0  ( task -- rp0 )  2+  @i  ;
: task>nfa  ( task -- nfa )  3 + @i  ;

: task-init  ( ITC TASK -- )
\
\ ITC = endless code starting ip, TASK = dictionary stored task>parameters
\ Simple example:
\ dp ] begin pause again [ constant ITC
\ 16 16 0 task: TASK
\   
   task-bypass over task>tid !		\ born inactive
   2 @u over task>tid 2+ !		\ link this new task
   dup task>tid 2 !u
   dup task>rp0 over task>tid 4 + !	\ empty R stack pointer
   dup task>sp0 over task>tid 6 + !	\ empty D stack pointer
   swap over task>rp0 1- !		\ IP to R stack
   dup task>rp0 2- over task>sp0 2- !	\ R pointer to D stack
   dup task>sp0 2- over task>tid 8 + !	\ D pointer to SP
   up@ 10 + over task>tid 10 + 18 cmove	\ inherit from calling task
   dup task>nfa swap task>tid 28 + !	\ name pointer
;

: tasks-init  ( -- )			\ must be called first!
   task-resume 0 !u			\ own status is running
   up@ 2 !u				\ points to self
;

: task-run  ( task -- )
   task>tid task-resume swap !
;

: task-stop  ( task | 0 -- )		\ 0 for self
   ?dup  if
      task>tid task-bypass swap !
   else
      task-bypass 0 !u
      task-switch
   then
;

: tasks-off ( -- )
   ['] noop is pause
;

: tasks-on ( -- )
   ['] task-switch is pause
;

\ list linked tasks
: tasks ( -- )
   cr
   main dup
   begin  ( tid tidₓ )
      dup up@ =  if  [char] *  else  bl  then
      emit				\ * marks current task
      dup 28 + @ name>string itype	\ dictionary name
      9 emit				\ HT
      dup u.
      dup @ case
	 task-resume  of  ." running"  endof
	 task-bypass  of  ." stopped"  endof
	 tdrop abort" ???"
      end-case
      dup up@ <>  if
	 ." @" dup 8 + @		\ saved D stack pointer
	 @				\ stored R stack pointer
	 1+ 				\ addr of R stack top
	 begin
	    dup @ @i ['] exit =
	 while
	    2+				\ skip exit chain
	 repeat
	 @ u.				\ show task return point
      then
      cr
      cell+ @  ( tid tidₓ₊₁ )
      2dup =
   until
   2drop
   ." tasks: "
   ['] pause defer@ ['] noop =  if ." off " else  ." on"  then
   cr
;
