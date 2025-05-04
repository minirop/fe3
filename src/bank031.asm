.BANK 31
.ORG $0000

.SECTION "Bank31" FORCE

.INCBIN "0F5709.bin" SKIP 10487 ; tileset
.INCBIN "0F833A.bin" ; tileset map 2 or 3
.INCBIN "0FB91E.bin" ; tileset map 2 or 3
.INCBIN "0FEE34.bin" READ 4556 ; tileset map

.ENDS
