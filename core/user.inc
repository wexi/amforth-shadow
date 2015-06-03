; Layout of the user area

; used by the multitasker
.set USER_STATE    = 0
.set USER_FOLLOWER = 2

; stackpointer, used by mulitasker
.set USER_RP0     = 4
.set USER_SP0     = 6
.set USER_SP      = 8

; excpection handling
.set USER_HANDLER = 10

; numeric IO
.set USER_BASE  = 12

; character IO 
.set USER_EMIT  = 14
.set USER_EMITQ = 16
.set USER_KEY   = 18
.set USER_KEYQ  = 20

.set USER_SOURCE  = 22
.set USER_G_IN    = 24
.set USER_REFILL  = 26

; locals
.set USER_ALPHA = 28
.set USER_BETA = 30
.set USER_GAMMA = 32
.set USER_DELTA = 34

; task dictionary name
.set USER_NFA     = 35

.set SYSUSERSIZE = 37
