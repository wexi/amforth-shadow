; ( "ccc<eol>" -- ) 
; Compiler
; everything up to the end of the current line is a comment
VE_BACKSLASH:
    .dw $0001
    .db "\",0
    .dw VE_HEAD
    .set VE_HEAD = VE_BACKSLASH
XT_BACKSLASH:
    .dw DO_COLON
PFA_BACKSLASH:
    .dw XT_SOURCE
    .dw XT_SWAP
    .dw XT_DROP
    .dw XT_G_IN
    .dw XT_STORE
    .dw XT_EXIT
