; ( -- ) 
; Tools
; given a ( WIDₙ .. WID₁ n ) search order print all words in WID₁ to WIDₙ
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
    .dw PFA_ALLWORDS3
    .dw XT_SWAP
    .dw XT_SHOWWORDLIST
PFA_ALLWORDS2:
    .dw XT_1MINUS
    .dw XT_DOBRANCH
    .dw PFA_ALLWORDS1
PFA_ALLWORDS3:	
    .dw XT_EXIT
