\
\ port definitions for Atmegas as found on the Arduino Standard
\ Atmega168, Atmega328p
\
decimal

PORTD 0 portpin: digital.0
PORTD 1 portpin: digital.1
PORTD 2 portpin: digital.2
PORTD 3 portpin: digital.3
PORTD 4 portpin: digital.4
PORTD 5 portpin: digital.5
PORTD 6 portpin: digital.6
PORTD 7 portpin: digital.7

PORTB 0 portpin: digital.8
PORTB 1 portpin: digital.9
PORTB 2 portpin: digital.10
PORTB 3 portpin: digital.11
PORTB 4 portpin: digital.12
PORTB 5 portpin: digital.13

PORTC 0 portpin: digital.14
PORTC 1 portpin: digital.15
PORTC 2 portpin: digital.16
PORTC 3 portpin: digital.17
PORTC 4 portpin: digital.18
PORTC 5 portpin: digital.19

\ some digital ports have an alternative use
\ synonym is available since amforth 5.0
synonym SPI:SS   digital.10
synonym SPI:MOSI digital.11
synonym SPI:MISO digital.12
synonym SPI:SCK  digital.13
synonym TWI:SDA  digital.18
synonym TWI:SCL  digital.19
synonym LED_BUILTIN digital.13
synonym SERIAL:RX   digital.0
synonym SERIAL:TX   digital.1
synonym analog.0 digital.14
synonym analog.1 digital.15
synonym analog.2 digital.16
synonym analog.3 digital.17
synonym analog.4 digital.18
synonym analog.5 digital.19
\ not on all chips but defined in arduino sources
synonym analog.6 digital.20
synonym analog.7 digital.21
