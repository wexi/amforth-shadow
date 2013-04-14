; ( -- n2 ) 
; Extended VM
; Read memory pointed to by register B (Extended VM)
VE_BFETCH:
    .dw $ff02
    .db "b@"
    .dw VE_HEAD
    .set VE_HEAD = VE_BFETCH
XT_BFETCH:
    .dw PFA_BFETCH
PFA_BFETCH:
    savetos
    movw zl, bl
    ld tosl, Z+
    ld tosh, Z+
    jmp_ DO_NEXT

; ( n1 -- n2 )
; Extended VM
; Read memory pointed to by register B plus offset (Extended VM)
VE_NBFETCH:
    .dw $ff03
    .db "nb@",0
    .dw VE_HEAD
    .set VE_HEAD = VE_NBFETCH
XT_NBFETCH:
    .dw PFA_NBFETCH
PFA_NBFETCH:
    movw zl, bl
    add zl, tosl
    adc zh, tosh
    ld tosl, Z+
    ld tosh, Z+
    jmp_ DO_NEXT

; ( -- n )
; Extended VM
; Read memory pointed to by register B, increment B by 1 cell (Extended VM)
VE_BFETCHPLUS:
    .dw $ff03
    .db "b@+",0
    .dw VE_HEAD
    .set VE_HEAD = VE_BFETCHPLUS
XT_BFETCHPLUS:
    .dw PFA_BFETCHPLUS
PFA_BFETCHPLUS:
    savetos
    movw zl, bl
    ld tosl, Z+
    ld tosh, Z+
    movw bl, zl
    jmp_ DO_NEXT

; ( -- n )
; Extended VM
; Read memory pointed to by register B, decrement B by 1 cell (Extended VM)
VE_BFETCHMINUS:
    .dw $ff03
    .db "b@-",0
    .dw VE_HEAD
    .set VE_HEAD = VE_BFETCHMINUS
XT_BFETCHMINUS:
    .dw PFA_BFETCHMINUS
PFA_BFETCHMINUS:
    savetos
    movw zl, bl
    ld tosh, -Z
    ld tosl, -Z
    movw bl, zl
    jmp_ DO_NEXT

; ( n -- )
; Extended VM
; Write memory pointed to by register B (Extended VM)
VE_BSTORE:
    .dw $ff02
    .db "b!"
    .dw VE_HEAD
    .set VE_HEAD = VE_BSTORE
XT_BSTORE:
    .dw PFA_BSTORE
PFA_BSTORE:
    movw zl, bl
    st Z+, tosl
    st Z+, tosh
    loadtos
    jmp_ DO_NEXT

; ( n offs -- )
; Extended VM
; Write memory pointed to by register B plus offset (Extended VM)
VE_NBSTORE:
    .dw $ff03
    .db "nb!",0
    .dw VE_HEAD
    .set VE_HEAD = VE_NBSTORE
XT_NBSTORE:
    .dw PFA_NBSTORE
PFA_NBSTORE:
    movw zl, bl
    add zl, tosl
    adc zh, tosh
    loadtos
    st Z+, tosl
    st Z+, tosh
    loadtos
    jmp_ DO_NEXT

; ( -- n2 )
; Extended VM
; Write memory pointed to by register B, increment B by 1 cell (Extended VM)
VE_BSTOREPLUS:
    .dw $ff03
    .db  "b!+",0
    .dw VE_HEAD
    .set VE_HEAD = VE_BSTOREPLUS
XT_BSTOREPLUS:
    .dw PFA_BSTOREPLUS
PFA_BSTOREPLUS:
    movw zl, bl
    st Z+, tosl
    st Z+, tosh
    loadtos
    movw bl, zl
    jmp_ DO_NEXT

; ( -- n2 )
; Extended VM
; Write memory pointed to by register B, decrement B by 1 cell (Extended VM)
VE_BSTOREMINUS:
    .dw $ff03
    .db "b!-",0
    .dw VE_HEAD
    .set VE_HEAD = VE_BSTOREMINUS
XT_BSTOREMINUS:
    .dw PFA_BSTOREMINUS
PFA_BSTOREMINUS:
    movw zl, bl
    st -Z, tosh
    st -Z, tosl
    loadtos
    movw bl, zl
    jmp_ DO_NEXT



; ( n -- )
; Extended VM
; Write to B register (Extended VM)
VE_TO_B:
    .dw $ff02
    .db ">b"
    .dw VE_HEAD
    .set VE_HEAD = VE_TO_B
XT_TO_B:
    .dw PFA_TO_B
PFA_TO_B:
    movw bl, tosl
    loadtos
    jmp_ DO_NEXT

; ( n1 -- n2 )
; Extended VM
; read the B register (Extended VM)
VE_B_FROM:
    .dw $ff02
    .db "b>"
    .dw VE_HEAD
    .set VE_HEAD = VE_B_FROM
XT_B_FROM:
    .dw PFA_B_FROM
PFA_B_FROM:
    savetos
    movw tosl, bl
    jmp_ DO_NEXT

; for more information read
; http://www.complang.tuwien.ac.at/anton/euroforth/ef08/papers/pelc.pdf
;  adapted index based access from X/Y registers
;    note: offset is byte address, not cell!
