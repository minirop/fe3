.BANK 33
.ORG $0000

.SECTION "Bank33" FORCE

.INCBIN "105461.bin" SKIP 11167 ; tileset map
LA183AC:
.INCBIN "1083AC.bin" ; tileset map
LA1B4C9:
.INCBIN "10B4C9.bin" ; tileset map

.ENDS
