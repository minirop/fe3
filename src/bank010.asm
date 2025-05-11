.BANK 10
.ORG $0000

.SECTION "Bank10" FORCE

; the first byte is an index into SOME_POINTERS_TABLE
; the second byte is an index into TABLE_89CA4E, TABLE_89C9EB, UNKNOWN2_CHAPTERS_POINTER_DATA, CHAPTERS_REINFORCEMENT_ENEMY_UNITS, TABLE_8CA119, CHAPTERS_UNITS

UNKNOWN_CHAPTERS_DATA:
.db $05 $00 $1F $1F $1D $1F $20 $00
.db $06 $01 $1F $0E $1E $1F $20 $00
.db $05 $00 $1F $15 $1D $1F $20 $00
.db $05 $1C $1F $15 $1E $2B $2C $00
.db $0B $04 $1F $16 $20 $21 $20 $01
.db $05 $1C $0F $1F $28 $21 $20 $00
.db $08 $0A $1F $1D $20 $21 $20 $00
.db $0A $16 $1F $19 $23 $24 $25 $00
.db $0B $19 $1F $1F $20 $21 $20 $01
.db $08 $1B $1F $1F $20 $21 $20 $00
.db $02 $0C $1F $1F $23 $21 $20 $00
.db $06 $0B $1F $1F $20 $21 $20 $00
.db $07 $02 $1F $1F $2C $21 $20 $01
.db $04 $0D $0F $1F $2B $21 $20 $01
.db $06 $01 $1F $1F $23 $23 $23 $00
.db $08 $1B $1F $1C $2C $23 $23 $00
.db $04 $0F $1F $1F $2C $24 $25 $01
.db $04 $0E $1D $1F $2C $29 $25 $01
.db $00 $10 $15 $15 $1D $1F $20 $00
.db $00 $10 $1F $17 $23 $23 $24 $00
.db $02 $11 $1F $1F $1D $1E $20 $00
.db $01 $12 $1F $1F $1E $2B $2C $00
.db $03 $13 $1F $1F $23 $21 $20 $00
.db $04 $05 $1F $1F $23 $21 $20 $00
.db $00 $10 $1F $19 $23 $21 $20 $00
.db $04 $09 $1F $1F $20 $21 $20 $01
.db $08 $03 $1F $1F $20 $21 $20 $00
.db $04 $05 $1F $1F $20 $21 $20 $00
.db $08 $03 $1F $1F $24 $21 $20 $00
.db $02 $1D $1F $1B $23 $23 $23 $00
.db $09 $17 $1F $1F $23 $23 $23 $01
.db $06 $1E $1F $1F $23 $1F $1F $00
.db $07 $02 $1F $1F $25 $25 $25 $01
.db $02 $14 $1F $1F $28 $1F $20 $00
.db $04 $0F $1F $1F $20 $21 $20 $00
.db $05 $07 $1F $1F $28 $1F $29 $01
.db $06 $06 $1F $1F $26 $1F $28 $00
.db $09 $15 $1F $1F $26 $21 $20 $01
.db $08 $1B $1F $1F $24 $24 $24 $00
.db $05 $00 $1F $1F $22 $1F $28 $00
.db $0A $1F $1F $19 $23 $22 $24 $00
.db $0B $19 $1F $1F $24 $29 $22 $01
.db $04 $08 $1F $1F $22 $2C $1F $01
.db $04 $08 $1F $1F $22 $2C $1F $01
.db $09 $18 $1F $1F $29 $2A $20 $01
.db $06 $01 $1F $10 $1E $1F $20 $00
.db $06 $01 $1F $1F $1E $21 $20 $00
.db $08 $20 $1F $1F $2C $21 $20 $00
.db $04 $0F $1F $1F $2C $24 $25 $00
.db $04 $0D $1F $1F $20 $21 $20 $00
.db $04 $0D $1F $1F $1E $1F $20 $00
.db $04 $05 $1F $1F $1E $1F $20 $00
.db $04 $05 $1F $1F $20 $21 $20 $00
.db $04 $0E $1F $1F $20 $21 $20 $00
.db $04 $05 $1F $1F $20 $21 $20 $00
.db $04 $09 $1F $1F $20 $21 $20 $00
.db $04 $05 $1F $1F $20 $21 $20 $00
.db $07 $02 $1F $1F $20 $21 $20 $00
.db $09 $15 $1F $1F $20 $21 $20 $00
.db $08 $1B $1F $1F $20 $21 $20 $00
.db $0B $19 $1F $1F $20 $21 $20 $00
.db $0B $19 $1F $1F $20 $21 $20 $00
.db $04 $08 $1F $1F $20 $21 $20 $00

.dl L8AAA61
.dl L8AB261
.dl L8ABA61
.dl L8ABE61
.dl L8AD661
.dl L8A9661
.dl L8AB661
.dl L8AAE61
.dl L8A9A61
.dl L8A9E61
.dl L8AC261
.dl L8AB261
.dl L8A8E61
.dl L8A9661
.dl L8AA661
.dl L8AA261
.dl L8A8261
.dl L8A8A61
.dl L8A8661
.dl L8A9261
.dl L8A8E61
.dl L8AC661
.dl L8AD261
.dl L8ACA61
.dl L8ACE61
.dl L8ADA61
.dl L8AC261
.dl L8AC261
.dl L8AAA61
.dl L8A8E61
.dl L8AB261
.dl L8AD261
.dl L8AC261
.dl L8AAA61
.dl L8ABA61

L8A8261:
.INCBIN "maps/header00.bin"

L8A8661:
.INCBIN "maps/header01.bin"

L8A8A61:
.INCBIN "maps/header02.bin"

L8A8E61:
.INCBIN "maps/header03.bin"

L8A9261:
.INCBIN "maps/header04.bin"

L8A9661:
.INCBIN "maps/header05.bin"

L8A9A61:
.INCBIN "maps/header06.bin"

L8A9E61:
.INCBIN "maps/header07.bin"

L8AA261:
.INCBIN "maps/header08.bin"

L8AA661:
.INCBIN "maps/header09.bin"

L8AAA61:
.INCBIN "maps/header10.bin"

L8AAE61:
.INCBIN "maps/header11.bin"

L8AB261:
.INCBIN "maps/header12.bin"

L8AB661:
.INCBIN "maps/header13.bin"

L8ABA61:
.INCBIN "maps/header14.bin"

L8ABE61:
.INCBIN "maps/header15.bin"

L8AC261:
.INCBIN "maps/header16.bin"

L8AC661:
.INCBIN "maps/header17.bin"

L8ACA61:
.INCBIN "maps/header18.bin"

L8ACE61:
.INCBIN "maps/header19.bin"

L8AD261:
.INCBIN "maps/header20.bin"

L8AD661:
.INCBIN "maps/header21.bin"

L8ADA61:
.INCBIN "maps/header22.bin"

.ENDS
