
.set USART_C_VALUE = bm_ASYNC | bm_NO_PARITY | bm_1STOPBIT | bm_8BIT
.if WANT_ISR_RX == 1
  .set USART_B_VALUE = bm_ENABLE_TX | bm_ENABLE_RX | bm_ENABLE_INT_RX
  .include "drivers/usart-isr-rx.asm"
  .set XT_RX  = XT_RX_ISR
  .set XT_RXQ = XT_RXQ_ISR
  .set XT_USART_INIT_RX = XT_USART_INIT_RX_ISR
.else
  .set USART_B_VALUE = bm_ENABLE_TX | bm_ENABLE_RX
  .include "words/usart-rx-poll.asm"
  .set XT_RX  = XT_RX_POLL
  .set XT_RXQ = XT_RXQ_POLL
  .set XT_USART_INIT_RX = 0
.endif

.include "words/usart-tx-poll.asm"
.set XT_TX  = XT_TX_POLL
.set XT_TXQ = XT_TXQ_POLL
.set XT_USART_INIT_TX = 0

.include "words/ubrr.asm"
.include "words/usart.asm"
