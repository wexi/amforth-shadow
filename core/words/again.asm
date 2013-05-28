; ( -- ) (C: dest -- ) 
; Compiler
; compile a jump back to dest
VE_AGAIN:
    .dw $0005
    .db "again",0
    .dw VE_HEAD
    .set VE_HEAD = VE_AGAIN
XT_AGAIN:
    .dw DO_COLON
PFA_AGAIN:
    .dw XT_COMPILE
    .dw XT_DOBRANCH
    .dw XT_LRESOLVE
    .dw XT_EXIT
