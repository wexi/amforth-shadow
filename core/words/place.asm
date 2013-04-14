; ( addr1 len1 addr2 -- ) 
; String
; copy string as counted string
VE_PLACE:
    .dw $ff05
    .db "place",0
    .dw VE_HEAD
    .set VE_HEAD = VE_PLACE
XT_PLACE:
    .dw DO_COLON
PFA_PLACE:
    .dw XT_OVER        ; ( -- addr1 len1 addr2 len1)
    .dw XT_OVER        ; ( -- addr1 len1 addr2 len1 addr2)
    .dw XT_CSTORE      ; ( -- addr1 len1 addr2)
    .dw XT_1PLUS       ; ( -- addr1 len1 addr2')
    .dw XT_SWAP        ; ( -- addr1 addr2' len1)
    .dw XT_CMOVE_G     ; ( --- )
    .dw XT_EXIT
