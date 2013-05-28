; ( xt -- ) 
; Interrupt
; executes an interrupt service routine
;VE_ISREXEC:
;    .dw $ff08
;    .db "isr-exec"
;    .dw VE_HEAD
;    .set VE_HEAD = VE_ISREXEC
XT_ISREXEC:
    .dw DO_COLON
PFA_ISREXEC:
    .dw XT_DOLITERAL
    .dw intcur
    .dw XT_CFETCH
    .dw XT_DOLITERAL
    .dw intvec
    .dw XT_PLUS
    .dw XT_FETCH
    .dw XT_EXECUTE
    .dw XT_ISREND
    .dw XT_EXIT
