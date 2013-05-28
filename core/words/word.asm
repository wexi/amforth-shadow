; ( c -- addr ) 
; Tools
; skip leading delimiter character and parse SOURCE until the next delimiter. copy the word to HERE
VE_WORD:
    .dw $ff04
    .db "word"
    .dw VE_HEAD
    .set VE_HEAD = VE_WORD
XT_WORD:
    .dw DO_COLON
PFA_WORD:
    .dw XT_SKIPSCANCHAR ; factor for both parse/word
    ; move to HERE
    .dw XT_HERE
    .dw XT_PLACE
    ; leave result
    .dw XT_HERE
    .dw XT_EXIT
