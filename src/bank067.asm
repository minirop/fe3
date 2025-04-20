.BANK 67
.ORG $0000

.SECTION "Bank67" FORCE

.INCBIN "217D51.bin" SKIP 687
.INCBIN "219538.bin" ; spritesheet attack
.INCBIN "21A925-axe-attack.bin"
.INCBIN "21B151.bin" ; spritesheet attack spear
.INCBIN "21BEBD.bin" ; spritesheet attack horseman
.INCBIN "21D5C6.bin" ; spritesheet attack horseman
.INCBIN "21EE07.bin" ; spritesheet attack
.INCBIN "21F9B8.bin" READ 1608 ; spritesheet attack

.ENDS
