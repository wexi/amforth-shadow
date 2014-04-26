\ lib/multitask-test.frt

$38 constant PORTB
$37 constant DDRB

include lib/multitask.frt   \ load the multitasker

: ms ( n -- )               \ call pause on wait
  0 ?do pause 1ms loop ;

                            \ create a persistent task
variable N
: init
  $ff PORTB c!              \ portB: all pins high
  $ff DDRB  c!              \        all pins output
  0 N !
;
\ --- task 2 ---
: run-demo
  begin
    N @ invert PORTB c!
    1 N +!
    &500 ms
  again
;
$40 $40 0 task: task_demo   \ create task space
: start-demo
  task_demo tcb>tid
  activate           \ words after this line are run in new task
  run-demo
;
: starttasker
  task_demo task-init       \ create TCB in RAM
  start-demo                \ activate tasks job

  onlytask                  \ make cmd loop task-1
  task_demo tcb>tid alsotask \ start task-2
  multi                     \ activate multitasking
;
: run-turnkey
  applturnkey
  init 
  starttasker
;
' run-turnkey is turnkey    \ make run-turnkey start on power up
