\
\ port definitions for Atmega128 as found on the Arduino Mega128
\
decimal
PORTE 0 portpin: digital.0 \ PE 0 ** 0 ** USART0_RX
PORTE 1 portpin: digital.1 \ PE 1 ** 1 ** USART0_TX
PORTE 4 portpin: digital.2 \ PE 4 ** 2 ** PWM2
PORTE 5 portpin: digital.3 \ PE 5 ** 3 ** PWM3
PORTG 5 portpin: digital.4 \ PG 5 ** 4 ** PWM4
PORTE 3 portpin: digital.5 \ PE 3 ** 5 ** PWM5
PORTH 3 portpin: digital.6 \ PH 3 ** 6 ** PWM6
PORTH 4 portpin: digital.7 \ PH 4 ** 7 ** PWM7
PORTH 5 portpin: digital.8 \ PH 5 ** 8 ** PWM8
PORTH 6 portpin: digital.9 \ PH 6 ** 9 ** PWM9
PORTB 4 portpin: digital.10 \ PB 4 ** 10 ** PWM10
PORTB 5 portpin: digital.11 \ PB 5 ** 11 ** PWM11
PORTB 6 portpin: digital.12 \ PB 6 ** 12 ** PWM12
PORTB 7 portpin: digital.13 \ PB 7 ** 13 ** PWM13
PORTJ 2 portpin: digital.14 \ PJ 1 ** 14 ** USART3_TX
PORTJ 0 portpin: digital.15 \ PJ 0 ** 15 ** USART3_RX
PORTH 2 portpin: digital.16 \ PH 1 ** 16 ** USART2_TX
PORTH 0 portpin: digital.17 \ PH 0 ** 17 ** USART2_RX
PORTD 3 portpin: digital.18 \ PD 3 ** 18 ** USART1_TX
PORTD 2 portpin: digital.19 \ PD 2 ** 19 ** USART1_RX
PORTD 1 portpin: digital.20 \ PD 1 ** 20 ** I2C_SDA
PORTD 0 portpin: digital.21 \ PD 0 ** 21 ** I2C_SCL
PORTA 0 portpin: digital.22 \ PA 0 ** 22 ** D22
PORTA 1 portpin: digital.23 \ PA 1 ** 23 ** D23
PORTA 2 portpin: digital.24 \ PA 2 ** 24 ** D24
PORTA 3 portpin: digital.25 \ PA 3 ** 25 ** D25
PORTA 4 portpin: digital.26 \ PA 4 ** 26 ** D26
PORTA 5 portpin: digital.27 \ PA 5 ** 27 ** D27
PORTA 6 portpin: digital.28 \ PA 6 ** 28 ** D28
PORTA 7 portpin: digital.29 \ PA 7 ** 29 ** D29
PORTC 8 portpin: digital.30 \ PC 7 ** 30 ** D30
PORTC 6 portpin: digital.31 \ PC 6 ** 31 ** D31
PORTC 5 portpin: digital.32 \ PC 5 ** 32 ** D32
PORTC 4 portpin: digital.33 \ PC 4 ** 33 ** D33
PORTC 3 portpin: digital.34 \ PC 3 ** 34 ** D34
PORTC 2 portpin: digital.35 \ PC 2 ** 35 ** D35
PORTC 1 portpin: digital.36 \ PC 1 ** 36 ** D36
PORTC 0 portpin: digital.37 \ PC 0 ** 37 ** D37
PORTD 7 portpin: digital.38 \ PD 7 ** 38 ** D38
PORTG 2 portpin: digital.39 \ PG 2 ** 39 ** D39
PORTG 1 portpin: digital.40 \ PG 1 ** 40 ** D40
PORTG 0 portpin: digital.41 \ PG 0 ** 41 ** D41
PORTL 7 portpin: digital.42 \ PL 7 ** 42 ** D42
PORTL 6 portpin: digital.43 \ PL 6 ** 43 ** D43
PORTL 5 portpin: digital.44 \ PL 5 ** 44 ** D44
PORTL 4 portpin: digital.45 \ PL 4 ** 45 ** D45
PORTL 3 portpin: digital.46 \ PL 3 ** 46 ** D46
PORTL 2 portpin: digital.47 \ PL 2 ** 47 ** D47
PORTL 1 portpin: digital.48 \ PL 1 ** 48 ** D48
PORTL 0 portpin: digital.49 \ PL 0 ** 49 ** D49
PORTB 3 portpin: digital.50 \ PB 3 ** 50 ** SPI_MISO
PORTB 2 portpin: digital.51 \ PB 2 ** 51 ** SPI_MOSI
PORTB 1 portpin: digital.52 \ PB 1 ** 52 ** SPI_SCK
PORTB 0 portpin: digital.53 \ PB 0 ** 53 ** SPI_SS
PORTF 0 portpin: digital.54 \ PF 0 ** 54 ** A0
PORTF 1 portpin: digital.55 \ PF 1 ** 55 ** A1
PORTF 2 portpin: digital.56 \ PF 2 ** 56 ** A2
PORTF 3 portpin: digital.57 \ PF 3 ** 57 ** A3
PORTF 4 portpin: digital.58 \ PF 4 ** 58 ** A4
PORTF 5 portpin: digital.59 \ PF 5 ** 59 ** A5
PORTF 6 portpin: digital.60 \ PF 6 ** 60 ** A6
PORTF 7 portpin: digital.61 \ PF 7 ** 61 ** A7
PORTK 0 portpin: digital.62 \ PK 0 ** 62 ** A8
PORTK 1 portpin: digital.63 \ PK 1 ** 63 ** A9
PORTK 2 portpin: digital.64 \ PK 2 ** 64 ** A10
PORTK 3 portpin: digital.65 \ PK 3 ** 65 ** A11
PORTK 4 portpin: digital.66 \ PK 4 ** 66 ** A12
PORTK 5 portpin: digital.67 \ PK 5 ** 67 ** A13
PORTK 6 portpin: digital.68 \ PK 6 ** 68 ** A14
PORTK 7 portpin: digital.69 \ PK 7 ** 69 ** A15

\ some digital ports have an alternative use
\ synonym is available since amforth 5.0

synonym analog.0 digital.54 
synonym analog.1 digital.55 
synonym analog.2 digital.56  
synonym analog.3 digital.57  
synonym analog.4 digital.58  
synonym analog.5 digital.59  
synonym analog.6 digital.60  
synonym analog.7 digital.61  
synonym analog.8 digital.62  
synonym analog.9 digital.63  
synonym analog.10 digital.64  
synonym analog.11 digital.65  
synonym analog.12 digital.66  
synonym analog.13 digital.67  
synonym analog.14 digital.68  
synonym analog.15 digital.69  
synonym SPI:SS    digital.53  
synonym SPI:MOSI  digital.51  
synonym SPI:MISO  digital.50  
synonym SPI:SCK   digital.52  
synonym TWI:SDA   digital.20  
synonym TWI:SCL   digital.21  
synonym LED_BUILTIN digital.13  

synonym SERIAL:RX   digital.0
synonym SERIAL:TX   digital.1