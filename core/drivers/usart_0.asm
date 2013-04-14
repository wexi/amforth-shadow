  .equ BAUDRATE_LOW = UBRR0L
  .equ BAUDRATE_HIGH = UBRR0H
  .equ USART_C = UCSR0C
  .equ USART_B = UCSR0B
  .equ USART_A = UCSR0A
  .equ USART_DATA = UDR0
  .ifndef URXCaddr
  .equ URXCaddr = URXC0addr
  .equ UDREaddr = UDRE0addr
  .endif

.equ bm_USART_RXRD = 1 << RXC0
.equ bm_USART_TXRD = 1 << UDRE0
.equ bm_ENABLE_TX  = 1 << TXEN0
.equ bm_ENABLE_RX  = 1 << RXEN0
.equ bm_ENABLE_INT_RX = 1<<RXCIE0
.equ bm_ENABLE_INT_TX = 1<<UDRIE0

.equ bm_USARTC_en   = 0
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
