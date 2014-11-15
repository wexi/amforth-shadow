; ( HL -- L H ) 
; Arithmetics
; split a word
VE_BYTESPLIT:
    .dw $ff02
    .db "||"
    .dw VE_HEAD
    .set VE_HEAD = VE_BYTESPLIT
XT_BYTESPLIT:
    .dw PFA_BYTESPLIT
PFA_BYTESPLIT:
    mov temp0, tosh
    mov	tosh, zeroh
    savetos
    mov tosl, temp0
    jmp_ DO_NEXT
