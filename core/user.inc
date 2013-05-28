; Layout of the user area
; 

; used by the multitasker
.set USER_STATE    = 0
.set USER_FOLLOWER = 2

; stackpointer, used by mulitasker
.set USER_RP      = 4
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

.set SYSUSERSIZE = 28
; 
