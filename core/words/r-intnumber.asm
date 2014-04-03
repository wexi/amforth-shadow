VE_R_INTNUM:
    .dw $ff08
    .db "r:intnum"
    .dw VE_HEAD
    .set VE_HEAD = VE_R_INTNUM
XT_R_INTNUM:
    .dw PFA_DOCONSTANT
PFA_R_INTNUM:
    .dw XT_NOOP    ; interpret
    .dw XT_LITERAL ; compile
    .dw XT_PFAIL ; postpone

VE_R_INTDNUM:
    .dw $ff09
    .db "r:intdnum"
    .dw VE_HEAD
    .set VE_HEAD = VE_R_INTDNUM
XT_R_INTDNUM:
    .dw PFA_DOCONSTANT
PFA_R_INTDNUM:
    .dw XT_NOOP     ; interpret
    .dw XT_2LITERAL ; compile
    .dw XT_PFAIL ; postpone

XT_PFAIL:
    .dw DO_COLON
PFA_PFAIL:
    .dw XT_DOT
    .dw XT_DOLITERAL
    .dw -48
    .dw XT_THROW
    .dw XT_EXIT

; ( addr len -- f )
; Interpreter
; recognizer for integer numbers
VE_REC_INTNUM:
    .dw $ff0a
    .db "rec:intnum"
    .dw VE_HEAD
    .set VE_HEAD = VE_REC_INTNUM
XT_REC_INTNUM:
    .dw DO_COLON
PFA_REC_INTNUM:
    ; try converting to a number
    .dw XT_NUMBER
    .dw XT_DOCONDBRANCH
    .dw PFA_REC_NONUMBER
    .dw XT_DOLITERAL
    .dw 1
    .dw XT_EQUAL
    .dw XT_DOCONDBRANCH
    .dw PFA_REC_INTNUM2
      .dw XT_R_INTNUM
      .dw XT_EXIT
PFA_REC_INTNUM2:
      .dw XT_R_INTDNUM
      .dw XT_EXIT
PFA_REC_NONUMBER:
    .dw XT_R_FAIL
    .dw XT_EXIT
