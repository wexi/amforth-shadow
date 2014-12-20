; ( --  ) 
; Compiler
; equivalent to '] literal'
VE_LIBRACKET:
    .dw $ff02
    .db "]l"
    .dw VE_HEAD
    .set VE_HEAD = VE_LIBRACKET
XT_LIBRACKET:
    .dw DO_COLON
PFA_LIBRACKET:
    .dw XT_RBRACKET
    .dw XT_LITERAL
    .dw XT_EXIT
