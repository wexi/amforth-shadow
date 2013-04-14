; ( n1|u1 n2|u2 -- ) R( -- | loop-sys ) (C: -- do-sys)
; Compiler
; start a ?do .. [+]loop control structure
VE_QDO:
    .dw $0003
    .db "?do",0
    .dw VE_HEAD
    .set VE_HEAD = VE_QDO
XT_QDO:
    .dw DO_COLON
PFA_QDO:
    .dw XT_COMPILE
    .dw XT_DOQDO
    .dw XT_GMARK
    .dw XT_LMARK
    .dw XT_EXIT
