  .equ BAUDRATE_LOW = UBRR1L
  .equ BAUDRATE_HIGH = UBRR1H
  .equ USART_C = UCSR1C
  .equ USART_B = UCSR1B
  .equ USART_A = UCSR1A
  .equ USART_DATA = UDR1

.equ URXCaddr = URXC1addr
.equ UDREaddr = UDRE1addr

.equ bm_USART_RXRD = 1 << RXC1
.equ bm_USART_TXRD = 1 << UDRE1
.equ bm_ENABLE_TX  = 1 << TXEN1
.equ bm_ENABLE_RX  = 1 << RXEN1
.equ bm_ENABLE_INT_RX = 1<<RXCIE1
.equ bm_ENABLE_INT_TX = 1<<UDRIE1

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
