.BANK 59
.ORG $0000

.SECTION "Bank59" FORCE

LBB8000:
.INCBIN "1D8000.bin"
LBB8C00:
.INCBIN "1D8C00.bin"
LBB9A25:
.INCBIN "1D9A25.bin" ; combat background?
LBBB0FF:
.INCBIN "1DB0FF.bin" ; combat background?
LBBC875:
.INCBIN "1DC875.bin" ; combat background?
LBBE0A5:
.INCBIN "1DE0A5.bin" ; combat background?
LBBF943:
.INCBIN "1DF943.bin" READ 1725 ; combat background?

.ENDS
