.BANK 40
.ORG $0000

.SECTION "Bank40" FORCE

.INCBIN "13F71E.bin" SKIP 2274
.INCBIN "1402FB.bin" ; spritesheet
.INCBIN "140849.bin"
.INCBIN "14131F.bin" ; spritesheet
.INCBIN "141CC4.bin"
.INCBIN "1429C3.bin" ; spritesheet
.INCBIN "14340F.bin"
.INCBIN "14402D.bin" ; spritesheet archer
.INCBIN "14468F.bin"
.INCBIN "144DA4.bin" ; spritesheet
.INCBIN "1450DD.bin"
.INCBIN "1457F2.bin" ; spritesheet archer
.INCBIN "145B67.bin"
.INCBIN "14627C.bin" ; spritesheet horseman archer
.INCBIN "146ADF.bin"
.INCBIN "1472E4.bin" ; spritesheet
.INCBIN "147911.bin"
.INCBIN "147C52.bin" READ 942 ; spritesheet

.ENDS
