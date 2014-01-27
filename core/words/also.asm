; ( "name" -- ) 
; Search Order
; Add "named" wid to the search order head
VE_ALSO:
    .dw $ff04
    .db "also"
    .dw VE_HEAD
    .set VE_HEAD = VE_ALSO
XT_ALSO:
    .dw DO_COLON
PFA_ALSO:
    .dw XT_GET_ORDER
    .dw XT_PARSENAME
    .dw XT_FINDNAME
    .dw XT_DOCONDBRANCH
    .dw PFA_ALSO1
    .dw XT_EXECUTE		;expected to return a wid on TOS
    .dw XT_SWAP
    .dw XT_1PLUS
    .dw XT_SET_ORDER
    .dw XT_EXIT
PFA_ALSO1:
; -32: invalid name argument
    .dw XT_DOLITERAL
    .dw -32
    .dw XT_THROW
