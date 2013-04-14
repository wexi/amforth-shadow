\ 2011-03-06  EW
\ test arduino duemilanove + danger shield

\ hw layout
\ arduino | atmega328p                | danger shield
\      D0 |        PD0   rx	      | 
\      D1 |        PD1   tx	      |
\      D2 |        PD2   int0	      |
\      D3 |        PD3   int1  oc2b   |   bz      (buzzer)
\      D4 |        PD4   t0	      |   sr_in   (shift register DS)
\      D5 |        PD5   t1    oc0b   |   led1
\      D6 |        PD6         oc0a   |   led2
\      D7 |        PD7		      |   sr_latch (shift register /OE)
\ 				      |
\      D8 |        PB0    icp	      |   sr_clk  (shift register SH_CP)
\      D9 |        PB1         oc1a   |
\     D10 |        PB2    /ss  oc1b   |   sw1     (switch)
\     D11 |        PB3    mosi oc2a   |   sw2     (switch)
\     D12 |        PB4    miso	      |   sw3     (switch)
\     D13 |        PB5    sck	      |
\ 				      |
\      A0 |        PC0    adc0	      |   sl3     (slider)
\      A1 |        PC1    adc1	      |   sl2     (slider)
\      A2 |        PC2    adc2	      |   sl1     (slider)
\      A3 |        PC3    adc3	      |   light   (photo cell)
\      A4 |        PC4    adc4  scl   |   temp    (temperature)
\      A5 |        PC5    adc5  sda   |   knock   (buzzer 2)

\ make marker

marker --start--

decimal

PORTB 2 portpin: sw1
PORTB 3 portpin: sw2
PORTB 4 portpin: sw3

PORTD 5 portpin: led1
PORTD 6 portpin: led2

PORTD 3 portpin: bz

PORTC 2 portpin: sl1
PORTC 1 portpin: sl2
PORTC 0 portpin: sl3

PORTC 3 portpin: photocell
PORTC 4 portpin: thermometer
PORTC 5 portpin: knocksensor

PORTD 4 portpin: sr_in
PORTD 7 portpin: sr_oe \ output enable
PORTB 0 portpin: sr_cl

variable 1delay  20 1delay !
: msg_quit
  ." press switch 1 (D10) to quit" cr
;


\ --- switches -----------------------------------------------
: sw1?
  sw1 pin_low? if
    20 ms \ very simple debounce
    sw1 pin_low? if
      -1
    else
      0
    then
  else
    0
  then
;

\ --- buzzer -------------------------------------------------

\ 2 ms T_period =^= 500 Hz
: buzz ( cycles -- )
  0 ?do bz low 1ms bz high 1ms loop
;

\ --- analog digital converter -------------------------------
\ --- adc ---

: or!   dup c@ rot or swap c! ;

\ pin>pos
\     convert bitmask of portpin: back to value (bitposition)
: pin>pos       ( pinmask portaddr -- pos )
  drop          ( -- pinmask )
  log2          ( -- pos_of_most_significant_bit )
;

: adc.init ( -- )
  \ ADMUX
  \ A_ref is NOT connected externally
  \ ==> need to set bit REFS0 in register ADMUX
  [ 1 5 lshift      \ ADLAR
    1 6 lshift or   \ REFS0
  ] literal ADMUX c!
  \ ADCSRA
  [ 1 7 lshift      \ ADEN   ADC enabled
    1 2 lshift or   \ ADPS2  prescaler = 128
    1 1 lshift or   \ ADPS1  .
    1          or   \ ADPS0  .
  ] literal ADCSRA c!
;
: adc.init.pin ( bitmask portaddr -- )
  over over high
  pin_input
;
  
1 6 lshift constant ADSC_MSK \ ADStartConversion bitmask
: adc.start
  \ start conversion
  ADSC_MSK ADCSRA or!
;
: adc.wait
  \ wait for completion of conversion
  begin
    ADCSRA c@ ADSC_MSK and 0=
  until
;
: adc.channel! ( channel -- )
  7 and                 \ clip channel to 0..7
  ADMUX c@ 7 invert and \ read ADMUX, clear old channel
  or                    \ add new channel
  ADMUX c!              \ write
;
: adc.get10 ( channel -- a )
  adc.channel! adc.start adc.wait
\ 10 bit
  ADCL c@
  ADCH c@ 8 lshift + 6 rshift
;
: adc.get ( channel -- a )
  adc.channel! adc.start adc.wait
\ 8 bit
  ADCH c@
;

\ --- shift register -----------------------------------------

\ --- shift register ---

: bit>sr ( bit -- )
  if sr_in high else sr_in low then
  sr_cl high noop sr_cl low noop
;

: get.bit ( byte pos -- bit )
  1 swap lshift    \ -- byte bitmask
  and              \ -- bit
;

\ clock one byte out, MSB first!
: byte>sr ( byte -- )
  8 0 do
    dup 7 i -  \ 7 6 5 ... 0: MSB first!
    get.bit
    bit>sr
  loop
  drop
;

: >7seg
  invert
  byte>sr
  sr_oe low noop sr_oe high
;


create HexDigits
$3f ,  \ 0
$06 ,  \ 1
$5b ,  \ 2
$4f ,  \ 3
$66 ,  \ 4
$6d ,  \ 5
$7d ,  \ 6
$07 ,  \ 7
$7f ,  \ 8
$6f ,  \ 9
$77 ,  \ A
$7c ,  \ b
$58 ,  \ c
$5e ,  \ d
$79 ,  \ E
$71 ,  \ F

$80 constant dec.point
: emit.7seg ( n -- )
  dup 0 $F within if
    HexDigits + i@ >7seg
  else
    drop
  then
;

\ --- convert thermometer reading --------------------------

: >T
  51 -
  100 256 */
  25 +
;

: .T
  thermometer pin>pos adc.get dup . space >T . cr
;


\ --- test functions ---------------------------------------
: test_switches
  ." press switch 2,3 to light up led 1,2" cr
  msg_quit

  begin
    sw2 pin_low? if led1 high else led1 low then
    sw3 pin_low? if led2 high else led2 low then
  sw1? until
;

: test_buzzer
  ." press switch 2 (D11) to test buzzer" cr
  msg_quit
  begin
    sw2 pin_low? if 500 buzz then
  sw1? until
;

: test_sliders
  ." move sliders" cr
  msg_quit
  begin
    sl1 pin>pos adc.get 4 u0.r space space
    sl2 pin>pos adc.get 4 u0.r space space
    sl3 pin>pos adc.get 4 u0.r    $0d emit
    1delay @ ms
  sw1? until
  cr
;

: test_photocell
  ." light/shadow photocell" cr
  msg_quit
  begin
    photocell pin>pos adc.get 4 u0.r    $0d emit
    1delay @ ms
  sw1? until
  cr
;

: test_thermometer
  ." warm/cool thermometer" cr
  msg_quit
  begin
    thermometer pin>pos adc.get 4 u0.r    $0d emit
    1delay @ ms
  sw1? until
  cr
;


: test_bits.7seg
  8 0 do
    1 i lshift >7seg
    500 ms
  loop
;
: test_emit.7seg
  $10 0 do
    i emit.7seg
    500 ms
  loop
;
: test_7seg
  ." show single segments on 7seg" cr
  test_bits.7seg
  1000 ms
  ." show hex numbers on 7seg" cr
  test_emit.7seg
  1000 ms
;

\ --- main: init, run --------------------------------------
: init
  20 1delay !

  led1 pin_output
  led2 pin_output
  bz   pin_output

  sw1  pin_input
  sw2  pin_input
  sw3  pin_input

  adc.init
  sl1 adc.init.pin
  sl2 adc.init.pin
  sl3 adc.init.pin
  photocell adc.init.pin
  thermometer adc.init.pin
  knocksensor adc.init.pin

  sr_in high sr_in pin_output
  sr_oe high sr_oe pin_output
  sr_cl low  sr_cl pin_output
  $ff >7seg
;


\ --- pwm: timer/counter0, led1,2 ---
\ D5 | PD5  t1  oc0b | led1
\ D6 | PD6      oc0a | led2
\ timer/counter0
\ fast pwm mode
\ TCCR0A bits
\ .  COM0A[1,0] = 1,0    (non inverted mode)
\ .  COM0B[1,0] = 1,0    (non inverted mode)
\ .  WGM0[1,0]  = 1,1    (mode3: fast pwm)
\ TCCR0B bits
\ .  CS[2,1,0]  = 0,1,1  (clk_io/64)

\ TIMSK0 TIFR0 TCNT0 TCCR0B TCCR0A OCR0B OCR0A

: pwm.leds.init
  0 TCNT0 c! \ clear counter
  led1 high led1 pin_output
  led2 high led2 pin_output
  \ TCCR0A = COM0A1 | COM0B1 | WGM01 | WGM00
  %10100011 TCCR0A c!
  \ TCCR0B = CS1 | CS0
  %00000011 TCCR0B c!
;
\ control brightness via registers
\ OCR0A  (D6)
\ OCR0B  (D5)

variable pwm5
variable pwm6
: test_leds_pwm
  pwm.leds.init
  0   pwm5 !
  $ff pwm6 !
  begin
    pwm5 @ 1+ $00ff and dup pwm5 ! OCR0B c!
    pwm6 @ 1- $00ff and dup pwm6 ! OCR0A c!
    10 ms
  key? until
  
;

: test_leds_pwm_slider
  pwm.leds.init
  \ adc.init
  \ sl1 adc.init.pin
  \ sl2 adc.init.pin
  begin
    sl1 pin>pos adc.get  OCR0B c!
    sl2 pin>pos adc.get  OCR0A c!
    1 ms
  key? until 
;  


\ --- pwm: timer/counter2, buzzer ---
\ D3 | PD3 int1 oc2b | bz

\ timer/counter2
\ clear timer on compare match, ctc mode
\ TCCR2A bits
\ .  COM2B[1,0] = 0,1    (non inverted mode)
\ .  WGM2[1,0]  = 1,0    (mode2: ctc)
\ TCCR2B bits
\ .  CS[2,1,0]  = 1,1,1  (clk_t2s/256)

\ TIMSK0 TIFR0 TCNT0 TCCR0B TCCR0A OCR0B OCR0A

: pwm.bz.init
  0 TCNT2 c! \ clear counter
  bz high bz pin_output

  \ TCCR2A =  COM0B0 | WGM01 
  %00010010 TCCR2A c!
  \ TCCR2B = CS1 | CS0
  %00000110 TCCR0B c!
;
\ control frequency via register
\ OCR2A

: test_bz_pwm
  pwm.bz.init
  $20 OCR2A c!  200 ms
  $30 OCR2A c!  200 ms
  $40 OCR2A c!  200 ms
  $0  OCR2A c!
;


\ --- --- ---

variable state
8 constant max_state

: run

  init
  0 state !

  ." press switch 1 (D10) for next test" cr
  begin

    sw1? if
      state @ 1+
      dup max_state > if drop 0 then 
      dup state !
      . cr
    then

\   state @ 0 =   ( do nothing )

    state @ 1 = if test_switches    then
    state @ 2 = if test_buzzer      then
    state @ 3 = if test_sliders     then
    state @ 4 = if test_photocell   then
    state @ 5 = if test_thermometer then
    state @ 6 = if test_7seg  1 state +! then

    \ wait some
    1delay @ 5 * ms

  key? until
;

\ fin
