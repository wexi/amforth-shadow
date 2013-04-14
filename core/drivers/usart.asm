
.equ BAUDRATE_LOW = UBRRL+$20
.equ BAUDRATE_HIGH = UBRRH+$20
.equ USART_C = UCSRC+$20
.equ USART_B = UCSRB+$20
.equ USART_A = UCSRA+$20
.equ USART_DATA = UDR+$20
.equ bm_USARTC_en   = 1 << 7

; some generic constants
.equ bm_USART_RXRD = 1 << RXC
.equ bm_USART_TXRD = 1 << UDRE
.equ bm_ENABLE_TX  = 1 << TXEN
.equ bm_ENABLE_RX  = 1 << RXEN
.equ bm_ENABLE_INT_RX = 1<<RXCIE
.equ bm_ENABLE_INT_TX = 1<<UDRE

.equ bm_ASYNC       = 0 << 6
.equ bm_SYNC        = 1 << 6
.equ bm_NO_PARITY   = 0 << 4
.equ bm_EVEN_PARITY = 2 << 4
.equ bm_ODD_PARITY  = 3 << 4
.equ bm_1STOPBIT    = 0 << 3
.equ bm_2STOPBIT    = 1 << 3
.equ bm_5BIT        = 0 << 1
.equ bm_6BIT        = 1 << 1
.equ bm_7BIT        = 2 << 1
.equ bm_8BIT        = 3 << 1

.include "drivers/usart_common.asm"
