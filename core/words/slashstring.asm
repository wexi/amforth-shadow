; ( addr1 u1 n -- addr2 u2 ) 
; String
; adjust string from addr1 to addr1+n, reduce length from u1 to u2 by n
VE_SLASHSTRING:
    .dw $ff07
    .db "/string",0
    .dw VE_HEAD
    .set VE_HEAD = VE_SLASHSTRING
XT_SLASHSTRING:
    .dw DO_COLON
PFA_SLASHSTRING:
    .dw XT_OVER    ; ( -- addr1 u1 n u1)
    .dw XT_MIN     ; ( -- addr1 u1 n|u1)
    .dw XT_ROT     ; ( -- u1 n addr1 )
    .dw XT_OVER    ; ( -- u1 n addr1 n)
    .dw XT_PLUS    ; ( -- u1 n addr2 )
    .dw XT_ROT     ; ( -- n addr2 u1)
    .dw XT_ROT     ; ( -- addr2 u1 n)
    .dw XT_MINUS   ; ( -- addr2 u2)
    .dw XT_EXIT

