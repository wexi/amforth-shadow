\ This program creates a pwm signal on OC1A/PD5 to
\ drive a standard servo with a pulse between 1ms and 2ms
\ every 20ms.  The pulse width is determined by the voltage
\ at the ADC0 pin (0-5 volts), which can be controlled by
\ a potentiometer.  The pulse starts at 1.5ms.  Entering pwn
\ allows the voltage to control the pulse.  Pressing any
\ key sets the pulse to 1.5ms, ceases control of the pulse,
\ and returns the ok prompt. 

\ Two useful words
\ or! ors value to contents of RAM address
: or! ( n addr -- ) dup c@ rot or swap c! ;
\ high! is like ! but writes high byte first!
: high! ( n addr -- ) over 8 rshift over 1+ c! c! ;
decimal

\ init ADC using AVCC and input on ADC0 and left adjust
\ ADMUX = (1<<REFS0)|(1<<ADLAR);
1 6 lshift
1 5 lshift or
ADMUX c!
\ enable ADC and prescale clock by 64 to 8MHz/64 = 125k
\ ADCSRA = (1<<ADEN)|(1<<ADPS2)|(1<<ADPS1);
1 7 lshift
1 2 lshift or
1 1 lshift or
ADCSR c!
\ volt reads the voltage at pin ADC0; 0 volts = 0, 5 volts = 255
: volt
	1 6 lshift
	ADCSR or!
	begin
		ADCSR c@
		1 6 lshift and
		0=
	until
	ADCH c@
;

\ PWM init
\ Initialize Timer1
\ Set OC1A/PD5 for output
1 5 lshift
DDRD or!
\ Set TOP to 10000 This is based on a prescale factor of 8
\ and a clock frequency of 8000000.
10000 ICR1L high!
\ Phase correct PWM mode, OC1A high on down match
\  CLK/8 prescaler
\ TCCR1A = (1<<COM1A1)|(1<<WGM11);
1 7 lshift
1 1 lshift or
TCCR1A c!
\ TCCR1B = (1<<WGM13)|(1<<CS11);
1 4 lshift
1 1 lshift or
TCCR1B c!
\ Sets the compare value for a 1.5ms pulse
750 OCR1AL high!
\ pwm continuously adjusts the timer compare value based on volt
\ 
\ keypress terminates
: pwm
	begin
		250 volt min
		1 lshift
		500 +
		OCR1AL high!
		rx0?
	until
	rx0
	drop
	750 OCR1AL high!
;
