; ( -- c)
; MCU
; get char c from queue, pause until one arrives.
;; VE_RX_ISR:
;;     .dw $ff06
;;     .db "rx-isr"
;;     .dw VE_HEAD
;;     .set VE_HEAD = VE_RX_ISR
XT_RX_ISR:
    .dw DO_COLON
PFA_RX_ISR:
    .dw XT_PAUSE
    .dw XT_RXQ_ISR		;no of chars in queue
    .dw XT_DOCONDBRANCH
    .dw PFA_RX_ISR		;empty queue
    .dw XT_RXR_ISR		;get one char
    .dw XT_EXIT
