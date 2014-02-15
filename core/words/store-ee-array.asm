; ( recn .. rec0 n ee-addr -- ) 
; Tools
; Write a list to EEPROM
VE_N_STORE_E:
    .dw $ff03
    .db "n!e",0
    .dw VE_HEAD
    .set VE_HEAD = VE_N_STORE_E
XT_N_STORE_E:
    .dw DO_COLON
PFA_N_STORE_E:
    .dw XT_2DUP
    .dw XT_STOREE ; ( -- i_n .. i_0 n e-addr )
    .dw XT_SWAP    
    .dw XT_ZERO
    .dw XT_DOQDO
    .dw PFA_N_STORE_E2
PFA_N_STORE_E1:
    .dw XT_CELLPLUS ; ( -- i_x e-addr )
    .dw XT_TUCK      ; ( -- e-addr i_x e-addr
    .dw XT_STOREE
    .dw XT_DOLOOP
    .dw PFA_N_STORE_E1
PFA_N_STORE_E2:
    .dw XT_DROP
    .dw XT_EXIT

