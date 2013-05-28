; ( f -- ) (C: -- orig )
; Compiler
; do a unconditional branch
VE_AHEAD:
    .dw $0005
    .db "ahead",0
    .dw VE_HEAD
    .set VE_HEAD = VE_AHEAD
XT_AHEAD:
    .dw DO_COLON
PFA_AHEAD:
    .dw XT_COMPILE
    .dw XT_DOBRANCH
    .dw XT_GMARK
    .dw XT_EXIT
