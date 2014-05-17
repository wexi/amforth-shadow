; ( WIDₙ .. WID₁ n -- )
; Tools
; print all words in WID₁ to WIDₙ 
VE_NEWWORDS:
    .dw $ff08
    .db "my-words"
    .dw VE_HEAD
    .set VE_HEAD = VE_NEWWORDS
XT_NEWWORDS:
    .dw DO_COLON
PFA_NEWWORDS:
    .dw XT_DOBRANCH
    .dw PFA_ALLWORDS1
