; ( -- )
; Tools
; prints a list of all compiled dictionary words
VE_NEWWORDS:
    .dw $ff08
    .db "newwords"
    .dw VE_HEAD
    .set VE_HEAD = VE_NEWWORDS
XT_NEWWORDS:
    .dw DO_COLON
PFA_NEWWORDS:
    .dw XT_GET_ORDER
    .dw XT_DOBRANCH
    .dw PFA_ALLWORDS2		;don't pritn first wordslist
