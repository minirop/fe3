.BANK 59
.ORG $0000

.SECTION "Bank59" FORCE

.INCBIN "1D8000.bin"
.INCBIN "1D8C00.bin"
.INCBIN "1D9A25.bin"
.INCBIN "1DB0FF.bin" ; combat background?
.INCBIN "1DC875.bin" ; combat background?
.INCBIN "1DE0A5.bin" ; combat background?
.INCBIN "1DF943.bin" READ 1725 ; combat background?

.ENDS
