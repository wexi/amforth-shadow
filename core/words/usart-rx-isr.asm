; ( -- c)
; MCU
; get 1 character from input queue, wait if needed using interrupt driver
VE_RX_ISR:
    .dw $ff06
    .db "rx-isr"
    .dw VE_HEAD
    .set VE_HEAD = VE_RX_ISR
XT_RX_ISR:
    .dw DO_COLON
PFA_RX_ISR:
    .dw XT_PAUSE
    .dw XT_RXR_ISR		;(rx-isr) in drivers/usart-isr-rx.asm
    .dw PFA_RX_ISR		;no input
    .dw XT_EXIT
