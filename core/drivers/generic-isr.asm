	;; ISR routines

#ifdef	INTQUE
	.equ INTSIZ = INTQUE
#else
	.equ INTSIZ = 8		;interrupts queue length
#endif

; Note:
	
; Clear hard interrupts overflow by: 0 int' c!
; Enclose critical sections by: int- ... int+
; Serve soft interrupts from critical section: INT*
; SPI / CAN interrupts auto disable

	.dseg
oSPDR:	.byte 1			;SPDR output buffer
iSPDR:	.byte 1			;SPDR input buffer
intbuf:	.byte INTSIZ+1		;\ last byte ALWAYS zero
intovf:	.byte 1			;⁭| int' @ lsb: hard interrupts overflow (0 | int vector)
intswi:	.byte 1			;/ int' @ msb: soft interrupts inhibit  (0< ≡ T=1 ≡ inhibit)
intvec:	.byte INTVECTORS * CELLSIZE

	.cseg
VE_oSPDR:
	.dw	$ff05
	.db	"oSPDR",0
	.dw	VE_HEAD
	.set	VE_HEAD = VE_oSPDR
XT_oSPDR:
	.dw	PFA_DOVARIABLE
PFA_oSPDR:
	.dw	oSPDR

VE_iSPDR:
	.dw	$ff05
	.db	"iSPDR",0
	.dw	VE_HEAD
	.set	VE_HEAD = VE_iSPDR
XT_iSPDR:
	.dw	PFA_DOVARIABLE
PFA_iSPDR:
	.dw	iSPDR

	.set	pc_ = pc
	.org	SPIaddr
	rcall	isrspi
	.org	pc_

	.macro	isrstx
	st	-Y, tosh
	st	-Y, tosl
	in_	tosh, SREG
	.endmacro

	.macro	isretx
	st	-Y, tosh	;push SREG
	st	-Y, zh
	st	-Y, zl
	.endmacro

isrspi:	isrstx			;SPIF cleared by interrupt
	in_	tosl, SPDR	;buffer i/o
	sts	iSPDR, tosl
	lds	tosl, oSPDR
	out_	SPDR, tosl
	cbi_	SPCR, SPIE, tosl ;disable SPI interrupts
	rjmp	isrcom
	
#ifdef	_CAN32DEF_INC_
#define	_CANDEF_
#endif
#ifdef	_CAN64DEF_INC_
#define	_CANDEF_
#endif
#ifdef	_CAN128DEF_INC_
#define	_CANDEF_
#endif

#ifdef	_CANDEF_
	.set	pc_ = pc
	.org	CANITaddr
	rcall	isrcan
	.org	pc_
	
isrcan:	isrstx			;CANIT not cleared by interrupt
	cbi_	CANGIE, ENIT, tosl ;disable CAN interrupts
	rjmp	isrcom  
#endif	
	
isr:	isrstx
	
isrcom:	pop	tosl		;rcall passes faddr+1
	pop	tosl		; big endian stored
	dec	tosl		;interrupt vector address
	
; crude yet efficient queue (input) if having low occupancy

	isretx
	
isrque:	ldiw	Z, intbuf
isrqin:	ld	tosh, Z+
	cpse	tosh, zerol
	rjmp	isrqin

	cpi	zl, low(intovf)	;last intbuf byte should stay zero
	brne	isrsav
	adiw	Z, 1		;overflow
isrsav:	st	-Z, tosl	;save interrupt vector
	ld	zl, Y+		;reverse isretx
	ld	zh, Y+
	ld	tosh, Y+
	out_	SREG, tosh	;reverse isrstx
	ld	tosl, Y+
	ld	tosh, Y+
	reti
