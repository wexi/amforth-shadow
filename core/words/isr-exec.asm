; ( xt -- ) 
; Interrupt
; executes an interrupt service routine
;VE_ISREXEC:
;    .dw $ff08
;    .db "isr-exec"
;    .dw VE_HEAD
;    .set VE_HEAD = VE_ISREXEC
XT_ISREXEC:
    .dw DO_COLON
PFA_ISREXEC:
    .dw XT_DOLITERAL
    .dw intbuf
    .dw XT_CFETCH
    .dw XT_DOLITERAL		; intbuf+1 intbuf 8 cmove, consider
    .dw intbuf+1		; replacing by asm code...
    .dw XT_DOLITERAL
    .dw intbuf+0
    .dw XT_DOLITERAL
    .dw 8
    .dw XT_CMOVE
    .dw XT_DOLITERAL
    .dw intvec
    .dw XT_PLUS
    .dw XT_FETCH
    .dw XT_SWITT		; test for pending soft interrupts
    .dw XT_EXECUTE
    .dw XT_EXIT

; soft interrupts test
XT_SWITT:
    .dw PFA_SWITT

; ( -- addr )
; Interrupt
; Address of Soft Interrupts Status & Control Variable
; lo: nz is overflow mark (= prog addr), hi: nz is inhibit 
VE_INTAPO:			; soft interrupts apostrophe
    .dw $ff04
    .db "int'"
    .dw VE_HEAD
    .set VE_HEAD = VE_INTAPO
XT_INTAPO:
    .dw PFA_DOVARIABLE
PFA_INTAPO:
    .dw intovf

; ( --  )  
; Interrupt
; soft interrupts enable
VE_SWIEN:
    .dw $ff04
    .db "int+"
    .dw VE_HEAD
    .set VE_HEAD = VE_SWIEN
XT_SWIEN:
    .dw PFA_SWIEN
PFA_SWIEN:
    sts intswi, zerol
PFA_SWITT:
    lds zl, intbuf
    tst zl
    breq PFA_SWIEN1
    set				; set soft interrupts flag
PFA_SWIEN1:
    jmp_ DO_NEXTT		;don't test for SWI
	
; ( --  )  
; Interrupt
; soft interrupts disable
VE_SWIDI:
    .dw $ff04
    .db "int-"
    .dw VE_HEAD
    .set VE_HEAD = VE_SWIDI
XT_SWIDI:
    .dw PFA_SWIDI
PFA_SWIDI:
    ldi zl, 255
    sts intswi, zl		; inhibit
    clt				; reset soft interrupts flag
    jmp_ DO_NEXTT		; no need to test for SWI
