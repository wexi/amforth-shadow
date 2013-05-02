; ( b1 -- b2) 
; Arithmetics
; 1-complement of TOSL
VE_CINVERT:
    .dw $ff07
    .db "cinvert",0
    .dw VE_HEAD
    .set VE_HEAD = VE_CINVERT
XT_CINVERT:
    .dw PFA_CINVERT
PFA_CINVERT:
    com tosl
    jmp_ DO_NEXT
	
