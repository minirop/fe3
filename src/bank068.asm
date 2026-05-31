.BANK 68
.ORG $0000

.SECTION "Bank68" FORCE

.INCBIN "21F9B8.bin" SKIP 1608
LC484E5:
.INCBIN "2204E5.bin" ; spritesheet attack
LC49165:
.INCBIN "221165.bin" ; spritesheet attack
LC4A234:
.INCBIN "222234.bin" ; spritesheet attack
LC4B590:
.INCBIN "223590.bin" ; spritesheet attack pegasus knight
LC4D693:
.INCBIN "225693.bin" ; spritesheet attack pegasus knight
LC4F7D9:
.INCBIN "2277D9.bin" READ 2087 ; spritesheet attack wyvern rider

.ENDS
