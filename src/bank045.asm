.BANK 45
.ORG $0000

.SECTION "Bank45" FORCE

.INCBIN "167FAF.bin" SKIP 81
LAD8B4D:
.INCBIN "168B4D.bin" ; spritesheet
LAD9649:
.INCBIN "169649.bin" ; spritesheet
LADA0AC:
.INCBIN "16A0AC.bin" ; spritesheet
LADAB5B:
.INCBIN "16AB5B.bin" ; spritesheet
LADB4A6:
.INCBIN "16B4A6.bin" ; spritesheet
LADBCA5:
.INCBIN "16BCA5.bin" ; spritesheet
LADC7BA:
.INCBIN "16C7BA.bin" ; spritesheet
LADD0D3:
.INCBIN "16D0D3.bin" ; spritesheet
LADDA41:
.INCBIN "16DA41.bin" ; spritesheet
LADE2B4:
.INCBIN "16E2B4.bin" ; spritesheet
LADEB62:
.INCBIN "16EB62.bin" ; spritesheet
LADF507:
.INCBIN "16F507.bin" ; spritesheet
LADFFCD:
.INCBIN "16FFCD.bin" READ 51 ; spritesheet

.ENDS
