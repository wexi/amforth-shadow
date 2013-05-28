; ( a-addr -- n ) 
; Memory
; read 1 cell from RAM address
VE_FETCHU:
    .dw $ff02
    .db "@u"
    .dw VE_HEAD
    .set VE_HEAD = VE_FETCHU
XT_FETCHU:
    .dw DO_COLON
PFA_FETCHU:
    .dw XT_UP_FETCH
    .dw XT_PLUS
    .dw XT_FETCH
    .dw XT_EXIT
