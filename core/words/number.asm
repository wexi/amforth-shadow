; (addr len -- [n|d size] f) 
; Numeric IO
; convert a string at addr to a number
VE_NUMBER:
    .dw $ff06
    .db "number"
    .dw VE_HEAD
    .set VE_HEAD = VE_NUMBER
XT_NUMBER:
    .dw DO_COLON
PFA_NUMBER:
    .dw XT_BASE
    .dw XT_FETCH
    .dw XT_TO_R
    .dw XT_NUMBERSIGN
    .dw XT_TO_R
    .dw XT_PRAEFIX
    .dw XT_NUMBERSIGN
    .dw XT_R_FROM
    .dw XT_OR
    .dw XT_TO_R
    ; check whether something is left
    .dw XT_DUP
    .dw XT_EQUALZERO
    .dw XT_DOCONDBRANCH
    .dw PFA_NUMBER0
      ; nothing is left. It cannot be a number at all
      .dw XT_DROP
      .dw XT_DROP 
      .dw XT_R_FROm
      .dw XT_DROP
      .dw XT_R_FROm
      .dw XT_BASE
      .dw XT_STORE
      .dw XT_ZERO
      .dw XT_EXIT
PFA_NUMBER0:
    .dw XT_TO_R
    .dw XT_TO_R

    .dw XT_ZERO       ; starting value
    .dw XT_ZERO
    .dw XT_R_FROM
    .dw XT_R_FROM
    .dw XT_TO_NUMBER ; ( 0. addr len -- d addr' len'
    ; check length of the remaining string.
    ; if zero: a single cell number is entered
    .dw XT_QDUP
        .dw XT_DOCONDBRANCH
	.dw PFA_NUMBER1
    ; if equal 1: mayba a trailing dot? --> double cell number
    .dw XT_DOLITERAL
    .dw 1
    .dw XT_EQUAL
    .dw XT_DOCONDBRANCH
    .dw PFA_NUMBER2
	; excatly one character is left
	.dw XT_CFETCH
	.dw XT_DOLITERAL
	.dw $2e ; .
	.dw XT_EQUAL
	.dw XT_DOCONDBRANCH
	.dw PFA_NUMBER2
	; its a double cell number
        ; incorporate sign into number
	.dw XT_R_FROM
        .dw XT_DOCONDBRANCH
	.dw PFA_NUMBER3
        .dw XT_DNEGATE
PFA_NUMBER3:
	.dw XT_DOLITERAL
	.dw 2
	.dw XT_DOBRANCH
	.dw PFA_NUMBER5
PFA_NUMBER2:
	.dw XT_2DROP
	.dw XT_DROP
	.dw XT_R_FROM
	.dw XT_DROP
        .dw XT_R_FROM
        .dw XT_BASE
        .dw XT_STORE
	.dw XT_ZERO
	.dw XT_EXIT
PFA_NUMBER1:
    .dw XT_2DROP ; remove the address
    ; incorporate sign into number
    .dw XT_R_FROM
    .dw XT_DOCONDBRANCH
    .dw PFA_NUMBER4
    .dw XT_NEGATE
PFA_NUMBER4:
    .dw XT_DOLITERAL
    .dw 1
PFA_NUMBER5:
    .dw XT_R_FROM
    .dw XT_BASE
    .dw XT_STORE
    .dw XT_TRUE
    .dw XT_EXIT

; ( addr len -- addr' len' ) 
; Numeric IO
; skip a numeric prefix character
;VE_PRAEFIX:
;    .dw $FF07 
;    .db "praefix",0
;    .dw VE_HEAD
;    .set VE_HEAD = VE_PRAEFIX
XT_PRAEFIX:
    .dw DO_COLON 
PFA_PRAEFIX:        ; ( adr1 len1 -- adr2 len2 ) 
    .dw XT_OVER 
    .dw XT_CFETCH 
    .dw XT_DUP 
    .dw XT_DOLITERAL
    .dw '$' 
    .dw XT_EQUAL 
    .dw XT_DOCONDBRANCH
    .dw PFA_SETBASE0
    .dw XT_HEX
    .dw XT_DOBRANCH
    .dw PFA_SETBASE_FOUND
PFA_SETBASE0:
    .dw XT_DUP 
    .dw XT_DOLITERAL
    .dw '%' 
    .dw XT_EQUAL 
    .dw XT_DOCONDBRANCH
    .dw PFA_SETBASE1 
    .dw XT_BIN
    .dw XT_DOBRANCH
    .dw PFA_SETBASE_FOUND
PFA_SETBASE1:
    .dw XT_DUP 
    .dw XT_DOLITERAL
    .dw '&'
    .dw XT_EQUAL 
    .dw XT_DOCONDBRANCH
    .dw PFA_SETBASE2 
    .dw XT_DECIMAL 
    .dw XT_DOBRANCH
    .dw PFA_SETBASE_FOUND
PFA_SETBASE2:
    .dw XT_DUP
    .dw XT_DOLITERAL
    .dw '#'
    .dw XT_EQUAL 
    .dw XT_DOCONDBRANCH
    .dw PFA_SETBASE3 
    .dw XT_DECIMAL 
PFA_SETBASE_FOUND:
    .dw XT_DROP
    .dw XT_DOLITERAL
    .dw 1
    .dw XT_SLASHSTRING
    .dw XT_EXIT
PFA_SETBASE3:
    .dw XT_DROP
    .dw XT_EXIT 

; (c -- ) Numeric IO
; R( -- )
; set the BASE value depending on the character
;VE_SETBASE:
;    .dw $FF07 
;    .db "setbase",0
;    .dw VE_HEAD
;    .set VE_HEAD = VE_SETBASE
XT_NUMBERSIGN:
    .dw DO_COLON 
PFA_NUMBERSIGN:        ; ( c -- ) 
    .dw XT_OVER
    .dw XT_CFETCH
    .dw XT_DOLITERAL
    .dw '+'
    .dw XT_EQUAL
    .dw XT_DOCONDBRANCH
    .dw PFA_NUMBERSIGN_MINUS
      .dw XT_DOLITERAL
      .dw 1
      .dw XT_SLASHSTRING
PFA_NUMBERSIGN_MINUS:
    .dw XT_OVER    ; ( -- addr len addr )
    .dw XT_CFETCH
    .dw XT_DOLITERAL
    .dw '-'
    .dw XT_EQUAL  ; ( -- addr len flag )
    .dw XT_DUP
    .dw XT_TO_R
    .dw XT_DOCONDBRANCH
    .dw PFA_NUMBERSIGN_PLUS
    .dw XT_DOLITERAL      ; skip sign character
    .dw 1
    .dw XT_SLASHSTRING
PFA_NUMBERSIGN_PLUS:
    .dw XT_R_FROM
    .dw XT_EXIT
