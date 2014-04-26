
\ create task space
$20 $20 0 task: t:date&time   

variable seconds
\ runs every second
: job-date&time
  1 seconds +!
  \ more code for minute/hour/day...
  0 \ flag for an endless loop 
;

\ set up the task
: setup-date&time
  t:date&time task-init  \ create TCB in RAM
  0 seconds !            \ more code for minutes etc
  t:date&time tcb>tid activate
  \ code from here is executed as task, later on
  ['] job-date&time every-second
;

\ setup and start the task "date/time"
: turnkey-date&time
  onlytask                     \ set up multitasker
  6 timer0.init timer0.start   \ 16 MHz quartz
  \ insert task into task list
  setup-date&time t:date&time tcb>tid alsotask
  multi                        \ start multitasking
;
