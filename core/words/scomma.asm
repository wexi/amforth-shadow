; ( addr len -- ) 
; Compiler
; compiles a string from RAM to Flash
VE_SCOMMA:
  .dw $ff02
  .db "s",$2c
  .dw VE_HEAD
  .set VE_HEAD = VE_SCOMMA
XT_SCOMMA:
    .dw DO_COLON
PFA_SCOMMA:
    .dw XT_DUP
    .dw XT_DOSCOMMA
    .dw XT_EXIT

; ( addr len len' -- ) 
; Compiler
; compiles a string from RAM to Flash
;VE_DOSCOMMA:
;  .dw $ff04
;  .db "(s",$2c,")"
;  .dw VE_HEAD
;  .set VE_HEAD = VE_DOSCOMMA
XT_DOSCOMMA:
    .dw DO_COLON
PFA_DOSCOMMA:
    .dw XT_COMMA
    .dw XT_DUP   ; ( --addr len len)
    .dw XT_2SLASH ; ( -- addr len len/2
    .dw XT_SWAP   ; ( -- addr len/2 len
    .dw XT_OVER   ; ( -- addr len/2 len len/2
    .dw XT_2STAR  ; ( -- addr len/2 len len'
    .dw XT_MINUS  ; ( -- addr len/2 rem
    .dw XT_TO_R
    .dw XT_ZERO
    .dw XT_DOQDO
    .dw PFA_SCOMMA2
PFA_SCOMMA1:
    .dw XT_DUP         ; ( -- addr addr )
    .dw XT_FETCH       ; ( -- addr c1c2 )
    .dw XT_COMMA       ; ( -- addr )
    .dw XT_CELLPLUS    ; ( -- addr+cell )
    .dw XT_DOLOOP
    .dw PFA_SCOMMA1
PFA_SCOMMA2:
    .dw XT_R_FROM
    .dw XT_GREATERZERO
    .dw XT_DOCONDBRANCH
    .dw PFA_SCOMMA3
      .dw XT_DUP     ; well, tricky
      .dw XT_CFETCH
      .dw XT_COMMA
PFA_SCOMMA3:
    .dw XT_DROP        ; ( -- )
    .dw XT_EXIT
