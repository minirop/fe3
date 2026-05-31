.BANK 67
.ORG $0000

.SECTION "Bank67" FORCE

.INCBIN "217D51.bin" SKIP 687
LC39538:
.INCBIN "219538.bin" ; spritesheet attack
LC3A925:
.INCBIN "21A925-axe-attack.bin"
LC3B151:
.INCBIN "21B151.bin" ; spritesheet attack spear
LC3BEBD:
.INCBIN "21BEBD.bin" ; spritesheet attack horseman
LC3D5C6:
.INCBIN "21D5C6.bin" ; spritesheet attack horseman
LC3EE07:
.INCBIN "21EE07.bin" ; spritesheet attack
LC3F9B8:
.INCBIN "21F9B8.bin" READ 1608 ; spritesheet attack

.ENDS
