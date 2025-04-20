.BANK 70
.ORG $0000

.SECTION "Bank70" FORCE

.INCBIN "22FC48.bin" SKIP 952
.INCBIN "231432.bin" ; spritesheet attack
.INCBIN "232CF1.bin" ; spritesheet
.INCBIN "233815.bin" ; spritesheet attack
.INCBIN "234119.bin" ; spritesheet attack
.INCBIN "23516E.bin" ; spritesheet attack
.INCBIN "235D13.bin" ; spritesheet
.INCBIN "23630A.bin" ; spritesheet attack
.INCBIN "236CE6.bin" ; spritesheet attack
.INCBIN "237AFC.bin" READ 1284 ; spritesheet attack (dancer?)

.ENDS
