; ( -- xt )
; Compiler
; create an unnamed entry in the dictionary, XT is DO_COLON
VE_COLONNONAME:
    .dw $ff07
    .db ":noname",0
    .dw VE_HEAD
    .set VE_HEAD = VE_COLONNONAME
XT_COLONNONAME:
    .dw DO_COLON
PFA_COLONNONAME:
    .dw XT_DP
    .dw XT_DUP
    .dw XT_LATEST
    .dw XT_STORE

    .dw XT_COMPILE
    .dw DO_COLON

    .dw XT_RBRACKET
    .dw XT_EXIT
