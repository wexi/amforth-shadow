; ( -- c)
; MCU
; pause for the next usart input isr character
;; VE_RX_ISR:
;;     .dw $ff06
;;     .db "rx-isr"
;;     .dw VE_HEAD
;;     .set VE_HEAD = VE_RX_ISR
XT_RX_ISR:
    .dw DO_COLON
PFA_RX_ISR:
    .dw XT_PAUSE
    .dw XT_RXQ_ISR		;check no of chars in queue
    .dw XT_DOCONDBRANCH
    .dw PFA_RX_ISR		;no chars, pause again
    .dw XT_RXR_ISR		;get one char
    .dw XT_EXIT
