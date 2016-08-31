\ -*- Mode: Forth; Coding: utf-8 -*-

\ Copyright (c) 2014 Energy Measurement & Control, NJ, USA.
\ Redistribution: FreeBSD License.
\
\ "enlist" schedules an "xt" for execution after a "delay" number of
\ milliseconds, passing an optional (non-zero) "value" through the stack to
\ the scheduled xt. There can be up-to "EVENTS" number of xt-s pending
\ execution, cf. the "_event" structure.
\ "enlist" error return is "true" if the events memory is exhausted:
\ enlist ( delay value xt -- error )
\
\ "delist" cancels the earliest "xt" event pending execution. It returns
\ "false" if "xt" is not found: delist ( xt -- xt | false )
(
16 constant EVENTS			\ superseded by appl_defs.frt constant
)
\ Requirements:
\ (1) Initialize the clock library by calling "einit".
\ (2) From a soft Interrupt Service Routine (ISR) increment "clock" and call "evoke"
\     every millisecond to execute expired events. "evoke" should be called with
\     the soft interrupts system off ("int-") and protected against re-entry.
\  For example:
\ 
\ 1000 Hz interrupt service
\ : clkisr
\    int-
\    1 clock +!				\ clock++
\    mslock hi?!  if                    \ non reentrant code to
\      evoke				\  execute expired events
\      ...
\      mslock lo!
\    then
\    int+
\ ;
\ 
\ Bonus: "ms" replaces the standard FACILITY EXT word. It is to be used
\ in tasks (not recommended for ISRs).
\ 
\ Debugging aid: "events" lists the execution pending xt-s.
\ 
\ #include erase.frt
\ #include structures.frt
\ #include buffer.frt
\ #include vt100.frt

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
   field: _e.next			\ keep first!
   field: _e.when			\ clock value to act
   field: _e.data			\ NZ data to pass
   field: _e.xt				\ function to call
end-structure

_event EVENTS * buffer: _ebuff
variable _etodo				\ pending events list
variable _efree				\ free events list

\ init event memory
: einit
   _ebuff [ _efree _ebuff - ]l erase
   _ebuff _efree
   EVENTS 0  do
      2dup !
      drop dup _event + swap
   loop
   2drop
;

\ With the soft interrupts disabled call evoke each clkisr to execute expired
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

\ Schedule "xt" for execution after [1, 60000] "delay" milliseconds. 
\ "evoke" would pass non-zero "data" to the "xt", i.e. data xt execute
( delay data xt -- error )
: enlist
   int-
   _efree dup @   ( delay data xt event₀ event )
   ?dup  if
      \ remove event from free list
      dup @ rot ! ( delay data xt event )
      \ fill in the event fields
      swap over _e.xt !
      swap over _e.data !
      swap 1- dup >r clock int* @ + over _e.when !
      \ put event on todo list
      _etodo      ( event event₀ )
      begin       ( event eventₓ )
	 dup @    ( event eventₓ eventₓ₊₁ ) ( R: wait )
	 dup  if
	    dup _e.when @ clock @ -
	    dup 60000 u<  if		\ waitₓ₊₁ not expired
	       r@ u<=			\ waitₓ₊₁ ≤ wait ?
	    else
	       tdrop			\ after those expired
	    then
	 else
	    false			\ eventₓ is todo last, i.e. eventₓ₊₁ = 0
	 then
      while
	 nip
      repeat
      rdrop           ( event eventₓ eventₓ₊₁ )
      -rot over swap  ( eventₓ₊₁ event event eventₓ )
      ! !
      false
   else
      2drop 2drop
      true				\ event memory exhausted
   then
   int+
;

\ Cancel the earliest "xt" event. Return "false" if the "xt" is not found.
( xt -- xt | false )
: delist
   >r _etodo int-
   begin           ( eventᵢ )		\ i-th event address (done with)
      dup @ ?dup
   while           ( eventᵢ eventᵢ₊₁ )
      dup _e.xt @ r@ =  if		\ eventᵢ₊₁ matches
	 dup -rot  ( eventᵢ₊₁ eventᵢ eventᵢ₊₁ )
	 @ swap !  ( eventᵢ₊₁ )		\ removed from the todo list
	 _efree @ over !
	 _efree !			\ added to the free list
	 int+
	 r> exit
      then
      nip
   repeat
   int+ drop r> fdrop
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
	 dup _e.xt @ [char] $ emit whex cr
      else
	 leave
      then
   loop
   int+
;