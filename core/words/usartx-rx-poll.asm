; ( -- c) 
; MCU
; wait for and get one character from the terminal (Poll, ATXmega)
VE_XRX_POLL:
    .dw $ff09
    .db "x-rx-poll",0
    .dw VE_HEAD
    .set VE_HEAD = VE_XRX_POLL
XT_XRX_POLL:
    .dw DO_COLON
PFA_XRX_POLL:
  ; wait for data ready
  .dw XT_XRXQ_POLL
  .dw XT_DOCONDBRANCH
  .dw PFA_XRX_POLL
  ; send to usart
  .dw XT_DOLITERAL
  .dw TERM_USART+USART_DATA_offset
  .dw XT_CFETCH
  .dw XT_EXIT

; ( -- f)
; MCU
; check if a character can read from the terminal (Poll, ATXmega)
VE_XRXQ_POLL:
    .dw $ff0a
    .db "x-rx?-poll"
    .dw VE_HEAD
    .set VE_HEAD = VE_XRXQ_POLL
XT_XRXQ_POLL:
    .dw DO_COLON
PFA_XRXQ_POLL:
  .dw XT_PAUSE
  .dw XT_DOLITERAL
  .dw TERM_USART+USART_STATUS_offset
  .dw XT_CFETCH
  .dw XT_DOLITERAL
  .dw USART_RXCIF_bm
  .dw XT_AND
  .dw XT_EXIT

; ( -- )
; MCU
; initialize usart
;VE_USART_INIT_RX:
;  .dw $ff06
;  .db "+usart"
;  .dw VE_HEAD
;  .set VE_HEAD = VE_USART_INIT_RX
XT_USART_INIT_XRX_POLL:
  .dw DO_COLON
PFA_USART_INIT_XRX_POLL:          ; ( -- )
  .dw XT_EXIT
