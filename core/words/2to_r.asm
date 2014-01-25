;  ( x1 x2 -- ) ( R: -- x1 x2 )
; Stack
; move DTOS to TOR
VE_2TO_R:
    .dw $ff03
    .db "2>r",0
    .dw VE_HEAD
    .set VE_HEAD = VE_2TO_R
XT_2TO_R:
    .dw PFA_2TO_R
PFA_2TO_R:
    movw temp1:temp0, tosh:tosl	;x2
    loadtos
    push tosh			;x1
    push tosl
    loadtos
    push temp1			;x2
    push temp0
    jmp_ DO_NEXT
