; ( -- ) 
; Tools
; prints a list of all searchable words in the dictionary
VE_ALLWORDS:
    .dw $ff08
    .db "allwords"
    .dw VE_HEAD
    .set VE_HEAD = VE_ALLWORDS
XT_ALLWORDS:
    .dw DO_COLON
PFA_ALLWORDS:
    .dw XT_GET_ORDER
PFA_ALLWORDS1:
    .dw XT_QDUP
    .dw XT_DOCONDBRANCH
    .dw PFA_ALLWORDS2
    .dw XT_SWAP
    .dw XT_SHOWWORDLIST
    .dw XT_1MINUS
    .dw XT_DOBRANCH
    .dw PFA_ALLWORDS1
PFA_ALLWORDS2:	
    .dw XT_EXIT
