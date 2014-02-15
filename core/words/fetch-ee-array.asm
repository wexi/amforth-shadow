; ( ee-addr n -- itemn .. item0) 
; Tools
; Get an array from EEPROM
VE_N_FETCH_E:
    .dw $ff03
    .db "n@e",0
    .dw VE_HEAD
    .set VE_HEAD = VE_N_FETCH_E
XT_N_FETCH_E:
    .dw DO_COLON
PFA_N_FETCH_E:
    .dw XT_ZERO
    .dw XT_SWAP    ; go from bigger to smaller addresses
    .dw XT_DOQDO
    .dw PFA_N_FETCH_E2
PFA_N_FETCH_E1:
    ; ( ee-addr )
    .dw XT_I
    .dw XT_1MINUS
    .dw XT_CELLS ; ( -- ee-addr i*2 )
    .dw XT_OVER  ; ( -- ee-addr i*2 ee-addr )
    .dw XT_PLUS  ; ( -- ee-addr ee-addr+i
    .dw XT_FETCHE ;( -- ee-addr item_i )
    .dw XT_SWAP   ;( -- item_i ee-addr )
    .dw XT_TRUE  ; shortcut for -1
    .dw XT_DOPLUSLOOP
    .dw PFA_N_FETCH_E1
PFA_N_FETCH_E2:
    .dw XT_2DROP
    .dw XT_EXIT

