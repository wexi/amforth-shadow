; ( wid -- ) 
; Tools
; prints the name of the words in a wordlist
VE_SHOWWORDLIST:
    .dw $ff0d
    .db "show-wordlist",0
    .dw VE_HEAD
    .set VE_HEAD = VE_SHOWWORDLIST
XT_SHOWWORDLIST:
    .dw DO_COLON
PFA_SHOWWORDLIST:
    .dw XT_DOLITERAL
    .dw XT_SHOWWORD
    .dw XT_SWAP
    .dw XT_TRAVERSEWORDLIST
    .dw XT_EXIT

XT_SHOWWORD:
    .dw DO_COLON
PFA_SHOWWORD:
    .dw XT_NAME2STRING
    .dw XT_ITYPE
    .dw XT_SPACE         ; ( -- addr n)
    .dw XT_TRUE
    .dw XT_EXIT
