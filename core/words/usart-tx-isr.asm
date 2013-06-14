; (c -- )
; MCU
; put char c in queue, pause until there is room.
;; VE_TX_ISR:
;;     .dw $ff06
;;     .db "tx-isr"
;;     .dw VE_HEAD
;;     .set VE_HEAD = VE_TX_ISR
XT_TX_ISR:
    .dw	DO_COLON
PFA_TX_ISR:
    .dw	XT_PAUSE
    .dw	XT_TXQ_ISR		;no of char places in queue
    .dw	XT_DOCONDBRANCH
    .dw	PFA_TX_ISR		;full queue
    .dw	XT_TXR_ISR		;put one char
    .dw	XT_EXIT

