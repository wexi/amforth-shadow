\ TIMER_1 example
\
\ requires
\ in application master file
\  .set WANT_TIMER_COUNTER_1 = 1
\ from device.frt
\  TIMER1_OVFAddr
\ provides
\  timer1.tick      -- increasing ticker
\ 
\ older mcu's may need
\  TCCR1 constant TCCR1B
\  TIMSK constant TIMSK1

variable timer1.tick

: timer1.isr
  1 timer1.tick +!
;

\ some settings for 8bit timer to
\ get 1ms ticks
\ f_cpu  prescaler preload
\  16MHz   8       63536
\   8MHz   64      64536
: timer1.init ( preload -- )
    TCNT1L ! 
    0 timer1.tick !
    ['] timer1.isr TIMER1_OVFAddr int!
;

: timer1.start
    0 timer1.tick !
    %00000010 TCCR1B c!
    %00000001 TIMSK1 c! \ enable overflow interrupt
;

: timer1.stop
   %00000000 TCCR1B c! \ stop timer
   %00000000 TIMSK1 c! \ stop interrupt
;
