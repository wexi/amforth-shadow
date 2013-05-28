\ let the led at digital-13 aka PortB.7 blink

\ 
$25 constant PORTB
$24 constant DDRB

\ initialize the Port: change to output mode
: led-init
  $80 DDRB c!
;

\ turn the led on
: led-on
  $80 PORTB c!
;

\ turn the led off
: led-off
  0 PORTB c!
;

\ let led blink once
: led-blink
  led-on 500 ms led-off 500 ms
;

\ let led blink until a keystroke
: blink
    ." press any key to stop "
    begin
       led-blink
       key?
    until
    key drop \ we do not want to keep this key stroke
;

\ and do it....
led-init blink
