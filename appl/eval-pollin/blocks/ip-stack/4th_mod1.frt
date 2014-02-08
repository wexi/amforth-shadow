\ 4th Modul V1.0  "4th_mod1.frt"

marker cleanapp

PORTB 4 portpin: _encs \ netio

PORTB 2 portpin: enc_int

#include spi.frt
#include enc28j60.frt

marker cleaninit

: init
0 PORTA c!
0 DDRA c!
$BA DDRB c!
$1A PORTB c!
$C3 DDRC c!
$00 PORTC c!
$01 DDRD c!
$01 PORTD c!
+spi
enc_init
 ;

#include telnet.frt
