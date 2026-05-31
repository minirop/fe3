.BANK 60
.ORG $0000

.SECTION "Bank60" FORCE

.INCBIN "1DF943.bin" SKIP 1725 ; combat background?
LBC8FAE:
.INCBIN "1E0FAE.bin" ; combat background?
LBCA4D9:
.INCBIN "1E24D9.bin" ; combat background?
LBCBB04:
.INCBIN "1E3B04.bin" ; combat background?
LBCD1A2:
.INCBIN "1E51A2.bin" ; combat background?
LBCE5D5:
.INCBIN "1E65D5.bin" READ 6699 ; galaxy?

.ENDS
