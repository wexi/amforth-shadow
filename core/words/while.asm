; ( f -- ) (C: dest -- orig dest ) 
; Compiler
; at runtime skip until repeat if non-true
VE_WHILE:
    .dw $0005
    .db "while",0
    .dw VE_HEAD
    .set VE_HEAD = VE_WHILE
XT_WHILE:
    .dw DO_COLON
PFA_WHILE:
    .dw XT_COMPILE
    .dw XT_DOCONDBRANCH
    .dw XT_GMARK
    .dw XT_SWAP
    .dw XT_EXIT
