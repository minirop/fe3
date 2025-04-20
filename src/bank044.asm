.BANK 44
.ORG $0000

.SECTION "Bank44" FORCE

.INCBIN "15F83A.bin" SKIP 1990
.INCBIN "1607A3.bin" ; spritesheet
.INCBIN "160E13.bin"
.INCBIN "161B41.bin" ; spritesheet
.INCBIN "16269E.bin" ; spritesheet
.INCBIN "1630FB.bin" ; spritesheet
.INCBIN "163C89.bin" ; spritesheet
.INCBIN "164396.bin" ; spritesheet
.INCBIN "164C13.bin" ; spritesheet
.INCBIN "16565D.bin" ; spritesheet
.INCBIN "1660B9.bin" ; spritesheet
.INCBIN "166ABF.bin" ; spritesheet
.INCBIN "167671.bin" ; spritesheet
.INCBIN "167FAF.bin" READ 81 ; spritesheet

.ENDS
