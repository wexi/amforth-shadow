; ( adr -- n ) Tools
; R( -- )
; print the content of addr
VE_QMARK:
    .dw $ff01
    .db "?",0 
    .dw VE_HEAD
    .set VE_HEAD = VE_QMARK
XT_QMARK:
    .dw DO_COLON 
PFA_QMARK:
    .dw XT_FETCH 
    .dw XT_DOT 
    .dw XT_EXIT 

;    : ?     ( adr - n ) @ . ; 
; finis qmark