.BANK 69
.ORG $0000

.SECTION "Bank69" FORCE

.INCBIN "2277D9.bin" SKIP 2087
.INCBIN "2297E8.bin" ; spritesheet attack wyvern rider
.INCBIN "22B93E.bin" ; spritesheet attack
.INCBIN "22C14D.bin" ; spritesheet attack
.INCBIN "22C802.bin" ; spritesheet attack
.INCBIN "22CF6B.bin" ; spritesheet attack horseman archer
.INCBIN "22DCCF.bin" ; spritesheet
.INCBIN "22DF47.bin" ; spritesheet dragon attack
.INCBIN "22EFC6.bin" ; spritesheet
.INCBIN "22FC48.bin" READ 952 ; spritesheet attack flying dragon

.ENDS
