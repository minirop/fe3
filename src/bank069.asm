.BANK 69
.ORG $0000

.SECTION "Bank69" FORCE

.INCBIN "2277D9.bin" SKIP 2087
LC597E8:
.INCBIN "2297E8.bin" ; spritesheet attack wyvern rider
LC5B93E:
.INCBIN "22B93E.bin" ; spritesheet attack
LC5C14D:
.INCBIN "22C14D.bin" ; spritesheet attack
LC5C802:
.INCBIN "22C802.bin" ; spritesheet attack
LC5CF6B:
.INCBIN "22CF6B.bin" ; spritesheet attack horseman archer
LC5DCCF:
.INCBIN "22DCCF.bin" ; spritesheet
LC5DF47:
.INCBIN "22DF47.bin" ; spritesheet dragon attack
LC5EFC6:
.INCBIN "22EFC6.bin" ; spritesheet
LC5FC48:
.INCBIN "22FC48.bin" READ 952 ; spritesheet attack flying dragon

.ENDS
