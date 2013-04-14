\
\ port definitions for Atmegas as found on the Arduino Standard
\ Atmega168, Atmega328p
\
decimal

	
};

PORTD 2 portpin: digital.0
PORTD 3 portpin: digital.1
PORTD 1 portpin: digital.2
PORTD 0 portpin: digital.3
PORTD 4 portpin: digital.4
PORTC 6 portpin: digital.5
PORTD 7 portpin: digital.6
PORTE 6 portpin: digital.7

PORTB 4 portpin: digital.8
PORTB 5 portpin: digital.9
PORTB 6 portpin: digital.10
PORTB 7 portpin: digital.11
PORTD 6 portpin: digital.12
PORTC 7 portpin: digital.13

PORTB 3 portpin: digital.14
PORTB 1 portpin: digital.15
PORTB 2 portpin: digital.16
PORTB 0 portpin: digital.17
PORTF 7 portpin: digital.18
PORTF 6 portpin: digital.19

PORTF 5 portpin: digital.20
PORTF 4 portpin: digital.21
PORTF 1 portpin: digital.22
PORTF 0 portpin: digital.23
PORTD 4 portpin: digital.24
PORTD 7 portpin: digital.25
PORTB 4 portpin: digital.26
PORTB 5 portpin: digital.27
PORTB 6 portpin: digital.28
PORTD 6 portpin: digital.29

PORTD 5 portpin: TXLED
PORTB 0 portpin: RXLED
PORTE 2 portpin: HWB

\ some digital ports have an alternative use
\ synonym is available since amforth 5.0

synonym SPI:SS   digital.17
synonym SPI:MOSI digital.16
synonym SPI:MISO digital.14
synonym SPI:SCK  digital.15

synonym TWI:SDA  digital.2
synonym TWI:SCL  digital.3
synonym SERIAL:RX   digital.0
synonym SERIAL:TX   digital.1
synonym LED_BUILTIN digital.13

synonym analog.0 digital.18
synonym analog.1 digital.19
synonym analog.2 digital.20
synonym analog.3 digital.21
synonym analog.4 digital.22
synonym analog.5 digital.23

synonym analog.6 digital.24
synonym analog.7 digital.25
synonym analog.8 digital.26
synonym analog.9 digital.27
synonym analog.10 digital.28
synonym analog.11 digital.29
