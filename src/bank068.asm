.BANK 68
.ORG $0000

.SECTION "Bank68" FORCE

.INCBIN "21F9B8.bin" SKIP 1608
.INCBIN "2204E5.bin" ; spritesheet attack
.INCBIN "221165.bin" ; spritesheet attack
.INCBIN "222234.bin" ; spritesheet attack
.INCBIN "223590.bin" ; spritesheet attack pegasus knight
.INCBIN "225693.bin" ; spritesheet attack pegasus knight
.INCBIN "2277D9.bin" READ 2087 ; spritesheet attack wyvern rider

.ENDS
