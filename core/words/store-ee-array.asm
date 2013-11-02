; ( recn .. rec0 n ee-addr -- ) 
; Tools
; Write a list to EEPROM
VE_STORE_EE_ARRAY:
    .dw $ff04
    .db "!e[]"
    .dw VE_HEAD
    .set VE_HEAD = VE_STORE_EE_ARRAY
XT_STORE_EE_ARRAY:
    .dw DO_COLON
PFA_STORE_EE_ARRAY:
    .dw XT_2DUP
    .dw XT_STOREE ; ( -- i_n .. i_0 n e-addr )
    .dw XT_SWAP    
    .dw XT_ZERO
    .dw XT_DOQDO
    .dw PFA_STORE_EE_ARRAY2
PFA_STORE_EE_ARRAY1:
    .dw XT_CELLPLUS ; ( -- i_x e-addr )
    .dw XT_SWAP
    .dw XT_OVER      ; ( -- e-addr i_x e-addr
    .dw XT_STOREE
    .dw XT_DOLOOP
    .dw PFA_STORE_EE_ARRAY1
PFA_STORE_EE_ARRAY2:
    .dw XT_DROP
    .dw XT_EXIT

