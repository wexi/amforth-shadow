\ Partname: ATmega32HVB
\ generated automatically


\ Interrupts
&2  constant BPINTAddr \ Battery Protection Interrupt
&4  constant VREGMONAddr \ Voltage regulator monitor interrupt
&6  constant INT0Addr \ External Interrupt Request 0
&8  constant INT1Addr \ External Interrupt Request 1
&10  constant INT2Addr \ External Interrupt Request 2
&12  constant INT3Addr \ External Interrupt Request 3
&14  constant PCINT0Addr \ Pin Change Interrupt 0
&16  constant PCINT1Addr \ Pin Change Interrupt 1
&18  constant WDTAddr \ Watchdog Timeout Interrupt
&20  constant BGSCDAddr \ Bandgap Buffer Short Circuit Detected
&22  constant CHDETAddr \ Charger Detect
&24  constant TIMER1_ICAddr \ Timer 1 Input capture
&26  constant TIMER1_COMPAAddr \ Timer 1 Compare Match A
&28  constant TIMER1_COMPBAddr \ Timer 1 Compare Match B
&30  constant TIMER1_OVFAddr \ Timer 1 overflow
&32  constant TIMER0_ICAddr \ Timer 0 Input Capture
&34  constant TIMER0_COMPAAddr \ Timer 0 Comapre Match A
&36  constant TIMER0_COMPBAddr \ Timer 0 Compare Match B
&38  constant TIMER0_OVFAddr \ Timer 0 Overflow
&40  constant TWIBUSCDAddr \ Two-Wire Bus Connect/Disconnect
&42  constant TWIAddr \ Two-Wire Serial Interface
&44  constant SPI_STCAddr \ SPI Serial transfer complete
&46  constant VADCAddr \ Voltage ADC Conversion Complete
&48  constant CCADC_CONVAddr \ Coulomb Counter ADC Conversion Complete
&50  constant CCADC_REG_CURAddr \ Coloumb Counter ADC Regular Current
&52  constant CCADC_ACCAddr \ Coloumb Counter ADC Accumulator
&54  constant EE_READYAddr \ EEPROM Ready
&56  constant SPMAddr \ SPM Ready
