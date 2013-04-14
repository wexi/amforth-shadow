; ( addr +n1 -- +n2 ) 
; System
; receive a string of at most n1 characters at addr until n2 characters are reveived or cr/lf detected.
VE_ACCEPT:
    .dw $ff06
    .db "accept"
    .dw VE_HEAD
    .set VE_HEAD = VE_ACCEPT
XT_ACCEPT:
    .dw DO_COLON
PFA_ACCEPT:
    .dw XT_DUP        ; ( -- addr n1 n1)
    .dw XT_TO_R
    .dw XT_TO_R
PFA_ACCEPT1:          ; ( -- addr )
    .dw XT_KEY        ; ( -- addr k )
    .dw XT_DUP        ; ( -- addr k k )
    .dw XT_DOLITERAL
    .dw 10
    .dw XT_NOTEQUAL
    .dw XT_DOCONDBRANCH
    .dw PFA_ACCEPT2
    .dw XT_DUP
    .dw XT_DOLITERAL
    .dw 13
    .dw XT_NOTEQUAL
    .dw XT_DOCONDBRANCH
    .dw PFA_ACCEPT2
    ; check backspace
    .dw XT_DUP
    .dw XT_DOLITERAL
    .dw 8
    .dw XT_EQUAL
    .dw XT_DOCONDBRANCH
    .dw PFA_ACCEPT3
    ; delete previous character
    ; check beginning of line
    .dw XT_R_FROM             ; ( -- addr k n1 )
    .dw XT_R_FETCH            ; ( -- addr k n1 n2)
    .dw XT_OVER               ; ( -- addr k n1 n2 n1)
    .dw XT_TO_R
    .dw XT_EQUAL              ; ( -- addr k f )
    .dw XT_DOCONDBRANCH
    .dw PFA_ACCEPT5
    ; we are at the beginning of the line, ignore this character
    .dw XT_DROP               ; ( -- addr )
    .dw XT_DOBRANCH
    .dw PFA_ACCEPT1
PFA_ACCEPT5:
    .dw XT_DUP                ; ( -- addr k k )
    .dw XT_EMIT               ; ( -- addr k )
    .dw XT_SPACE              ; ( -- addr k )
    .dw XT_EMIT               ; ( -- addr )
    .dw XT_1MINUS             ; ( -- addr--)
    .dw XT_R_FROM
    .dw XT_1PLUS
    .dw XT_DOBRANCH
    .dw PFA_ACCEPT4
PFA_ACCEPT3:
    ; check for remaining control characters, replace them with blank
    .dw XT_DUP            ; ( -- addr k k )
    .dw XT_BL
    .dw XT_LESS
    .dw XT_DOCONDBRANCH
    .dw PFA_ACCEPT6
    .dw XT_DROP
    .dw XT_BL
PFA_ACCEPT6:
    ; emit the key
    .dw XT_DUP            ; ( -- addr k k)
    .dw XT_EMIT           ; ( -- addr k)
    ; now store the key
    .dw XT_OVER           ; ( -- addr k addr
    .dw XT_CSTORE         ; ( -- addr)
    .dw XT_1PLUS          ; ( -- addr++)
    .dw XT_R_FROM         ; ( -- addr n1)
    .dw XT_1MINUS         ; ( -- addr n1--)
PFA_ACCEPT4:
    .dw XT_DUP
    .dw XT_TO_R
    .dw XT_EQUALZERO
    .dw XT_DOCONDBRANCH
    .dw PFA_ACCEPT1
    .dw XT_DUP
PFA_ACCEPT2:
    .dw XT_DROP
    .dw XT_DROP
    .dw XT_R_FROM
    .dw XT_R_FROM
    .dw XT_SWAP
    .dw XT_MINUS
    .dw XT_CR
    .dw XT_EXIT

