.MEMORYMAP
  SLOTSIZE $8000
  DEFAULTSLOT 0
  SLOT 0 $8000
.ENDME

.ROMBANKSIZE $8000
.ROMBANKS 96
.EMPTYFILL $FF

.SNESHEADER
  NAME "SHVC FIREEMBLEM      "
  FASTROM
  LOROM
  CARTRIDGETYPE $02
  ROMSIZE $0C
  SRAMSIZE $03
  COUNTRY $00
  LICENSEECODE $01
  VERSION $00
.ENDSNES

.SNESNATIVEVECTOR
  COP $90B2
  BRK $FFFF
  ABORT $FFFF
  NMI NMI
  UNUSED $FFFF
  IRQ $90B5
.ENDNATIVEVECTOR

.SNESEMUVECTOR
  COP $FFFF
  UNUSED $FFFF
  ABORT $FFFF
  NMI $FFFF
  RESET RESET
  IRQBRK $FFFF
.ENDEMUVECTOR

.include "bank000.asm"
.include "bank001.asm"
.include "bank002.asm"
.include "bank003.asm"
.include "bank004.asm"
.include "bank005.asm"
.include "bank006.asm"
.include "bank007.asm"
.include "bank008.asm"
.include "bank009.asm"
.include "bank010.asm"
.include "bank011.asm"
.include "bank012.asm"
.include "bank013.asm"
.include "bank014.asm"
.include "bank015.asm"
.include "bank016.asm"
.include "bank017.asm"
.include "bank018.asm"
.include "bank019.asm"
.include "bank020.asm"
.include "bank021.asm"
.include "bank022.asm"
.include "bank023.asm"
.include "bank024.asm"
.include "bank025.asm"
.include "bank026.asm"
.include "bank027.asm"
.include "bank028.asm"
.include "bank029.asm"
.include "bank030.asm"
.include "bank031.asm"
.include "bank032.asm"
.include "bank033.asm"
.include "bank034.asm"
.include "bank035.asm"
.include "bank036.asm"
.include "bank037.asm"
.include "bank038.asm"
.include "bank039.asm"
.include "bank040.asm"
.include "bank041.asm"
.include "bank042.asm"
.include "bank043.asm"
.include "bank044.asm"
.include "bank045.asm"
.include "bank046.asm"
.include "bank047.asm"
.include "bank048.asm"
.include "bank049.asm"
.include "bank050.asm"
.include "bank051.asm"
.include "bank052.asm"
.include "bank053.asm"
.include "bank054.asm"
.include "bank055.asm"
.include "bank056.asm"
.include "bank057.asm"
.include "bank058.asm"
.include "bank059.asm"
.include "bank060.asm"
.include "bank061.asm"
.include "bank062.asm"
.include "bank063.asm"
.include "bank064.asm"
.include "bank065.asm"
.include "bank066.asm"
.include "bank067.asm"
.include "bank068.asm"
.include "bank069.asm"
.include "bank070.asm"
.include "bank071.asm"
.include "bank072.asm"
.include "bank073.asm"
.include "bank074.asm"
.include "bank075.asm"
.include "bank076.asm"
.include "bank077.asm"
.include "bank078.asm"
.include "bank079.asm"
.include "bank080.asm"
.include "bank081.asm"
.include "bank082.asm"
.include "bank083.asm"
.include "bank084.asm"
.include "bank085.asm"
.include "bank086.asm"
.include "bank087.asm"
.include "bank088.asm"
.include "bank089.asm"
.include "bank090.asm"
.include "bank091.asm"
.include "bank092.asm"
.include "bank093.asm"
.include "bank094.asm"
.include "bank095.asm"
