; ( addr n --  ) 
; Tools
; reads string from flash and prints it
	
;; \ Flash based string typing. This implementation allows passing intermediary
;; \ values on the D stack between calls (as needed when decoding utf-8).
;; : itype ( faddr len -- )
;;    dup 1 and >r  ( R: odd? ) 
;;    u2/ over +    ( faddr top-faddr )
;;    dup >r        ( R: odd? top-faddr )
;;    swap  ?do     ( D:  )
;;       i @i 255 and emit
;;       i @i >< 255 and emit
;;    loop
;;    r> r>  if
;;       @i 255 and emit
;;    else
;;       drop
;;    then  
;; ;

VE_ITYPE:
    .dw $ff05
    .db "itype",0
    .dw VE_HEAD
    .set VE_HEAD = VE_ITYPE
XT_ITYPE:
    .dw DO_COLON
PFA_ITYPE:
    .dw	XT_DUP
    .dw	XT_ONE
    .dw	XT_AND
    .dw	XT_TO_R
;
    .dw	XT_U2SLASH
    .dw	XT_OVER
    .dw	XT_PLUS
;
    .dw	XT_DUP
    .dw	XT_TO_R
;
    .dw	XT_SWAP
    .dw	XT_DOQDO
    .dw	PFA_ITYPE2
;
PFA_ITYPE1:
    .dw	XT_I
    .dw	XT_FETCHI
    .dw	XT_EMIT			;implementations (should) ignore high byte  
    .dw	XT_I
    .dw	XT_FETCHI
    .dw	XT_BYTESWAP
    .dw	XT_EMIT
;
    .dw	XT_DOLOOP
    .dw	PFA_ITYPE1
;
PFA_ITYPE2:
    .dw	XT_R_FROM
    .dw	XT_R_FROM
    .dw	XT_DOCONDBRANCH
    .dw	PFA_ITYPE3
    .dw	XT_FETCHI
    .dw	XT_EMIT
    .dw	XT_EXIT
;
PFA_ITYPE3:
    .dw	XT_DROP
    .dw	XT_EXIT
