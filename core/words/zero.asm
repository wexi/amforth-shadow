; ( -- 0 ) 
; Arithmetics
; place a value 0 on TOS
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
VE_ZDROP:
    .dw $ff05
    .db "0drop",0
    .dw VE_HEAD
    .set VE_HEAD = VE_ZDROP
XT_ZDROP:
    .dw PFA_ZERO1
;
PFA_ZERO:
    savetos
PFA_ZERO1:
    movw tosl, zerol
    jmp_ DO_NEXT
