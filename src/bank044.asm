.BANK 44
.ORG $0000

.SECTION "Bank44" FORCE

.INCBIN "15F83A.bin" SKIP 1990
LAC87A3:
.INCBIN "1607A3.bin" ; spritesheet
LAC8E13:
.INCBIN "160E13.bin"
LAC9B41:
.INCBIN "161B41.bin" ; spritesheet
LACA69E:
.INCBIN "16269E.bin" ; spritesheet
LACB0FB:
.INCBIN "1630FB.bin" ; spritesheet
LACBC89:
.INCBIN "163C89.bin" ; spritesheet
LACC396:
.INCBIN "164396.bin" ; spritesheet
LACCC13:
.INCBIN "164C13.bin" ; spritesheet
LACD65D:
.INCBIN "16565D.bin" ; spritesheet
LACE0B9:
.INCBIN "1660B9.bin" ; spritesheet
LACEABF:
.INCBIN "166ABF.bin" ; spritesheet
LACF671:
.INCBIN "167671.bin" ; spritesheet
LACFFAF:
.INCBIN "167FAF.bin" READ 81 ; spritesheet

.ENDS
