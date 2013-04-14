; ( --  )  
; Interrupt
; re-enables interrupts in an ISR
;VE_ISREND:
;    .dw $ff07
;    .db "isr-end",0
;    .dw VE_HEAD
;    .set VE_HEAD = VE_ISREND
XT_ISREND:
    .dw PFA_ISREND
PFA_ISREND:
    rcall PFA_ISREND1 ; clear the interrupt flag for the controller
    jmp_ DO_NEXT
PFA_ISREND1:
    reti
