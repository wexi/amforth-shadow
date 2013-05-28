; ( ee-addr -- itemn .. item0 n) 
; Tools
; Get an array from EEPROM
VE_FETCH_EE_ARRAY:
    .dw $ff04
    .db "@e[]"
    .dw VE_HEAD
    .set VE_HEAD = VE_FETCH_EE_ARRAY
XT_FETCH_EE_ARRAY:
    .dw DO_COLON
PFA_FETCH_EE_ARRAY:
    .dw XT_DUP
    .dw XT_FETCHE
    .dw XT_TO_R    ; save the counter to r-stack
    .dw XT_R_FETCH
    .dw XT_ZERO
    .dw XT_SWAP    ; go from bigger to smaller addresses
    .dw XT_DOQDO
    .dw PFA_FETCH_EE_ARRAY2
PFA_FETCH_EE_ARRAY1:
    ; ( ee-addr )
    .dw XT_I
    .dw XT_CELLS ; ( -- ee-addr i*2 )
    .dw XT_OVER  ; ( -- ee-addr i*2 ee-addr )
    .dw XT_PLUS  ; ( -- ee-addr ee-addr+i
    .dw XT_FETCHE ;( -- ee-addr item_i )
    .dw XT_SWAP   ;( -- item_i ee-addr )
    .dw XT_TRUE  ; shortcut for -1
    .dw XT_DOPLUSLOOP
    .dw PFA_FETCH_EE_ARRAY1
PFA_FETCH_EE_ARRAY2:
    .dw XT_DROP
    .dw XT_DROP
    .dw XT_R_FROM ; get the counter from r-stack
    .dw XT_EXIT

