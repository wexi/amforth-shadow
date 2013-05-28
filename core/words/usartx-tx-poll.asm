; (c -- )
; MCU
; wait for the terminal becomes ready and put 1 character to it (Poll, ATXmega)
VE_XTX_POLL:
    .dw $ff09
    .db "x-tx-poll",0
    .dw VE_HEAD
    .set VE_HEAD = VE_XTX_POLL
XT_XTX_POLL:
    .dw DO_COLON
PFA_XTX_POLL:
  ; wait for data ready
  .dw XT_XTXQ_POLL
  .dw XT_DOCONDBRANCH
  .dw PFA_XTX_POLL
  ; send to usart
  .dw XT_DOLITERAL
  .dw TERM_USART+USART_DATA_offset
  .dw XT_CSTORE
  .dw XT_EXIT

; ( -- f)
; MCU
; check if a character can be sent (Poll, ATXmega)
VE_XTXQ_POLL:
    .dw $ff0a
    .db "x-tx?-poll"
    .dw VE_HEAD
    .set VE_HEAD = VE_XTXQ_POLL
XT_XTXQ_POLL:
    .dw DO_COLON
PFA_XTXQ_POLL:
  .dw XT_PAUSE
  .dw XT_DOLITERAL
  .dw TERM_USART+USART_STATUS_offset
  .dw XT_CFETCH
; #define USART_IsTXDataRegisterEmpty(_usart) (((_usart)->STATUS & USART_DREIF_bm) != 0)
  .dw XT_DOLITERAL
  .dw USART_DREIF_bm
  .dw XT_AND
;  .dw XT_NOTEQUALZERO
  .dw XT_EXIT

; ( -- )
; MCU
; initialize usart
;VE_USART_INIT_TX_POLL:
;  .dw $ff06
;  .db "+usart"
;  .dw VE_HEAD
;  .set VE_HEAD = VE_USART_INIT_TX_POLL
XT_USART_INIT_XTX_POLL:
  .dw PFA_USART_INIT_XTX_POLL
PFA_USART_INIT_XTX_POLL:          ; ( -- )
  jmp_ DO_NEXT
