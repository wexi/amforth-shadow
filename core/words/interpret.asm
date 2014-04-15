; ( -- ) (R: i*x - j*x )
; System
; interpret input word by word.
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
    .dw PFA_INTERPRET5
    .dw XT_DORECOGNIZERS
    .dw XT_STATE
    .dw XT_FETCH
    .dw XT_DOCONDBRANCH
    .dw PFA_INTERPRET6
      .dw XT_1PLUS   ; we need the compile action
PFA_INTERPRET6:
    .dw XT_FETCHI
    .dw XT_EXECUTE
    .dw XT_QSTACK
    .dw XT_DOBRANCH
    .dw PFA_INTERPRET
PFA_INTERPRET5:
    .dw xT_DROP
    .dw XT_EXIT


XT_DORECOGNIZERS:
    .dw DO_COLON
PFA_DORECOGNIZERS:
    .dw XT_DOLITERAL
    .dw EE_RECOGNIZERLISTLEN
    .dw XT_FETCHE       ; ( addr len rec # -- )
    .dw XT_ZERO
    .dw XT_DOQDO
    .dw PFA_INTERPRET4
PFA_INTERPRET2:
    ; ( -- addr len )
    ; I comes from the return stack.
    .dw XT_2DUP ; ( -- addr len addr len  )
    .dw XT_I    ; ( -- addr len addr len i )
    .dw XT_ROT  ; ( -- addr len len i addr )
    .dw XT_ROT  ; ( -- addr len i addr len )
    .dw XT_TO_R
    .dw XT_TO_R
    .dw XT_CELLS
    .dw XT_DOLITERAL
    .dw EE_RECOGNIZERLIST
    .dw XT_PLUS
    .dw XT_FETCHE
    .dw XT_EXECUTE
    .dw XT_DUP
    .dw XT_R_FAIL
    .dw XT_NOTEQUAL
    .dw XT_DOCONDBRANCH
    .dw PFA_INTERPRET3
      .dw XT_R_FROM
      .dw XT_R_FROM
      .dw XT_DROP
      .dw XT_DROP
      .dw XT_UNLOOP
      .dw XT_EXIT
PFA_INTERPRET3:
    .dw XT_DROP
    .dw XT_R_FROM
    .dw XT_R_FROM
    .dw XT_DOLOOP
    .dw PFA_INTERPRET2
PFA_INTERPRET4:
    .dw XT_R_FAIL
    .dw XT_EXIT

