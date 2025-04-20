.BANK 71
.ORG $0000

.SECTION "Bank71" FORCE

.INCBIN "237AFC.bin" SKIP 1284
.INCBIN "23895D.bin" ; spritesheet
.INCBIN "238CFE.bin" ; spritesheet
.INCBIN "239045.bin" ; spritesheet attack
.INCBIN "239563.bin" ; spritesheet attack
.INCBIN "239C62.bin" ; spritesheet
.INCBIN "23A13F.bin" ; spritesheet
.INCBIN "23A704.bin" ; spritesheet
.INCBIN "23A99A.bin" ; spritesheet
.INCBIN "23AB4D.bin" ; spritesheet attack
.INCBIN "23B1B0.bin" ; spritesheet attack
.INCBIN "23B67A.bin" ; spritesheet attack
.INCBIN "23BB3F.bin" ; spritesheet attack
.INCBIN "23BF30.bin" ; spritesheet attack
.INCBIN "23C67C.bin" ; spritesheet attack
.INCBIN "23C9ED.bin" ; spritesheet attack
.INCBIN "23D0C0-axe-attack.bin"
.INCBIN "23D8DA.bin" ; spritesheet attack axe
.INCBIN "23E17F.bin" ; spritesheet attack catapult(?)
.INCBIN "23E69A.bin" ; spritesheet attack
.INCBIN "23FAD2.bin" ; spritesheet fireball
.INCBIN "23FDC8.bin" READ 568 ; spritesheet fireball

.ENDS
