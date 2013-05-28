; ( -- ) (C: "ccc<quote>" -- )
; Compiler
; compiles string into dictionary to be printed at runtime
VE_DOTSTRING:
    .dw $0002
    .db ".",$22
    .dw VE_HEAD
    .set VE_HEAD = VE_DOTSTRING
XT_DOTSTRING:
    .dw DO_COLON
PFA_DOTSTRING:
    .dw XT_SQUOTE
    .dw XT_COMPILE
    .dw XT_ITYPE
    .dw XT_EXIT

