; ( -- c)
; MCU
; wait (pause) for the next usart input isr character
;; VE_RX_ISR:
;;     .dw $ff06
;;     .db "rx-isr"
;;     .dw VE_HEAD
;;     .set VE_HEAD = VE_RX_ISR
XT_RX_ISR:
    .dw DO_COLON
PFA_RX_ISR:
    .dw XT_PAUSE
    .dw XT_RXR_ISR		;see drivers/usart-isr-rx.asm
    .dw PFA_RX_ISR		;no input conditional branch
    .dw XT_EXIT
