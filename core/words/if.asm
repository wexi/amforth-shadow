; ( f -- ) (C: -- orig )
; Compiler
; start conditional branch
VE_IF:
    .dw $0002
    .db "if"
    .dw VE_HEAD
    .set VE_HEAD = VE_IF
XT_IF:
    .dw DO_COLON
PFA_IF:
    .dw XT_COMPILE
    .dw XT_DOCONDBRANCH
    .dw XT_GMARK
    .dw XT_EXIT
