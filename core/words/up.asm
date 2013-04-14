; ( -- addr ) 
; System Variable
; get user area pointer
VE_UP_FETCH:
    .dw $ff03
    .db "up@",0
    .dw VE_HEAD
    .set VE_HEAD = VE_UP_FETCH
XT_UP_FETCH:
    .dw PFA_UP_FETCH
PFA_UP_FETCH:
    savetos
    movw tosl, upl
    jmp_ DO_NEXT

; ( addr -- ) 
; System Variable
; set user area pointer
VE_UP_STORE:
    .dw $ff03
    .db "up!",0
    .dw VE_HEAD
    .set VE_HEAD = VE_UP_STORE
XT_UP_STORE:
    .dw PFA_UP_STORE
PFA_UP_STORE:
    movw upl, tosl
    loadtos
    jmp_ DO_NEXT
