\ -*- Mode: Forth; Coding: utf-8 -*-

\ Copyright (c) 2014 Energy Measurement & Control, NJ, USA.
\ Redistribution: FreeBSD License.
\
\ "elist" schedules a word for execution after "delay" number of
\ milliseconds, passing an optional (non-zero) "value" through the stack to
\ the scheduled word. There can be up-to "EVENTS" number of words pending
\ execution. "elist" returns "error" true if there is no room for more
\ words to schedule: elist ( delay value xt -- error )
\ To undo: delist ( xt -- ) cancels the earliest "xt" pending execution.
(
16 constant EVENTS			\ superseded by appl_defs.frt constant
)
\ Requirements:
\ (1) Initialize the clock library by calling "einit".
\ (2) From a soft Interrupt Service Routine (ISR) increment "clock" and
\ call "evoke" every millisecond. "evoke" should be called with the soft
\ interrupt system off ("int-"). For example:
\ 
\ 1000 Hz interrupt service
\ : clkisr
\    int-
\    1 clock +!				\ clock++
\    evoke				\ execute expired events
\    ...
\    int+
\ ;
\ 
\ Bonus: "ms" replaces the standard FACILITY EXT word. It is to be used
\ in tasks (not recommended for ISRs).
\ 
\ Debugging aid: "events" lists the execution pending words.
\ 
\ #include buffer.frt
\ #include vt100.frt
\

decimal

variable clock				\ ISR driven ms counter

\ ----------------------------------------------------------------------

\ clock based ms delay (≤ 60s). to be used in tasks. 
: ms  ( u -- )
   clock @ + 1-
   begin
      dup clock @ - 60000 u<
   while
      pause
   repeat
   drop
;

\ ----------------------------------------------------------------------

begin-structure _event
field: _e.next				\ keep first!
field: _e.when				\ clock value to act
field: _e.data				\ NZ data to pass
field: _e.xt				\ function to call
end-structure

_event EVENTS * buffer: _ebuff
variable _etodo				\ non-decreasing event delays
variable _efree

\ Initialize the free events linked list
: einit
   0 _ebuff
   EVENTS 0  do
      dup -rot !
      dup _event +
   loop
   drop _efree !
   0 _etodo !
;

\ With the soft interrupts disabled call evoke each _clkisr to execute expired
\ event functions. Pass data to the expired function only if it is non-zero.
\ NOTE: Event functions execute with the soft interrupts enabled!
( -- )
: evoke
   begin
      _etodo @ ?dup			\ anything to do?
   while
      dup _e.when @ clock @ - 60000 u>=  if
	 dup @ _etodo !			\ remove event from todo list
	 _efree @ over !		\ move event to
	 dup _efree !			\  the free list
	 dup _e.data @ ?dup  if  swap  then \ pass data if non-zero
	 _e.xt @ int+ execute int-
      else
	 drop exit			\ todo in the future
      then
   repeat
;

\ Schedule "xt" for execution after a "delay" number of clock
\ increments. 60000 is the largest "delay" value allowed.
\ If the "data" value is non zero it will pass to the "xt".
( delay data xt -- error )
: elist
   _efree dup int- @    ( delay data xt event₀ event )
   ?dup  if
      dup @ rot ! int+  ( delay data xt event )
      \ free event allocated
      dup _e.xt rot swap !
      dup _e.data rot swap !
      dup _e.when rot clock @ + dup >r 1- swap ! 
      _etodo int-  ( event event₀ )
      begin
	 dup @     ( event eventₓ eventₓ₊₁ )
	 dup  if  _e.when @ r@ - 60000 u>=  then
      while
	 @
      repeat
      rdrop        ( event eventₓ )
      over over @  ( event eventₓ event eventₓ₊₁ )
      swap ! !
      false
   else
      2drop 2drop
      true				\ event memory exhausted
   then
   int+
;

\ Cancel earliest "xt" event
( xt -- )
: delist
   >r _etodo
   int-
   begin           ( eaᵢ )		\ i-th event address (done with)
      dup @ ?dup
   while           ( eaᵢ eaᵢ₊₁ )
      dup _e.xt @ r@ =  if
	 dup -rot  ( eaᵢ₊₁ eaᵢ eaᵢ₊₁ )
	 @ swap !  ( eaᵢ₊₁ )		\ removed from the todo list
	 _efree @ over !
	 _efree !			\ added to the free list
	 int+
	 rdrop exit
      then
      nip
   repeat
   int+
   drop rdrop   
;

\ list pending events (may cause soft interrupts overflow!)
: events
   Red foreground
   ." №" tab ." DELAY" tab ." DATA" tab ." XT"
   text_normal cr
   _etodo EVENTS 0 int-  do
      @ ?dup  if
	 i 1+ . tab
	 dup _e.when @ clock @ - 1+ . tab
	 dup _e.data @ . tab
	 dup _e.xt @ . cr
      else
	 leave
      then
   loop
   int+
;