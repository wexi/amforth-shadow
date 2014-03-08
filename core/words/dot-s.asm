; ( -- ) 
; Tools
; stack dump in picture format
VE_DOTS:
    .dw $ff02
    .db ".s"
    .dw VE_HEAD
    .set VE_HEAD = VE_DOTS
XT_DOTS:
    .dw DO_COLON
PFA_DOTS:
    .dw XT_DEPTH
    .dw XT_DOLITERAL
    .dw '#'
    .dw XT_EMIT
    .dw XT_DUP
    .dw XT_DOT
PFA_DOTS1:
    .dw XT_QDUP
    .dw XT_DOCONDBRANCH
    .dw PFA_DOTS2
    .dw XT_DUP
    .dw XT_PICK
    .dw XT_DOT
    .dw XT_1MINUS
    .dw XT_DOBRANCH
    .dw PFA_DOTS1
PFA_DOTS2:
    .dw XT_EXIT

	
