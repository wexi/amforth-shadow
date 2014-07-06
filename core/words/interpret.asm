; (i*x - j*x )
; System
; Interpret SOURCE word by word.
VE_INTERPRET:
    .dw $ff09
    .db "interpret",0
    .dw VE_HEAD
    .set VE_HEAD = VE_INTERPRET
XT_INTERPRET:
    .dw DO_COLON
PFA_INTERPRET:
    .dw XT_PARSENAME ; ( -- addr len )
    .dw XT_QDUP   ; ( -- addr len len | addr 0)
    .dw XT_DOCONDBRANCH
    .dw PFA_INTERPRET2
    .dw XT_DORECOGNIZER
    .dw XT_STATE
    .dw XT_FETCH
    .dw XT_DOCONDBRANCH
    .dw PFA_INTERPRET1
      .dw XT_1PLUS   ; we need the compile action
PFA_INTERPRET1:
    .dw XT_FETCHI
    .dw XT_EXECUTE
    .dw XT_QSTACK
    .dw XT_DOBRANCH
    .dw PFA_INTERPRET
PFA_INTERPRET2:
    .dw xT_DROP
    .dw XT_EXIT
