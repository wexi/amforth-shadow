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

:noname  ( tid1 -- tid2 ) 
   cell+ @
   dup @ >r				\ ">r ;" ≡ "execute"
;  1+ constant task-bypass		\ DO_COLON unused

:noname  ( tid -- )  
   up!
   8 @u sp! rp!				\ restore stacks
;  1+ constant task-resume

: task-switch  ( -- tid )     
   rp@ sp@ 8 !u				\ save stacks
   2 @u					\ next task user area
   dup @ >r				\ bypass or resume
;

\ allocate task resouces
: task: ( R-stack-bytes D-stack-bytes additional-user-bytes "task-name" -- )
   create
   here ,				\ tid
   [ s" /user" environment search-wordlist drop execute ] literal
   + allot				\ user area size
   allot here ,				\ empty D stack pointer (pre-decrement)
   allot here 1- ,			\ empty R stack pointer (post-decrement)
   wild @e ,				\ nfa
  does>					\ task (faddr)
;  
: task>tid  ( task -- tid )      @i  ;
: task>sp0  ( task -- sp0 )  1+  @i  ;
: task>rp0  ( task -- rp0 )  2+  @i  ;
: task>nfa  ( task -- nfa )  3 + @i  ;

: task-init  ( itc task -- )
\
\ itc = endless code starting ip, task = dictionary stored task>parameters
\ Simple example:
\ :noname begin pause again ; 1+ constant itc
\ 16 16 0 task: task
\   
   up@ -rot 2 @u -rot  ( tid1 tid2 itc task )
   dup task>tid up!
   init-user
   dup task>rp0 4 !u dup task>sp0 6 !u	\ set up stacks
   task>nfa 28 !u			\ dictionary name

   4 @u 1- !				\ IP to R stack
   4 @u 2- 6 @u 2- !			\ R pointer to D stack
   6 @u 2- 8 !u				\ D pointer to SP

   task-bypass 0 !u			\ stopped status
   2 !u					\ link new tid
   up@ swap up!
   2 !u
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
   main dup
   begin  ( tid tidₓ )
      dup up@ =  if  [char] *  else  bl  then
      emit				\ * marks current task
      dup 28 + @ name>string itype	\ dictionary name
      9 emit				\ HT
      dup u.
      dup @ case
	 task-resume  of  ." running"   endof
	 task-bypass  of  ." stopped"  endof
	 drop true abort" ???"
      endcase
      dup up@ <>  if
	 ." @" dup 8 + @		\ saved D stack pointer
	 @				\ stored R stack pointer
	 1+ @ u.			\ task IP
      then
      cr
      cell+ @  ( tid tidₓ₊₁ )
      2dup =
   until
   2drop
   ." tasks: "
   ['] pause defer@ ['] noop =  if ." off " else  ." on"  then
;
