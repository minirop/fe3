.BANK 32
.ORG $0000

.SECTION "Bank32" FORCE

.INCBIN "0FEE34.bin" SKIP 4556 ; tileset map
.INCBIN "102034.bin" ; tileset map
.INCBIN "105461.bin" READ 11167 ; tileset map

.ENDS
