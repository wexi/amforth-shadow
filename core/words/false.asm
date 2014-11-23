; ( -- 0 ) 
; Arithmetics
; push 0 (false) to TOS
VE_FALSE:
    .dw $ff05
    .db "false",0
    .dw VE_HEAD
    .set VE_HEAD = VE_FALSE
XT_FALSE:
    .dw PFA_ZERO
;
VE_ZERO:
    .dw $ff01
    .db "0",0
    .dw VE_HEAD
    .set VE_HEAD = VE_ZERO
XT_ZERO:
    .dw PFA_ZERO
;
VE_FDROP:
    .dw $ff05
    .db "fdrop",0
    .dw VE_HEAD
    .set VE_HEAD = VE_FDROP
XT_FDROP:
    .dw PFA_ZERO1
;
PFA_ZERO:
    savetos
PFA_ZERO1:
    movw tosh:tosl, zeroh:zerol
    jmp_ DO_NEXT
