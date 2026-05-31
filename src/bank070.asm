.BANK 70
.ORG $0000

.SECTION "Bank70" FORCE

.INCBIN "22FC48.bin" SKIP 952
LC69432:
.INCBIN "231432.bin" ; spritesheet attack
LC6ACF1:
.INCBIN "232CF1.bin" ; spritesheet
LC6B815:
.INCBIN "233815.bin" ; spritesheet attack
LC6C119:
.INCBIN "234119.bin" ; spritesheet attack
LC6D16E:
.INCBIN "23516E.bin" ; spritesheet attack
LC6DD13:
.INCBIN "235D13.bin" ; spritesheet
LC6E30A:
.INCBIN "23630A.bin" ; spritesheet attack
LC6ECE6:
.INCBIN "236CE6.bin" ; spritesheet attack
LC6FAFC:
.INCBIN "237AFC.bin" READ 1284 ; spritesheet attack (dancer?)

.ENDS
