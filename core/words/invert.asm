; ( n1 -- n2) 
; Arithmetics
; 1-complement of TOS
VE_INVERT:
    .dw $ff06
    .db "invert"
    .dw VE_HEAD
    .set VE_HEAD = VE_INVERT
XT_INVERT:
    .dw PFA_INVERT
PFA_INVERT:
    com tosl
    com tosh
    jmp_ DO_NEXT

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
	
