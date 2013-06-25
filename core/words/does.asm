; ( i*x -- j*y ) (R: nest-sys1 -- ) (C: colon-sys1 -- colon-sys2 )
; Compiler
; organize the XT replacement to call other colon code
VE_DOES:
    .dw $0005
    .db "does>",0
    .dw VE_HEAD
    .set VE_HEAD = VE_DOES
XT_DOES:
    .dw DO_COLON
PFA_DOES:
    .dw XT_COMPILE
    .dw XT_DODOES
    .dw XT_COMPILE  ; create a code snippet to be used in an embedded XT
    .dw $940e       ; the address of this compiled
    .dw XT_COMPILE  ; code will replace the XT of the 
    .dw DO_DODOES   ; word that CREATE created
    .dw XT_EXIT     ; 

DO_DODOES: ; ( -- PFA )
    savetos
    movw tosl, wl
    adiw tosl, 1
    ; the following takes the address from a real uC-call
.if (pclen==3)
    pop wh ; some 128K Flash devices use 3 cells for call/ret
.endif
    pop wh
    pop wl

    push XH
    push XL
    movw XL, wl
    jmp_ DO_NEXT

; ( -- )
; System
; replace the XT written by CREATE to call the code that follows does>
VE_DODOES:
  .dw $ff07
  .db "(does>)",0
  .dw VE_HEAD
  .set VE_HEAD = VE_DODOES
XT_DODOES:
    .dw DO_COLON
PFA_DODOES:
    .dw XT_R_FROM
    .dw XT_DOLITERAL
    .dw COLON_SMUDGE+2
    .dw XT_FETCH		;last create wid
    .dw XT_FETCHE
    .dw XT_NFA2LFA
    .dw XT_1PLUS   ; lfa>xt

    .dw XT_STOREI
    .dw XT_EXIT
