; ( addr len -- f )
; Interpreter
; recognizer searching the dictionary
VE_REC_WORD:
    .dw $ff08
    .db "rec:word"
    .dw VE_HEAD
    .set VE_HEAD = VE_REC_WORD
XT_REC_WORD:
    .dw DO_COLON
PFA_REC_WORD:
    .dw XT_FINDNAME
    .dw XT_QDUP
    .dw XT_DOCONDBRANCH
    .dw PFA_REC_WORD_NOTFOUND
	.dw XT_R_WORD
	.dw XT_EXIT
PFA_REC_WORD_NOTFOUND:
    .dw XT_R_FAIL
    .dw XT_EXIT

; ( addr len -- f )
; Interpreter
; Methode table for find recognizer
VE_R_WORD:
    .dw $ff06
    .db "r:word"
    .dw VE_HEAD
    .set VE_HEAD = VE_R_WORD
XT_R_WORD:
    .dw PFA_DOCONSTANT
PFA_R_WORD:
    .dw XT_R_WORD_INTERPRET
    .dw XT_R_WORD_COMPILE
    .dw XT_R_WORD_POSTPONE

XT_R_WORD_INTERPRET:
    .dw DO_COLON
PFA_R_WORD_INTERPRET:
    .dw XT_DROP ; the flags are in the way
    .dw XT_EXECUTE
    .dw XT_EXIT

XT_R_WORD_COMPILE:
    .dw DO_COLON
PFA_R_WORD_COMPILE:
    .dw XT_LESSZERO
    .dw XT_DOCONDBRANCH
    .dw PFA_R_WORD_COMPILE1
	.dw XT_COMMA
        .dw XT_EXIT
PFA_R_WORD_COMPILE1:
        .dw XT_EXECUTE
    .dw XT_EXIT

XT_R_WORD_POSTPONE:
    .dw DO_COLON
PFA_R_WORD_POSTPONE:
    .dw XT_LESSZERO
    .dw XT_DOCONDBRANCH
    .dw PFA_R_WORD_POSTPONE1
      .dw XT_COMPILE
      .dw XT_COMPILE
PFA_R_WORD_POSTPONE1:
    .dw XT_COMMA
    .dw XT_EXIT
