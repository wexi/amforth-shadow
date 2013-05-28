\ adc routines

marker _adc_

hex

\ butterfly has a port to turn on/off peripheral power supply
PORTF  3 portpin: VCP
ADCSRA 7 portpin: ADEN
ADCSRA 7 portpin: ADCSCALER

ADCSRA 6 portpin: ADSC

\ adc channels
0 constant BF_TEMP
1 constant BF_VOLTAGE
2 constant BF_LIGHT

\ init adc subsystem
: +adc ( scaler channel -- )
    ADMUX c!          ( -- scaler )
    VCP pin_output   ( -- scaler )
    VCP high
    log2  2 max   \ lowest 3 bits but at least 2
    1 7 lshift or \ msb
    ADCSRA c!
;

\ turn off adc subsubsystem
: -adc ( -- )
    VCP low
;

\ wait until the adc is finished
: waitadc ( -- )
    begin
        ADCSRA c@ 
	[ hex ] 10 and
    until
;

\ fetch the value of the initialized adc channel
: adc@ ( -- adc )
    VCP pin_output ( -- )
    VCP high          ( -- )
    ADEN high         ( -- )
    ADSC high \ start converter
    waitadc         ( -- )
    0               ( -- 0 )
    8 0 do          ( -- n )
	ADSC high     ( -- n )
	waitadc     ( -- n )
	ADCL c@	ADCH c@ 8 lshift + ( -- n adc_i )   
	+           ( -- n )
    loop            ( -- n )
    3 rshift        ( -- adc )
    VCP low         ( -- adc )
;

decimal

 create bf_temps \ temperature list from -15 celsius to +60, taken directly from atmels sources
    
    ( -15 ) 923 , 917 , 911 , 904 , 898 , 
    ( -10 ) 891 , 883 , 876 , 868 , 860 , 
    (  -5 ) 851 , 843 , 834 , 825 , 815 , 
    (   0 ) 806 , 796 , 786 , 775 , 765 ,
    (   5 ) 754 , 743 , 732 , 720 , 709 ,
    (  10 ) 697 , 685 , 673 , 661 , 649 ,
    (  15 ) 636 , 624 , 611 , 599 , 586 , 
    (  20 ) 574 , 562 , 549 , 537 , 524 , 
    (  25 ) 512 , 500 , 488 , 476 , 464 , 
    (  30 ) 452 , 440 , 429 , 418 , 406 , 
    (  35 ) 396 , 385 , 374 , 364 , 354 , 
    (  40 ) 344 , 334 , 324 , 315 , 306 , 
    (  45 ) 297 , 288 , 279 , 271 , 263 , 
    (  50 ) 255 , 247 , 240 , 233 , 225 , 
    (  55 ) 219 , 212 , 205 , 199 , 193 ,
    (  60 ) 187 ,   0 ,

: bf_temp ( -- temp )
    [ decimal ] 128 BF_TEMP 
    +adc adc@ -adc
    [ decimal ] -16 >r
    bf_temps
    swap
    begin ( -- addr adc )
	r> 1+ >r
	over i@ ( -- addr adc tab )
	over    ( -- addr adc tab adc )
	<       ( -- addr adc f)
	rot 1+ rot rot ( -- addr+1 adc f)
    until
    drop
    drop
    r>
;

: bf_light ( -- light )
    128 BF_LIGHT 
    +adc adc@ -adc
;

: bf_voltage ( -- voltage )
    128 BF_VOLTAGE 
    +adc adc@ -adc
;
