; (c -- )
; MCU
; put char c in queue, pause until there is room.
VE_TX_ISR:
    .dw $ff06
    .db "tx-isr"
    .dw VE_HEAD
    .set VE_HEAD = VE_TX_ISR
XT_TX_ISR:
    .dw	DO_COLON
PFA_TX_ISR:
    .dw XT_SWIDI		;int-
    .dw	XT_TXQ_ISR		;no of available char places
    .dw	XT_QDUP			;?dup
    .dw	XT_DOCONDBRANCH
    .dw	PFA_TX_ISR1		;full queue
    .dw	XT_GREATERZERO		;0>
    .dw	XT_DOCONDBRANCH
    .dw	PFA_TX_ISR2		;DTR is OFF
    .dw XT_SWIEN		;int+
    .dw	XT_TXR_ISR		;putch
    .dw	XT_EXIT
PFA_TX_ISR1:
    .dw XT_SWIEN		;int+
    .dw	XT_PAUSE
    .dw XT_DOBRANCH
    .dw PFA_TX_ISR 
PFA_TX_ISR2:
    .dw XT_SWIEN		;int+
    .dw	XT_DROP
    .dw	XT_EXIT
