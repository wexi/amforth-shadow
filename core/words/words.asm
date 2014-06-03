; ( -- ) 
; Tools
; prints a list of all (visible) words in the dictionary
VE_WORDS:
    .dw $ff05
    .db "words",0
    .dw VE_HEAD
    .set VE_HEAD = VE_WORDS
XT_WORDS:
    .dw DO_COLON
PFA_WORDS:
    .dw XT_DOLITERAL
    .dw EE_ORDERLIST
    .dw XT_FETCHE
    .dw XT_SHOWWORDLIST
    .dw XT_EXIT
