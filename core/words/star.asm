; ( n1 n2 -- n3 ) 
; Arithmetics
; multiply routine
VE_STAR:
    .dw $ff01
    .db "*",0
    .dw VE_HEAD
    .set VE_HEAD = VE_STAR
XT_STAR:
    .dw DO_COLON
PFA_STAR:
    .dw XT_MSTAR
    .dw XT_D2S
    .dw XT_EXIT
