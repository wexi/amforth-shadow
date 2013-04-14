; ( n1 n2 -- ) (R: -- loop-sys ) (C: -- do-sys )
; Compiler
; start do .. [+]loop
VE_DO:
    .dw $0002
    .db "do"
    .dw VE_HEAD
    .set VE_HEAD = VE_DO
XT_DO:
    .dw DO_COLON
PFA_DO:
    .dw XT_COMPILE
    .dw XT_DODO
    .dw XT_GMARK
    .dw XT_LMARK
    .dw XT_EXIT
