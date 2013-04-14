; ( -- wid ) 
; Search Order
; create a new, empty wordlist
VE_WORDLIST:
    .dw $ff08
    .db "wordlist"
    .dw VE_HEAD
    .set VE_HEAD = VE_WORDLIST
XT_WORDLIST:
    .dw DO_COLON
PFA_WORDLIST:
    .dw XT_EDP
    .dw XT_ZERO
    .dw XT_OVER
    .dw XT_STOREE
    .dw XT_DUP
    .dw XT_1PLUS
    .dw XT_1PLUS
    .dw XT_DOTO
    .dw PFA_EDP
    .dw XT_EXIT
