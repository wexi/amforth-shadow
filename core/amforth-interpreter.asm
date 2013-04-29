; the inner interpreter.

DO_COLON:
	push XH
	push XL			 ; PUSH IP
	movw XL, wl
	adiw xl, 1
DO_NEXT:
	brts DO_INTERRUPT
DO_NEXTT:
	movw zl, XL		   ; READ IP
	readflashcell wl, wh
	adiw XL, 1		  ; INC IP

DO_EXECUTE:
	movw zl, wl
	readflashcell temp0,temp1
	movw zl, temp0
	ijmp

DO_INTERRUPT:
	; here we deal with soft interrupts
	clt
	ldi	zl, low(intbuf)
	ldi	zh, high(intbuf)
	ld	temp0, z	; int prog addr
	
; crude yet efficient queue (output) if having low occupancy
	
.macro	out_buf
	ldd	temp1, z+@1
	std	z+@0, temp1
	tst	temp1
	breq out_cur
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
	out SREG, temp2		; restore I bit, T set if another swi pending
	ldi	zl, low(intvec)
	ldi	zh, high(intvec)
	add	zl, temp0
	adc	zh, temp1
	ld	wl, z+		; ISR IP
	ld	wh, z+

; all ISRs begin with a DO_COLON so why waste time. Also,
; if the ISR first word is int- it won't get interrupted.

	push XH			; DO_COLON action
	push XL
	movw XL, wl
	adiw XL, 1
	jmp_ DO_NEXTT
