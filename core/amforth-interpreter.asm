; the inner interpreter.

DO_COLON:
	push xh
	push xl			; PUSH IP
	movw xh:xl, wh:wl
	adiw xh:xl, 1
DO_NEXT:
	brts DO_INTERRUPT
DO_NEXTT:
	movw zh:zl, xh:xl	; READ IP
	readflashcell wl, wh
	adiw xh:xl, 1		; INC IP

DO_EXECUTE:
	movw zh:zl, wh:wl
	readflashcell temp0,temp1
	movw zh:zl, temp1:temp0
	ijmp

DO_INTERRUPT:
	; here we deal with soft interrupts
	clt
	ldiw	z, intbuf
	ld	temp0, z	; int prog addr
	
; crude yet efficient queue (output) if having low occupancy
	
.macro	out_buf
	ldd	temp1, z+@1
	std	z+@0, temp1
	tst	temp1
	breq 	out_cur
.endmacro

	in temp2, SREG		; save unknown I-bit
	cli			; no hard int-s when handling queue
	out_buf 0,1
	ori	temp2, $40	; set T bit pos to interrupt forth
	out_buf 1,2
	out_buf 2,3
	out_buf 3,4
	out_buf 4,5
	out_buf 5,6
	out_buf 6,7
	out_buf 7,8		; intbuf+8 always zero

out_cur:
	out 	SREG, temp2	; restore I bit, T set if another swi pending
	ldiw	z, intvec
	add	zl, temp0
	adc	zh, temp1
	ld	wl, z+		; ISR IP
	ld	wh, z+

; NOTE: If the ISR first word is INT- the ISR won't be (soft) interruptible!

	push	xh		; save return IP
	push	xl
	push	uph		; save current user area
	push	upl
	ldiw	z, ram_user1
	movw	uph:upl, zh:zl	; ISRs use default user rea
	ldiw	x, DO_UP_RESTORE
	push	xh
	push	xl
	movw	xh:xl, wh:wl
	adiw	xh:xl, 1	; skip the ISR's DO_COLON
	jmp_	DO_NEXTT	; see NOTE
;
DO_UP_RESTORE:
	.dw	XT_IEXIT
;
XT_IEXIT:			; Interrupt EXIT
	_pfa_
	pop	upl		; restore user area
	pop	uph
	pop	xl
	pop	xh
	jmp_	DO_NEXT
