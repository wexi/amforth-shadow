; ( n1 -- flag ) 
; Compare
; true if n1 is greater than 0
VE_GREATERZERO:
    .dw $ff02
    .db "0>"
    .dw VE_HEAD
    .set VE_HEAD = VE_GREATERZERO
XT_GREATERZERO:
    .dw PFA_GREATERZERO
PFA_GREATERZERO:
    cp tosl, zerol
    cpc tosh, zeroh
    rjmp PFA_GREATERDONE
