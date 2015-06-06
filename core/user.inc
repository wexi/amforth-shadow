; Layout of the user area

; used by the multitasker
.set USER_STATE    = 0
.set USER_FOLLOWER = 2

; stackpointer, used by mulitasker
.set USER_RP0     = 4
.set USER_SP0     = 6
.set USER_SP      = 8

.set USER_ALPHA   = 10 ; \1
.set USER_BETA    = 12 ; \2
.set USER_GAMMA   = 14 ; \3
.set USER_DELTA   = 16 ; (#)

; excpection handling
.set USER_HANDLER = 18

; numeric IO
.set USER_BASE  = 20

; character IO 
.set USER_EMIT  = 22
.set USER_EMITQ = 24
.set USER_KEY   = 26
.set USER_KEYQ  = 28

.set USER_SOURCE  = 30
.set USER_G_IN    = 32
.set USER_REFILL  = 34

; task dictionary name
.set USER_NFA     = 36

.set SYSUSERSIZE = 38
