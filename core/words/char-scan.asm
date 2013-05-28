; ( addr1 n1 c -- addr1 n2 ) 
; String
; Scan string at addr1/n1 for the first occurance of c, leaving addr1/n2, char at n2 is first non-c character
VE_CSCAN:
    .dw $ff05
    .db "cscan",0
    .dw VE_HEAD
    .set VE_HEAD = VE_CSCAN
XT_CSCAN:
    .dw DO_COLON
PFA_CSCAN:
    .dw XT_SWAP         ; ( -- addr1 c n1 )
    .dw XT_DUP          ; ( -- addr1 c n1 n1)
    .dw XT_TO_R         ; ( -- addr1 c n1)
    .dw XT_ZERO         ; ( -- addr1 c n1 0)
    .dw XT_DOQDO        ; ( -- addr1 c)
    .dw PFA_CSCAN3
PFA_CSCAN1:
    .dw XT_OVER         ; ( -- addr1 c addr1 )
    .dw XT_I            ; ( -- addr1 c addr1 i)
    .dw XT_PLUS         ; ( -- addr1 c addr')
    .dw XT_CFETCH       ; ( -- addr1 c c')
    .dw XT_OVER         ; ( -- addr1 c c' c)
    .dw XT_EQUAL        ; ( -- addr1 c f)
    .dw XT_DOCONDBRANCH ; ( -- addr1 c)
    .dw PFA_CSCAN2
    .dw XT_DROP         ; ( -- addr1 )
    .dw XT_I            ; ( -- addr1 n2)
    .dw XT_UNLOOP       ; ( -- addr1 n2)
    .dw XT_R_FROM       ; ( -- addr1 n2 n1)
    .dw XT_DROP         ; ( -- addr1 n2)
    .dw XT_EXIT
PFA_CSCAN2:
    .dw XT_DOLOOP
    .dw PFA_CSCAN1      ; ( -- addr1 c)
PFA_CSCAN3:
    .dw XT_DROP         ; ( -- addr1)
    .dw XT_R_FROM       ; ( -- addr1 n1)
    .dw XT_EXIT
