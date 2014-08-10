; ( -- -1 ) 
; Arithmetics
; push -1 (true) to TOS
VE_TRUE:
    .dw $ff04
    .db "true"
    .dw VE_HEAD
    .set VE_HEAD = VE_TRUE
XT_TRUE:
    .dw PFA_TRUE

VE_TDROP:
    .dw $ff05
    .db "tdrop",0
    .dw VE_HEAD
    .set VE_HEAD = VE_TDROP
XT_TDROP:
    .dw PFA_TRUE1
	
VE_NONE:
    .dw $ff02
    .db "-1"
    .dw VE_HEAD
    .set VE_HEAD = VE_NONE
XT_NONE:
    .dw PFA_TRUE
	
PFA_TRUE:
    savetos
PFA_TRUE1:
    ser tosl
    ser tosh
    jmp_ DO_NEXT
