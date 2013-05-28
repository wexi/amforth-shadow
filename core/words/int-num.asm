; ( -- n )  
; Interrupt
; number of interrupt vectors (0 based)
VE_NUMINT:
    .dw $ff04
    .db "#int"
    .dw VE_HEAD
    .set VE_HEAD = VE_NUMINT
XT_NUMINT:
    .dw PFA_DOVARIABLE
PFA_NUMINT:
    .dw INTVECTORS
