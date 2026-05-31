.BANK 71
.ORG $0000

.SECTION "Bank71" FORCE

.INCBIN "237AFC.bin" SKIP 1284
LC7895D:
.INCBIN "23895D.bin" ; spritesheet
LC78CFE:
.INCBIN "238CFE.bin" ; spritesheet
LC79045:
.INCBIN "239045.bin" ; spritesheet attack
LC79563:
.INCBIN "239563.bin" ; spritesheet attack
LC79C62:
.INCBIN "239C62.bin" ; spritesheet
LC7A13F:
.INCBIN "23A13F.bin" ; spritesheet
LC7A704:
.INCBIN "23A704.bin" ; spritesheet
LC7A99A:
.INCBIN "23A99A.bin" ; spritesheet
LC7AB4D:
.INCBIN "23AB4D.bin" ; spritesheet attack
LC7B1B0:
.INCBIN "23B1B0.bin" ; spritesheet attack
LC7B67A:
.INCBIN "23B67A.bin" ; spritesheet attack
LC7BB3F:
.INCBIN "23BB3F.bin" ; spritesheet attack
LC7BF30:
.INCBIN "23BF30.bin" ; spritesheet attack
LC7C67C:
.INCBIN "23C67C.bin" ; spritesheet attack
LC7C9ED:
.INCBIN "23C9ED.bin" ; spritesheet attack
LC7D0C0:
.INCBIN "23D0C0-axe-attack.bin"
LC7D8DA:
.INCBIN "23D8DA.bin" ; spritesheet attack axe
LC7E17F:
.INCBIN "23E17F.bin" ; spritesheet attack catapult(?)
LC7E69A:
.INCBIN "23E69A.bin" ; spritesheet attack
LC7FAD2:
.INCBIN "23FAD2.bin" ; spritesheet fireball
LC7FDC8:
.INCBIN "23FDC8.bin" READ 568 ; spritesheet fireball

.ENDS
