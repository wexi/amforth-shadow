\ basic twi/I2C operations, uses 7bit bus addresses

\ requires
\   in the application master file
\  .set WANT_TWI = 1
\ or use of the amforth shell
\
\ provides
\  twi.init          -- initialize TWI subsystem
\  twi.init.default  -- some default settings
\  twi.off           -- turns off TWI subsystem
\
\  twi.wait          -- wait for the current TWI transaction
\  twi.start         -- send start condition
\  twi.stop          -- send stop condition
\  twi.tx            -- send one byte
\  twi.rx            -- receive one byte with ACK
\  twi.rxn           .. receive one byte with NACK
\  twi.status        -- get the last TWI status
\  twi.wr            -- convert addr to sendable byte for writing
\  twi.rd            -- convert addr to sendable byte for reading
\  twi.ping?         -- checks if addr is a device
\
\ TWI (SCL) clock speed = CPU_clock/(16 + 2*bitrateregister*(4^prescaler))
\ following the SCL clock speed in Hz for an 8Mhz device
\                     f_cpu   8000000
\      bitrate register (may be any value between 0 and 255)
\               4      8       16      32      64      128    255
\      prescaler                             
\      0     333.333 250.000 166.667 100.000 55.556  29.412  15.209
\      1     166.667 100.000 55.556  29.412  15.152  7.692   3.891
\      2     55.556  29.412  15.152  7.692   3.876   1.946     978
\      3     15.152  7.692   3.876   1.946     975     488     245
\
\

-4000 constant twi.timeout  \ exception number for timeout
10000 Evalue   twi.maxticks \ # of checks until timeout is reached
variable twi.loop           \ timeout counter
: twi.timeout?
    twi.loop @ 1- dup twi.loop ! 0=
;

\ turn off twi
: twi.off ( -- )
    0 TWCR c!
;

0 constant twi.prescaler/1
1 constant twi.prescaler/4
2 constant twi.prescaler/16
3 constant twi.prescaler/64
TWSR $3 bitmask: twi.conf.prescaler

TWCR 7 portpin: twi.int
TWCR 6 portpin: twi.ea
TWCR 5 portpin: twi.sta

\ enable twi
: twi.init ( prescaler bitrate  -- )
    twi.off   \ stop TWI, just to be sure
    TWBR c!   \ set bitrate register
    twi.conf.prescaler pin! \ the prescaler has only 2 bits
;

\ a very low speed initialization.
: twi.init.default
    twi.prescaler/64 3 twi.init 
;

\ wait for twi finish
: twi.wait ( -- )
    twi.maxticks twi.loop !
    begin
       pause \ or 1ms?
       twi.int is_high?
       twi.timeout? if twi.timeout throw then
    until
;

\ send start condition
: twi.start ( -- )
    %10100100 TWCR c!
    twi.wait
;

\ send stop condition
: twi.stop ( -- )
    %10010100 TWCR c!
    \ no wait for completion.
;
\ process the data
: twi.action
    %10000100 or TWCR c! \ _BV(TWINT)|_BV(TWEN)
    twi.wait
;

\ send 1 byte
: twi.tx ( c -- )
    TWDR c!
    0 twi.action
;

\ receive 1 byte, send ACK
: twi.rx ( -- c )
    %01000000 \ TWEA
    twi.action
    TWDR c@
;

\ receive 1 byte, send NACK
: twi.rxn ( -- c )
    0 twi.action
    TWDR c@
;

\ get twi status
: twi.status ( -- n )
    TWSR c@
    $f8 and
;

\ convert the bus address into a sendable byte
\ the address bits are the upper 7 ones,
\ the LSB is the read/write bit.

: twi.wr 2* ;
: twi.rd 2* 1+ ;


\ detect presence of a device on the bus
: twi.ping?   ( addr -- f )
    twi.start 
    twi.wr twi.tx
    twi.status $18 =
    twi.stop 
;
