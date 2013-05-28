; ( -- n2 ) 
; Extended VM
; Read memory pointed to by register A (Extended VM)
VE_AFETCH:
    .dw $ff02
    .db "a@"
    .dw VE_HEAD
    .set VE_HEAD = VE_AFETCH
XT_AFETCH:
    .dw PFA_AFETCH
PFA_AFETCH:
    savetos
    movw zl, al
    ld tosl, Z+
    ld tosh, Z+
    jmp_ DO_NEXT

; ( n1 -- n2 )
; Extended VM
; Read memory pointed to by register A plus offset (Extended VM)
VE_NAFETCH:
    .dw $ff03
    .db "na@",0
    .dw VE_HEAD
    .set VE_HEAD = VE_NAFETCH
XT_NAFETCH:
    .dw PFA_NAFETCH
PFA_NAFETCH:
    movw zl, al
    add zl, tosl
    adc zh, tosh
    ld tosl, Z+
    ld tosh, Z+
    jmp_ DO_NEXT

; ( -- n ) 
; Extended VM
; Read memory pointed to by register A, increment A by 1 cell (Extended VM)
VE_AFETCHPLUS:
    .dw $ff03
    .db "a@+",0
    .dw VE_HEAD
    .set VE_HEAD = VE_AFETCHPLUS
XT_AFETCHPLUS:
    .dw PFA_AFETCHPLUS
PFA_AFETCHPLUS:
    savetos
    movw zl, al
    ld tosl, Z+
    ld tosh, Z+
    movw al, zl
    jmp_ DO_NEXT

; ( -- n )
; Extended VM
; Read memory pointed to by register A, decrement A by 1 cell (Extended VM)
VE_AFETCHMINUS:
    .dw $ff03
    .db "a@-",0
    .dw VE_HEAD
    .set VE_HEAD = VE_AFETCHMINUS
XT_AFETCHMINUS:
    .dw PFA_AFETCHMINUS
PFA_AFETCHMINUS:
    savetos
    movw zl, al
    ld tosh, -Z  ; TODO: check byte order!! 
    ld tosl, -Z
    movw al, zl
    jmp_ DO_NEXT

; ( n -- )
; Extended VM
; Write memory pointed to by register A (Extended VM)
VE_ASTORE:
    .dw $ff02
    .db "a!"
    .dw VE_HEAD
    .set VE_HEAD = VE_ASTORE
XT_ASTORE:
    .dw PFA_ASTORE
PFA_ASTORE:
    movw zl, al
    st Z+, tosl
    st Z+, tosh
    loadtos
    jmp_ DO_NEXT

; ( n offs -- )
; Extended VM
; Write memory pointed to by register A plus offset (Extended VM)
VE_NASTORE:
    .dw $ff03
    .db "na!",0
    .dw VE_HEAD
    .set VE_HEAD = VE_NASTORE
XT_NASTORE:
    .dw PFA_NASTORE
PFA_NASTORE:
    movw zl, al
    add zl, tosl
    adc zh, tosh
    loadtos
    st Z+, tosl
    st Z+, tosh
    loadtos
    jmp_ DO_NEXT

; ( -- n2 )
; Extended VM
; Write memory pointed to by register A, increment A by 1 cell (Extended VM)
VE_ASTOREPLUS:
    .dw $ff03
    .db "a!+",0
    .dw VE_HEAD
    .set VE_HEAD = VE_ASTOREPLUS
XT_ASTOREPLUS:
    .dw PFA_ASTOREPLUS
PFA_ASTOREPLUS:
    movw zl, al
    st Z+, tosl
    st Z+, tosh
    loadtos
    movw al, zl
    jmp_ DO_NEXT

; ( -- n2 )
; Extended VM
; Write memory pointed to by register A, decrement A by 1 cell (Extended VM)
VE_ASTOREMINUS:
    .dw $ff03
    .db "a!-",0
    .dw VE_HEAD
    .set VE_HEAD = VE_ASTOREMINUS
XT_ASTOREMINUS:
    .dw PFA_ASTOREMINUS
PFA_ASTOREMINUS:
    movw zl, al
    st -Z, tosh
    st -Z, tosl
    loadtos
    movw al, zl
    jmp_ DO_NEXT



; ( n -- )
; Extended VM
; Write to A register (Extended VM)
VE_TO_A:
    .dw $ff02
    .db ">a"
    .dw VE_HEAD
    .set VE_HEAD = VE_TO_A
XT_TO_A:
    .dw PFA_TO_A
PFA_TO_A:
    movw al, tosl
    loadtos
    jmp_ DO_NEXT

; ( n1 -- n2 ) 
; Extended VM
; read the A register (Extended VM)
VE_A_FROM:
    .dw $ff02
    .db "a>"
    .dw VE_HEAD
    .set VE_HEAD = VE_A_FROM
XT_A_FROM:
    .dw PFA_A_FROM
PFA_A_FROM:
    savetos
    movw tosl, al
    jmp_ DO_NEXT

; for more information read
; http://www.complang.tuwien.ac.at/anton/euroforth/ef08/papers/pelc.pdf
;  adapted index based access from X/Y registers
;    note: offset is byte address, not cell!
