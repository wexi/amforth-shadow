; ( n offset -- ) 
; Memory
; write n to USER area at offset
VE_STOREU:
    .dw $ff02
    .db "!u"
    .dw VE_HEAD
    .set VE_HEAD = VE_STOREU
XT_STOREU:
    .dw DO_COLON
PFA_STOREU:
    .dw XT_UP_FETCH
    .dw XT_PLUS
    .dw XT_STORE
    .dw XT_EXIT
