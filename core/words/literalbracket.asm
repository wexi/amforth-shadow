; ( --  ) 
; Compiler
; enter compiler mode and compile a literal
VE_LIBRACKET:
    .dw $ff01
    .db "}",0
    .dw VE_HEAD
    .set VE_HEAD = VE_LIBRACKET
XT_LIBRACKET:
    .dw DO_COLON
PFA_LIBRACKET:
    .dw XT_RBRACKET
    .dw XT_LITERAL
    .dw XT_EXIT
