
.equ USART_A_VALUE = 0
.equ USART_B_VALUE = USART_TXEN_bm | USART_RXEN_bm
.equ USART_C_VALUE = USART_CHSIZE_8BIT_gc

.set WANT_ISR_TX = 0
.set WANT_ISR_RX = 0

.if WANT_ISR_RX == 1
  .include "drivers/usartx-isr-rx.asm"
  .include "words/usartx-rx-isr.asm"
  .set XT_RX  = XT_XRX_ISR
  .set XT_RXQ = XT_XRXQ_ISR
  .set XT_USART_INIT_RX = XT_USART_INIT_XRX_ISR
.else
  .include "words/usartx-rx-poll.asm"
  .set XT_RX  = XT_XRX_POLL
  .set XT_RXQ = XT_XRXQ_POLL
  .set XT_USART_INIT_RX = XT_USART_INIT_XRX_POLL
.endif

.if WANT_ISR_TX == 1
  .include "drivers/usartx-isr-tx.asm"
  .include "words/usartx-tx-isr.asm"
  .set XT_TX  = XT_XTX_ISR
  .set XT_TXQ = XT_XTXQ_ISR
  .set XT_USART_INIT_TX = XT_USART_INIT_XTX_ISR
.else
  .include "words/usartx-tx-poll.asm"
  .set XT_TX  = XT_XTX_POLL
  .set XT_TXQ = XT_XTXQ_POLL
  .set XT_USART_INIT_TX = XT_USART_INIT_XTX_POLL
.endif

.include "words/ubrr.asm"
.include "words/usartx.asm"
