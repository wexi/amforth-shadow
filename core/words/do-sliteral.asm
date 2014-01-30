; ( -- addr len ) 
; String
; runtime portion of sliteral
;VE_DOSLITERAL:
;  .dw $ff0a
;  .db "(sliteral)"
;  .dw VE_HEAD
;  .set VE_HEAD = VE_DOSLITERAL
XT_DOSLITERAL:
  .dw DO_COLON
PFA_DOSLITERAL:
  .dw XT_R_FETCH   ; ( -- addr )
  .dw XT_ICOUNT
  .dw XT_R_FROM
  .dw XT_OVER     ; ( -- addr' n addr n)
  .dw XT_1PLUS
  .dw XT_2SLASH   ; ( -- addr' n addr k )
  .dw XT_PLUS     ; ( -- addr' n addr'' )
  .dw XT_1PLUS
  .dw XT_TO_R     ; ( -- )
  .dw XT_EXIT
