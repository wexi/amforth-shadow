; ( -- wid ) 
; Search Order
; get the system default word list
VE_FORTH_WORDLIST:
    .dw $ff0e
    .db "forth-wordlist"
    .dw VE_HEAD
    .set VE_HEAD = VE_FORTH_WORDLIST
XT_FORTH_WORDLIST:
    .dw PFA_DOVALUE1
PFA_FORTH_WORDLIST:
    .dw EE_WL_FORTH
    .dw XT_EDEFERFETCH
    .dw XT_EDEFERSTORE
