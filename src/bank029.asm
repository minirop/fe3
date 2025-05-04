.BANK 29
.ORG $0000

.SECTION "Bank29" FORCE

.INCBIN "0E8000.bin" ; tileset
.INCBIN "0EB53E.bin" ; tileset
.INCBIN "0EEBFF.bin" READ 5121 ; tileset

.ENDS
