.BANK 4
.ORG $0000

.SECTION "Bank4" FORCE

L848000:
.db $06 $80 $84 $BD $80 $84 $2C $00
.db $80 $50 $80 $73 $D0 $40 $E2 $73
.db $D0 $50 $E0 $73 $A0 $50 $C0 $73
.db $90 $50 $A0 $73 $B0 $40 $C2 $73
.db $B0 $50 $C0 $73 $C0 $40 $C2 $73
.db $00 $C0 $50 $C0 $73 $A0 $40 $C2
.db $73 $90 $40 $A2 $73 $80 $40 $82
.db $73 $80 $30 $84 $33 $D0 $30 $86
.db $33 $D0 $20 $86 $33 $D0 $10 $86
.db $33 $00 $D0 $00 $86 $33 $80 $20
.db $84 $33 $80 $10 $84 $33 $80 $00
.db $84 $33 $80 $F0 $84 $33 $80 $D0
.db $84 $33 $80 $E0 $84 $33 $80 $C0
.db $84 $33 $00 $80 $B0 $84 $33 $D0
.db $F0 $86 $33 $D0 $D0 $86 $33 $D0
.db $E0 $86 $33 $D0 $C0 $86 $33 $D0
.db $B0 $86 $33 $D0 $A0 $86 $33 $D0
.db $90 $E2 $33 $00 $D0 $80 $E0 $33
.db $C0 $90 $C2 $33 $C0 $80 $C0 $33
.db $B0 $90 $C2 $33 $B0 $80 $C0 $33
.db $A0 $90 $C2 $33 $A0 $80 $C0 $33
.db $90 $90 $A2 $33 $00 $90 $80 $A0
.db $33 $80 $A0 $84 $33 $80 $90 $82
.db $33 $80 $80 $80 $33 $01 $80 $C0
.db $C0 $88 $31

L8480C3:
.INCBIN "0200C3.bin"

L848443:
.db $C0 $F2 $F1 $F0 $EF
.db $EE $ED $EC $EB $00 $00 $EA $00
.db $00 $00 $E9 $00 $00 $00 $E8 $00
.db $00 $00 $00 $E7 $00 $00 $00 $00
.db $E6 $00 $00 $00 $00 $00 $E5 $00
.db $00 $00 $00 $00 $00 $00 $E4 $00
.db $00 $00 $00 $00 $00 $00 $E3 $00
.db $00 $00 $00 $00 $00 $00 $00 $00
.db $E2 $00 $00 $00 $C0 $00 $00 $00
.db $00 $00 $00 $00 $E1 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $E0
.db $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $E0 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $E0 $00
.db $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $E0 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $C0 $00 $00
.db $E0 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $E0 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $E0 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $A0 $00
.db $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00

L84852B:
	rep #$20
	lda #$0000
L848530:
	pha
	jsr L848567
	jsr L84B8A6
	jsr L84B93A
	jsr L84B98B
	jsl L8087EA
	pla
	ina
	cmp #$0010
	bcc L848530
	rts

L848549:
	rep #$20
	lda #$000F
L84854E:
	pha
	jsr L848567
	jsr L84F935
	jsr L84B8A6
	jsr L84B93A
	jsr L84B98B
	jsl L8087EA
	pla
	dea
	bpl L84854E
	rts

L848567:
	php
	asl
	asl
	sta $15
	sep #$20
	lda #$01
	sta $0E07
	lda #$F1
	sta $0E0D
	rep #$20
	lda #bank100(L84859F)
	sta $0E09
	lda #L84859F
	clc
	adc $15
	sta $0E08
	lda #$0004
	sta $0E0B
	lda #$0000
	sta $01
	lda #$0E07
	sta $00
	jsl L808EAD
	plp
	rts

L84859F:
.db $D1 $2D $A7 $0C $D1 $2D $C8 $10
.db $D1 $2D $E9 $14 $F2 $31 $0A $15
.db $F2 $31 $0B $19 $F2 $31 $2C $1D
.db $F2 $31 $4D $21 $F2 $31 $6D $21
.db $F2 $31 $8E $25 $13 $36 $AF $29
.db $13 $36 $B0 $2D $13 $36 $D1 $31
.db $13 $36 $F2 $31 $34 $3A $34 $3A
.db $34 $3A $34 $3A $34 $3A $34 $3A

L8485DF:
	php
	rep #$30
	lda #$000F
	jsr L848567
	lda #$0001
	sta $1452
	lda #$0000
	sta $1454
	sep #$20
	lda #$82
	sta $7B
	lda #$02
	sta $5C
	jsr L84E587
	rep #$30
	lda $07DF
	and #$00FF
	cmp #$0015
	bcc L848617
	lda #$0000
	sta $15A2
	jsr L84F8AB
L848617:
	lda #$0078
	sta $15B2
	lda #$0101
	sta $15B4
	jsr L84F39C
	stz $0E04
	stz $52
	jsl L80954E
	lda $07DF
	and #$00FF
	bne L848638
	ina
L848638:
	dea
	asl
	tax
	lda #bank100(LDCB000)
	sta $01
	lda.l LDCB000,X
	clc
	adc #LDCB000
	sta $00
	jsl L87B860
	lda $0F05
	ora #$0008
	sta $0F05
	lda #$7E00
	sta $0F21
	lda #$3000
	sta $0F20
	lda #$1408
	sta $0F25
	lda #$4000
	sta $0F23
	lda #$2000
	sta $0F14
	lda #$0000
	sta $0F12
	lda #$0005
	sta $0F07
	lda #$0002
	sta $0F10
	lda #$0001
	sta $1454
	jsr L848B65
	jsr L848710
	plp
	rts

L848695:
	php
	rep #$30
	lda #$0038
	sta $15B2
	lda #$0101
	sta $15B4
	jsr L84F39C
	stz $0E04
	stz $52
	jsl L80954E
	lda $07DF
	and #$00FF
	bne L8486B9
	ina
L8486B9:
	dea
	asl
	tax
	lda #bank100(LDCB000)
	sta $01
	lda.l LDCB000,X
	clc
	adc #LDCB000
	sta $00
	jsl L87B860
	lda $0F05
	ora #$0008
	sta $0F05
	lda #$7E00
	sta $0F21
	lda #$3000
	sta $0F20
	lda #$1408
	sta $0F25
	lda #$4000
	sta $0F23
	lda #$2000
	sta $0F14
	lda #$0000
	sta $0F12
	lda #$0005
	sta $0F07
	lda #$0002
	sta $0F10
	jsr L848BC3
	jsr L848775
	plp
	rts

L848710:
	php
	stz $0E24
	lda #$0030
	sta $0E26
	lda #$0088
	sta $0E28
	lda #$01A4
	sta $0E2A
	lda #$0000
	sta $0E2C
	bra L848769

L84872E:
	sep #$20
	lda $0E2C
	ina
	sta $0E2C
	cmp #$0A
	bcc L84875D
	lda $0E2D
	ina
	sta $0E2D
	cmp #$04
	bcs L84876E
	stz $0E2C
	rep #$20
	lda $0E28
	clc
	adc #$0010
	sta $0E28
	lda #$0030
	sta $0E26
	bra L848769

L84875D:
	rep #$20
	lda $0E26
	clc
	adc #$0010
	sta $0E26
L848769:
	jsr L848B3E
	bra L84872E

L84876E:
	rep #$20
	jsr L8487DA
	plp
	rts

L848775:
	php
	stz $0E24
	lda #$0030
	sta $0E26
	lda #$0048
	sta $0E28
	lda #$01A4
	sta $0E2A
	lda #$0000
	sta $0E2C
	bra L8487CE

L848793:
	sep #$20
	lda $0E2C
	ina
	sta $0E2C
	cmp #$0A
	bcc L8487C2
	lda $0E2D
	ina
	sta $0E2D
	cmp #$04
	bcs L8487D3
	stz $0E2C
	rep #$20
	lda $0E28
	clc
	adc #$0010
	sta $0E28
	lda #$0030
	sta $0E26
	bra L8487CE

L8487C2:
	rep #$20
	lda $0E26
	clc
	adc #$0010
	sta $0E26
L8487CE:
	jsr L848B3E
	bra L848793

L8487D3:
	rep #$20
	jsr L8487DA
	plp
	rts

L8487DA:
	php
	ldy #$00A0
	ldx #$0000
L8487E1:
	lda $7EA0FE,X
	sta.l $000370,X
	inx
	dey
	inx
	dey
	bne L8487E1
	lda #$0200
	sta $50
	plp
	rts

L8487F6:
	php
	lda $0E04
	bit #$0100
	beq L848802
	brl L848880

L848802:
	jsr L848B65
	jsr L848710
	bra L84883C

L84880A:
	rep #$20
	lda $0127
	bit #$0080
	beq L84881A
	lda #$0001
	sta $0F07
L84881A:
	lda $0127
	bit #$1000
	beq L848838
	jsl L808CEA
	sep #$20
	lda #$03
	sta $0E00
	rep #$20
	lda #$0007
	sta $141E
	brl L848933

L848838:
	jsl L8087EA
L84883C:
	jsr L84B93A
	jsr L84B98B
	lda $0E06
	and #$00FF
	bne L848852
	lda $0F09
	cmp #$00FE
	bne L848857
L848852:
	jsr L848935
	bra L84880A

L848857:
	jsl L87B932
	lda.l $000F27
	tay
	lda.l $000F29
	jsr L848AD6
	jsr L8487DA
	lda $0F05
	bit #$0001
	bne L84880A
	lda #$0000
	sta $0FA1
	lda #$0100
	sta $0E04
	plp
	rts

L848880:
	rep #$20
	lda $0127
	bit #$1080
	bne L848892
	jsr L848B65
	jsr L8487DA
	plp
	rts

L848892:
	jsr L848B65
	jsr L8487DA
	jsl L8087EA
	jsr L84852B
	jsl L8087EA
	stz $0E04
	stz $52
	jsl L80954E
	rep #$30
	lda #$0078
	sta $15B2
	lda #$0001
	sta $15B4
	jsr L84F39C
	rep #$30
	lda $07DF
	and #$00FF
	cmp #$0015
	bcc L8488D3
	lda #$0001
	sta $15A2
	jsr L84F8AB
L8488D3:
	sep #$30
	lda #$01
	sta $15B4
	ldx $07DF
	lda.l L84E5AF,X
	rep #$30
	and #$00FF
	clc
	adc #$0005
	sta $15A2
	lda #$0000
	sta $15B8
	lda #$0000
	sta $15BA
	lda #$0003
	sta $1584
	lda #$0005
	sta $141E
	sep #$20
	lda #$0B
	sta $0E00
	sep #$20
	lda #$02
	sta $7B
	rep #$20
	jsl L80954E
	jsr L84E587
	jsr L84852B
	stz $0E04
	stz $52
	jsl L80954E
	lda #$0000
	sta $1454
	jsr L84E587
	jsr L84852B
L848933:
	plp
	rts

L848935:
	php
	rep #$20
	lda #$0005
	sta $0F07
	lda $0E06
	and #$00FF
	beq L84896E
	cmp #$001F
	beq L848952
	cmp #$0010
	bcs L84897C
	bcc L848979
L848952:
	lda #bank100(L848987)
	sta $01
	lda #L848987
	sta $00
	jsl L808EAD
	jsr L848710
	jsl L87B903
	sep #$20
	stz $0E06
	bra L848984

L84896E:
.ACCU 16
	lda $0127
	bit #$0080
	beq L848981
	lda #$0000
L848979:
	jsr L848567
L84897C:
	sep #$20
	inc $0E06
L848981:
	plp
	clc
	rts

L848984:
	plp
	clc
	rts

L848987:
DMA_DATA L84859F $0004 $F1

L84898E:
	php
	rep #$20
	lda $0E04
	bit #$0100
	beq L84899C
	brl L848A0D

L84899C:
	jsr L848BC3
	jsr L848775
	bra L8489CA

L8489A4:
	rep #$20
	lda $25
	cmp #$0000
	beq L8489C6
	lda $0127
	bit #$0080
	beq L8489BB
	lda #$0001
	sta $0F07
L8489BB:
	lda $0127
	bit #$1000
	beq L8489C6
	brl L848A1F

L8489C6:
	jsl L8087EA
L8489CA:
	lda $0E06
	and #$00FF
	bne L8489DA
	lda $0F09
	cmp #$00FE
	bne L8489DF
L8489DA:
	jsr L848A78
	bra L8489A4

L8489DF:
	lda #$0001
	sta $25
	jsl L87B932
	lda.l $000F27
	tay
	lda.l $000F29
	jsr L848AD6
	jsr L8487DA
	lda $0F05
	bit #$0001
	bne L8489A4
	lda #$0000
	sta $0FA1
	lda #$0100
	sta $0E04
	plp
	rts

L848A0D:
	rep #$20
	lda $0127
	bit #$1080
	bne L848A1F
	jsr L848BC3
	jsr L8487DA
	plp
	rts

L848A1F:
	rep #$20
	jsr L848BC3
	jsr L8487DA
	jsl L8087EA
	jsr L84852B
	jsl L8087EA
	stz $0E04
	stz $52
	jsl L80954E
	rep #$30
	lda #$0038
	sta $15B2
	lda #$0001
	sta $15B4
	jsr L84F39C
	sep #$20
	lda #$01
	sta $07D6
	lda #$03
	sta $0E00
	rep #$20
	lda #$0003
	sta $141E
	lda #$04F0
	jsl L80B4E3
	sep #$20
	lda #$02
	sta $7B
	rep #$20
	jsl L80954E
	jsr L84E70D
	plp
	rts

L848A78:
	php
	rep #$20
	lda #$0005
	sta $0F07
	lda $0E06
	and #$00FF
	beq L848AB1
	cmp #$001F
	beq L848A95
	cmp #$0010
	bcs L848AC4
	bcc L848ABC
L848A95:
	lda #bank100(L848ACF)
	sta $01
	lda #L848ACF
	sta $00
	jsl L808EAD
	jsr L848775
	jsl L87B903
	sep #$20
	stz $0E06
	bra L848ACC

L848AB1:
.ACCU 16
	lda $0127
	bit #$0080
	beq L848AC9
	lda #$0000
L848ABC:
	jsr L848567
	lda #$0000
	sta $25
L848AC4:
	sep #$20
	inc $0E06
L848AC9:
	plp
	clc
	rts

L848ACC:
	plp
	clc
	rts

L848ACF:
DMA_DATA L84859F $0004 $F1

L848AD6:
	php
	ldx $0F1C
	beq L848B05
	pha
	phy
	jsr L848B07
	ply
	pla
	ldx $0F1C
	cpx #$0040
	bcc L848B05
	ina
	ina
	iny
	iny
	pha
	phy
	jsr L848B07
	ply
	pla
	ldx $0F1C
	cpx #$0060
	bcc L848B05
	ina
	ina
	iny
	iny
	jsr L848B07
L848B05:
	plp
	rts

L848B07:
.ACCU 16
	pha
	tya
	lsr
	lsr
	lsr
	lsr
	lsr
	lsr
	lsr
	tax
	lda.l L848B3A,X
	and #$00FF
	sta $15
	tya
	and #$003C
	clc
	adc $15
	tax
	pla
	pha
	and #$001C
	lsr
	sta $15
	pla
	and #$FFE0
	clc
	adc $15
	clc
	adc #$3E00
	sta $7EA100,X
	rts

L848B3A:
.db $00 $28 $50 $78

L848B3E:
	php
	ldx $0E24
	lda $0E26
	sta $7EA0FE,X
	lda $0E28
	sta $7EA0FF,X
	lda $0E2A
	ora #$3E00
	sta $7EA100,X
	txa
	clc
	adc #$0004
	tax
	stx $0E24
	plp
	rts

L848B65:
	php
	lda #$0082
	sta $7B
	lda #$0002
	sta $5C
	rep #$30
	jsr L84E587
	lda #$0000
	sta $5E
	stz $5A
	lda #$0090
	sta $56
	lda #$00F8
	sta $58
	lda #bank100(L848000)
	sta $63
	lda #L848000
	sta $62
	jsl L8093A2
	lda $07DF
	and #$00FF
	cmp #$0015
	bcc L848BC1
	lda #$0100
	sta $5E
	lda #$0001
	sta $5A
	lda #$00F0
	sta $56
	lda #$0074
	sta $58
	lda #bank100(L848000)
	sta $63
	lda #L848000
	sta $62
	jsl L8093A2
L848BC1:
	plp
	rts

L848BC3:
	php
	lda #$0082
	sta $7B
	lda #$0002
	sta $5C
	rep #$20
	lda #$0000
	sta $5E
	stz $5A
	lda #$0090
	sta $56
	lda #$00B8
	sta $58
	lda #bank100(L848000)
	sta $63
	lda #L848000
	sta $62
	jsl L8093A2
	plp
	rts

L848BF1:
	php
	sep #$20
	lda $07DF
	jsr L848C01
	lda #$00
	sta $0E00
	plp
	rts

L848C01:
	php
	rep #$20
	and #$00FF
	tax
	sep #$20
	lda.w CHAPTERS_ID,X
	sta $07CE
	sta $0E0E
	plp
	rts

CHAPTERS_ID:
.db CHAPTER_000_DEBUG
.db CHAPTER_101_MARTH_EMBARKS
.db CHAPTER_102_THE_PIRATES_OF_GALDER
.db CHAPTER_103_A_BRUSH_IN_THE_TEETH
.db CHAPTER_104_CHAMPIONS_OF_AURELIS
.db CHAPTER_105_FIRE_EMBLEM
.db CHAPTER_106_LEFCANDITH_GAUNTLET
.db CHAPTER_107_PORT_WARREN
.db CHAPTER_108_PRINCESS_MINERVA
.db CHAPTER_109_KNORDA_MARKET
.db CHAPTER_110_THE_AGELESS_PALACE
.db CHAPTER_111_LAND_OF_SORROW
.db CHAPTER_112_AN_OASIS_OF_MAGIC
.db CHAPTER_113_THE_BATTLE_FOR_ALTEA
.db CHAPTER_114_STAR_AND_SAVIOR
.db CHAPTER_115_MANAKETE_PRINCESS
.db CHAPTER_116_CAMUS_THE_SABLE
.db CHAPTER_117_A_KNIGHT_FILLED_SKY
.db CHAPTER_118_DARK_PONTIFEX
.db CHAPTER_119_THE_DRAGONKIN_REALM
.db CHAPTER_120_CHOSEN_BY_FATE
.db CHAPTER_201_THE_GRUSTIAN_EXPEDITION
.db CHAPTER_202_REBELLION_AT_MACEDON
.db CHAPTER_203_ABDUCTED_PRINCESS
.db CHAPTER_204_JOY_AND_SORROW
.db CHAPTER_205_LIBERATION_OF_GRUST
.db CHAPTER_206_THE_NEST_OF_EVIL
.db CHAPTER_207_THE_SCARLET_SWORD
.db CHAPTER_208_SOULFUL_BRIDGE
.db CHAPTER_209_SANCTUARY_OF_SORCERY
.db CHAPTER_210_TWO_SORCERERS
.db CHAPTER_211_ANRIS_WAY
.db CHAPTER_212_GRAVEYARD_OF_FIRE_DRAGONS
.db CHAPTER_213_FROZEN_LAND
.db CHAPTER_214_A_MYSTERY_REVEALED
.db CHAPTER_215_RETURN_OF_THE_PRINCE
.db CHAPTER_216_REGAINING_THE_CAPITAL
.db CHAPTER_217_GRAS_SUN_SETS
.db CHAPTER_218_BATTLE_OF_THE_PASS
.db CHAPTER_219_THE_LAST_DECISIVE_BATTLE
.db CHAPTER_220_DARK_EMPEROR
.db CHAPTER_E01_THE_WYVERNS_DALE
.db CHAPTER_E02_THE_DRAGON_ALTAR_PART_1
.db CHAPTER_E03_THE_DRAGON_ALTAR_PART_2
.db CHAPTER_E04_THE_DRAGON_ALTAR_PART_3
.db CHAPTER_E02_THE_DRAGON_ALTAR_PART_1
.db CHAPTER_E03_THE_DRAGON_ALTAR_PART_2
.db CHAPTER_E04_THE_DRAGON_ALTAR_PART_3
.db CHAPTER_UNKNOWN_48
.db CHAPTER_UNKNOWN_49
.db CHAPTER_UNKNOWN_50
.db CHAPTER_UNKNOWN_51
.db CHAPTER_UNKNOWN_52
.db CHAPTER_UNKNOWN_53
.db CHAPTER_UNKNOWN_54
.db CHAPTER_UNKNOWN_55
.db CHAPTER_UNKNOWN_56
.db CHAPTER_UNKNOWN_57
.db CHAPTER_UNKNOWN_58
.db CHAPTER_UNKNOWN_59
.db CHAPTER_UNKNOWN_60
.db CHAPTER_UNKNOWN_61
.db CHAPTER_UNKNOWN_62
; seems those bytes aren't in the table
; since CHAPTERS_INFORMATION has 63 lines
.db CHAPTER_000_DEBUG
.db CHAPTER_000_DEBUG
.db CHAPTER_000_DEBUG
.db CHAPTER_000_DEBUG
.db CHAPTER_000_DEBUG
.db CHAPTER_000_DEBUG
.db CHAPTER_000_DEBUG
.db CHAPTER_000_DEBUG
.db CHAPTER_000_DEBUG
.db CHAPTER_000_DEBUG
.db CHAPTER_000_DEBUG
.db CHAPTER_000_DEBUG
.db CHAPTER_000_DEBUG
.db CHAPTER_000_DEBUG
.db CHAPTER_000_DEBUG
.db CHAPTER_000_DEBUG
.db CHAPTER_000_DEBUG
.db CHAPTER_000_DEBUG
.db CHAPTER_000_DEBUG
.db CHAPTER_000_DEBUG
.db CHAPTER_000_DEBUG
.db CHAPTER_000_DEBUG
.db CHAPTER_000_DEBUG
.db CHAPTER_000_DEBUG
.db CHAPTER_000_DEBUG
.db CHAPTER_000_DEBUG
.db CHAPTER_000_DEBUG
.db CHAPTER_000_DEBUG
.db CHAPTER_000_DEBUG
.db CHAPTER_000_DEBUG
.db CHAPTER_000_DEBUG
.db CHAPTER_000_DEBUG
.db CHAPTER_000_DEBUG
.db CHAPTER_000_DEBUG
.db CHAPTER_000_DEBUG
.db CHAPTER_000_DEBUG
.db CHAPTER_UNKNOWN_99

L848C79:
	php
	lda.w #bank100(L8480C3)
	sta $01
	lda.w #L8480C3
	sta $00
	lda.w #$7e00
	sta $04
	lda.w #DecompressionLocation
	sta $03
	lda $0e0f
	jsr L848C96
	plp
	rts

L848C96:
	php
	sep #$20
	stz $08
	sta.w WRMPYA
	ldy #$0000
L848CA1:
	lda [$00],Y
	sta.w WRMPYB
	nop
	nop
	nop
	rep #$20
	lda.w RDMPYL
	lsr
	lsr
	lsr
	lsr
	lsr
	sta $06
	sep #$20
	iny
	lda [$00],Y
	sta.w WRMPYB
	nop
	nop
	nop
	rep #$20
	lda.w RDMPYL
	xba
	lsr
	lsr
	lsr
	lsr
	lsr
	clc
	adc $06
	dey
	sta [$03],Y
	iny
	iny
	cpy #$0380
	bcc L848CA1
	plp
	rts

L848CDA:
	php
	ldy #$0000
	ldx #$fffe
	lda #bank100(LAFC000)
	sta $01
	lda #LAFC000
	sta $00
	lda #bank100(LCBC000)
	sta $04
	lda #LCBC000
	sta $03
	sep #$20
L848CF7:
	inx
	inx
	lda [$03],Y
	sta.l DecompressionLocation,X
	lda [$00],Y
	sta.l (DecompressionLocation+1),X
	iny
	cpy #$4000
	bcc L848CF7
	rep #$20
	lda #bank100(L848D1D)
	sta $01
	lda #L848D1D
	sta $00
	jsl L808EAD
	plp
	rts

L848D1D:
DMA_DATA DecompressionLocation $8000 $80 $0000

L848D26:
	php
	lda #bank100(LDBF7A5)
	sta.l $000072
	lda #LDBF7A5
	sta.l $000071
	lda #$0000
	sta.l $000076
	jsl DECOMPRESS_ASSET
	lda #bank100(L848D50)
	sta $01
	lda #L848D50
	sta $00
	jsl L808EAD
	plp
	rts

L848D50:
DMA_DATA DecompressionLocation $2000 $80 $5800

L848D59:
	php
	lda #bank100(LDBF5BC)
	sta.l $000072
	lda #LDBF5BC
	sta.l $000071
	lda #$0000
	sta.l $000076
	jsl DECOMPRESS_ASSET
	lda #bank100(L848D83)
	sta $01
	lda #L848D83
	sta $00
	jsl L808EAD
	plp
	rts

L848D83:
DMA_DATA DecompressionLocation $0400 $80 $5600

L848D8C:
	php
	lda #bank100(LDBF71F)
	sta.l $000072
	lda #LDBF71F
	sta.l $000071
	lda #$0000
	sta.l $000076
	jsl DECOMPRESS_ASSET
	lda #bank100(L848DC4)
	sta $01
	lda #L848DC4
	sta $00
	jsl L808EAD
	lda #bank100(L848DCD)
	sta $01
	lda #L848DCD
	sta $00
	jsl L808EAD
	plp
	rts

L848DC4:
DMA_DATA DecompressionLocation $0040 $80 $54E0
L848DCD:
DMA_DATA $7E413E $0040 $80 $55E0

L848DD6:
	php
	lda $07DF
	and #$00FF
	sec
	sbc #$0015
	cmp #$0019
	bcc L848DE9
	lda #$0000
L848DE9:
	sta $15
	asl
	clc
	adc $15
	tax
	lda.w (L848E25 + 1),X
	sta.l $000072
	lda.w L848E25,X
	sta.l $000071
	lda #$0000
	sta.l $000076
	jsl DECOMPRESS_ASSET
	ldx #$0000
L848E0C:
	phx
	lda #bank100(L848E70)
	sta $01
	lda.w L848E70,X
	sta $00
	jsl L808EAD
	plx
	inx
	inx
	cpx #$0010
	bcc L848E0C
	plp
	rts

L848E25:
.db $00 $80 $DB $64 $85 $DB $63 $8A
.db $DB $45 $8F $DB $87 $94 $DB $1D
.db $99 $DB $EC $9E $DB $7C $A5 $DB
.db $3C $AB $DB $66 $B0 $DB $68 $B5
.db $DB $DE $BA $DB $6A $C1 $DB $34
.db $C7 $DB $EC $CC $DB $1E $D2 $DB
.db $45 $D6 $DB $15 $DC $DB $5B $E1
.db $DB $B4 $E6 $DB $DB $EB $DB $C6
.db $F0 $DB $00 $80 $DB $00 $80 $DB
.db $00 $80 $DB

L848E70:
.dw L848E80
.dw L848E89
.dw L848E92
.dw L848E9B
.dw L848EA4
.dw L848EAD
.dw L848EB6
.dw L848EBF

L848E80:
DMA_DATA DecompressionLocation $0100 $80 $5880
L848E89:
DMA_DATA $7E42FE $0100 $80 $5980
L848E92:
DMA_DATA $7E44FE $0100 $80 $5A80
L848E9B:
DMA_DATA $7E46FE $0100 $80 $5B80
L848EA4:
DMA_DATA $7E48FE $0100 $80 $5C80
L848EAD:
DMA_DATA $7E4AFE $0100 $80 $5D80
L848EB6:
DMA_DATA $7E4CFE $0100 $80 $5E80
L848EBF:
DMA_DATA $7E4EFE $0100 $80 $5F80

L848EC8:
	php
	rep #$30
	ldy #$0200
	ldx #$0000
L848ED1:
	lda.l L858000,X
	sta $7F5130,X
	inx
	dey
	inx
	dey
	bne L848ED1
	lda #$0000
	sta $7F5130
	ldy #$0020
	ldx #$0000
L848EEC:
	lda.l L8581E0,X
	sta $7F52F0,X
	inx
	dey
	inx
	dey
	bne L848EEC
	ldy #$0020
	ldx #$0000
L848F00:
	lda.l L8581E0,X
	sta $7F52D0,X
	inx
	dey
	inx
	dey
	bne L848F00
	ldy #$0020
	ldx #$0000
L848F14:
	lda.l L8581E0,X
	sta $7F5290,X
	inx
	dey
	inx
	dey
	bne L848F14
	ldy #$0020
	ldx #$0000
L848F28:
	lda.l L8581E0,X
	sta $7F5270,X
	inx
	dey
	inx
	dey
	bne L848F28
	lda $07DF
	and #$00FF
	sec
	sbc #$0015
	bcc L848F87
	asl
	tax
	lda.w L848FAB,X
	and #$00FF
	cmp #$0003
	beq L848F5B
	cmp #$0004
	beq L848F71
	cmp #$0005
	beq L848F87
	bra L848F9B

L848F5B:
	ldy #$0020
	ldx #$0000
L848F61:
	lda.l L858160,X
	sta $7F5230,X
	inx
	dey
	inx
	dey
	bne L848F61
	bra L848F9B

L848F71:
	ldy #$0020
	ldx #$0000
L848F77:
	lda.l L858180,X
	sta $7F5230,X
	inx
	dey
	inx
	dey
	bne L848F77
	bra L848F9B

L848F87:
	ldy #$0020
	ldx #$0000
L848F8D:
	lda.l L8581A0,X
	sta $7F5230,X
	inx
	dey
	inx
	dey
	bne L848F8D
L848F9B:
	lda #bank100(L83897A)
	sta $01
	lda #L83897A
	sta $00
	jsl L808EAD
	plp
	rts

L848FAB:
.db $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00
.db $04 $00 $04 $00 $05 $00 $00 $00
.db $05 $00 $05 $00 $00 $00 $03 $00
.db $00 $00 $00 $00 $00 $00 $00 $00
.db $04 $00 $00 $00

L848FD7:
	php
	sep #$30
	lda #$02
	sta $7B
	lda #$0F
	sta $7E
	lda #$00
	sta $7F
	lda #$00
	sta $80
	lda #$00
	sta $81
	lda #$00
	sta $82
	lda #$00
	sta $83
	lda #$00
	sta $84
	lda #$00
	sta $85
	lda #$00
	sta $89
	sta $8A
	lda #$00
	sta $8B
	sta $8C
	lda #$00
	sta $8D
	sta $8E
	lda #$00
	sta $8F
	sta $90
	lda #$00
	sta $91
	sta $92
	lda #$00
	sta $93
	sta $94
	lda #$00
	sta $95
	sta $96
	lda #$00
	sta $97
	sta $98
	lda #$C0
	sta $86
	lda #$00
	sta $AA
	lda #$01
	sta $AB
	lda #$00
	sta $AC
	lda #$00
	sta $AD
	lda #$00
	sta $AE
	lda #$00
	sta $AF
	lda #$00
	sta $B0
	lda #$01
	sta $B1
	lda #$00
	sta $B2
	lda #$00
	sta $B3
	lda #$00
	sta $B4
	lda #$00
	sta $B5
	lda #$00
	sta $87
	lda #$00
	sta $88
	lda #$00
	sta $99
	lda #$00
	sta $9E
	lda #$00
	sta $9F
	lda #$11
	sta $A0
	lda #$10
	sta $A1
	lda #$00
	sta $A2
	lda #$00
	sta $A3
	lda #$02
	sta $A4
	lda #$01
	sta $A5
	lda #$20
	sta $A8
	lda #$40
	sta $A7
	lda #$80
	sta $A6
	lda #$00
	sta $A9
	plp
	rts

L8490A0:
	php
	sep #$20
	lda #$00
	sta $4360
	lda #$32
	sta $4361
	rep #$20
	lda #bank100(L848443)
	sta $4363
	lda #L848443
	sta $4362
	plp
	rts

L8490BD:
	php
	rep #$30
	lda $0E00
	and #$00FF
	asl
	tax
	jsr (L8490CD,X)
	plp
	rtl

L8490CD:
.dw L8490E7
.dw L8494E6
.dw L849430
.dw L84CB21
.dw L84945D
.dw L84946C
.dw L8494B2
.dw L8487F6
.dw L84898E
.dw L8494C4
.dw L8491DD
.dw L84EC11
.dw L84F39C

L8490E7:
	php
	rep #$30
	jsl L808CEA
	jsl L80884A
	jsl L808838
	sep #$20
	lda #$FF
	eor #$FF
	and $F7
	sta $F7
	rep #$30
	jsl L808778
	jsr L848FD7
	jsr L848CDA
	jsr L848D26
	jsr L848DD6
	jsr L848D59
	jsr L848D8C
	jsr L848EC8
	lda #$0000
	jsr L84B8F7
	jsr L8493F2
	jsr L848C79
	sep #$20
	lda #$42
	sta $4340
	lda #$1B
	sta $4341
	lda #$12
	sta $4342
	lda #$0E
	sta $4343
	lda #$00
	sta $4344
	lda #$7E
	sta $4347
	rep #$20
	sep #$20
	lda #$42
	sta $4350
	lda #$1E
	sta $4351
	lda #$1B
	sta $4352
	lda #$0E
	sta $4353
	lda #$00
	sta $4354
	lda #$7E
	sta $4357
	rep #$20
	jsr L8490A0
	jsl L808826
	lda #$0000
	sta $52
	jsl L80954E
	sep #$20
	lda #$C0
	sta $86
	rep #$30
	lda #$0134
	sta $1408
	lda #$0123
	sta $140A
	lda #$00BA
	sta $140C
	lda #$00B4
	sta $140E
	lda #$0000
	sta $1410
	lda #$0270
	sta $1412
	lda #$0270
	sta $1414
	jsr L84E253
	jsr L84E55A
	lda #$7F00
	sta $01
	lda #$F200
	sta $00
	jsl L87B860
	jsl L8088A0
	lda #$8062
	sta $0876
	jsr L84E955
	lda #$0000
	sta $1420
	sep #$20
	lda #$01
	sta $0E00
	plp
	rts

L8491DD:
	php
	rep #$30
	jsl L808CEA
	jsl L80884A
	jsl L808838
	sep #$20
	lda #$FF
	eor #$FF
	and $F7
	sta $F7
	rep #$30
	jsl L808778
	jsr L848FD7
	jsr L848CDA
	jsr L848D26
	jsr L848DD6
	jsr L848D59
	jsr L848D8C
	jsr L848EC8
	lda #$0000
	jsr L84B8F7
	jsr L8493F2
	jsr L848C79
	sep #$20
	lda #$42
	sta $4340
	lda #$1B
	sta $4341
	lda #$12
	sta $4342
	lda #$0E
	sta $4343
	lda #$00
	sta $4344
	lda #$7E
	sta $4347
	rep #$20
	sep #$20
	lda #$42
	sta $4350
	lda #$1E
	sta $4351
	lda #$1B
	sta $4352
	lda #$0E
	sta $4353
	lda #$00
	sta $4354
	lda #$7E
	sta $4357
	rep #$20
	jsr L8490A0
	jsl L808826
	lda #$0000
	sta $52
	jsl L80954E
	sep #$20
	lda #$C0
	sta $86
	rep #$30
	lda #$0134
	sta $1408
	lda #$0123
	sta $140A
	lda #$00BA
	sta $140C
	lda #$00B4
	sta $140E
	lda #$0000
	sta $1410
	lda #$0270
	sta $1412
	lda #$0270
	sta $1414
	jsr L84E253
	jsr L84E55A
	lda #$7F00
	sta $01
	lda #$F200
	sta $00
	jsl L87B860
	jsr L84E70D
	jsl L8088A0
	lda #$0004
	sta $141E
	sep #$20
	lda #$03
	sta $0E00
	plp
	rts

L8492CD:
	php
	rep #$30
	jsl L808CEA
	jsl L80884A
	jsl L808838
	sep #$20
	lda #$FF
	eor #$FF
	and $F7
	sta $F7
	rep #$30
	jsl L808778
	jsr L848FD7
	jsr L848CDA
	jsr L848D26
	jsr L848DD6
	jsr L848D59
	jsr L848D8C
	jsr L848EC8
	lda #$0000
	jsr L84B8F7
	jsr L8493F2
	sep #$20
	lda #$1C
	sta $0E0F
	rep #$30
	jsr L848C79
	sep #$20
	lda #$42
	sta $4340
	lda #$1B
	sta $4341
	lda #$12
	sta $4342
	lda #$0E
	sta $4343
	lda #$00
	sta $4344
	lda #$7E
	sta $4347
	rep #$20
	sep #$20
	lda #$42
	sta $4350
	lda #$1E
	sta $4351
	lda #$1B
	sta $4352
	lda #$0E
	sta $4353
	lda #$00
	sta $4354
	lda #$7E
	sta $4357
	rep #$20
	jsr L8490A0
	jsl L808826
	sep #$20
	lda #$02
	sta $7B
	rep #$30
	lda #$0000
	sta $52
	jsl L80954E
	sep #$20
	lda #$C0
	sta $86
	lda #$81
	sta $A5
	lda #$EA
	sta $A6
	rep #$30
	lda #$00F0
	sta $1408
	lda #$0131
	sta $140A
	lda #$0074
	sta $140C
	lda #$00C2
	sta $140E
	lda #$0000
	sta $1410
	lda #$0000
	sta $1412
	lda #$0000
	sta $1414
	jsr L84E253
	jsr L84E55A
	sep #$20
	lda $F7
	ora #$30
	sta $F7
	rep #$30
	lda #$7F00
	sta $01
	lda #$F200
	sta $00
	jsl L87B860
	sep #$20
	lda #$01
	sta $07D6
	lda #$03
	sta $0E00
	rep #$30
	lda #$0003
	sta $141E
	lda #$04F0
	jsl L80B4E3
	jsr L84E70D
	jsl L8088A0
	jsl L808CB4
	plp
	rts

L8493F2:
	php
	sep #$20
	stz $0E18
	stz $0E21
	lda #$34
	sta $0E0F
	lda #$F0
	sta $0E12
	lda #$F0
	sta $0E15
	lda #$F0
	sta $0E1B
	lda #$F0
	sta $0E1E
	rep #$30
	lda #$40FE
	sta $0E13
	lda #$41DE
	sta $0E16
	lda #$42BE
	sta $0E1C
	lda #$439E
	sta $0E1F
	plp
	rts

L849430:
	php
	rep #$30
	jsr L848DD6
	jsl L8087EA
	jsl L8087EA
	jsr L848EC8
	lda #$0000
	jsr L84B8F7
	jsl L8087EA
	jsr L84E70D
	lda #$0000
	sta $141E
	sep #$20
	lda #$03
	sta $0E00
	plp
	rts

L84945D:
	php
	rep #$30
	jsr L8485DF
	sep #$20
	lda #$07
	sta $0E00
	plp
	rts

L84946C:
	php
	sep #$20
	lda $07DF
	pha
	lda $07D8
	cmp #$01
	beq L849481
	lda #$2B
	sta $07DF
	bra L8494A0

L849481:
	jsl L808CEA
	sep #$20
	lda #$00
	sta $F7
	rep #$30
	jsl L8087EA
	jsl L8DE608
	jsr L8492CD
	sep #$20
	pla
	sta $07DF
	bra L8494B0

L8494A0:
	rep #$30
	jsr L848695
	sep #$20
	pla
	sta $07DF
	lda #$08
	sta $0E00
L8494B0:
	plp
	rts

L8494B2:
	php
	rep #$30
	jsl L8DE608
	jsr L8492CD
	lda #$0001
	sta $146C
	plp
	rts

L8494C4:
	php
	sep #$20
	lda #$01
	sta $07D6
	lda #$03
	sta $074A
	lda #$00
	sta $08D0
	rep #$30
	lda #$0000
	sta $146C
	lda #$0000
	sta $0FA1
	plp
	rts

L8494E6:
	php
	rep #$30
	jsr L84F935
	jsr L84B8A6
	jsr L84B93A
	jsr L84B98B
	lda $1420
	and #$00FF
	asl
	tax
	jsr (L849502,X)
	plp
	rts

L849502:
.dw L849518
.dw L8495C8
.dw L849C7F
.dw L849DB7
.dw L849F0D
.dw L84A300
.dw L84A74C
.dw L84ABF3
.dw L84B2DF
.dw L84EC11
.dw L84B528

L849518:
	php
	sep #$20
	lda #$00
	sta $1466
	lda #$00
	sta $1467
	rep #$30
	lda #$0000
	sta $142C
	lda #$0001
	sta $144C
	lda #$0001
	sta $144E
	lda #$0000
	sta $145E
	lda #$0000
	jsr L848567
	jsl L93CBFE
	bcc L849566
	lda #$0001
	sta $1468
	jsr L849C90
	bcc L84955E
	lda #$0003
	sta $1424
	bra L849581

L84955E:
	lda #$0001
	sta $1424
	bra L849581

L849566:
	lda #$0000
	sta $1468
	rep #$20
	jsr L849C90
	bcs L84957B
	lda #$0000
	sta $1424
	bra L849581

L84957B:
	lda #$0002
	sta $1424
L849581:
	sep #$20
	lda #$01
	sta $15B4
	rep #$20
	lda $1424
	sta $15A2
	lda #$0002
	sta $15B8
	lda #$0000
	sta $15BA
	lda #$0001
	sta $1584
	lda #$0009
	sta $1420
	lda $1424
	jsr L84F9D3
	lda #$0000
	sta $159D
	lda #$142C
	sta $159C
	lda #$0000
	sta $159A
	lda #$144C
	sta $1599
	plp
	rts

L8495C8:
	php
	rep #$30
	lda #$0000
	sta $142E
	lda #$0000
	sta $1430
	lda #$0000
	sta $1432
	lda #$0000
	sta $1434
	lda #$0000
	sta $143E
	lda #$0000
	sta $1440
	lda #$0000
	sta $1442
	lda #$0000
	sta $1444
	lda #$0000
	sta $1446
	lda $1424
	and #$00FF
	asl
	tax
	jsr (L84960E,X)
	plp
	rts

L84960E:
.dw L849616
.dw L849870
.dw L849AB8
.dw L849BD1

L849616:
	php
	rep #$30
	jsr L84B582
	lda $144C
	cmp #$0001
	beq L849626
	bra L849629

L849626:
	brl L84986E

L849629:
	lda $1452
	cmp #$0001
	beq L849633
	bra L849636

L849633:
	brl L84986E

L849636:
	lda $0129
	and #$0800
	beq L849662
	lda #$002C
	jsl L80B467
	lda $143C
	cmp #$0000
	beq L849659
	lda $143C
	sec
	sbc #$0010
	sta $143C
	bra L849662

L849659:
	lda #$0040
	sta $143C
	brl L84986E

L849662:
	lda $0129
	and #$0400
	beq L84968E
	lda #$002C
	jsl L80B467
	lda $143C
	cmp #$0040
	beq L849685
	lda $143C
	clc
	adc #$0010
	sta $143C
	bra L84968E

L849685:
	lda #$0000
	sta $143C
	brl L84986E

L84968E:
	lda $0127
	and #$0080
	bne L849699
	brl L84986E

L849699:
	lda #$002D
	jsl L80B467
	lda $143C
	cmp #$0000
	bne L8496BA
	sep #$20
	lda #$00
	sta $07D6
	rep #$20
	lda #$0002
	sta $1420
	brl L84986E

L8496BA:
	lda $143C
	cmp #$0010
	bne L849721
	sep #$20
	lda #$01
	sta $07D6
	rep #$20
	jsr L84AB25
	jsr L84AB56
	bcc L8496D6
	jsr L84AAE6
L8496D6:
	lda #$0000
	sta $1458
	lda #$0000
	sta $145A
	lda #$0000
	sta $145C
	sep #$20
	lda #$01
	sta $15B4
	rep #$20
	lda $1424
	sta $15A2
	lda #$0004
	sta $15B6
	lda #$0000
	sta $15B8
	lda #$0000
	sta $15BA
	lda #$0003
	sta $1584
	lda #$0009
	sta $1420
	lda #$0001
	sta $144C
	jsr L84852B
	brl L84984A

L849721:
	lda $143C
	cmp #$0020
	bne L849789
	sep #$20
	lda #$02
	sta $07D6
	rep #$30
	ldx #$0001
	jsr L84A973
	lda #$0000
	sta $1458
	lda #$0000
	sta $145A
	lda #$0000
	sta $145C
	sep #$20
	lda #$01
	sta $15B4
	rep #$20
	lda $1424
	sta $15A2
	lda #$0004
	sta $15B6
	lda #$0000
	sta $15B8
	lda #$0000
	sta $15BA
	lda #$0004
	sta $1584
	lda #$0009
	sta $1420
	lda #$0000
	sta $1428
	lda #$0001
	sta $144C
	jsr L84852B
	brl L84984A

L849789:
	lda $143C
	cmp #$0030
	bne L8497ED
	sep #$20
	lda #$03
	sta $07D6
	rep #$30
	ldx #$0001
	jsr L84A973
	jsr L84AAE6
	lda #$0000
	sta $1458
	lda #$0000
	sta $145A
	lda #$0000
	sta $145C
	sep #$20
	lda #$01
	sta $15B4
	rep #$20
	lda $1424
	sta $15A2
	lda #$0004
	sta $15B6
	lda #$0000
	sta $15B8
	lda #$0000
	sta $15BA
	lda #$0005
	sta $1584
	lda #$0009
	sta $1420
	lda #$0001
	sta $144C
	jsr L84852B
	bra L84984A

L8497ED:
	sep #$20
	lda #$04
	sta $07D6
	rep #$30
	ldx #$0000
	jsr L84A973
	lda #$0000
	sta $1458
	lda #$0000
	sta $145A
	lda #$0000
	sta $145C
	sep #$20
	lda #$01
	sta $15B4
	rep #$20
	lda $1424
	sta $15A2
	lda #$0004
	sta $15B6
	lda #$0000
	sta $15B8
	lda #$0000
	sta $15BA
	lda #$0006
	sta $1584
	lda #$0009
	sta $1420
	lda #$0000
	sta $1462
	lda #$0001
	sta $144C
	jsr L84852B
L84984A:
	lda #$0001
	sta $142E
	lda #$0004
	jsr L84F9D3
	lda #$0000
	sta $159D
	lda #$142E
	sta $159C
	lda #$0000
	sta $159A
	lda #$144C
	sta $1599
L84986E:
	plp
	rts

L849870:
	php
	rep #$30
	jsr L84B67D
	lda $144C
	cmp #$0001
	beq L849880
	bra L849883

L849880:
	brl L849AB6

L849883:
	lda $1452
	cmp #$0001
	beq L84988D
	bra L849890

L84988D:
	brl L849AB6

L849890:
	lda $0129
	and #$0800
	beq L8498BD
	lda #$002C
	jsl L80B467
	lda $143C
	cmp #$0000
	beq L8498B4
	lda $143C
	sec
	sbc #$0010
	sta $143C
	brl L849AB6

L8498B4:
	lda #$0030
	sta $143C
	brl L849AB6

L8498BD:
	lda $0129
	and #$0400
	beq L8498EA
	lda #$002C
	jsl L80B467
	lda $143C
	cmp #$0030
	beq L8498E1
	lda $143C
	clc
	adc #$0010
	sta $143C
	brl L849AB6

L8498E1:
	lda #$0000
	sta $143C
	brl L849AB6

L8498EA:
	lda $0127
	and #$0080
	bne L8498F5
	brl L849AB6

L8498F5:
	lda #$002D
	jsl L80B467
	lda $143C
	cmp #$0000
	bne L849963
	sep #$20
	lda #$01
	sta $07D6
	rep #$20
	jsr L84AB25
	jsr L84AB56
	bcc L849918
	jsr L84AAE6
L849918:
	lda #$0000
	sta $1458
	lda #$0000
	sta $145A
	lda #$0000
	sta $145C
	sep #$20
	lda #$01
	sta $15B4
	rep #$20
	lda $1424
	sta $15A2
	lda #$0004
	sta $15B6
	lda #$0000
	sta $15B8
	lda #$0000
	sta $15BA
	lda #$0003
	sta $1584
	lda #$0009
	sta $1420
	lda #$0001
	sta $144C
	jsr L84852B
	brl L849A92

L849963:
	lda $143C
	cmp #$0010
	bne L8499CB
	sep #$20
	lda #$02
	sta $07D6
	rep #$30
	ldx #$0001
	jsr L84A973
	lda #$0000
	sta $1458
	lda #$0000
	sta $145A
	lda #$0000
	sta $145C
	sep #$20
	lda #$01
	sta $15B4
	rep #$20
	lda $1424
	sta $15A2
	lda #$0004
	sta $15B6
	lda #$0000
	sta $15B8
	lda #$0000
	sta $15BA
	lda #$0004
	sta $1584
	lda #$0009
	sta $1420
	lda #$0000
	sta $1428
	lda #$0001
	sta $144C
	jsr L84852B
	brl L849A92

L8499CB:
	lda $143C
	cmp #$0020
	bne L849A35
	sep #$20
	lda #$03
	sta $07D6
	rep #$30
	ldx #$0001
	jsr L84A973
	jsr L84AAE6
	lda #$0000
	sta $1458
	lda #$0000
	sta $145A
	lda #$0000
	sta $145C
	sep #$20
	lda #$01
	sta $15B4
	rep #$20
	lda $1424
	sta $15A2
	lda #$0004
	sta $15B6
	lda #$0000
	sta $15B8
	lda #$0000
	sta $15BA
	lda #$0005
	sta $1584
	lda #$0009
	sta $1420
	lda #$0000
	sta $1426
	lda #$0001
	sta $144C
	jsr L84852B
	bra L849A92

L849A35:
	sep #$20
	lda #$04
	sta $07D6
	rep #$30
	ldx #$0000
	jsr L84A973
	lda #$0000
	sta $1458
	lda #$0000
	sta $145A
	lda #$0000
	sta $145C
	sep #$20
	lda #$01
	sta $15B4
	rep #$20
	lda $1424
	sta $15A2
	lda #$0004
	sta $15B6
	lda #$0000
	sta $15B8
	lda #$0000
	sta $15BA
	lda #$0006
	sta $1584
	lda #$0009
	sta $1420
	lda #$0000
	sta $1462
	lda #$0001
	sta $144C
	jsr L84852B
L849A92:
	lda #$0001
	sta $142E
	lda #$0004
	jsr L84F9D3
	lda #$0000
	sta $159D
	lda #$142E
	sta $159C
	lda #$0000
	sta $159A
	lda #$144C
	sta $1599
L849AB6:
	plp
	rts

L849AB8:
	php
	rep #$30
	jsr L84B75F
	lda $144C
	cmp #$0001
	beq L849AC8
	bra L849ACB

L849AC8:
	brl L849BCF

L849ACB:
	lda $1452
	cmp #$0001
	beq L849AD5
	bra L849AD8

L849AD5:
	brl L849BCF

L849AD8:
	lda $0129
	and #$0800
	beq L849AFD
	lda #$002C
	jsl L80B467
	lda $143C
	sec
	sbc #$0010
	sta $143C
	lda $143C
	and #$0010
	sta $143C
	brl L849BCF

L849AFD:
	lda $0129
	and #$0400
	beq L849B22
	lda #$002C
	jsl L80B467
	lda $143C
	clc
	adc #$0010
	sta $143C
	lda $143C
	and #$0010
	sta $143C
	brl L849BCF

L849B22:
	lda $0127
	and #$0080
	bne L849B2D
	brl L849BCF

L849B2D:
	lda #$002D
	jsl L80B467
	lda $143C
	cmp #$0000
	bne L849B4E
	sep #$20
	lda #$00
	sta $07D6
	rep #$20
	lda #$0002
	sta $1420
	brl L849BCF

L849B4E:
	sep #$20
	lda #$02
	sta $07D6
	rep #$30
	ldx #$0001
	jsr L84A973
	lda #$0000
	sta $1458
	lda #$0000
	sta $145A
	lda #$0000
	sta $145C
	sep #$20
	lda #$01
	sta $15B4
	rep #$20
	lda $1424
	sta $15A2
	lda #$0004
	sta $15B6
	lda #$0000
	sta $15B8
	lda #$0000
	sta $15BA
	lda #$0004
	sta $1584
	lda #$0009
	sta $1420
	lda #$0000
	sta $1428
	lda #$0001
	sta $144C
	jsr L84852B
	lda #$0001
	sta $142E
	lda #$0004
	jsr L84F9D3
	lda #$0000
	sta $159D
	lda #$142E
	sta $159C
	lda #$0000
	sta $159A
	lda #$144C
	sta $1599
L849BCF:
	plp
	rts

L849BD1:
	php
	rep #$30
	jsr L84B80F
	lda $144C
	cmp #$0001
	beq L849BE1
	bra L849BE4

L849BE1:
	brl L849C7D

L849BE4:
	lda $1452
	cmp #$0001
	beq L849BEE
	bra L849BF1

L849BEE:
	brl L849C7D

L849BF1:
	lda $0129
	and #$0C00
	beq L849BFC
	brl L849C7D

L849BFC:
	lda $0127
	and #$0080
	bne L849C07
	brl L849C7D

L849C07:
	lda #$002D
	jsl L80B467
	sep #$20
	lda #$02
	sta $07D6
	rep #$30
	ldx #$0001
	jsr L84A973
	sep #$20
	lda #$01
	sta $15B4
	rep #$20
	lda $1424
	sta $15A2
	lda #$0004
	sta $15B6
	lda #$0000
	sta $15B8
	lda #$0000
	sta $15BA
	lda #$0004
	sta $1584
	lda #$0009
	sta $1420
	lda #$0000
	sta $1428
	lda #$0001
	sta $144C
	jsr L84852B
	lda #$0001
	sta $142E
	lda #$0004
	jsr L84F9D3
	lda #$0000
	sta $159D
	lda #$142E
	sta $159C
	lda #$0000
	sta $159A
	lda #$144C
	sta $1599
L849C7D:
	plp
	rts

L849C7F:
	php
	rep #$30
	lda #$000A
	sta $1422
	lda #$0008
	sta $1420
	plp
	rts

L849C90:
	php
	rep #$30
	lda #$0000
	sta $144A
	lda #$0000
	jsl L93CBC2
	bcs L849CBA
	sep #$20
	lda $7005A4
	sta $1436
	lda #$00
	sta $1437
	rep #$20
	lda #$0001
	sta $144A
	bra L849CC0

L849CBA:
	lda #$0000
	sta $1436
L849CC0:
	lda #$0001
	jsl L93CBC2
	bcs L849CE1
	sep #$20
	lda $700C24
	sta $1438
	lda #$00
	sta $1439
	rep #$20
	lda #$0001
	sta $144A
	bra L849CE7

L849CE1:
	lda #$0000
	sta $1438
L849CE7:
	lda #$0002
	jsl L93CBC2
	bcs L849D08
	sep #$20
	lda $7012A4
	sta $143A
	lda #$00
	sta $143B
	rep #$20
	lda #$0001
	sta $144A
	bra L849D0E

L849D08:
	lda #$0000
	sta $143A
L849D0E:
	lda $144A
	cmp #$0001
	beq L849D19
	plp
	sec
	rts

L849D19:
	plp
	clc
	rts

L849D1C:
	php
	sep #$20
	lda $07D6
	cmp #$03
	bne L849D89
	lda $07D7
	cmp #$00
	beq L849D4F
	lda $07D7
	cmp #$01
	beq L849D6C
	lda $07D8
	cmp #$00
	beq L849D45
	rep #$20
	lda $143A
	sta $1438
	bra L849DB5

L849D45:
	rep #$20
	lda $143A
	sta $1436
	bra L849DB5

L849D4F:
	sep #$20
	lda $07D8
	cmp #$01
	beq L849D62
	rep #$20
	lda $1436
	sta $143A
	bra L849DB5

L849D62:
	rep #$20
	lda $1436
	sta $1438
	bra L849DB5

L849D6C:
	sep #$20
	lda $07D8
	cmp #$00
	beq L849D7F
	rep #$20
	lda $1438
	sta $143A
	bra L849DB5

L849D7F:
	rep #$20
	lda $1438
	sta $1436
	bra L849DB5

L849D89:
	sep #$20
	lda $07D7
	cmp #$00
	beq L849DA3
	lda $07D7
	cmp #$01
	beq L849DAD
	rep #$20
	lda #$0000
	sta $143A
	bra L849DB5

L849DA3:
	rep #$20
	lda #$0000
	sta $1436
	bra L849DB5

L849DAD:
	rep #$20
	lda #$0000
	sta $1438
L849DB5:
	plp
	rts

L849DB7:
	php
	rep #$30
	lda #$0000
	sta $1458
	lda #$0000
	sta $145A
	lda #$0000
	sta $145C
	jsr L84BA27
	lda $144C
	cmp #$0001
	beq L849DD9
	bra L849DDC

L849DD9:
	brl L849F0B

L849DDC:
	lda $1452
	cmp #$0001
	beq L849DE6
	bra L849DE9

L849DE6:
	brl L849F0B

L849DE9:
	lda $0129
	and #$0800
	beq L849E12
	lda #$002C
	jsl L80B467
L849DF8:
	lda $143E
	cmp #$0000
	beq L849E0C
	lda $143E
	sec
	sbc #$0010
	sta $143E
	bra L849E12

L849E0C:
	lda #$0020
	sta $143E
L849E12:
	jsr L84AB56
	bcc L849E19
	bra L849DF8

L849E19:
	lda $0129
	and #$0400
	beq L849E42
	lda #$002C
	jsl L80B467
L849E28:
	lda $143E
	cmp #$0020
	beq L849E3C
	lda $143E
	clc
	adc #$0010
	sta $143E
	bra L849E42

L849E3C:
	lda #$0000
	sta $143E
L849E42:
	jsr L84AB56
	bcc L849E49
	bra L849E28

L849E49:
	lda $143E
	sta $1442
	lda $0127
	and #$0080
	beq L849E9C
	lda #$002D
	jsl L80B467
	lda $143E
	cmp #$0000
	bne L849E71
	sep #$20
	lda #$00
	sta $07D7
	rep #$20
	bra L849E8D

L849E71:
	lda $143E
	cmp #$0010
	bne L849E84
	sep #$20
	lda #$01
	sta $07D7
	rep #$20
	bra L849E8D

L849E84:
	sep #$20
	lda #$02
	sta $07D7
	rep #$20
L849E8D:
	lda #$0000
	sta $1422
	lda #$0008
	sta $1420
	brl L849F0B

L849E9C:
	lda $0127
	and #$8000
	beq L849F0B
	lda #$00BE
	jsl L80B467
	lda #$0001
	sta $1420
	sep #$20
	lda #$01
	sta $15B4
	rep #$20
	lda #$0004
	sta $15A2
	lda $1424
	sta $15B6
	lda #$0000
	sta $15B8
	lda #$0000
	sta $15BA
	lda #$0001
	sta $1584
	lda #$0009
	sta $1420
	lda #$0001
	sta $144C
	lda #$0000
	sta $142C
	jsr L84852B
	lda $1424
	jsr L84F9D3
	lda #$0000
	sta $159D
	lda #$142C
	sta $159C
	lda #$0000
	sta $159A
	lda #$144C
	sta $1599
L849F0B:
	plp
	rts

L849F0D:
	php
	rep #$30
	lda $1428
	and #$00FF
	asl
	tax
	jsr (L849F1D,X)
	plp
	rts

L849F1D:
.dw L849F21
.dw L84A0CE

L849F21:
	php
	rep #$30
	lda #$0000
	sta $1458
	lda #$0000
	sta $145A
	lda #$0000
	sta $145C
	jsr L84BA27
	lda $144C
	cmp #$0001
	beq L849F43
	bra L849F46

L849F43:
	brl L84A0CC

L849F46:
	lda $1452
	cmp #$0001
	beq L849F50
	bra L849F53

L849F50:
	brl L84A0CC

L849F53:
	lda $0129
	and #$0800
	beq L849F80
	lda #$002C
	jsl L80B467
	lda $143E
	cmp #$0000
	beq L849F77
	lda $143E
	sec
	sbc #$0010
	sta $143E
	brl L84A0CC

L849F77:
	lda #$0020
	sta $143E
	brl L84A0CC

L849F80:
	lda $0129
	and #$0400
	beq L849FAD
	lda #$002C
	jsl L80B467
	lda $143E
	cmp #$0020
	beq L849FA4
	lda $143E
	clc
	adc #$0010
	sta $143E
	brl L84A0CC

L849FA4:
	lda #$0000
	sta $143E
	brl L84A0CC

L849FAD:
	lda $143E
	sta $1442
	lda $0127
	and #$0080
	bne L849FBE
	brl L84A063

L849FBE:
	lda #$002D
	jsl L80B467
	lda $143E
	cmp #$0000
	bne L849FD8
	sep #$20
	lda #$00
	sta $07D7
	rep #$20
	bra L849FF4

L849FD8:
	lda $143E
	cmp #$0010
	bne L849FEB
	sep #$20
	lda #$01
	sta $07D7
	rep #$20
	bra L849FF4

L849FEB:
	sep #$20
	lda #$02
	sta $07D7
	rep #$20
L849FF4:
	lda #$0001
	sta $144C
	lda #$0000
	sta $1454
	lda #$0001
	sta $145E
	sep #$20
	lda #$01
	sta $15B4
	rep #$20
	lda #$0004
	sta $15A2
	lda #$0005
	sta $15B6
	lda #$0000
	sta $15B8
	lda #$0000
	sta $15BA
	lda #$0004
	sta $1584
	lda #$0009
	sta $1420
	lda #$0000
	sta $142C
	lda #$0001
	sta $1428
	jsr L84852B
	lda #$0007
	jsr L84F9D3
	lda #$0000
	sta $159D
	lda #$1434
	sta $159C
	lda #$0000
	sta $159A
	lda #$144C
	sta $1599
	brl L84A0CC

L84A063:
	lda $0127
	and #$8000
	beq L84A0CC
	lda #$00BE
	jsl L80B467
	sep #$20
	lda #$01
	sta $15B4
	rep #$20
	lda #$0004
	sta $15A2
	lda $1424
	sta $15B6
	lda #$0000
	sta $15B8
	lda #$0000
	sta $15BA
	lda #$0001
	sta $1584
	lda #$0009
	sta $1420
	lda #$0000
	sta $142C
	lda #$0001
	sta $144C
	jsr L84852B
	lda $1424
	jsr L84F9D3
	lda #$0000
	sta $159D
	lda #$142C
	sta $159C
	lda #$0000
	sta $159A
	lda #$144C
	sta $1599
L84A0CC:
	plp
	rts

L84A0CE:
	php
	rep #$30
	lda $145E
	cmp #$0001
	bne L84A0E5
	lda #$0000
	jsr L848567
	lda #$0000
	sta $145E
L84A0E5:
	lda #$0000
	sta $1454
	jsr L84BE47
	lda $144C
	cmp #$0001
	beq L84A0F8
	bra L84A0FB

L84A0F8:
	brl L84A2FE

L84A0FB:
	lda $1452
	cmp #$0001
	beq L84A105
	bra L84A108

L84A105:
	brl L84A2FE

L84A108:
	lda $0129
	and #$0800
	beq L84A12D
	lda #$002C
	jsl L80B467
	lda $1444
	sec
	sbc #$0010
	sta $1444
	lda $1444
	and #$0010
	sta $1444
	brl L84A2FE

L84A12D:
	lda $0129
	and #$0400
	beq L84A152
	lda #$002C
	jsl L80B467
	lda $1444
	clc
	adc #$0010
	sta $1444
	lda $1444
	and #$0010
	sta $1444
	brl L84A2FE

L84A152:
	lda $0127
	and #$0080
	bne L84A15D
	brl L84A274

L84A15D:
	lda $1444
	cmp #$0000
	bne L84A170
	sep #$20
	lda #$00
	sta $07D8
	rep #$20
	bra L84A179

L84A170:
	sep #$20
	lda #$01
	sta $07D8
	rep #$20
L84A179:
	lda $1442
	cmp #$0000
	bne L84A18C
	lda $1436
	cmp #$0000
	bne L84A1AA
	brl L84A246

L84A18C:
	lda $1442
	cmp #$0010
	bne L84A19F
	lda $1438
	cmp #$0000
	bne L84A1AA
	brl L84A246

L84A19F:
	lda $143A
	cmp #$0000
	bne L84A1AA
	brl L84A246

L84A1AA:
	lda #$002D
	jsl L80B467
	lda #$0001
	sta $144E
	lda #$0000
	sta $1440
	lda #$0000
	sta $142E
	lda #$0001
	sta $1452
	lda #$0004
	sta $1422
	lda #$0001
	sta $1428
	sep #$20
	lda #$01
	sta $15B4
	rep #$20
	clc
	jsr L84ABB4
	tya
	sta $15A2
	lda $15A2
	clc
	adc #$0006
	sta $15A2
	lda #$0002
	sta $15B8
	lda #$0000
	sta $15BA
	lda #$0007
	sta $1584
	lda #$0009
	sta $1420
	lda #$0000
	sta $142C
	lda #$0000
	sta $142A
	lda #$0000
	sta $1448
	lda #$0001
	sta $1462
	lda #$0000
	sta $145E
	lda #$0005
	jsr L84F9D3
	lda #$0000
	sta $159D
	lda #$1430
	sta $159C
	lda #$0000
	sta $159A
	lda #$144E
	sta $1599
	bra L84A274

L84A246:
	lda #$002E
	jsl L80B467
	lda #$0000
	sta $1440
	lda #$0000
	sta $142E
	lda #$0000
	sta $1434
	lda #$0004
	sta $1422
	lda #$0001
	sta $1428
	lda #$0008
	sta $1420
	brl L84A2FE

L84A274:
	lda $0127
	and #$8000
	bne L84A27F
	brl L84A2FE

L84A27F:
	lda #$00BE
	jsl L80B467
	lda #$0001
	sta $144C
	lda #$0000
	sta $142E
	lda #$0000
	sta $1434
	sep #$20
	lda #$01
	sta $15B4
	rep #$20
	lda #$0005
	sta $15A2
	lda #$0004
	sta $15B6
	lda #$0000
	sta $15B8
	lda #$0000
	sta $15BA
	lda #$0004
	sta $1584
	lda #$0009
	sta $1420
	lda #$0000
	sta $142C
	lda #$0001
	sta $144C
	lda #$0000
	sta $1428
	lda #$0001
	sta $1422
	jsr L84852B
	lda #$0004
	jsr L84F9D3
	lda #$0000
	sta $159D
	lda #$142E
	sta $159C
	lda #$0000
	sta $159A
	lda #$144C
	sta $1599
L84A2FE:
	plp
	rts

L84A300:
	php
	rep #$30
	lda $1426
	and #$00FF
	asl
	tax
	jsr (L84A310,X)
	plp
	rts

L84A310:
.dw L84A314
.dw L84A4F2

L84A314:
	php
	rep #$30
	lda #$0000
	sta $1446
	lda $1462
	cmp #$0000
	bne L84A339
	lda #$0000
	sta $1458
	lda #$0000
	sta $145A
	lda #$0000
	sta $145C
	bra L84A340

L84A339:
	lda $1462
	dea
	sta $1462
L84A340:
	jsr L84BA27
	lda $142E
	cmp #$0001
	beq L84A34D
	bra L84A350

L84A34D:
	brl L84A359

L84A350:
	jsr L84BF3B
	lda #$0001
	sta $142E
L84A359:
	lda $144C
	cmp #$0001
	beq L84A363
	bra L84A366

L84A363:
	brl L84A4F0

L84A366:
	lda $1452
	cmp #$0001
	beq L84A370
	bra L84A373

L84A370:
	brl L84A4F0

L84A373:
	lda $0129
	and #$0800
	beq L84A39C
	lda #$002C
	jsl L80B467
L84A382:
	lda $143E
	cmp #$0000
	beq L84A396
	lda $143E
	sec
	sbc #$0010
	sta $143E
	bra L84A39C

L84A396:
	lda #$0020
	sta $143E
L84A39C:
	jsr L84AB56
	bcs L84A382
	lda $0129
	and #$0400
	beq L84A3CA
	lda #$002C
	jsl L80B467
L84A3B0:
	lda $143E
	cmp #$0020
	beq L84A3C4
	lda $143E
	clc
	adc #$0010
	sta $143E
	bra L84A3CA

L84A3C4:
	lda #$0000
	sta $143E
L84A3CA:
	jsr L84AB56
	bcs L84A3B0
	lda $143E
	cmp #$0000
	bne L84A3E2
	sep #$20
	lda #$00
	sta $07D7
	rep #$20
	bra L84A3FE

L84A3E2:
	lda $143E
	cmp #$0010
	bne L84A3F5
	sep #$20
	lda #$01
	sta $07D7
	rep #$20
	bra L84A3FE

L84A3F5:
	sep #$20
	lda #$02
	sta $07D7
	rep #$20
L84A3FE:
	lda $0127
	and #$0080
	bne L84A409
	brl L84A47B

L84A409:
	lda #$002D
	jsl L80B467
	lda $143E
	pha
	lda $1436
	pha
	lda $1438
	pha
	lda $143A
	pha
	lda $143E
	cmp #$0000
	beq L84A438
	lda $143E
	cmp #$0010
	beq L84A440
	lda #$03E7
	sta $143A
	bra L84A448

L84A438:
	lda #$03E7
	sta $1436
	bra L84A448

L84A440:
	lda #$03E7
	sta $1438
	bra L84A448

L84A448:
	rep #$30
	ldx #$0001
	jsr L84A973
	pla
	sta $143A
	pla
	sta $1438
	pla
	sta $1436
	pla
	sta $143E
	lda #$0001
	sta $1446
	lda #$0001
	sta $1464
	lda #$0005
	sta $1422
	lda #$0001
	sta $1426
	brl L84A4F0

L84A47B:
	lda $0127
	and #$8000
	beq L84A4F0
	lda #$00BE
	jsl L80B467
	sep #$20
	lda #$01
	sta $15B4
	rep #$20
	lda #$0004
	sta $15A2
	lda $1424
	sta $15B6
	lda #$0000
	sta $15B8
	lda #$0000
	sta $15BA
	lda #$0005
	sta $1422
	lda #$0001
	sta $1584
	lda #$0009
	sta $1420
	lda #$0000
	sta $142C
	lda #$0000
	sta $1426
	lda #$0001
	sta $144C
	jsr L84852B
	lda $1424
	jsr L84F9D3
	lda #$0000
	sta $159D
	lda #$142C
	sta $159C
	lda #$0000
	sta $159A
	lda #$144C
	sta $1599
L84A4F0:
	plp
	rts

L84A4F2:
	php
	rep #$30
	lda $145E
	cmp #$0001
	bne L84A503
	lda #$0000
	jsr L848567
L84A503:
	lda #$0000
	sta $145E
	jsr L84BA27
	lda $0129
	and #$0800
	beq L84A535
	lda #$002C
	jsl L80B467
L84A51B:
	lda $1442
	cmp #$0000
	beq L84A52F
	lda $1442
	sec
	sbc #$0010
	sta $1442
	bra L84A535

L84A52F:
	lda #$0020
	sta $1442
L84A535:
	lda $143E
	cmp $1442
	beq L84A51B
	lda $0129
	and #$0400
	beq L84A566
	lda #$002C
	jsl L80B467
L84A54C:
	lda $1442
	cmp #$0020
	beq L84A560
	lda $1442
	clc
	adc #$0010
	sta $1442
	bra L84A566

L84A560:
	lda #$0000
	sta $1442
L84A566:
	lda $143E
	cmp $1442
	beq L84A54C
	lda $1442
	cmp #$0000
	bne L84A581
	sep #$20
	lda #$00
	sta $07D8
	rep #$20
	bra L84A59D

L84A581:
	lda $1442
	cmp #$0010
	bne L84A594
	sep #$20
	lda #$01
	sta $07D8
	rep #$20
	bra L84A59D

L84A594:
	sep #$20
	lda #$02
	sta $07D8
	rep #$20
L84A59D:
	lda $0127
	and #$0080
	bne L84A5A8
	brl L84A71D

L84A5A8:
	lda $1442
	cmp #$0000
	bne L84A5BB
	lda $1436
	cmp #$0000
	bne L84A5D9
	brl L84A67C

L84A5BB:
	lda $1442
	cmp #$0010
	bne L84A5CE
	lda $1438
	cmp #$0000
	bne L84A5D9
	brl L84A67C

L84A5CE:
	lda $143A
	cmp #$0000
	bne L84A5D9
	brl L84A67C

L84A5D9:
	lda #$002D
	jsl L80B467
	lda #$0000
	sta $1440
	lda #$0001
	sta $1452
	lda #$0001
	sta $1458
	lda #$0001
	sta $145A
	lda #$0001
	sta $145C
	lda #$0001
	sta $144E
	sep #$20
	lda #$01
	sta $15B4
	rep #$30
	sec
	jsr L84ABB4
	tya
	sta $15A2
	lda $15A2
	clc
	adc #$0006
	sta $15A2
	lda #$0002
	sta $15B8
	lda #$0000
	sta $15BA
	lda #$0005
	sta $1422
	lda #$0007
	sta $1584
	lda #$0009
	sta $1420
	lda #$0000
	sta $142C
	lda #$0000
	sta $142A
	lda #$0001
	sta $1448
	lda #$0001
	sta $1462
	lda #$0000
	sta $145E
	lda #$0005
	jsr L84F9D3
	lda #$0000
	sta $159D
	lda #$1430
	sta $159C
	lda #$0000
	sta $159A
	lda #$144E
	sta $1599
	brl L84A71D

L84A67C:
	lda #$0000
	sta $1440
	lda #$0000
	sta $1430
	lda #$0000
	sta $1432
	lda #$0000
	sta $142E
	lda #$0001
	sta $144C
	lda #$0001
	sta $144E
	lda $07D8
	cmp #$0000
	bne L84A6BF
	rep #$20
	lda #$0000
	sta $1458
	lda #$0001
	sta $145A
	lda #$0001
	sta $145C
	brl L84A6F2

L84A6BF:
	sep #$20
	lda $07D8
	cmp #$01
	bne L84A6DE
	rep #$20
	lda #$0001
	sta $1458
	lda #$0000
	sta $145A
	lda #$0001
	sta $145C
	bra L84A6F2

L84A6DE:
	rep #$20
	lda #$0001
	sta $1458
	lda #$0001
	sta $145A
	lda #$0000
	sta $145C
L84A6F2:
	lda #$0000
	sta $1452
	lda #$0000
	sta $144C
	jsr L84BA27
	lda #$002E
	jsl L80B467
	lda #$0000
	sta $1426
	lda #$0005
	sta $1422
	lda #$0008
	sta $1420
	brl L84A74A

L84A71D:
	lda $0127
	and #$8000
	beq L84A74A
	lda #$00BE
	jsl L80B467
	lda #$0000
	sta $1458
	lda #$0000
	sta $145A
	lda #$0000
	sta $145C
	lda #$0000
	sta $1464
	lda #$0000
	sta $1426
L84A74A:
	plp
	rts

L84A74C:
	php
	rep #$30
	lda $145E
	cmp #$0001
	bne L84A763
	lda #$0000
	jsr L848567
	lda #$0000
	sta $145E
L84A763:
	lda $1462
	cmp #$0000
	bmi L84A76D
	bne L84A781
L84A76D:
	lda #$0000
	sta $1458
	lda #$0000
	sta $145A
	lda #$0000
	sta $145C
	bra L84A788

L84A781:
	lda $1462
	dea
	sta $1462
L84A788:
	jsr L84BA27
	lda $142E
	cmp #$0001
	beq L84A795
	bra L84A798

L84A795:
	brl L84A7A1

L84A798:
	jsr L84BF3B
	lda #$0001
	sta $142E
L84A7A1:
	lda $144C
	cmp #$0001
	beq L84A7AB
	bra L84A7AE

L84A7AB:
	brl L84A971

L84A7AE:
	lda $1452
	cmp #$0001
	beq L84A7B8
	bra L84A7BB

L84A7B8:
	brl L84A971

L84A7BB:
	lda $0129
	and #$0800
	beq L84A7E6
	lda #$002C
	jsl L80B467
L84A7CA:
	lda $143E
	cmp #$0000
	bmi L84A7E0
	beq L84A7E0
	lda $143E
	sec
	sbc #$0010
	sta $143E
	bra L84A7E6

L84A7E0:
	lda #$0020
	sta $143E
L84A7E6:
	jsr L84AB56
	bcs L84A7CA
	lda $0129
	and #$0400
	beq L84A814
	lda #$002C
	jsl L80B467
L84A7FA:
	lda $143E
	cmp #$0020
	bpl L84A80E
	lda $143E
	clc
	adc #$0010
	sta $143E
	bra L84A814

L84A80E:
	lda #$0000
	sta $143E
L84A814:
	jsr L84AB56
	bcs L84A7FA
	lda $143E
	sta $1442
	lda $143E
	cmp #$0000
	bne L84A832
	sep #$20
	lda #$00
	sta $07D7
	rep #$20
	bra L84A84E

L84A832:
	lda $143E
	cmp #$0010
	bne L84A845
	sep #$20
	lda #$01
	sta $07D7
	rep #$20
	bra L84A84E

L84A845:
	sep #$20
	lda #$02
	sta $07D7
	rep #$20
L84A84E:
	lda $0127
	and #$0080
	bne L84A859
	brl L84A902

L84A859:
	lda #$002D
	jsl L80B467
	lda #$0001
	sta $1458
	lda #$0001
	sta $145A
	lda #$0001
	sta $145C
	lda #$0000
	sta $1440
	lda #$0001
	sta $1452
	lda #$0001
	sta $144E
	sep #$20
	lda #$01
	sta $15B4
	rep #$20
	clc
	jsr L84ABB4
	tya
	sta $15A2
	lda $15A2
	clc
	adc #$0006
	sta $15A2
	lda #$0002
	sta $15B8
	lda #$0000
	sta $15BA
	lda #$0007
	sta $1584
	lda #$0009
	sta $1420
	lda #$0000
	sta $142C
	lda #$0006
	sta $1422
	lda #$0000
	sta $142A
	lda #$0001
	sta $1448
	lda #$0001
	sta $1454
	lda #$0001
	sta $1462
	lda #$0000
	sta $145E
	lda #$0005
	jsr L84F9D3
	lda #$0000
	sta $159D
	lda #$1430
	sta $159C
	lda #$0000
	sta $159A
	lda #$144E
	sta $1599
	brl L84A971

L84A902:
	lda $0127
	and #$8000
	beq L84A971
	lda #$00BE
	jsl L80B467
	lda #$0001
	sta $1420
	sep #$20
	lda #$01
	sta $15B4
	rep #$20
	lda #$0004
	sta $15A2
	lda $1424
	sta $15B6
	lda #$0000
	sta $15B8
	lda #$0000
	sta $15BA
	lda #$0001
	sta $1584
	lda #$0009
	sta $1420
	lda #$0000
	sta $142C
	lda #$0001
	sta $144C
	jsr L84852B
	lda $1424
	jsr L84F9D3
	lda #$0000
	sta $159D
	lda #$142C
	sta $159C
	lda #$0000
	sta $159A
	lda #$144C
	sta $1599
L84A971:
	plp
	rts

L84A973:
	php
	rep #$30
	lda $27
	pha
	lda $1436
	pha
	lda $1438
	pha
	lda $143A
	pha
	lda #$0000
	sta $27
	cpx #$0001
	beq L84A9BB
	lda $1436
	cmp #$0000
	bne L84A99D
	lda #$03E7
	sta $1436
L84A99D:
	lda $1438
	cmp #$0000
	bne L84A9AB
	lda #$03E7
	sta $1438
L84A9AB:
	lda $143A
	cmp #$0000
	bne L84A9B9
	lda #$03E7
	sta $143A
L84A9B9:
	bra L84AA02

L84A9BB:
	lda $1436
	cmp #$0000
	beq L84A9D5
	lda $1438
	cmp #$0000
	beq L84A9E4
	lda $143A
	cmp #$0000
	beq L84A9F3
	bra L84AA02

L84A9D5:
	lda #$0000
	sta $143E
	lda #$0000
	sta $1442
	brl L84AAD3

L84A9E4:
	lda #$0010
	sta $143E
	lda #$0010
	sta $1442
	brl L84AAD3

L84A9F3:
	lda #$0020
	sta $143E
	lda #$0020
	sta $1442
	brl L84AAD3

L84AA02:
	lda $1436
	cmp $1438
	bmi L84AA0C
	bne L84AA30
L84AA0C:
	lda $1436
	cmp $143A
	bmi L84AA16
	bne L84AA69
L84AA16:
	lda #$0000
	sta $143E
	lda #$0000
	sta $1442
	lda $27
	cmp #$0001
	beq L84AA2B
	bra L84AA2E

L84AA2B:
	brl L84AAD3

L84AA2E:
	bra L84AA75

L84AA30:
	lda $1438
	cmp $143A
	bmi L84AA3A
	bne L84AA54
L84AA3A:
	lda #$0010
	sta $143E
	lda #$0010
	sta $1442
	lda $27
	cmp #$0001
	beq L84AA4F
	bra L84AA52

L84AA4F:
	brl L84AAD3

L84AA52:
	bra L84AA75

L84AA54:
	lda #$0020
	sta $143E
	lda #$0020
	sta $1442
	lda $27
	cmp #$0001
	beq L84AAD3
	bra L84AA75

L84AA69:
	lda $143A
	cmp $1438
	bmi L84AA73
	bne L84AA30
L84AA73:
	bra L84AA54

L84AA75:
	lda $143E
	cmp #$0000
	beq L84AA9F
	lda $143E
	cmp #$0010
	beq L84AAB9
	sep #$20
	lda $701FFE
	cmp #$02
	bne L84AAD3
	rep #$20
	lda #$03E6
	sta $143A
	lda #$0001
	sta $27
	brl L84AA02

L84AA9F:
	sep #$20
	lda $701FFE
	cmp #$00
	bne L84AAD3
	rep #$20
	lda #$03E6
	sta $1436
	lda #$0001
	sta $27
	brl L84AA02

L84AAB9:
	sep #$20
	lda $701FFE
	cmp #$01
	bne L84AAD3
	rep #$20
	lda #$03E6
	sta $1438
	lda #$0001
	sta $27
	brl L84AA02

L84AAD3:
	rep #$20
	pla
	sta $143A
	pla
	sta $1438
	pla
	sta $1436
	pla
	sta $27
	plp
	rts

L84AAE6:
	php
	rep #$30
	lda $1436
	cmp $1438
	bmi L84AB01
	lda $1436
	cmp $143A
	bmi L84AB19
	lda #$0000
	sta $143E
	bra L84AB23

L84AB01:
	lda $1438
	cmp $143A
	bmi L84AB11
	lda #$0010
	sta $143E
	bra L84AB23

L84AB11:
	lda #$0020
	sta $143E
	bra L84AB23

L84AB19:
	lda $143A
	cmp $1438
	bmi L84AB01
	bra L84AB11

L84AB23:
	plp
	rts

L84AB25:
	php
	sep #$20
	lda $701FFE
	cmp #$00
	beq L84AB42
	lda $701FFE
	cmp #$01
	beq L84AB4C
	rep #$20
	lda #$0020
	sta $143E
	bra L84AB54

L84AB42:
	rep #$20
	lda #$0000
	sta $143E
	bra L84AB54

L84AB4C:
	rep #$20
	lda #$0010
	sta $143E
L84AB54:
	plp
	rts

L84AB56:
	php
	rep #$20
	lda $143E
	cmp #$0000
	bne L84AB6B
	lda $1436
	cmp #$0000
	beq L84AB87
	bra L84AB8A

L84AB6B:
	lda $143E
	cmp #$0010
	bne L84AB7D
	lda $1438
	cmp #$0000
	beq L84AB87
	bra L84AB8A

L84AB7D:
	lda $143A
	cmp #$0000
	beq L84AB87
	bra L84AB8A

L84AB87:
	plp
	sec
	rts

L84AB8A:
	plp
	clc
	rts

L84AB8D:
	php
	rep #$20
	lda $1436
	cmp #$0000
	bne L84ABB1
	lda $1438
	cmp #$0000
	bne L84ABB1
	lda $143A
	cmp #$0000
	bne L84ABB1
	lda #$0000
	sta $143C
	plp
	sec
	rts

L84ABB1:
	plp
	clc
	rts

L84ABB4:
	php
	rep #$30
	bcc L84ABC4
	lda $1442
	lsr
	lsr
	lsr
	lsr
	sta $17
	bra L84ABCD

L84ABC4:
	lda $143E
	lsr
	lsr
	lsr
	lsr
	sta $17
L84ABCD:
	lda $1468
	cmp #$0001
	beq L84ABEE
	sep #$20
	lda $701CE2
	sta $27
	lda #$00
	sta $28
	rep #$30
	lda $17
	cmp $27
	bne L84ABEE
	ldy #$0001
	bra L84ABF1

L84ABEE:
	ldy #$0000
L84ABF1:
	plp
	rts

L84ABF3:
	php
	rep #$30
	lda $142A
	and #$00FF
	asl
	tax
	jsr (L84AC03,X)
	plp
	rts

L84AC03:
.dw L84AC07
.dw L84AF7D

L84AC07:
	php
	rep #$30
	lda $145E
	cmp #$0001
	bne L84AC14
	bra L84AC17

L84AC14:
	brl L84AD64

L84AC17:
	lda $1462
	cmp #$0000
	bne L84AC21
	bra L84AC24

L84AC21:
	brl L84ACB0

L84AC24:
	lda $1448
	cmp #$0000
	beq L84AC57
	lda $1452
	pha
	lda #$0001
	sta $1452
	lda #$0000
	sta $144C
	lda #$0001
	sta $1458
	lda #$0001
	sta $145A
	lda #$0001
	sta $145C
	jsr L84BA27
	pla
	sta $1452
	bra L84AC74

L84AC57:
	lda $1452
	pha
	lda #$0001
	sta $1452
	lda #$0000
	sta $144C
	lda #$0001
	sta $1454
	jsr L84BE47
	pla
	sta $1452
L84AC74:
	sep #$20
	lda #$01
	sta $15B4
	rep #$30
	clc
	jsr L84ABB4
	tya
	sta $15A2
	lda $15A2
	clc
	adc #$0006
	sta $15A2
	lda #$0000
	sta $15B8
	lda #$0001
	sta $15BA
	lda #$0009
	sta $1420
	lda #$0000
	sta $1430
	lda #$0000
	sta $145E
	brl L84AF7B

L84ACB0:
	lda $1448
	cmp #$0000
	beq L84ACDD
	lda $1452
	pha
	lda #$0000
	sta $1452
	lda #$0001
	sta $1458
	lda #$0001
	sta $145A
	lda #$0001
	sta $145C
	jsr L84BA27
	pla
	sta $1452
	bra L84ACF4

L84ACDD:
	lda $1452
	pha
	lda #$0000
	sta $1452
	lda #$0001
	sta $1454
	jsr L84BE47
	pla
	sta $1452
L84ACF4:
	lda $1462
	cmp #$0001
	bpl L84AD04
	lda #$0001
	sta $1454
	bra L84AD0A

L84AD04:
	lda #$0000
	sta $1454
L84AD0A:
	lda $1452
	pha
	lda #$0000
	sta $1452
	sec
	jsr L84ABB4
	jsr L84BC0B
	pla
	sta $1452
	jsr L84852B
	lda $1462
	dea
	sta $1462
	sep #$20
	lda #$01
	sta $15B4
	rep #$20
	lda $1422
	cmp #$0005
	bne L84AD3D
	sec
	bra L84AD3E

L84AD3D:
	clc
L84AD3E:
	jsr L84ABB4
	tya
	sta $15A2
	lda $15A2
	clc
	adc #$0006
	sta $15A2
	lda #$0000
	sta $15B8
	lda #$0001
	sta $15BA
	lda #$0009
	sta $1420
	brl L84AF7B

L84AD64:
	lda $1448
	cmp #$0000
	beq L84AD91
	lda $1452
	pha
	lda #$0000
	sta $1452
	lda #$0001
	sta $1458
	lda #$0001
	sta $145A
	lda #$0001
	sta $145C
	jsr L84BA27
	pla
	sta $1452
	bra L84ADA8

L84AD91:
	lda $1452
	pha
	lda #$0000
	sta $1452
	lda #$0001
	sta $1454
	jsr L84BE47
	pla
	sta $1452
L84ADA8:
	lda $1462
	cmp #$0000
	beq L84ADB2
	bra L84ADB5

L84ADB2:
	brl L84ADC5

L84ADB5:
	lda #$0000
	sta $1454
	sec
	jsr L84ABB4
	jsr L84BC0B
	brl L84AF7B

L84ADC5:
	lda $1452
	pha
	lda #$0001
	sta $1452
	lda #$0000
	sta $1454
	sec
	jsr L84ABB4
	jsr L84BC0B
	pla
	sta $1452
	lda #$0001
	sta $142A
	lda #$0000
	sta $1432
	lda #$0001
	sta $1450
	lda #$0007
	sta $1584
	lda #$0007
	sta $1420
	lda #$0000
	sta $141A
	ldx #$0003
	jsr L84BDF7
	jsl L8087EA
	stz $52
	jsl L80954E
	lda $1448
	cmp #$0000
	beq L84AE1E
	bra L84AE21

L84AE1E:
	brl L84AE47

L84AE21:
	lda $1452
	pha
	lda #$0000
	sta $1452
	lda #$0001
	sta $1458
	lda #$0001
	sta $145A
	lda #$0001
	sta $145C
	jsr L84BA27
	pla
	sta $1452
	brl L84AE5E

L84AE47:
	lda $1452
	pha
	lda #$0000
	sta $1452
	lda #$0001
	sta $1454
	jsr L84BE47
	pla
	sta $1452
L84AE5E:
	lda $1452
	pha
	lda #$0001
	sta $1452
	lda #$0000
	sta $1454
	sec
	jsr L84ABB4
	jsr L84BC0B
	pla
	sta $1452
	ldx #$0002
	jsr L84BDF7
	jsl L8087EA
	stz $52
	jsl L80954E
	lda $1448
	cmp #$0000
	beq L84AEB6
	lda $1452
	pha
	lda #$0000
	sta $1452
	lda #$0001
	sta $1458
	lda #$0001
	sta $145A
	lda #$0001
	sta $145C
	jsr L84BA27
	pla
	sta $1452
	bra L84AECD

L84AEB6:
	lda $1452
	pha
	lda #$0000
	sta $1452
	lda #$0001
	sta $1454
	jsr L84BE47
	pla
	sta $1452
L84AECD:
	lda $1452
	pha
	lda #$0001
	sta $1452
	lda #$0000
	sta $1454
	sec
	jsr L84ABB4
	jsr L84BC0B
	pla
	sta $1452
	ldx #$0001
	jsr L84BDF7
	jsl L8087EA
	stz $52
	jsl L80954E
	lda $1448
	cmp #$0000
	beq L84AF25
	lda $1452
	pha
	lda #$0000
	sta $1452
	lda #$0001
	sta $1458
	lda #$0001
	sta $145A
	lda #$0001
	sta $145C
	jsr L84BA27
	pla
	sta $1452
	bra L84AF3C

L84AF25:
	lda $1452
	pha
	lda #$0000
	sta $1452
	lda #$0001
	sta $1454
	jsr L84BE47
	pla
	sta $1452
L84AF3C:
	lda $1452
	pha
	lda #$0001
	sta $1452
	lda #$0000
	sta $1454
	sec
	jsr L84ABB4
	jsr L84BC0B
	pla
	sta $1452
	ldx #$0000
	jsr L84BDF7
	lda #$0006
	jsr L84F9D3
	lda #$0000
	sta $159D
	lda #$1432
	sta $159C
	lda #$0000
	sta $159A
	lda #$1450
	sta $1599
L84AF7B:
	plp
	rts

L84AF7D:
	php
	rep #$30
	lda $1448
	cmp #$0000
	beq L84AFAD
	lda $1452
	pha
	lda #$0000
	sta $1452
	lda #$0001
	sta $1458
	lda #$0001
	sta $145A
	lda #$0001
	sta $145C
	jsr L84BA27
	pla
	sta $1452
	bra L84AFCA

L84AFAD:
	lda #$0001
	sta $1454
	lda $1452
	pha
	lda #$0000
	sta $1452
	lda #$0001
	sta $1454
	jsr L84BE47
	pla
	sta $1452
L84AFCA:
	lda $1452
	pha
	lda #$0000
	sta $1452
	lda #$0001
	sta $1454
	lda $1422
	cmp #$0005
	bne L84AFE5
	sec
	bra L84AFE6

L84AFE5:
	clc
L84AFE6:
	jsr L84ABB4
	jsr L84BC0B
	pla
	sta $1452
	jsr L84BD3D
	lda $1450
	cmp #$0001
	beq L84AFFD
	bra L84B000

L84AFFD:
	brl L84B2DD

L84B000:
	lda $1452
	cmp #$0001
	beq L84B00A
	bra L84B00D

L84B00A:
	brl L84B2DD

L84B00D:
	lda $0129
	and #$0800
	beq L84B032
	lda #$002C
	jsl L80B467
	lda $1440
	sec
	sbc #$0010
	sta $1440
	lda $1440
	and #$0010
	sta $1440
	brl L84B2DD

L84B032:
	lda $0129
	and #$0400
	beq L84B057
	lda #$002C
	jsl L80B467
	lda $1440
	clc
	adc #$0010
	sta $1440
	lda $1440
	and #$0010
	sta $1440
	brl L84B2DD

L84B057:
	lda $0127
	and #$0080
	beq L84B0BB
	lda #$0001
	sta $1450
	lda $1440
	cmp #$0010
	beq L84B0C6
	lda #$002E
	jsl L80B467
	lda $1448
	cmp #$0000
	bne L84B082
	lda #$0001
	sta $1450
L84B082:
	lda #$0000
	sta $1426
	lda #$0000
	sta $1432
	lda #$0000
	sta $1430
	lda #$0001
	sta $144E
	lda #$0001
	sta $1458
	lda #$0001
	sta $145A
	lda #$0001
	sta $145C
	lda #$0008
	sta $1420
	lda #$0000
	sta $142A
	brl L84B2DD

L84B0BB:
	lda $0127
	and #$8000
	bne L84B0C6
	brl L84B2CE

L84B0C6:
	lda #$00BE
	jsl L80B467
	jsr L84852B
	jsl L8087EA
	stz $52
	jsl L80954E
	lda $1448
	cmp #$0000
	beq L84B107
	lda $1452
	pha
	lda #$0000
	sta $1452
	lda #$0001
	sta $1458
	lda #$0001
	sta $145A
	lda #$0001
	sta $145C
	jsr L84BA27
	pla
	sta $1452
	bra L84B11E

L84B107:
	lda $1452
	pha
	lda #$0000
	sta $1452
	lda #$0001
	sta $1454
	jsr L84BE47
	pla
	sta $1452
L84B11E:
	lda $1452
	pha
	lda #$0000
	sta $1452
	lda #$0001
	sta $1454
	sec
	jsr L84ABB4
	jsr L84BC0B
	pla
	sta $1452
	ldx #$0000
	jsr L84BDF7
	stz $52
	jsl L80954E
	lda $1448
	cmp #$0000
	beq L84B172
	lda $1452
	pha
	lda #$0000
	sta $1452
	lda #$0001
	sta $1458
	lda #$0001
	sta $145A
	lda #$0001
	sta $145C
	jsr L84BA27
	pla
	sta $1452
	bra L84B189

L84B172:
	lda $1452
	pha
	lda #$0000
	sta $1452
	lda #$0001
	sta $1454
	jsr L84BE47
	pla
	sta $1452
L84B189:
	lda $1452
	pha
	lda #$0000
	sta $1452
	lda #$0001
	sta $1454
	sec
	jsr L84ABB4
	jsr L84BC0B
	pla
	sta $1452
	ldx #$0001
	jsr L84BDF7
	jsl L8087EA
	stz $52
	jsl L80954E
	lda $1448
	cmp #$0000
	beq L84B1E1
	lda $1452
	pha
	lda #$0000
	sta $1452
	lda #$0001
	sta $1458
	lda #$0001
	sta $145A
	lda #$0001
	sta $145C
	jsr L84BA27
	pla
	sta $1452
	bra L84B1F8

L84B1E1:
	lda $1452
	pha
	lda #$0000
	sta $1452
	lda #$0001
	sta $1454
	jsr L84BE47
	pla
	sta $1452
L84B1F8:
	lda $1452
	pha
	lda #$0000
	sta $1452
	lda #$0001
	sta $1454
	sec
	jsr L84ABB4
	jsr L84BC0B
	pla
	sta $1452
	ldx #$0002
	jsr L84BDF7
	jsl L8087EA
	stz $52
	jsl L80954E
	lda $1448
	cmp #$0000
	beq L84B250
	lda $1452
	pha
	lda #$0000
	sta $1452
	lda #$0001
	sta $1458
	lda #$0001
	sta $145A
	lda #$0001
	sta $145C
	jsr L84BA27
	pla
	sta $1452
	bra L84B267

L84B250:
	lda $1452
	pha
	lda #$0000
	sta $1452
	lda #$0001
	sta $1454
	jsr L84BE47
	pla
	sta $1452
L84B267:
	lda $1452
	pha
	lda #$0000
	sta $1452
	lda #$0001
	sta $1454
	sec
	jsr L84ABB4
	jsr L84BC0B
	pla
	sta $1452
	ldx #$0003
	jsr L84BDF7
	lda $1448
	cmp #$0000
	bne L84B29C
	lda #$0000
	sta $144E
	lda #$0000
	sta $1450
L84B29C:
	lda #$0007
	sta $1584
	lda #$0000
	sta $142A
	lda #$0007
	sta $1420
	lda #$0000
	sta $1432
	lda #$0000
	sta $1430
	lda #$0001
	sta $1462
	lda #$0001
	sta $145E
	lda #$0001
	sta $1454
	bra L84B2DD

L84B2CE:
	lda $0127
	and #$2000
	beq L84B2DD
	lda $141A
	ina
	sta $141A
L84B2DD:
	plp
	rts

L84B2DF:
	php
	sep #$20
	lda $07D6
	sta $15A1
	rep #$20
	jsl L93C000
	sep #$20
	lda $07D6
	cmp #$00
	bne L84B318
	jsr L84B537
	lda #$00
	sta $F7
	lda #$03
	sta $074A
	lda #$01
	sta $08D0
	lda #$09
	sta $0E00
	rep #$20
	lda #$000A
	sta $1420
	brl L84B526

L84B318:
	sep #$20
	lda $07D6
	cmp #$01
	bne L84B32C
	rep #$20
	lda #$000A
	sta $1420
	brl L84B526

L84B32C:
	sep #$20
	lda $07D6
	cmp #$02
	bne L84B340
	rep #$20
	lda #$000A
	sta $1420
	brl L84B526

L84B340:
	rep #$20
	lda #$0000
	sta $1452
	lda #$0000
	sta $142E
	sep #$20
	lda $15A1
	cmp #$04
	beq L84B359
	bra L84B35C

L84B359:
	brl L84B3E8

L84B35C:
	rep #$30
	lda #$0000
	sta $1464
	sec
	jsr L84ABB4
	cpy #$0000
	beq L84B391
	jsl L93CBFE
	bcs L84B37B
	lda #$0000
	sta $1424
	bra L84B391

L84B37B:
	lda #$0001
	sta $1424
	lda $143C
	sec
	sbc #$0010
	sta $143C
	lda #$0001
	sta $1468
L84B391:
	sep #$20
	lda $07D8
	cmp #$00
	bne L84B3B1
	rep #$20
	lda #$0000
	sta $1458
	lda #$0001
	sta $145A
	lda #$0001
	sta $145C
	brl L84B469

L84B3B1:
	sep #$20
	lda $07D8
	cmp #$01
	bne L84B3D1
	rep #$20
	lda #$0001
	sta $1458
	lda #$0000
	sta $145A
	lda #$0001
	sta $145C
	brl L84B469

L84B3D1:
	rep #$20
	lda #$0001
	sta $1458
	lda #$0001
	sta $145A
	lda #$0000
	sta $145C
	brl L84B469

L84B3E8:
	rep #$30
	clc
	jsr L84ABB4
	cpy #$0000
	beq L84B417
	jsl L93CBFE
	bcs L84B401
	lda #$0000
	sta $1424
	bra L84B417

L84B401:
	lda #$0001
	sta $1424
	lda $143C
	sec
	sbc #$0010
	sta $143C
	lda #$0001
	sta $1468
L84B417:
	sep #$20
	lda $07D7
	cmp #$00
	bne L84B436
	rep #$20
	lda #$0000
	sta $1458
	lda #$0001
	sta $145A
	lda #$0001
	sta $145C
	bra L84B469

L84B436:
	sep #$20
	lda $07D7
	cmp #$01
	bne L84B455
	rep #$20
	lda #$0001
	sta $1458
	lda #$0000
	sta $145A
	lda #$0001
	sta $145C
	bra L84B469

L84B455:
	rep #$20
	lda #$0001
	sta $1458
	lda #$0001
	sta $145A
	lda #$0000
	sta $145C
L84B469:
	lda #$0003
	sta $1462
	jsr L849D1C
	jsr L84AB8D
	bcc L84B48F
	lda #$0000
	sta $1458
	lda #$0000
	sta $145A
	lda #$0000
	sta $145C
	lda #$0000
	sta $1462
L84B48F:
	jsr L84BA27
	jsr L84852B
	lda $1422
	cmp #$0006
	bne L84B4A8
	jsr L84AB25
	jsr L84AB56
	bcc L84B4A8
	jsr L84AAE6
L84B4A8:
	jsr L84AB8D
	bcc L84B500
	lda #$0000
	sta $142C
	lda #$0000
	sta $143C
	lda #$0001
	sta $144C
	lda #$0001
	sta $144E
	lda #$0000
	sta $145E
	lda #$0003
	sta $1424
	sep #$20
	lda #$01
	sta $15B4
	rep #$20
	lda #$0004
	sta $15A2
	lda $1424
	sta $15B6
	lda #$0000
	sta $15B8
	lda #$0000
	sta $15BA
	lda #$0001
	sta $1584
	lda #$0009
	sta $1420
	bra L84B508

L84B500:
	lda $1422
	sta $1420
	plp
	rts

L84B508:
	lda $1424
	jsr L84F9D3
	lda #$0000
	sta $159D
	lda #$142C
	sta $159C
	lda #$0000
	sta $159A
	lda #$144C
	sta $1599
L84B526:
	plp
	rts

L84B528:
	php
	rep #$30
	jsr L848BF1
	sep #$20
	lda #$02
	sta $0E00
	plp
	rts

L84B537:
	php
	sep #$20
	lda #$0F
	sta $7A
	rep #$30
	pha
	sep #$20
	lda #$01
	sta $7F
	rep #$30
	jsl L8087EA
	pla
L84B54E:
	pha
	ldx #$6000
	sep #$20
	sta $7A
	eor #$0F
	asl
	asl
	asl
	asl
	sta $17
	lda $7F
	and #$0F
	sta $7F
	lda $7F
	ora $17
	sta $7F
	rep #$30
	phx
	jsl L8087EA
	plx
L84B572:
	nop
	nop
	dex
	bne L84B572
	pla
	cmp #$FFFF
	beq L84B580
	dea
	bra L84B54E

L84B580:
	plp
	rts

L84B582:
	php
	sep #$20
	lda #$82
	sta $7B
	lda #$02
	sta $5C
	rep #$20
	lda $144C
	cmp #$0001
	beq L84B611
	lda #$0098
	sta $56
	lda #$0010
	sta $58
	ldy #$0005
	lda #$0000
	jsr L84C146
	lda #$0020
	sta $58
	ldy #$0005
	lda #$000A
	jsr L84C146
	lda #$0030
	sta $58
	ldy #$0005
	lda #$0024
	jsr L84C146
	lda #$0040
	sta $58
	ldy #$0005
	lda #$002E
	jsr L84C146
	lda #$0050
	sta $58
	ldy #$0005
	lda #$0048
	jsr L84C146
	lda $142C
	cmp #$0000
	beq L84B64D
	lda #$0088
	sta $56
	lda #$0010
	sta $58
	lda $58
	clc
	adc $143C
	sta $58
	lda #$0000
	sta $5A
	lda #bank100(L84C704)
	sta $63
	lda #L84C704
	sta $62
	jsl L8093A2
	bra L84B64D

L84B611:
	lda #$0098
	sta $56
	lda #$0010
	sta $58
	ldy #$0005
	jsr L84C18E
	lda #$0020
	sta $58
	ldy #$0005
	jsr L84C18E
	lda #$0030
	sta $58
	ldy #$0005
	jsr L84C18E
	lda #$0040
	sta $58
	ldy #$0005
	jsr L84C18E
	lda #$0050
	sta $58
	ldy #$0005
	jsr L84C18E
L84B64D:
	lda #$0088
	sta $56
	lda #$0000
	sta $58
	lda #$0000
	sta $5A
	lda #bank100(L84C731)
	sta $63
	lda #L84C731
	sta $62
	jsl L8093A2
	lda $1452
	cmp #$0000
	beq L84B67B
	jsr L848549
	lda #$0000
	sta $1452
L84B67B:
	plp
	rts

L84B67D:
	php
	sep #$20
	lda #$82
	sta $7B
	lda #$02
	sta $5C
	rep #$20
	lda $144C
	cmp #$0001
	beq L84B6FE
	lda #$0098
	sta $56
	lda #$0010
	sta $58
	ldy #$0005
	lda #$0000
	jsr L84C146
	lda #$0020
	sta $58
	ldy #$0005
	lda #$000A
	jsr L84C146
	lda #$0030
	sta $58
	ldy #$0005
	lda #$0024
	jsr L84C146
	lda #$0040
	sta $58
	ldy #$0005
	lda #$002E
	jsr L84C146
	lda $142C
	cmp #$0000
	beq L84B72F
	lda #$0088
	sta $56
	lda #$0010
	sta $58
	lda $58
	clc
	adc $143C
	sta $58
	lda #$0000
	sta $5A
	lda #bank100(L84C704)
	sta $63
	lda #L84C704
	sta $62
	jsl L8093A2
	bra L84B72F

L84B6FE:
	lda #$0098
	sta $56
	lda #$0010
	sta $58
	ldy #$0005
	jsr L84C18E
	lda #$0020
	sta $58
	ldy #$0005
	jsr L84C18E
	lda #$0030
	sta $58
	ldy #$0005
	jsr L84C18E
	lda #$0040
	sta $58
	ldy #$0005
	jsr L84C18E
L84B72F:
	lda #$0088
	sta $56
	lda #$0000
	sta $58
	lda #$0001
	sta $5A
	lda #bank100(L84C731)
	sta $63
	lda #L84C731
	sta $62
	jsl L8093A2
	lda $1452
	cmp #$0000
	beq L84B75D
	jsr L848549
	lda #$0000
	sta $1452
L84B75D:
	plp
	rts

L84B75F:
	php
	sep #$20
	lda #$82
	sta $7B
	lda #$02
	sta $5C
	rep #$20
	lda $144C
	cmp #$0001
	beq L84B7C4
	lda #$0098
	sta $56
	lda #$0010
	sta $58
	ldy #$0005
	lda #$0000
	jsr L84C146
	lda #$0020
	sta $58
	ldy #$0005
	lda #$000A
	jsr L84C146
	lda $142C
	cmp #$0000
	beq L84B7DF
	lda #$0088
	sta $56
	lda #$0010
	sta $58
	lda $58
	clc
	adc $143C
	sta $58
	lda #$0000
	sta $5A
	lda #bank100(L84C704)
	sta $63
	lda #L84C704
	sta $62
	jsl L8093A2
	bra L84B7DF

L84B7C4:
	lda #$0098
	sta $56
	lda #$0010
	sta $58
	ldy #$0005
	jsr L84C18E
	lda #$0020
	sta $58
	ldy #$0005
	jsr L84C18E
L84B7DF:
	lda #$0088
	sta $56
	lda #$0000
	sta $58
	lda #$0002
	sta $5A
	lda #bank100(L84C731)
	sta $63
	lda #L84C731
	sta $62
	jsl L8093A2
	lda $1452
	cmp #$0000
	beq L84B80D
	jsr L848549
	lda #$0000
	sta $1452
L84B80D:
	plp
	rts

L84B80F:
	php
	sep #$20
	lda #$82
	sta $7B
	lda #$02
	sta $5C
	rep #$20
	lda $144C
	cmp #$0001
	beq L84B866
	lda #$0098
	sta $56
	lda #$0010
	sta $58
	ldy #$0005
	lda #$0000
	jsr L84C146
	lda $142C
	cmp #$0000
	beq L84B876
	lda #$0088
	sta $56
	lda #$0010
	sta $58
	lda $58
	clc
	adc $143C
	sta $58
	lda #$0000
	sta $5A
	lda #bank100(L84C704)
	sta $63
	lda #L84C704
	sta $62
	jsl L8093A2
	bra L84B876

L84B866:
	lda #$0098
	sta $56
	lda #$0010
	sta $58
	ldy #$0005
	jsr L84C18E
L84B876:
	lda #$0088
	sta $56
	lda #$0000
	sta $58
	lda #$0003
	sta $5A
	lda #bank100(L84C731)
	sta $63
	lda #L84C731
	sta $62
	jsl L8093A2
	lda $1452
	cmp #$0000
	beq L84B8A4
	jsr L848549
	lda #$0000
	sta $1452
L84B8A4:
	plp
	rts

L84B8A6:
	php
	rep #$30
	lda $1464
	cmp #$0000
	beq L84B8CE
	lda $0137
	and #$000F
	asl
	tax
	lda.w L84B8D7,X
	sta $7F52D8
	lda #bank100(L84B8D0)
	sta $01
	lda #L84B8D0
	sta $00
	jsl L808EAD
L84B8CE:
	plp
	rts

L84B8D0:
DMA_DATA $7F52D8 $0002 $D4

L84B8D7:
.db $F7 $00 $F7 $00 $18 $01 $39 $01
.db $5A $01 $BB $01 $DE $01 $5F $02
.db $BF $02 $7F $02 $1F $02 $DE $01
.db $5A $01 $39 $01 $18 $01 $F7 $00

L84B8F7:
	php
	rep #$30
	asl
	tax
	lda.w L84B91A,X
	sta $7F5130
	lda #bank100(L84B913)
	sta $01
	lda #L84B913
	sta $00
	jsl L808EAD
	plp
	rts

L84B913:
DMA_DATA $7F5130 $0002 $00

L84B91A:
.db $24 $00 $24 $00 $03 $00 $02 $00
.db $01 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00

L84B93A:
	php
	rep #$30
	pha
	phx
	lda $0137
	lsr
	lsr
	lsr
	lsr
	and #$000F
	asl
	tax
	lda.w L84B96B,X
	sta $7F5174
	lda #bank100(L84B964)
	sta $01
	lda #L84B964
	sta $00
	jsl L808EAD
	plx
	pla
	plp
	rts

L84B964:
DMA_DATA $7F5174 $0002 $22

L84B96B:
.db $A7 $21 $A7 $21 $A7 $25 $A7 $25
.db $A7 $29 $A7 $29 $A7 $2D $A7 $2D
.db $A7 $2D $A7 $2D $A7 $29 $A7 $29
.db $A7 $25 $A7 $25 $A7 $21 $A7 $21

L84B98B:
	php
	rep #$30
	pha
	phx
	sep #$20
	lda $1466
	ina
	sta $1466
	lda $1466
	cmp #$05
	bcc L84B9DA
	lda #$00
	sta $1466
	lda $1467
	clc
	adc #$02
	sta $1467
	lda $1467
	cmp #$3E
	bcc L84B9BC
	beq L84B9BC
	lda #$00
	sta $1467
L84B9BC:
	lda $1467
	rep #$30
	and #$00FF
	tax
	lda.w L84B9E7,X
	sta $7F517C
	lda #bank100(L84B9E0)
	sta $01
	lda #L84B9E0
	sta $00
	jsl L808EAD
L84B9DA:
	rep #$30
	plx
	pla
	plp
	rts

L84B9E0:
DMA_DATA $7F517C $0002 $25

L84B9E7:
.db $6C $36 $8D $3A $8E $3E $AE $42
.db $AF $46 $D0 $46 $F1 $4A $F2 $4E
.db $12 $53 $13 $57 $34 $5B $55 $5F
.db $56 $5F $76 $63 $77 $67 $98 $6B
.db $98 $6B $77 $67 $76 $63 $56 $5F
.db $55 $5F $34 $5B $13 $57 $12 $53
.db $F2 $4E $F1 $4A $D0 $46 $AF $46
.db $AE $42 $8E $3E $8D $3A $6C $36

L84BA27:
	php
	sep #$20
	lda #$82
	sta $7B
	lda #$02
	sta $5C
	rep #$20
	lda $144C
	cmp #$0001
	beq L84BA3E
	bra L84BA41

L84BA3E:
	brl L84BB98

L84BA41:
	lda #$0018
	sta $56
	lda #$006C
	sta $58
	ldy #$000D
	lda $1458
	cmp #$0001
	beq L84BA5E
	lda #$0000
	jsr L84C146
	bra L84BA64

L84BA5E:
	lda #$0000
	jsr L84C14D
L84BA64:
	lda #$007C
	sta $58
	ldy #$000D
	lda $145A
	cmp #$0001
	beq L84BA7C
	lda #$002A
	jsr L84C146
	bra L84BA82

L84BA7C:
	lda #$002A
	jsr L84C14D
L84BA82:
	lda #$008C
	sta $58
	ldy #$000D
	lda $145C
	cmp #$0001
	beq L84BA9A
	lda #$0064
	jsr L84C146
	bra L84BAA0

L84BA9A:
	lda #$0064
	jsr L84C14D
L84BAA0:
	lda $1454
	cmp #$0000
	beq L84BABB
	lda $1456
	cmp #$0000
	beq L84BABB
	lda $1458
	cmp #$0000
	beq L84BABB
	brl L84BBBE

L84BABB:
	lda $1420
	cmp #$0005
	beq L84BACE
	lda $1420
	cmp #$0007
	beq L84BADD
	brl L84BB50

L84BACE:
	lda $1426
	cmp #$0000
	beq L84BAD8
	bra L84BADB

L84BAD8:
	brl L84BB50

L84BADB:
	bra L84BAEA

L84BADD:
	lda $1422
	cmp #$0006
	beq L84BAE7
	bra L84BAEA

L84BAE7:
	brl L84BB50

L84BAEA:
	lda #$0008
	sta $56
	lda #$006C
	sta $58
	lda $143E
	cmp $1442
	bne L84BB2C
	lda $143E
	cmp #$0000
	bne L84BB0C
	lda #$0010
	sta $1442
	bra L84BB2C

L84BB0C:
	lda $143E
	cmp #$0010
	bne L84BB1C
	lda #$0020
	sta $1442
	bra L84BB2C

L84BB1C:
	lda $143E
	cmp #$0020
	bne L84BB2C
	lda #$0000
	sta $1442
	bra L84BB2C

L84BB2C:
	lda $58
	clc
	adc $1442
	sta $58
	lda #$0001
	sta $5A
	lda #bank100(L84C704)
	sta $63
	lda #L84C704
	sta $62
	jsl L8093A2
	jsr L84B8A6
	jsr L84B93A
	jsr L84B98B
L84BB50:
	lda #$0008
	sta $56
	lda #$006C
	sta $58
	lda $58
	clc
	adc $143E
	sta $58
	lda $1426
	cmp #$0001
	beq L84BB83
	lda $1420
	cmp #$0007
	beq L84BB74
	bra L84BB7C

L84BB74:
	lda $1422
	cmp #$0006
	bne L84BB83
L84BB7C:
	lda #$0001
	sta $5A
	bra L84BB88

L84BB83:
	lda #$0003
	sta $5A
L84BB88:
	lda #bank100(L84C704)
	sta $63
	lda #L84C704
	sta $62
	jsl L8093A2
	bra L84BBBE

L84BB98:
	lda #$0018
	sta $56
	lda #$006C
	sta $58
	ldy #$000D
	jsr L84C18E
	lda #$007C
	sta $58
	ldy #$000D
	jsr L84C18E
	lda #$008C
	sta $58
	ldy #$000D
	jsr L84C18E
L84BBBE:
	lda #$0008
	sta $56
	lda #$005C
	sta $58
	lda #$0004
	sta $5A
	lda #bank100(L84C731)
	sta $63
	lda #L84C731
	sta $62
	jsl L8093A2
	lda #$0088
	sta $56
	lda #$005C
	sta $58
	lda #$0005
	sta $5A
	lda #bank100(L84C731)
	sta $63
	lda #L84C731
	sta $62
	jsl L8093A2
	lda $1452
	cmp #$0000
	beq L84BC09
	jsr L848549
	lda #$0000
	sta $1452
L84BC09:
	plp
	rts

L84BC0B:
	php
	sep #$20
	lda #$82
	sta $7B
	lda #$02
	sta $5C
	rep #$20
	cpy #$0001
	beq L84BC97
	lda $144E
	cmp #$0001
	beq L84BC4A
	lda #$0018
	sta $56
	lda #$00B4
	sta $58
	ldy #$0007
	lda $1454
	cmp #$0001
	beq L84BC42
	lda #$008E
	jsr L84C146
	bra L84BC48

L84BC42:
	lda #$008E
	jsr L84C14D
L84BC48:
	bra L84BC5A

L84BC4A:
	lda #$0018
	sta $56
	lda #$00B4
	sta $58
	ldy #$0007
	jsr L84C18E
L84BC5A:
	lda #$0008
	sta $56
	lda #$00A4
	sta $58
	lda #$0006
	sta $5A
	lda #bank100(L84C731)
	sta $63
	lda #L84C731
	sta $62
	jsl L8093A2
	lda #$0088
	sta $56
	lda #$00A4
	sta $58
	lda #$0007
	sta $5A
	lda #bank100(L84C731)
	sta $63
	lda #L84C731
	sta $62
	jsl L8093A2
	brl L84BD0E

L84BC97:
	lda $144E
	cmp #$0001
	beq L84BCC4
	lda #$0018
	sta $56
	lda #$00B4
	sta $58
	ldy #$0009
	lda $1454
	cmp #$0001
	beq L84BCBC
	lda #$008E
	jsr L84C146
	bra L84BCC2

L84BCBC:
	lda #$008E
	jsr L84C14D
L84BCC2:
	bra L84BCD4

L84BCC4:
	lda #$0018
	sta $56
	lda #$00B4
	sta $58
	ldy #$0009
	jsr L84C18E
L84BCD4:
	lda #$0008
	sta $56
	lda #$00A4
	sta $58
	lda #$0006
	sta $5A
	lda #bank100(L84C731)
	sta $63
	lda #L84C731
	sta $62
	jsl L8093A2
	lda #$0088
	sta $56
	lda #$00A4
	sta $58
	lda #$0008
	sta $5A
	lda #bank100(L84C731)
	sta $63
	lda #L84C731
	sta $62
	jsl L8093A2
L84BD0E:
	lda $145E
	cmp #$0001
	beq L84BD2A
	lda $1462
	cmp #$0000
	beq L84BD20
	bra L84BD23

L84BD20:
	brl L84BD3B

L84BD23:
	lda $1462
	dea
	sta $1462
L84BD2A:
	lda $1452
	cmp #$0000
	beq L84BD3B
	jsr L848549
	lda #$0000
	sta $1452
L84BD3B:
	plp
	rts

L84BD3D:
	php
	sep #$20
	lda #$82
	sta $7B
	lda #$02
	sta $5C
	rep #$20
	lda $1450
	cmp #$0001
	beq L84BDA7
	lda #$00C8
	sta $56
	lda #$00B4
	sta $58
	ldy #$0002
	lda #$00C2
	jsr L84C146
	lda #$00C8
	sta $56
	lda #$00C4
	sta $58
	ldy #$0002
	lda #$00C6
	jsr L84C146
	lda $1454
	cmp #$0000
	beq L84BDC7
	lda #$00B8
	sta $56
	lda #$00B4
	sta $58
	lda $58
	clc
	adc $1440
	sta $58
	lda #$0002
	sta $5A
	lda #bank100(L84C704)
	sta $63
	lda #L84C704
	sta $62
	jsl L8093A2
	bra L84BDC7

L84BDA7:
	lda #$00C8
	sta $56
	lda #$00B4
	sta $58
	ldy #$0002
	jsr L84C18E
	lda #$00C8
	sta $56
	lda #$00C4
	sta $58
	ldy #$0002
	jsr L84C18E
L84BDC7:
	lda #$00B8
	sta $56
	lda #$00A4
	sta $58
	lda #$0009
	sta $5A
	lda #bank100(L84C731)
	sta $63
	lda #L84C731
	sta $62
	jsl L8093A2
	lda $1452
	cmp #$0000
	beq L84BDF5
	jsr L848549
	lda #$0000
	sta $1452
L84BDF5:
	plp
	rts

L84BDF7:
	php
	sep #$20
	lda #$82
	sta $7B
	lda #$02
	sta $5C
	rep #$30
	lda #$00C0
	sta $56
	lda #$00AC
	sta $58
	cpx #$0000
	beq L84BE24
	cpx #$0001
	beq L84BE2B
	cpx #$0002
	beq L84BE32
	lda #$000F
	sta $5A
	bra L84BE37

L84BE24:
	lda #$000C
	sta $5A
	bra L84BE37

L84BE2B:
	lda #$000D
	sta $5A
	bra L84BE37

L84BE32:
	lda #$000E
	sta $5A
L84BE37:
	lda #bank100(L84C731)
	sta $63
	lda #L84C731
	sta $62
	jsl L8093A2
	plp
	rts

L84BE47:
	php
	sep #$20
	lda #$82
	sta $7B
	lda #$02
	sta $5C
	rep #$20
	lda $144C
	cmp #$0001
	beq L84BE5E
	bra L84BE61

L84BE5E:
	brl L84BECE

L84BE61:
	lda #$0018
	sta $56
	lda #$0074
	sta $58
	ldy #$000D
	lda $1454
	cmp #$0001
	beq L84BE7E
	lda #$0000
	jsr L84C146
	bra L84BE84

L84BE7E:
	lda #$0000
	jsr L84C14D
L84BE84:
	lda #$0018
	sta $56
	lda #$0084
	sta $58
	ldy #$000D
	lda $1454
	cmp #$0001
	beq L84BEA1
	lda #$002A
	jsr L84C146
	bra L84BEA7

L84BEA1:
	lda #$002A
	jsr L84C14D
L84BEA7:
	lda #$0008
	sta $56
	lda #$0074
	sta $58
	lda $58
	clc
	adc $1444
	sta $58
	lda #$0004
	sta $5A
	lda #bank100(L84C704)
	sta $63
	lda #L84C704
	sta $62
	jsl L8093A2
	bra L84BEEE

L84BECE:
	lda #$0018
	sta $56
	lda #$0074
	sta $58
	ldy #$000D
	jsr L84C18E
	lda #$0018
	sta $56
	lda #$0084
	sta $58
	ldy #$000D
	jsr L84C18E
L84BEEE:
	lda #$0008
	sta $56
	lda #$0064
	sta $58
	lda #$000A
	sta $5A
	lda #bank100(L84C731)
	sta $63
	lda #L84C731
	sta $62
	jsl L8093A2
	lda #$0078
	sta $56
	lda #$0064
	sta $58
	lda #$000B
	sta $5A
	lda #bank100(L84C731)
	sta $63
	lda #L84C731
	sta $62
	jsl L8093A2
	lda $1452
	cmp #$0000
	beq L84BF39
	jsr L848549
	lda #$0000
	sta $1452
L84BF39:
	plp
	rts

L84BF3B:
	php
	rep #$20
	lda #$0001
	sta $1452
	lda #$0001
	sta $27
	lda $1436
	pha
	lda $1458
	cmp #$0001
	beq L84BF5E
	lda #$0001
	ldx #$0000
	jsr L84BFA7
L84BF5E:
	lda $145A
	cmp #$0001
	beq L84BF75
	lda $1438
	sta $1436
	lda #$0002
	ldx #$0034
	jsr L84BFA7
L84BF75:
	lda $145C
	cmp #$0001
	beq L84BF8C
	lda $143A
	sta $1436
	lda #$0003
	ldx #$0068
	jsr L84BFA7
L84BF8C:
	pla
	sta $1436
	lda $1462
	cmp #$0000
	beq L84BF9F
	lda $1462
	dea
	sta $1462
L84BF9F:
	lda #$0000
	sta $144C
	plp
	rts

L84BFA7:
	php
	rep #$30
	ldy $27
	cpy #$0000
	beq L84BFB2
	phx
L84BFB2:
	pha
	lda #$7F00
	sta $01
	lda #$F200
	sta $00
	lda #bank100(L84C6AE)
	sta $04
	lda #L84C6AE
	sta $03
	jsl L84C1B8
	pla
	sep #$20
	clc
	adc #$A0
	sta $7FF200
	lda $1436
	bne L84BFDD
	brl L84C07F

L84BFDD:
	cmp #$15
	bpl L84BFE5
	lda #$A1
	bra L84BFE7

L84BFE5:
	lda #$A2
L84BFE7:
	sta $7FF207
	lda $1436
	cmp #$29
	beq L84C037
	cmp #$2A
	beq L84C05B
	cmp #$15
	bpl L84BFFC
	bra L84BFFF

L84BFFC:
	sec
	sbc #$14
L84BFFF:
	sta $15A1
	cmp #$0A
	bpl L84C010
	clc
	adc #$A0
	sta $7FF20E
	brl L84C0A1

L84C010:
	cmp #$14
	bpl L84C029
	lda #$A1
	sta $7FF20D
	lda $15A1
	sec
	sbc #$0A
	clc
	adc #$A0
	sta $7FF20E
	bra L84C0A1

L84C029:
	lda #$A2
	sta $7FF20D
	lda #$A0
	sta $7FF20E
	bra L84C0A1

L84C037:
	rep #$20
	lda #bank100(L84C6DB)
	sta $04
	lda #L84C6DB
	sta $03
	lda #$7F00
	sta $01
	lda #$F200
	sta $00
	lda $00
	clc
	adc #$000D
	sta $00
	jsl L84C1B8
	bra L84C0A1

L84C05B:
	rep #$20
	lda #bank100(L84C6E7)
	sta $04
	lda #L84C6E7
	sta $03
	lda #$7F00
	sta $01
	lda #$F200
	sta $00
	lda $00
	clc
	adc #$000D
	sta $00
	jsl L84C1B8
	bra L84C0A1

L84C07F:
	rep #$20
	lda #bank100(L84C6F3)
	sta $04
	lda #L84C6F3
	sta $03
	lda #$7F00
	sta $01
	lda #$F200
	sta $00
	lda $00
	clc
	adc #$0002
	sta $00
	jsl L84C1B8
L84C0A1:
	rep #$20
	lda $1436
	jsl L84C211
	lda #$7F00
	sta $01
	lda #$F200
	sta $00
	jsl L84C1D1
	ldy $27
	cpy #$0000
	beq L84C0C3
	jsr L84C0C5
	pla
L84C0C3:
	plp
	rts

L84C0C5:
	php
	rep #$20
	jsl L87B860
	sep #$20
	lda $04,S
	sta.l $000F29
	lda $05,S
	sta.l $000F2A
	rep #$20
	lda #$2020
	sta $0F25
	lda #$4000
	sta $0F23
	lda #$7E00
	sta $0F21
	lda #$3000
	sta $0F20
	lda $0F05
	ora #$0008
	sta $0F05
	lda #$0000
	sta.l $000F27
	lda #$0000
	sta $0F14
	lda #$0000
	sta $0F12
	lda #$0001
	sta $0F07
	lda #bank100(L87BCCA)
	sta $0F1A
	lda #L87BCCA
	sta $0F19
L84C122:
	sep #$20
	lda $7A
	and #$80
	beq L84C132
	rep #$20
	jsl L80892E
	bra L84C136

L84C132:
	jsl L8087EA
L84C136:
	jsl L87B932
	rep #$20
	lda $0F09
	cmp #$0000
	bne L84C122
	plp
	rts

L84C146:
	rep #$30
	ldx #$3E00
	bra L84C152

L84C14D:
	rep #$30
	ldx #$3C00
L84C152:
	stx $19
	sta $17
	ldx $50
	lda $56
	sta $15
L84C15C:
	lda $15
	sta $0210,X
	clc
	adc #$0010
	sta $15
	lda $58
	sta $0211,X
	lda $17
	ora $19
	sta $0212,X
	lda $17
	clc
	adc #$0002
	bit #$0010
	beq L84C182
	clc
	adc #$0010
L84C182:
	sta $17
	inx
	inx
	inx
	inx
	dey
	bne L84C15C
	stx $50
	rts

L84C18E:
	phy
	rep #$30
	ldx $50
	lda $56
	sta $15
L84C197:
	lda $15
	sta $0210,X
	clc
	adc #$0010
	sta $15
	lda $58
	sta $0211,X
	lda #$33A4
	sta $0212,X
	inx
	inx
	inx
	inx
	dey
	bne L84C197
	stx $50
	ply
	rts

L84C1B8:
	php
	sep #$20
	ldy #$0000
L84C1BE:
	lda [$03],Y
	sta [$00],Y
L84C1C2:
	iny
	cmp #$00
	bne L84C1BE
	lda [$03],Y
	sta [$00],Y
	cmp #$00
	bne L84C1C2
	plp
	rtl

L84C1D1:
	php
	rep #$30
	lda $00
	sta $06
	lda $01
	sta $07
	sep #$20
	ldy #$FFFF
L84C1E1:
	iny
	lda [$00],Y
	cmp #$00
	bne L84C1E1
	iny
	lda [$00],Y
	cmp #$00
	bne L84C1E1
	rep #$30
	dey
	tya
	clc
	adc $06
	sta $06
	sep #$20
	ldy #$0000
L84C1FD:
	lda [$03],Y
	sta [$06],Y
	iny
	cmp #$00
	bne L84C1FD
	lda [$03],Y
	sta [$06],Y
	iny
	cmp #$00
	bne L84C1FD
	plp
	rtl

L84C211:
	php
	rep #$30
	asl
	tax
	lda #bank100(L84C223)
	sta $04
	lda.l L84C223,X
	sta $03
	plp
	rtl

L84C223:
.dw L84C27F
.dw L84C292
.dw L84C2A4
.dw L84C2B2
.dw L84C2C1
.dw L84C2D3
.dw L84C2E2
.dw L84C2F5
.dw L84C307
.dw L84C316
.dw L84C32C
.dw L84C33B
.dw L84C34B
.dw L84C359
.dw L84C368
.dw L84C376
.dw L84C385
.dw L84C394
.dw L84C3A7
.dw L84C3BB
.dw L84C3C9
.dw L84C3DD
.dw L84C3EF
.dw L84C403
.dw L84C417
.dw L84C42B
.dw L84C43D
.dw L84C451
.dw L84C461
.dw L84C470
.dw L84C482
.dw L84C494
.dw L84C4A2
.dw L84C4B4
.dw L84C4C4
.dw L84C4D8
.dw L84C4EA
.dw L84C4FD
.dw L84C511
.dw L84C521
.dw L84C535
.dw L84C543
.dw L84C555
.dw L84C27F
.dw L84C27F
.dw L84C27F

L84C27F:
.db $00 $11 $C4 $C4 $C4 $C4 $C4 $C4
.db $C4 $C4 $C4 $C4 $C4 $C4 $C4 $C4
.db $C4 $00 $00

L84C292:
.db $00 $11 $6F $79 $5D $19 $00 $12
.db $22 $8C $00 $11 $11 $C4 $C4 $C4
.db $00 $00

L84C2A4:
.db $00 $11 $7E $79 $88 $19 $ED $AD
.db $C4 $C4 $C4 $C4 $00 $00

L84C2B2:
.db $00 $11 $8B $8E $79 $6F $53 $7D
.db $63 $7D $C4 $C4 $C4 $00 $00

L84C2C1:
.db $00 $11 $55 $7A $79 $51 $7D $19
.db $F7 $DE $00 $12 $7A $00 $11 $C4
.db $00 $00

L84C2D3:
.db $00 $11 $6C $97 $52 $51 $B9 $54
.db $71 $8F $7A $71 $C4 $00 $00

L84C2E2:
.db $00 $11 $7A $6C $56 $7D $8B $98
.db $19 $00 $12 $68 $00 $11 $C4 $C4
.db $C4 $00 $00

L84C2F5:
.db $00 $12 $CB $00 $13 $0C $00 $11
.db $7C $B9 $7A $7D $C4 $C4 $C4 $C4
.db $00 $00

L84C307:
.db $00 $11 $94 $78 $7D $5E $5D $F9
.db $70 $68 $79 $8D $C4 $00 $00

L84C316:
.db $00 $11 $69 $79 $88 $19 $00 $12
.db $41 $00 $13 $0D $00 $12 $7C $00
.db $11 $D1 $C4 $C4 $00 $00

L84C32C:
.db $00 $11 $51 $56 $68 $52 $51 $F9
.db $92 $7A $5D $C4 $C4 $00 $00

L84C33B:
.db $00 $12 $6F $00 $11 $0C $20 $19
.db $AE $E8 $F9 $80 $77 $C4 $00 $00

L84C34B:
.db $00 $11 $CB $D6 $19 $FF $56 $88
.db $52 $7D $C4 $C4 $00 $00

L84C359:
.db $00 $11 $51 $78 $63 $98 $51 $19
.db $F7 $02 $C4 $C4 $C4 $00 $00

L84C368:
.db $00 $11 $5D $60 $B9 $7B $B9 $8C
.db $F9 $6F $79 $5D $00 $00

L84C376:
.db $00 $11 $6F $71 $58 $B9 $64 $F9
.db $94 $78 $7D $5E $5D $00 $00

L84C385:
.db $00 $11 $8F $77 $9D $58 $65 $52
.db $62 $F9 $56 $70 $75 $00 $00

L84C394:
.db $00 $13 $0E $0F $00 $11 $2D $00
.db $13 $10 $00 $11 $09 $29 $EF $DE
.db $C4 $00 $00

L84C3A7:
.db $00 $12 $23 $00 $11 $19 $00 $12
.db $BB $BC $00 $11 $7E $B9 $68 $6C
.db $C4 $C4 $00 $00

L84C3BB:
.db $00 $11 $6F $71 $58 $B9 $64 $19
.db $F1 $FF $C4 $C4 $00 $00

L84C3C9:
.db $00 $12 $C6 $00 $11 $3E $2A $0C
.db $BB $00 $12 $7A $00 $11 $C4 $C4
.db $C4 $C4 $00 $00

L84C3DD:
.db $00 $11 $80 $79 $66 $51 $00 $13
.db $11 $12 $00 $11 $C4 $C4 $C4 $C4
.db $00 $00

L84C3EF:
.db $00 $11 $6F $59 $8C $66 $51 $19
.db $00 $13 $04 $00 $12 $DF $00 $11
.db $C4 $C4 $00 $00

L84C403:
.db $00 $13 $13 $00 $11 $2A $00 $13
.db $14 $00 $11 $27 $2A $10 $F1 $F3
.db $C4 $C4 $00 $00

L84C417:
.db $00 $12 $60 $00 $11 $3F $14 $00
.db $12 $6F $00 $11 $0C $20 $14 $C4
.db $C4 $C4 $00 $00

L84C42B:
.db $00 $11 $80 $79 $66 $51 $00 $12
.db $1B $1C $00 $11 $C4 $C4 $C4 $C4
.db $00 $00

L84C43D:
.db $00 $12 $23 $00 $11 $19 $00 $12
.db $C8 $00 $11 $C4 $C4 $C4 $C4 $C4
.db $C4 $C4 $00 $00

L84C451:
.db $00 $13 $16 $00 $11 $19 $FE $DE
.db $C4 $C4 $C4 $C4 $C4 $C4 $00 $00

L84C461:
.db $00 $11 $5F $53 $79 $6C $79 $F9
.db $8F $78 $9D $84 $C4 $00 $00

L84C470:
.db $00 $11 $CB $D6 $19 $B7 $00 $12
.db $E0 $00 $11 $C4 $C4 $C4 $C4 $C4
.db $00 $00

L84C482:
.db $00 $11 $CB $D6 $DE $00 $12 $14
.db $00 $11 $EE $C4 $C4 $C4 $C4 $C4
.db $00 $00

L84C494:
.db $00 $11 $51 $7D $78 $19 $D6 $C4
.db $C4 $C4 $C4 $C4 $00 $00

L84C4A2:
.db $00 $11 $E6 $CC $19 $00 $13 $18
.db $00 $11 $D1 $C4 $C4 $C4 $C4 $C4
.db $00 $00

L84C4B4:
.db $00 $12 $F1 $00 $11 $19 $AE $E8
.db $C4 $C4 $C4 $C4 $C4 $C4 $00 $00

L84C4C4:
.db $00 $12 $D4 $00 $11 $06 $0B $2A
.db $10 $00 $13 $19 $00 $11 $C4 $C4
.db $C4 $C4 $00 $00

L84C4D8:
.db $00 $11 $F1 $F2 $19 $00 $13 $1E
.db $1F $00 $11 $C4 $C4 $C4 $C4 $C4
.db $00 $00

L84C4EA:
.db $00 $11 $F1 $00 $12 $46 $00 $13
.db $1B $1C $00 $11 $C4 $C4 $C4 $C4
.db $C4 $00 $00

L84C4FD:
.db $00 $11 $80 $77 $19 $00 $13 $1D
.db $00 $12 $16 $00 $11 $C4 $C4 $C4
.db $C4 $C4 $00 $00

L84C511:
.db $00 $14 $6F $00 $11 $19 $F7 $02
.db $C4 $C4 $C4 $C4 $C4 $C4 $00 $00

L84C521:
.db $00 $12 $4B $52 $00 $11 $19 $00
.db $12 $67 $00 $11 $F7 $C4 $C4 $C4
.db $C4 $C4 $00 $00

L84C535:
.db $00 $11 $E9 $EA $B5 $B6 $C4 $C4
.db $C4 $C4 $C4 $C4 $00 $00

L84C543:
.db $00 $11 $E7 $CC $19 $00 $12 $47
.db $00 $11 $C4 $C4 $C4 $C4 $C4 $C4
.db $00 $00

L84C555:
.db $00 $11 $CC $19 $00 $12 $BC $00
.db $13 $20 $00 $11 $C4 $C4 $C4 $C4
.db $C4 $00 $00

L84C568:
.db $00 $12 $42 $00 $13 $05 $00 $11
.db $06 $27 $00 $12 $51 $00 $11 $22
.db $29 $00 $00

L84C57B:
.db $00 $13 $06 $07 $00 $11 $06 $27
.db $00 $12 $51 $00 $11 $22 $29 $00
.db $00

L84C58C:
.db $00 $12 $4B $00 $13 $08 $00 $11
.db $06 $27 $00 $12 $51 $00 $11 $22
.db $29 $00 $00

L84C59F:
.db $00 $13 $06 $07 $00 $11 $2D $00
.db $13 $09 $00 $11 $0D $C4 $00 $00

L84C5AF:
.db $00 $13 $06 $07 $00 $11 $2D $00
.db $13 $0A $00 $11 $0D $C4 $00 $00

L84C5BF:
.db $C8 $C5 $84 $DC $C5 $84 $F0 $C5
.db $84 $00 $13 $06 $07 $00 $11 $A1
.db $1A $C4 $00 $13 $0A $00 $11 $0B
.db $2A $1F $0D $00 $00 $00 $13 $06
.db $07 $00 $11 $A2 $1A $C4 $00 $13
.db $0A $00 $11 $0B $2A $1F $0D $00
.db $00 $00 $13 $06 $07 $00 $11 $A3
.db $1A $C4 $00 $13 $0A $00 $11 $0B
.db $2A $1F $0D $00 $00

L84C604:
.db $0D $C6 $84
.db $2A $C6 $84 $47 $C6 $84 $00 $12
.db $42 $00 $13 $05 $00 $11 $F9 $00
.db $13 $06 $07 $00 $11 $A1 $1A $C4
.db $00 $13 $0A $00 $11 $0B $2A $1F
.db $0D $00 $00 $00 $12 $42 $00 $13
.db $05 $00 $11 $F9 $00 $13 $06 $07
.db $00 $11 $A2 $1A $C4 $00 $13 $0A
.db $00 $11 $0B $2A $1F $0D $00 $00
.db $00 $12 $42 $00 $13 $05 $00 $11
.db $F9 $00 $13 $06 $07 $00 $11 $A3
.db $1A $C4 $00 $13 $0A $00 $11 $0B
.db $2A $1F $0D $00 $00

L84C664:
.db $00 $11 $1A $02 $00 $00

L84C66A:
.db $00 $11 $02 $02 $04 $00 $00

L84C671:
.db $00 $11 $C4 $E9 $EA $F7 $BF $00
.db $13 $25 $00 $11 $C4 $E9 $EA $CC
.db $14 $00 $12 $9E $00 $11 $19 $FE
.db $00 $00

L84C68B:
.db $00 $11 $C4 $00 $12 $A2 $A3 $00
.db $11 $F7 $BF $00 $13 $25 $00 $11
.db $C4 $00 $13 $01 $02 $00 $11 $19
.db $00 $13 $19 $00 $11 $C4 $C4 $C4
.db $C4 $00 $00

L84C6AE:
.db $C4 $F9 $00 $13 $0B $00 $11 $C4
.db $00 $12 $99 $00 $11 $C4 $C4 $00
.db $13 $02 $00 $11 $C4 $00 $00

L84C6C5:
.db $00 $13 $0B $00 $11 $A1 $00 $12
.db $99 $00 $00

L84C6D0:
.db $00 $13 $0B $00 $11 $A2 $00 $12
.db $99 $00 $00

L84C6DB:
.db $00 $13 $24 $00 $13 $02 $00 $11
.db $A1 $C4 $00 $00

L84C6E7:
.db $00 $13 $24 $00 $13 $02 $00 $11
.db $A2 $C4 $00 $00

L84C6F3:
.db $00 $12 $A7 $00 $11 $DF $E0 $00
.db $00 $00 $11 $C4 $C4 $C4 $C4 $00
.db $00

L84C704:
.db $13 $C7 $84 $19 $C7 $84 $1F $C7
.db $84 $25 $C7 $84 $2B $C7 $84 $01
.db $00 $00 $00 $4E $37 $01 $00 $00
.db $00 $4E $37 $01 $00 $00 $00 $4E
.db $37 $01 $00 $00 $00 $4E $3B $01
.db $00 $00 $00 $4E $37

L84C731:
.db $61 $C7 $84 $C5 $C7 $84 $21 $C8
.db $84 $6D $C8 $84 $B0 $C8 $84 $00
.db $C9 $84 $48 $C9 $84 $90 $C9 $84
.db $9E $C9 $84 $BC $C9 $84 $EF $C9
.db $84 $32 $CA $84 $7E $CA $84 $C1
.db $CA $84 $E8 $CA $84 $0F $CB $84
.db $18 $00 $00 $00 $60 $35 $00 $10
.db $62 $35 $00 $20 $62 $35 $00 $30
.db $62 $35 $00 $40 $62 $35 $00 $50
.db $62 $35 $00 $60 $64 $35 $60 $00
.db $66 $35 $00 $60 $10 $68 $35 $60
.db $20 $68 $35 $60 $30 $68 $35 $60
.db $40 $68 $35 $60 $50 $68 $35 $60
.db $60 $6A $35 $10 $00 $6C $35 $20
.db $00 $6C $35 $00 $30 $00 $6C $35
.db $40 $00 $6C $35 $50 $00 $6C $35
.db $10 $60 $6E $35 $20 $60 $6E $35
.db $30 $60 $6E $35 $40 $60 $6E $35
.db $50 $60 $6E $35 $16 $00 $00 $00
.db $60 $35 $00 $10 $62 $35 $00 $20
.db $62 $35 $00 $30 $62 $35 $00 $40
.db $62 $35 $00 $50 $62 $35 $00 $60
.db $64 $35 $50 $00 $66 $35 $00 $50
.db $10 $68 $35 $50 $20 $68 $35 $50
.db $30 $68 $35 $50 $40 $68 $35 $50
.db $50 $68 $35 $50 $60 $6A $35 $10
.db $00 $6C $35 $20 $00 $6C $35 $00
.db $30 $00 $6C $35 $40 $00 $6C $35
.db $10 $60 $6E $35 $20 $60 $6E $35
.db $30 $60 $6E $35 $40 $60 $6E $35
.db $12 $00 $00 $00 $60 $35 $00 $10
.db $62 $35 $00 $20 $62 $35 $00 $30
.db $62 $35 $00 $40 $62 $35 $00 $50
.db $62 $35 $00 $60 $64 $35 $30 $00
.db $66 $35 $00 $30 $10 $68 $35 $30
.db $20 $68 $35 $30 $30 $68 $35 $30
.db $40 $68 $35 $30 $50 $68 $35 $30
.db $60 $6A $35 $10 $00 $6C $35 $20
.db $00 $6C $35 $00 $10 $60 $6E $35
.db $20 $60 $6E $35 $10 $00 $00 $00
.db $60 $35 $00 $10 $62 $35 $00 $20
.db $62 $35 $00 $30 $62 $35 $00 $40
.db $62 $35 $00 $50 $62 $35 $00 $60
.db $64 $35 $20 $00 $66 $35 $00 $20
.db $10 $68 $35 $20 $20 $68 $35 $20
.db $30 $68 $35 $20 $40 $68 $35 $20
.db $50 $68 $35 $20 $60 $6A $35 $10
.db $00 $6C $35 $10 $60 $6E $35 $13
.db $00 $00 $00 $60 $35 $00 $10 $62
.db $35 $00 $20 $62 $35 $00 $30 $62
.db $35 $00 $40 $62 $35 $00 $50 $62
.db $35 $00 $60 $62 $35 $00 $70 $62
.db $35 $00 $40 $00 $66 $35 $40 $10
.db $68 $35 $40 $20 $68 $35 $40 $30
.db $68 $35 $40 $40 $68 $35 $40 $50
.db $68 $35 $40 $60 $68 $35 $40 $70
.db $68 $35 $00 $10 $00 $6C $35 $20
.db $00 $6C $35 $30 $00 $6C $35 $11
.db $00 $00 $00 $62 $35 $00 $10 $62
.db $35 $00 $20 $62 $35 $00 $30 $62
.db $35 $00 $40 $62 $35 $00 $50 $62
.db $35 $00 $60 $64 $35 $40 $00 $68
.db $35 $00 $40 $10 $68 $35 $40 $20
.db $68 $35 $40 $30 $68 $35 $40 $40
.db $68 $35 $40 $50 $68 $35 $40 $60
.db $6A $35 $10 $60 $6E $35 $20 $60
.db $6E $35 $00 $30 $60 $6E $35 $11
.db $00 $00 $00 $60 $35 $00 $10 $62
.db $35 $00 $20 $62 $35 $00 $30 $62
.db $35 $00 $40 $62 $35 $00 $50 $62
.db $35 $00 $60 $62 $35 $00 $70 $62
.db $35 $00 $20 $00 $66 $35 $20 $10
.db $68 $35 $20 $20 $68 $35 $20 $30
.db $68 $35 $20 $40 $68 $35 $20 $50
.db $68 $35 $20 $60 $68 $35 $20 $70
.db $68 $35 $00 $10 $00 $6C $35 $03
.db $00 $00 $00 $64 $35 $20 $00 $6A
.db $35 $10 $00 $6E $35 $07 $00 $00
.db $00 $62 $35 $00 $10 $62 $35 $00
.db $20 $64 $35 $20 $00 $68 $35 $20
.db $10 $68 $35 $20 $20 $6A $35 $10
.db $20 $6E $35 $0C $00 $00 $00 $60
.db $35 $00 $10 $62 $35 $00 $20 $62
.db $35 $00 $30 $64 $35 $30 $00 $66
.db $35 $30 $10 $68 $35 $30 $20 $68
.db $35 $30 $30 $6A $35 $00 $10 $00
.db $6C $35 $20 $00 $6C $35 $10 $30
.db $6E $35 $20 $30 $6E $35 $10 $00
.db $00 $00 $60 $35 $00 $10 $62 $35
.db $00 $20 $62 $35 $00 $30 $62 $35
.db $00 $40 $62 $35 $00 $50 $62 $35
.db $00 $60 $62 $35 $30 $00 $66 $35
.db $00 $30 $10 $68 $35 $30 $20 $68
.db $35 $30 $30 $68 $35 $30 $40 $68
.db $35 $30 $50 $68 $35 $30 $60 $68
.db $35 $10 $00 $6C $35 $20 $00 $6C
.db $35 $12 $00 $00 $00 $62 $35 $00
.db $10 $62 $35 $00 $20 $62 $35 $00
.db $30 $62 $35 $00 $40 $62 $35 $00
.db $50 $62 $35 $00 $60 $62 $35 $00
.db $70 $64 $35 $00 $30 $00 $68 $35
.db $30 $10 $68 $35 $30 $20 $68 $35
.db $30 $30 $68 $35 $30 $40 $68 $35
.db $30 $50 $68 $35 $30 $60 $68 $35
.db $30 $70 $6A $35 $00 $10 $70 $6E
.db $35 $20 $70 $6E $35 $10 $00 $FC
.db $FC $60 $35 $FC $0C $62 $35 $FC
.db $14 $62 $35 $FC $24 $64 $35 $0C
.db $FC $6C $35 $0C $0C $A4 $35 $0C
.db $14 $A4 $35 $0C $24 $6E $35 $00
.db $24 $FC $66 $35 $24 $0C $68 $35
.db $24 $14 $68 $35 $24 $24 $6A $35
.db $1C $FC $6C $35 $1C $0C $A4 $35
.db $1C $14 $A4 $35 $1C $24 $6E $35
.db $09 $00 $00 $00 $60 $35 $00 $10
.db $62 $35 $00 $20 $64 $35 $10 $00
.db $6C $35 $10 $10 $A4 $35 $10 $20
.db $6E $35 $20 $00 $66 $35 $20 $10
.db $68 $35 $00 $20 $20 $6A $35 $09
.db $00 $04 $04 $60 $35 $04 $10 $62
.db $35 $04 $1C $64 $35 $1C $04 $66
.db $35 $1C $10 $68 $35 $1C $1C $6A
.db $35 $10 $04 $6C $35 $10 $1C $6E
.db $35 $00 $14 $10 $A4 $35 $04 $00
.db $08 $08 $60 $35 $08 $18 $64 $35
.db $18 $08 $66 $35 $18 $18 $6A $35

L84CB21:
	php
L84CB22:
	rep #$30
	lda $141E
	and #$00FF
	asl
	tax
	jsr (L84CB4A,X)
	jsr L84B93A
	jsr L84B98B
	lda $141E
	cmp #$0006
	beq L84CB48
	sep #$20
	lda $0E00
	cmp #$09
	beq L84CB48
	bra L84CB22

L84CB48:
	plp
	rts

L84CB4A:
.dw L84CB5A
.dw L84CBD8
.dw L84CE9A
.dw L84D27D
.dw L84D69F
.dw L84DB67
.dw L84DD6B
.dw L84DE78

L84CB5A:
	php
	sep #$20
	lda #$C0
	sta $86
	lda $07DF
	cmp #$15
	bne L84CB72
	lda #$02
	sta $07D6
	lda #$01
	sta $07D8
L84CB72:
	rep #$30
	lda #$0134
	sta $1408
	lda #$0123
	sta $140A
	lda #$00BA
	sta $140C
	lda #$00B4
	sta $140E
	lda #$0000
	sta $1410
	lda #$0270
	sta $1412
	lda #$0270
	sta $1414
	jsr L84E253
	jsr L84E55A
	sep #$20
	lda #$10
	sta $0E0F
	rep #$30
	lda #$0000
	sta $146C
	jsr L848C79
	jsl L8087EA
	lda #$0000
	sta $141C
	lda $141A
	cmp #$0018
	bne L84CBD0
	lda #$0001
	sta $141E
	bra L84CBD6

L84CBD0:
	lda #$0002
	sta $141E
L84CBD6:
	plp
	rts

L84CBD8:
	php
	rep #$30
	lda #$0000
	sta $1418
	lda $141C
	cmp #$0001
	beq L84CBEB
	bra L84CBEE

L84CBEB:
	brl L84CD0B

L84CBEE:
	lda $0125
	and #$0800
	beq L84CC09
	lda $140A
	sec
	sbc #$0002
	sta $140A
	lda $140A
	and #$1FFF
	sta $140A
L84CC09:
	lda $0125
	and #$0400
	beq L84CC24
	lda $140A
	clc
	adc #$0002
	sta $140A
	lda $140A
	and #$1FFF
	sta $140A
L84CC24:
	lda $0125
	and #$0200
	beq L84CC3F
	lda $1408
	sec
	sbc #$0002
	sta $1408
	lda $1408
	and #$1FFF
	sta $1408
L84CC3F:
	lda $0125
	and #$0100
	beq L84CC5A
	lda $1408
	clc
	adc #$0002
	sta $1408
	lda $1408
	and #$1FFF
	sta $1408
L84CC5A:
	lda $0129
	and #$0040
	beq L84CC72
	lda $1412
	clc
	adc #$0005
	sta $1412
	lda #$0001
	sta $1418
L84CC72:
	lda $0129
	and #$4000
	beq L84CC8A
	lda $1414
	clc
	adc #$0005
	sta $1414
	lda #$0001
	sta $1418
L84CC8A:
	lda $0129
	and #$0080
	beq L84CCA2
	lda $1412
	sec
	sbc #$0005
	sta $1412
	lda #$0001
	sta $1418
L84CCA2:
	lda $0129
	and #$8000
	beq L84CCBA
	lda $1414
	sec
	sbc #$0005
	sta $1414
	lda #$0001
	sta $1418
L84CCBA:
	lda $0129
	and #$0020
	beq L84CCE5
	lda $1410
	sec
	sbc #$0005
	cmp #$0000
	bmi L84CCD0
	bra L84CCDC

L84CCD0:
	eor #$FFFF
	ina
	sta $00
	lda #$0168
	sec
	sbc $00
L84CCDC:
	sta $1410
	lda #$0001
	sta $1418
L84CCE5:
	lda $0129
	and #$0010
	beq L84CD08
	lda $1410
	clc
	adc #$0005
	cmp #$0168
	bpl L84CCFB
	bra L84CCFF

L84CCFB:
	sec
	sbc #$0168
L84CCFF:
	sta $1410
	lda #$0001
	sta $1418
L84CD08:
	brl L84CE15

L84CD0B:
	lda $0125
	and #$0800
	beq L84CD1D
	lda $140E
	clc
	adc #$0002
	sta $140E
L84CD1D:
	lda $0125
	and #$0400
	beq L84CD2F
	lda $140E
	sec
	sbc #$0002
	sta $140E
L84CD2F:
	lda $0125
	and #$0200
	beq L84CD41
	lda $140C
	clc
	adc #$0002
	sta $140C
L84CD41:
	lda $0125
	and #$0100
	beq L84CD53
	lda $140C
	sec
	sbc #$0002
	sta $140C
L84CD53:
	lda $0125
	and #$0080
	beq L84CD75
	lda $1412
	clc
	adc #$000A
	sta $1412
	lda $1414
	clc
	adc #$000A
	sta $1414
	lda #$0001
	sta $1418
L84CD75:
	lda $0125
	and #$8000
	beq L84CD97
	lda $1412
	sec
	sbc #$000A
	sta $1412
	lda $1414
	sec
	sbc #$000A
	sta $1414
	lda #$0001
	sta $1418
L84CD97:
	lda $0127
	and #$0040
	beq L84CDAD
	sep #$20
	lda $0E0F
	ina
	sta $0E0F
	rep #$20
	jsr L848C79
L84CDAD:
	lda $0127
	and #$4000
	beq L84CDC3
	sep #$20
	lda $0E0F
	dea
	sta $0E0F
	rep #$20
	jsr L848C79
L84CDC3:
	lda $0127
	and #$0020
	beq L84CDDB
	sep #$20
	lda $F7
	eor #$70
	sta $F7
	rep #$20
	lda #$0001
	sta $1418
L84CDDB:
	lda $0127
	and #$0010
	beq L84CE15
	rep #$30
	lda #$0134
	sta $1408
	lda #$0123
	sta $140A
	lda #$00BA
	sta $140C
	lda #$00B4
	sta $140E
	lda #$0000
	sta $1410
	lda #$0270
	sta $1412
	lda #$0270
	sta $1414
	lda #$0001
	sta $1418
L84CE15:
	lda $0127
	and #$2000
	beq L84CE26
	lda $141C
	eor #$0001
	sta $141C
L84CE26:
	lda $0127
	and #$1000
	beq L84CE86
	rep #$30
	lda #$0134
	sta $1408
	lda #$0123
	sta $140A
	lda #$00BA
	sta $140C
	lda #$00B4
	sta $140E
	lda #$0000
	sta $1410
	lda #$0270
	sta $1412
	lda #$0270
	sta $1414
	lda #$0001
	sta $1418
	lda #$0001
	sta $1418
	jsr L84E253
	jsr L84E55A
	sep #$20
	lda $F7
	and #$8F
	sta $F7
	rep #$30
	jsl L8087EA
	lda #$0001
	sta $1418
	lda #$0002
	sta $141E
L84CE86:
	lda $1418
	cmp #$0000
	beq L84CE91
	jsr L84E253
L84CE91:
	jsr L84E55A
	jsl L8087EA
	plp
	rts

L84CE9A:
	php
	sep #$20
	lda #$1C
	sta $0E0F
	lda $07DF
	rep #$30
	and #$00FF
	asl
	tax
	phx
	lda #$0134
	sta $1408
	lda #$0123
	sta $140A
	lda #$00BA
	sta $140C
	lda #$00B4
	sta $140E
	lda #$0000
	sta $1410
	lda #$0270
	sta $1412
	lda #$0270
	sta $1414
	jsr L84E253
	jsr L84E55A
	jsl L8087EA
	lda #$0001
	sta $146A
	lda #$0134
	cmp.w L84DF4D,X
	bmi L84CEF1
	bne L84CEF9
L84CEF1:
	lda #$0000
	sta $15B4
	bra L84CEFF

L84CEF9:
	lda #$FFFF
	sta $15B4
L84CEFF:
	lda #$0123
	cmp.w L84DFA3,X
	bmi L84CF09
	bne L84CF11
L84CF09:
	lda #$0000
	sta $15B2
	bra L84CF17

L84CF11:
	lda #$FFFF
	sta $15B2
L84CF17:
	plx
	lda #$10F0
	jsl L80B4E3
	lda #$0076
	jsl L80B4BB
	jsl L8087EA
	lda #$0005
	sta $15B0
	lda #$0000
	sta $15A4
	lda #$0000
	sta $15A6
L84CF3C:
	lda $146A
	cmp #$0000
	beq L84CF54
	lda #$0028
L84CF47:
	pha
	lda #$00C8
L84CF4B:
	nop
	nop
	dea
	bne L84CF4B
	pla
	dea
	bne L84CF47
L84CF54:
	lda $1412
	clc
	adc #$003C
	sta $1412
	lda $1414
	clc
	adc #$003C
	sta $1414
	lda $1412
	cmp #$0505
	bcc L84CF76
	lda #$0001
	sta $15B0
L84CF76:
	lda $1410
	clc
	adc #$0001
	cmp #$0168
	bpl L84CF84
	bra L84CF88

L84CF84:
	sec
	sbc #$0168
L84CF88:
	sta $1410
	lda $1410
	cmp #$005A
	bmi L84CF9B
	beq L84CF9B
	lda #$005A
	sta $1410
L84CF9B:
	jsr L84D15C
	jsr L84E253
	jsr L84E55A
	jsl L8087EA
	lda $15A4
	ina
	sta $15A4
	lda $15A4
	cmp #$000A
	bmi L84CFD6
	beq L84CFD6
	lda #$0000
	sta $15A4
	lda $15A6
	cmp #$000F
	beq L84CFD6
	lda $15A6
	ina
	sta $15A6
	phx
	lda $15A6
	jsr L84B8F7
	plx
L84CFD6:
	lda $0127
	bit #$0080
	bne L84CFE0
	bra L84CFE6

L84CFE0:
	lda #$0000
	sta $146A
L84CFE6:
	lda $0127
	bit #$1000
	beq L84CFF1
	brl L84D150

L84CFF1:
	jsr L84B93A
	jsr L84B98B
	lda $1412
	cmp #$1800
	bmi L84D003
	beq L84D003
	bra L84D006

L84D003:
	brl L84CF3C

L84D006:
	lda #$1800
	sta $1412
	lda #$1800
	sta $1414
	jsr L848C79
	jsr L84E253
	jsr L84E55A
	jsl L8087EA
	sep #$20
	lda $F7
	ora #$70
	sta $F7
	rep #$30
	lda #$0077
	jsl L80B4BB
	jsl L8087EA
	lda #$0001
	sta $146A
	lda #$0000
	sta $15A4
	lda #$0008
	sta $15A6
L84D046:
	lda $146A
	cmp #$0000
	beq L84D05E
	lda #$001E
L84D051:
	pha
	lda #$00C8
L84D055:
	nop
	nop
	dea
	bne L84D055
	pla
	dea
	bne L84D051
L84D05E:
	lda #$005A
	sta $1410
	lda $1412
	sec
	sbc #$0046
	sta $1412
	lda $1414
	sec
	sbc #$0046
	sta $1414
	lda $1412
	cmp #$0000
	bpl L84D08C
	lda #$0000
	sta $1412
	lda #$0000
	sta $1414
L84D08C:
	jsr L84D15C
	jsr L84E253
	jsr L84E55A
	jsl L8087EA
	lda $1412
	cmp #$1800
	bcc L84D0A5
	beq L84D0A5
	bra L84D0D3

L84D0A5:
	lda $15A4
	ina
	sta $15A4
	lda $15A4
	cmp #$000A
	bmi L84D0D3
	beq L84D0D3
	lda #$0000
	sta $15A4
	lda $15A6
	cmp #$0000
	beq L84D0D3
	lda $15A6
	dea
	sta $15A6
	phx
	lda $15A6
	jsr L84B8F7
	plx
L84D0D3:
	lda $0127
	bit #$0080
	bne L84D0DD
	bra L84D0E3

L84D0DD:
	lda #$0000
	sta $146A
L84D0E3:
	lda $0127
	bit #$1000
	bne L84D150
	jsr L84B93A
	jsr L84B98B
	lda $1412
	cmp #$0000
	bmi L84D0FE
	beq L84D0FE
	brl L84D046

L84D0FE:
	lda #$00F9
	jsl L80B4E3
	jsl L8087EA
	lda $146A
	cmp #$0000
	beq L84D123
	lda #$0190
L84D114:
	pha
	lda #$03E8
L84D118:
	nop
	nop
	dea
	bne L84D118
	pla
	dea
	bne L84D114
	bra L84D133

L84D123:
	lda #$0190
L84D126:
	pha
	lda #$00C8
L84D12A:
	nop
	nop
	dea
	bne L84D12A
	pla
	dea
	bne L84D126
L84D133:
	sep #$20
	lda $07D6
	cmp #$02
	beq L84D146
	rep #$30
	lda #$0003
	sta $141E
	bra L84D14E

L84D146:
	rep #$30
	lda #$0006
	sta $141E
L84D14E:
	plp
	rts

L84D150:
	jsl L808CEA
	lda #$0007
	sta $141E
	plp
	rts

L84D15C:
	php
	rep #$30
	lda $15B4
	cmp #$FFFF
	beq L84D1A9
	lda $1408
	cmp.w L84DF4D,X
	beq L84D187
	lda $1408
	clc
	adc $15B0
	sta $1408
	lda $1408
	cmp.w L84DF4D,X
	bmi L84D187
	lda.w L84DF4D,X
	sta $1408
L84D187:
	lda $140C
	cmp.w L84DFF9,X
	beq L84D1A7
	lda $140C
	clc
	adc $15B0
	sta $140C
	lda $140C
	cmp.w L84DFF9,X
	bmi L84D1A7
	lda.w L84DFF9,X
	sta $140C
L84D1A7:
	bra L84D1ED

L84D1A9:
	lda $1408
	cmp.w L84DF4D,X
	beq L84D1CB
	lda $1408
	sec
	sbc $15B0
	sta $1408
	lda $1408
	cmp.w L84DF4D,X
	bmi L84D1C5
	bne L84D1CB
L84D1C5:
	lda.w L84DF4D,X
	sta $1408
L84D1CB:
	lda $140C
	cmp.w L84DFF9,X
	beq L84D1ED
	lda $140C
	sec
	sbc $15B0
	sta $140C
	lda $140C
	cmp.w L84DFF9,X
	bmi L84D1E7
	bne L84D1ED
L84D1E7:
	lda.w L84DFF9,X
	sta $140C
L84D1ED:
	lda $15B2
	cmp #$FFFF
	beq L84D237
	lda $140A
	cmp.w L84DFA3,X
	beq L84D215
	lda $140A
	clc
	adc $15B0
	sta $140A
	lda $140A
	cmp.w L84DFA3,X
	bmi L84D215
	lda.w L84DFA3,X
	sta $140A
L84D215:
	lda $140E
	cmp.w L84E04F,X
	beq L84D235
	lda $140E
	clc
	adc $15B0
	sta $140E
	lda $140E
	cmp.w L84E04F,X
	bmi L84D235
	lda.w L84E04F,X
	sta $140E
L84D235:
	bra L84D27B

L84D237:
	lda $140A
	cmp.w L84DFA3,X
	beq L84D259
	lda $140A
	sec
	sbc $15B0
	sta $140A
	lda $140A
	cmp.w L84DFA3,X
	bmi L84D253
	bne L84D259
L84D253:
	lda.w L84DFA3,X
	sta $140A
L84D259:
	lda $140E
	cmp.w L84E04F,X
	beq L84D27B
	lda $140E
	sec
	sbc $15B0
	sta $140E
	lda $140E
	cmp.w L84E04F,X
	bmi L84D275
	bne L84D27B
L84D275:
	lda.w L84E04F,X
	sta $140E
L84D27B:
	plp
	rts

L84D27D:
	php
	sep #$20
	lda #$1C
	sta $0E0F
	lda #$00
	sta $7F
	lda #$0F
	sta $7A
	lda $07DF
	rep #$30
	and #$00FF
	asl
	tax
	lda.w L84E1FD,X
	cmp #$FFFF
	beq L84D2A7
	lda #$0000
	sta $15B4
	bra L84D2AD

L84D2A7:
	lda #$000A
	sta $15B4
L84D2AD:
	rep #$30
	phx
	lda.w L84DF4D,X
	sta $1408
	lda.w L84DFA3,X
	sta $140A
	lda.w L84DFF9,X
	sta $140C
	lda.w L84E04F,X
	sta $140E
	lda #$0000
	sta $1410
	lda #$00C1
	sta $1412
	lda #$00C1
	sta $1414
	jsr L848C79
	jsr L84E253
	jsr L84E55A
	sep #$20
	lda $07DF
	cmp #$12
	beq L84D2FD
	lda $07DF
	cmp #$23
	beq L84D307
	rep #$30
	lda #$0000
	sta $1565
	bra L84D31E

L84D2FD:
	rep #$30
	lda #$0000
	sta $1567
	bra L84D30F

L84D307:
	rep #$30
	lda #$00B4
	sta $1567
L84D30F:
	sep #$20
	lda #$13
	sta $1569
	rep #$30
	lda #$0001
	sta $1565
L84D31E:
	jsl L8087EA
	lda #$0001
	sta $146A
	lda #$0001
	sta $15B2
	lda #$0001
	sta $15B0
	plx
	lda $146C
	cmp #$0001
	bne L84D33F
	bra L84D342

L84D33F:
	brl L84D3C4

L84D342:
	rep #$30
	lda $146A
	cmp #$0000
	beq L84D35C
	lda #$0032
L84D34F:
	pha
	lda #$03E8
L84D353:
	nop
	nop
	dea
	bne L84D353
	pla
	dea
	bne L84D34F
L84D35C:
	sep #$20
	lda $A6
	dea
	sta $A6
	rep #$30
	jsl L8087EA
	lda $0127
	bit #$0080
	bne L84D373
	bra L84D379

L84D373:
	lda #$0000
	sta $146A
L84D379:
	lda $0127
	bit #$1000
	beq L84D384
	brl L84D687

L84D384:
	jsr L84B93A
	jsr L84B98B
	sep #$20
	lda $A6
	cmp #$E0
	bne L84D342
	rep #$30
	lda $146A
	cmp #$0000
	beq L84D3AC
	lda #$0032
L84D39F:
	pha
	lda #$03E8
L84D3A3:
	nop
	nop
	dea
	bne L84D3A3
	pla
	dea
	bne L84D39F
L84D3AC:
	lda #$0002
	sta $A4
	lda #$0001
	sta $A5
	jsl L8087EA
	sep #$20
	lda $F7
	ora #$40
	sta $F7
	rep #$30
L84D3C4:
	lda #$80B6
	sta $0876
	jsl L8087EA
	lda $1565
	cmp #$0000
	beq L84D3D8
	bra L84D3DB

L84D3D8:
	brl L84D43C

L84D3DB:
	lda #$0001
	sta $146A
	jsr L84D786
	lda #$0003
	sta $17
	jsr L84D874
	sep #$20
	lda $F7
	ora #$0C
	sta $F7
	rep #$30
	lda #$0002
	sta $17
L84D3FB:
	lda $146A
	cmp #$0000
	beq L84D413
	lda #$001E
L84D406:
	pha
	lda #$03E8
L84D40A:
	nop
	nop
	dea
	bne L84D40A
	pla
	dea
	bne L84D406
L84D413:
	jsl L8087EA
	lda $0127
	bit #$0080
	bne L84D421
	bra L84D427

L84D421:
	lda #$0000
	sta $146A
L84D427:
	jsr L84D874
	lda $17
	dea
	sta $17
	lda $17
	cmp #$0000
	bpl L84D3FB
	lda #$0001
	sta $146A
L84D43C:
	lda $1408
	cmp.w L84E0A5,X
	beq L84D4B1
	sep #$20
	lda.w L84DEF7,X
	cmp #$FF
	beq L84D481
	rep #$30
	lda $1408
	clc
	adc $15B2
	sta $1408
	lda $140C
	clc
	adc $15B2
	sta $140C
	lda $1408
	cmp.w L84E0A5,X
	bmi L84D4B1
	beq L84D4B1
	lda.w L84E0A5,X
	sta $1408
	lda.w L84E151,X
	sta $140C
	lda #$0000
	sta $15B2
	bra L84D4B1

L84D481:
	rep #$30
	lda $1408
	sec
	sbc $15B2
	sta $1408
	lda $140C
	sec
	sbc $15B2
	sta $140C
	lda $1408
	cmp.w L84E0A5,X
	bpl L84D4B1
	lda.w L84E0A5,X
	sta $1408
	lda.w L84E151,X
	sta $140C
	lda #$0000
	sta $15B2
L84D4B1:
	rep #$30
	lda $140A
	cmp.w L84E0FB,X
	beq L84D528
	sep #$20
	lda.w (L84DEF7 + 1),X
	cmp #$FF
	beq L84D4F8
	rep #$30
	lda $140A
	clc
	adc $15B0
	sta $140A
	lda $140E
	clc
	adc $15B0
	sta $140E
	lda $140A
	cmp.w L84E0FB,X
	bmi L84D528
	beq L84D528
	lda.w L84E0FB,X
	sta $140A
	lda.w L84E1A7,X
	sta $140E
	lda #$0000
	sta $15B0
	bra L84D528

L84D4F8:
	rep #$30
	lda $140A
	sec
	sbc $15B0
	sta $140A
	lda $140E
	sec
	sbc $15B0
	sta $140E
	lda $140A
	cmp.w L84E0FB,X
	bpl L84D528
	lda.w L84E0FB,X
	sta $140A
	lda.w L84E1A7,X
	sta $140E
	lda #$0000
	sta $15B0
L84D528:
	jsr L84E55A
	lda $1565
	cmp #$0000
	beq L84D53B
	lda #$0000
	sta $17
	jsr L84D874
L84D53B:
	jsl L8087EA
	lda $0127
	bit #$0080
	bne L84D549
	bra L84D55B

L84D549:
	lda #$0000
	sta $146A
	lda #$000A
	sta $15B2
	lda #$000A
	sta $15B0
L84D55B:
	lda $0127
	bit #$1000
	beq L84D566
	brl L84D687

L84D566:
	jsr L84B93A
	jsr L84B98B
	lda $146A
	cmp #$0000
	beq L84D584
	lda #$0028
L84D577:
	pha
	lda #$00C8
L84D57B:
	nop
	nop
	dea
	bne L84D57B
	pla
	dea
	bne L84D577
L84D584:
	lda $1408
	cmp.w L84E0A5,X
	bne L84D58E
	bra L84D591

L84D58E:
	brl L84D43C

L84D591:
	lda $140A
	cmp.w L84E0FB,X
	bne L84D59B
	bra L84D59E

L84D59B:
	brl L84D43C

L84D59E:
	lda $1565
	cmp #$0000
	beq L84D5F8
	lda #$0001
	sta $146A
	lda #$0000
	sta $17
L84D5B1:
	lda $0127
	bit #$0080
	bne L84D5BB
	bra L84D5C1

L84D5BB:
	lda #$0000
	sta $146A
L84D5C1:
	jsr L84D874
	lda $146A
	cmp #$0000
	beq L84D5DC
	lda #$001E
L84D5CF:
	pha
	lda #$03E8
L84D5D3:
	nop
	nop
	dea
	bne L84D5D3
	pla
	dea
	bne L84D5CF
L84D5DC:
	jsl L8087EA
	lda $17
	ina
	sta $17
	lda $17
	cmp #$0003
	bmi L84D5B1
	beq L84D5B1
	sep #$20
	lda $F7
	and #$F3
	sta $F7
	rep #$30
L84D5F8:
	lda #$80B7
	sta $0876
	jsl L8087EA
	lda #$0000
	sta $15B2
L84D608:
	lda $140A
	ina
	sta $140A
	lda $140E
	ina
	sta $140E
	lda $15B4
	cmp #$0000
	beq L84D633
	sep #$20
	lda $0E0F
	dea
	sta $0E0F
	rep #$20
	jsr L848C79
	lda $15B4
	dea
	sta $15B4
L84D633:
	lda $15B2
	ina
	sta $15B2
	jsr L84E55A
	jsl L8087EA
	lda $0127
	bit #$0080
	bne L84D64B
	bra L84D651

L84D64B:
	lda #$0000
	sta $146A
L84D651:
	lda $0127
	bit #$1000
	bne L84D687
	jsr L84B93A
	jsr L84B98B
	lda $146A
	cmp #$0000
	beq L84D677
	lda #$0028
L84D66A:
	pha
	lda #$03E8
L84D66E:
	nop
	nop
	dea
	bne L84D66E
	pla
	dea
	bne L84D66A
L84D677:
	lda $15B2
	cmp #$000A
	bne L84D608
	lda #$0006
	sta $141E
	plp
	rts

L84D687:
	jsl L808CEA
	sep #$20
	lda #$02
	sta $A4
	lda #$01
	sta $A5
	rep #$20
	lda #$0007
	sta $141E
	plp
	rts

L84D69F:
	php
	sep #$20
	lda #$1C
	sta $0E0F
	lda #$00
	sta $7F
	lda #$00
	sta $7A
	lda $07DF
	rep #$30
	and #$00FF
	asl
	tax
	phx
	lda.w L84DF4D,X
	sta $1408
	lda.w L84DFA3,X
	sta $140A
	lda.w L84DFF9,X
	sta $140C
	lda.w L84E04F,X
	sta $140E
	lda #$0000
	sta $1410
	lda #$00C1
	sta $1412
	lda #$00C1
	sta $1414
	jsr L848C79
	jsr L84E253
	jsr L84E55A
	jsl L8087EA
	lda #$0001
	sta $146A
	sep #$20
	lda $F7
	ora #$70
	sta $F7
	rep #$30
	jsl L8087EA
	plx
L84D706:
	rep #$30
	lda $146A
	cmp #$0000
	beq L84D720
	lda #$0032
L84D713:
	pha
	lda #$03E8
L84D717:
	nop
	nop
	dea
	bne L84D717
	pla
	dea
	bne L84D713
L84D720:
	sep #$20
	lda $7A
	ina
	sta $7A
	rep #$30
	jsl L8087EA
	lda $0127
	bit #$0080
	bne L84D737
	bra L84D73D

L84D737:
	lda #$0000
	sta $146A
L84D73D:
	lda $0127
	bit #$1000
	bne L84D77A
	jsr L84B93A
	jsr L84B98B
	sep #$20
	lda $7A
	cmp #$0F
	bne L84D755
	bra L84D758

L84D755:
	brl L84D706

L84D758:
	rep #$30
	lda $146A
	cmp #$0000
	beq L84D772
	lda #$0190
L84D765:
	pha
	lda #$03E8
L84D769:
	nop
	nop
	dea
	bne L84D769
	pla
	dea
	bne L84D765
L84D772:
	lda #$0003
	sta $141E
	plp
	rts

L84D77A:
	jsl L808CEA
	lda #$0007
	sta $141E
	plp
	rts

L84D786:
	php
	rep #$30
	pha
	phx
	phy
	lda #$146E
	sta.w WMADDL
	sep #$20
	lda #$00
	sta.w WMADDH
	ldy #$000A
L84D79C:
	stz.w WMDATA
	dey
	cpy #$0000
	bne L84D79C
	lda #$DA
	sta $146E
	lda #$78
	sta $146F
	lda #$14
	sta $1470
	lda #$DA
	sta $1471
	lda #$78
	sta $1472
	lda #$14
	sta $1473
	lda #$AC
	sta $1474
	lda #$78
	sta $1475
	lda #$14
	sta $1476
	lda #$42
	sta $4320
	lda #$0D
	sta $4321
	lda #$6E
	sta $4322
	lda #$14
	sta $4323
	lda #$00
	sta $4324
	lda #$00
	sta $4327
	rep #$30
	lda #$152C
	sta.w WMADDL
	sep #$20
	lda #$00
	sta.w WMADDH
	ldy #$0025
L84D802:
	stz.w WMDATA
	dey
	cpy #$0000
	bne L84D802
	rep #$30
	lda #$0000
	sta $04
	lda #$152C
	sta $03
	sep #$20
	ldx #$0000
L84D81C:
	lda #$94
	sta ($03)
	rep #$30
	inc $03
	sep #$20
	lda #$51
	sta ($03)
	rep #$30
	inc $03
	sep #$20
	lda #$15
	sta ($03)
	rep #$30
	inc $03
	sep #$20
	inx
	cpx #$000B
	bmi L84D81C
	lda #$84
	sta $154D
	lda #$51
	sta $154E
	lda #$15
	sta $154F
	lda #$40
	sta $4330
	lda #$00
	sta $4331
	lda #$2C
	sta $4332
	lda #$15
	sta $4333
	lda #$00
	sta $4334
	lda #$00
	sta $4337
	rep #$30
	ply
	plx
	pla
	plp
	rts

L84D874:
	php
	rep #$30
	pha
	phx
	phy
	ldx #$0000
L84D87D:
	txa
	clc
	adc $1567
	tay
	lda $17
	cmp #$0001
	bne L84D8A9
	lda.w L84D9D7,Y
	sta $19
	bmi L84D895
	lsr $19
	bra L84D90A

L84D895:
	lda #$0000
	sec
	sbc $19
	sta $19
	lsr $19
	lda #$0000
	sec
	sbc $19
	sta $19
	bra L84D90A

L84D8A9:
	lda $17
	cmp #$0002
	bne L84D8D3
	lda.w L84D9D7,Y
	sta $19
	bmi L84D8BD
	lsr $19
	lsr $19
	bra L84D90A

L84D8BD:
	lda #$0000
	sec
	sbc $19
	sta $19
	lsr $19
	lsr $19
	lda #$0000
	sec
	sbc $19
	sta $19
	bra L84D90A

L84D8D3:
	lda $17
	cmp #$0003
	bne L84D905
	lda.w L84D9D7,Y
	sta $19
	bmi L84D8EB
	lsr $19
	lsr $19
	lsr $19
	lsr $19
	bra L84D90A

L84D8EB:
	lda #$0000
	sec
	sbc $19
	sta $19
	lsr $19
	lsr $19
	lsr $19
	lsr $19
	lda #$0000
	sec
	sbc $19
	sta $19
	bra L84D90A

L84D905:
	lda.w L84D9D7,Y
	sta $19
L84D90A:
	lda $19
	clc
	adc $140C
	sta $1478,X
	inx
	inx
	cpx #$00B4
	bne L84D91C
	bra L84D91F

L84D91C:
	brl L84D87D

L84D91F:
	sep #$30
	ldx #$00
	ldy $1569
L84D926:
	lda $17
	cmp #$01
	bne L84D93C
	lda.w L84DB3F,Y
	sta $19
	lsr $19
	lda #$0F
	sec
	sbc $19
	sta $19
	bra L84D975

L84D93C:
	lda $17
	cmp #$02
	bne L84D954
	lda.w L84DB3F,Y
	sta $19
	lsr $19
	lsr $19
	lda #$0F
	sec
	sbc $19
	sta $19
	bra L84D975

L84D954:
	lda $17
	cmp #$03
	bne L84D970
	lda.w L84DB3F,Y
	sta $19
	lsr $19
	lsr $19
	lsr $19
	lsr $19
	lda #$0F
	sec
	sbc $19
	sta $19
	bra L84D975

L84D970:
	lda.w L84DB3F,Y
	sta $19
L84D975:
	lda $19
	sta $1551,X
	iny
	inx
	cpx #$14
	bne L84D926
	lda $1569
	dea
	sta $1569
	lda $1569
	cmp #$00
	bpl L84D993
	lda #$13
	sta $1569
L84D993:
	lda $07DF
	cmp #$12
	beq L84D9B6
	rep #$30
	lda $1567
	sec
	sbc #$0002
	sta $1567
	lda $1567
	cmp #$0000
	bpl L84D9D2
	lda #$00B4
	sta $1567
	bra L84D9D2

L84D9B6:
	rep #$30
	lda $1567
	clc
	adc #$0002
	sta $1567
	lda $1567
	cmp #$00B4
	bmi L84D9D2
	beq L84D9D2
	lda #$0000
	sta $1567
L84D9D2:
	ply
	plx
	pla
	plp
	rts

L84D9D7:
.db $00 $00 $03 $00 $06 $00 $0A $00
.db $0D $00 $11 $00 $14 $00 $17 $00
.db $1A $00 $1D $00 $20 $00 $22 $00
.db $25 $00 $27 $00 $29 $00 $2B $00
.db $2C $00 $2E $00 $2F $00 $30 $00
.db $31 $00 $31 $00 $31 $00 $31 $00
.db $31 $00 $31 $00 $30 $00 $2F $00
.db $2E $00 $2C $00 $2B $00 $29 $00
.db $27 $00 $25 $00 $22 $00 $20 $00
.db $1D $00 $1A $00 $17 $00 $14 $00
.db $11 $00 $0D $00 $0A $00 $06 $00
.db $03 $00 $00 $00 $FD $FF $FA $FF
.db $F6 $FF $F3 $FF $EF $FF $EC $FF
.db $E9 $FF $E6 $FF $E3 $FF $E0 $FF
.db $DE $FF $DB $FF $D9 $FF $D7 $FF
.db $D5 $FF $D4 $FF $D2 $FF $D1 $FF
.db $D0 $FF $CF $FF $CF $FF $CF $FF
.db $CF $FF $CF $FF $CF $FF $D0 $FF
.db $D1 $FF $D2 $FF $D4 $FF $D5 $FF
.db $D7 $FF $D9 $FF $DB $FF $DE $FF
.db $E0 $FF $E3 $FF $E6 $FF $E9 $FF
.db $EC $FF $EF $FF $F3 $FF $F6 $FF
.db $FA $FF $FD $FF $00 $00 $03 $00
.db $06 $00 $0A $00 $0D $00 $11 $00
.db $14 $00 $17 $00 $1A $00 $1D $00
.db $20 $00 $22 $00 $25 $00 $27 $00
.db $29 $00 $2B $00 $2C $00 $2E $00
.db $2F $00 $30 $00 $31 $00 $31 $00
.db $31 $00 $31 $00 $31 $00 $31 $00
.db $30 $00 $2F $00 $2E $00 $2C $00
.db $2B $00 $29 $00 $27 $00 $25 $00
.db $22 $00 $20 $00 $1D $00 $1A $00
.db $17 $00 $14 $00 $11 $00 $0D $00
.db $0A $00 $06 $00 $03 $00 $00 $00
.db $FD $FF $FA $FF $F6 $FF $F3 $FF
.db $EF $FF $EC $FF $E9 $FF $E6 $FF
.db $E3 $FF $E0 $FF $DE $FF $DB $FF
.db $D9 $FF $D7 $FF $D5 $FF $D4 $FF
.db $D2 $FF $D1 $FF $D0 $FF $CF $FF
.db $CF $FF $CF $FF $CF $FF $CF $FF
.db $CF $FF $D0 $FF $D1 $FF $D2 $FF
.db $D4 $FF $D5 $FF $D7 $FF $D9 $FF
.db $DB $FF $DE $FF $E0 $FF $E3 $FF
.db $E6 $FF $E9 $FF $EC $FF $EF $FF
.db $F3 $FF $F6 $FF $FA $FF $FD $FF

L84DB3F:
.db $0F $0F $0E $0D $0C $0B $0A $09
.db $08 $08 $08 $08 $09 $0A $0B $0C
.db $0D $0E $0F $0F $0F $0F $0E $0D
.db $0C $0B $0A $09 $08 $08 $08 $08
.db $09 $0A $0B $0C $0D $0E $0F $0F

L84DB67:
	php
	sep #$20
	lda #$01
	sta $15B4
	lda #$0F
	sta $7A
	rep #$30
	lda #$0001
	sta $146A
	lda #$0024
	jsl L80B4BB
	jsl L8087EA
	lda #$0000
	sta $15B2
L84DB8C:
	lda $146A
	cmp #$0000
	beq L84DBA4
	lda #$0028
L84DB97:
	pha
	lda #$03E8
L84DB9B:
	nop
	nop
	dea
	bne L84DB9B
	pla
	dea
	bne L84DB97
L84DBA4:
	lda $140A
	dea
	sta $140A
	lda $140E
	dea
	sta $140E
	lda $15B2
	ina
	sta $15B2
	jsr L84E55A
	jsl L8087EA
	lda $0127
	bit #$0080
	bne L84DBCA
	bra L84DBD0

L84DBCA:
	lda #$0000
	sta $146A
L84DBD0:
	lda $0127
	bit #$1000
	beq L84DBDB
	brl L84DD5F

L84DBDB:
	jsr L84B93A
	jsr L84B98B
	lda $15B2
	cmp #$000A
	bne L84DB8C
	lda #$0005
	sta $15B0
L84DBEF:
	lda $146A
	cmp #$0000
	beq L84DC07
	lda #$0028
L84DBFA:
	pha
	lda #$03E8
L84DBFE:
	nop
	nop
	dea
	bne L84DBFE
	pla
	dea
	bne L84DBFA
L84DC07:
	sep #$20
	lda $0E0F
	dea
	sta $0E0F
	rep #$30
	jsr L848C79
	jsl L8087EA
	lda $15B0
	dea
	sta $15B0
	lda $0127
	bit #$0080
	bne L84DC2A
	bra L84DC30

L84DC2A:
	lda #$0000
	sta $146A
L84DC30:
	lda $0127
	bit #$1000
	beq L84DC3B
	brl L84DD5F

L84DC3B:
	jsr L84B93A
	jsr L84B98B
	lda $15B0
	cmp #$0000
	bne L84DC4B
	bra L84DC4E

L84DC4B:
	brl L84DBEF

L84DC4E:
	lda #$0078
	jsl L80B4BB
	jsl L8087EA
L84DC59:
	rep #$30
	lda $146A
	cmp #$0000
	beq L84DC73
	lda #$0014
L84DC66:
	pha
	lda #$03E8
L84DC6A:
	nop
	nop
	dea
	bne L84DC6A
	pla
	dea
	bne L84DC66
L84DC73:
	sep #$20
	lda $15B4
	bit #$01
	bne L84DC80
	clc
	ror
	bra L84DC82

L84DC80:
	sec
	ror
L84DC82:
	sta $15B4
	lda $15B4
	bit #$01
	bne L84DC90
	clc
	ror
	bra L84DC92

L84DC90:
	sec
	ror
L84DC92:
	sta $15B4
	lda $15B4
	bit #$01
	bne L84DCA0
	clc
	ror
	bra L84DCA2

L84DCA0:
	sec
	ror
L84DCA2:
	sta $15B4
	lda $15B4
	bit #$01
	bne L84DCB0
	clc
	ror
	bra L84DCB2

L84DCB0:
	sec
	ror
L84DCB2:
	sta $15B4
	lda $15B4
	ina
	sta $15B4
	lda $7F
	cmp #$1F
	bmi L84DCC8
	beq L84DCC8
	lda #$1F
	sta $7F
L84DCC8:
	lda $15B4
	bmi L84DCD1
	clc
	rol
	bra L84DCD3

L84DCD1:
	sec
	rol
L84DCD3:
	sta $15B4
	lda $15B4
	bmi L84DCDF
	clc
	rol
	bra L84DCE1

L84DCDF:
	sec
	rol
L84DCE1:
	sta $15B4
	lda $15B4
	bmi L84DCED
	clc
	rol
	bra L84DCEF

L84DCED:
	sec
	rol
L84DCEF:
	sta $15B4
	lda $15B4
	bmi L84DCFB
	clc
	rol
	bra L84DCFD

L84DCFB:
	sec
	rol
L84DCFD:
	sta $15B4
	lda $15B5
	dea
	sta $15B5
	lda $15B4
	sta $7F
	lda $7A
	dea
	sta $7A
	lda $7A
	cmp #$00
	bpl L84DD1B
	lda #$00
	sta $7A
L84DD1B:
	lda $0E0F
	cmp #$00
	beq L84DD29
	lda $0E0F
	dea
	sta $0E0F
L84DD29:
	rep #$30
	jsr L848C79
	jsl L8087EA
	lda $0127
	bit #$0080
	bne L84DD3C
	bra L84DD42

L84DD3C:
	lda #$0000
	sta $146A
L84DD42:
	lda $0127
	bit #$1000
	bne L84DD5F
	jsr L84B93A
	jsr L84B98B
	sep #$20
	lda $7A
	cmp #$00
	bne L84DD5A
	bra L84DD5D

L84DD5A:
	brl L84DC59

L84DD5D:
	rep #$30
L84DD5F:
	jsl L808CEA
	lda #$0007
	sta $141E
	plp
	rts

L84DD6B:
	php
	sep #$20
	lda $07D6
	cmp #$02
	beq L84DDAB
	sep #$30
	lda #$01
	sta $15B4
	ldx $07DF
	lda.l L84E5AF,X
	rep #$30
	and #$00FF
	clc
	adc #$0005
	sta $15A2
	lda #$0002
	sta $15B8
	lda #$0000
	sta $15BA
	lda #$0004
	sta $1584
	sep #$20
	lda #$0B
	sta $0E00
	brl L84DE3E

L84DDAB:
	rep #$30
	lda #$0005
	sta $0E00
	lda #$04F0
	jsl L80B4E3
	sep #$20
	lda $07DF
	cmp #$01
	bne L84DDCB
	rep #$30
	lda #$8063
	sta $0876
L84DDCB:
	sep #$20
	lda #$81
	sta $A5
	lda #$E0
	sta $A6
	lda $F7
	and #$BF
	sta $F7
	rep #$30
	jsl L8087EA
	lda #$0001
	sta $146A
L84DDE7:
	rep #$30
	lda $146A
	cmp #$0000
	beq L84DE01
	lda #$0032
L84DDF4:
	pha
	lda #$03E8
L84DDF8:
	nop
	nop
	dea
	bne L84DDF8
	pla
	dea
	bne L84DDF4
L84DE01:
	sep #$20
	lda $A6
	ina
	sta $A6
	rep #$30
	jsl L8087EA
	lda $0127
	bit #$0080
	bne L84DE18
	bra L84DE1E

L84DE18:
	lda #$0000
	sta $146A
L84DE1E:
	lda $0127
	bit #$1000
	bne L84DE5A
	jsr L84B93A
	jsr L84B98B
	sep #$20
	lda $A6
	cmp #$EA
	bne L84DDE7
	rep #$30
	lda #$0001
	sta $146C
	bra L84DE58

L84DE3E:
	rep #$30
	lda #$0000
	sta $146C
	sep #$20
	lda $07DF
	rep #$30
	and #$00FF
	asl
	tax
	lda.w L84DEA1,X
	sta $0876
L84DE58:
	plp
	rts

L84DE5A:
	jsl L808CEA
	sep #$20
	lda #$02
	sta $A4
	lda #$01
	sta $A5
	rep #$30
	lda #$0000
	sta $146C
	lda #$0007
	sta $141E
	plp
	rts

L84DE78:
	php
	sep #$20
	lda #$00
	sta $F7
	rep #$30
	lda #$00F9
	jsl L80B4E3
	lda #$04F0
	jsl L80B4E3
	jsl L8087EA
	sep #$20
	lda #$01
	sta $07D6
	lda #$09
	sta $0E00
	plp
	rts

L84DEA1:
.db $00 $00 $1C $80 $1C $80 $1C $80
.db $1C $80 $1C $80 $1C $80 $1C $80
.db $1C $80 $1C $80 $1C $80 $1C $80
.db $1C $80 $1C $80 $1C $80 $1D $80
.db $1D $80 $1D $80 $1D $80 $1D $80
.db $1D $80 $31 $80 $31 $80 $31 $80
.db $31 $80 $31 $80 $31 $80 $31 $80
.db $31 $80 $33 $80 $33 $80 $33 $80
.db $33 $80 $33 $80 $33 $80 $35 $80
.db $35 $80 $35 $80 $35 $80 $35 $80
.db $35 $80 $36 $80 $36 $80

L84DEF7:
.db $00 $00
.db $00 $FF $FF $00 $FF $00 $FF $FF
.db $FF $FF $00 $00 $00 $00 $FF $00
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $00 $FF $FF $FF $00 $00 $00
.db $00 $00 $FF $FF $00 $00 $FF $FF
.db $FF $00 $00 $00 $00 $FF $FF $00
.db $FF $FF $FF $FF $00 $FF $00 $FF
.db $00 $00 $00 $FF $FF $FF $00 $FF
.db $00 $FF $FF $FF $FF $00 $FF $FF
.db $00 $00 $00 $FF $00 $00 $FF $FF
.db $FF $00 $FF $FF

L84DF4D:
.db $00 $00 $F0 $00
.db $EA $01 $90 $01 $68 $01 $38 $01
.db $36 $01 $66 $01 $E0 $01 $98 $01
.db $82 $01 $80 $01 $20 $01 $FC $00
.db $F0 $00 $EE $00 $B4 $00 $B0 $00
.db $18 $01 $D6 $00 $1A $01 $F0 $00
.db $B0 $00 $10 $01 $18 $01 $10 $01
.db $B2 $00 $B0 $00 $B4 $00 $C2 $00
.db $F4 $00 $F4 $00 $D6 $00 $8A $01
.db $B8 $01 $B8 $01 $F0 $00 $EF $00
.db $20 $01 $54 $01 $82 $01 $7E $01
.db $0E $01

L84DFA3:
.db $00 $00 $31 $01 $27 $01
.db $2B $01 $2B $01 $03 $01 $F5 $00
.db $49 $01 $71 $01 $A3 $01 $87 $01
.db $7D $01 $4D $01 $0D $01 $35 $01
.db $2D $01 $35 $01 $95 $01 $C9 $01
.db $C9 $00 $97 $01 $31 $01 $95 $01
.db $E1 $01 $C9 $01 $E1 $01 $95 $01
.db $93 $01 $35 $01 $FB $00 $11 $01
.db $0D $01 $C9 $00 $A5 $00 $6B $00
.db $6D $00 $35 $01 $2D $01 $4D $01
.db $41 $01 $85 $01 $7B $01 $A9 $01

L84DFF9:
.db $00 $00 $74 $00 $6E $01 $14 $01
.db $EC $00 $BC $00 $BA $00 $EA $00
.db $64 $01 $1C $01 $06 $01 $04 $01
.db $A4 $00 $82 $00 $76 $00 $74 $00
.db $38 $00 $34 $00 $9C $00 $5A $00
.db $9E $00 $74 $00 $34 $00 $94 $00
.db $9C $00 $94 $00 $36 $00 $34 $00
.db $38 $00 $48 $00 $78 $00 $78 $00
.db $5A $00 $0E $01 $3E $01 $3E $01
.db $76 $00 $74 $00 $A4 $00 $D8 $00
.db $06 $01 $02 $01 $92 $00

L84E04F:
.db $00 $00
.db $C2 $00 $BC $00 $BE $00 $BE $00
.db $96 $00 $88 $00 $DE $00 $06 $01
.db $36 $01 $1A $01 $12 $01 $E0 $00
.db $A0 $00 $C8 $00 $C0 $00 $C8 $00
.db $28 $01 $5E $01 $5E $00 $2A $01
.db $C2 $00 $28 $01 $76 $01 $5E $01
.db $76 $01 $2A $01 $28 $01 $C8 $00
.db $92 $00 $A6 $00 $A2 $00 $5E $00
.db $38 $00 $02 $00 $02 $00 $C8 $00
.db $C0 $00 $E0 $00 $D4 $00 $18 $01
.db $08 $01 $36 $01

L84E0A5:
.db $00 $00 $08 $02
.db $B6 $01 $74 $01 $44 $01 $36 $01
.db $66 $01 $C8 $01 $A8 $01 $8A $01
.db $80 $01 $28 $01 $02 $01 $F2 $00
.db $EE $00 $B4 $00 $BA $00 $18 $01
.db $D6 $00 $0A $01 $18 $01 $BA $00
.db $14 $01 $26 $01 $02 $01 $BA $00
.db $B0 $00 $B4 $00 $C0 $00 $02 $01
.db $F4 $00 $D4 $00 $8A $01 $BA $01
.db $B6 $01 $F2 $00 $EE $00 $28 $01
.db $54 $01 $8A $01 $7E $01 $0E $01
.db $F8 $00

L84E0FB:
.db $00 $00 $23 $01 $31 $01
.db $2F $01 $F7 $00 $F5 $00 $49 $01
.db $91 $01 $9D $01 $87 $01 $7D $01
.db $43 $01 $13 $01 $29 $01 $2D $01
.db $35 $01 $99 $01 $D1 $01 $C9 $00
.db $99 $01 $91 $01 $89 $01 $F3 $01
.db $D5 $01 $DF $01 $99 $01 $93 $01
.db $3F $01 $19 $01 $13 $01 $0D $01
.db $E1 $00 $A5 $00 $79 $00 $65 $00
.db $29 $01 $2D $01 $43 $01 $41 $01
.db $87 $01 $7B $01 $A9 $01 $9D $01

L84E151:
.db $00 $00 $8C $01 $3C $01 $FA $00
.db $C8 $00 $BA $00 $EC $00 $4C $01
.db $2C $01 $10 $01 $04 $01 $AC $00
.db $88 $00 $76 $00 $74 $00 $3A $00
.db $3E $00 $9C $00 $5A $00 $8E $00
.db $9C $00 $3E $00 $98 $00 $AA $00
.db $86 $00 $3E $00 $34 $00 $38 $00
.db $46 $00 $88 $00 $78 $00 $58 $00
.db $0E $01 $3E $01 $3C $01 $76 $00
.db $74 $00 $AE $00 $D8 $00 $0E $01
.db $02 $01 $92 $00 $7C $00

L84E1A7:
.db $00 $00
.db $B8 $00 $C6 $00 $C4 $00 $8A $00
.db $88 $00 $DA $00 $26 $01 $30 $01
.db $1C $01 $10 $01 $D8 $00 $A8 $00
.db $BC $00 $C2 $00 $C8 $00 $2E $01
.db $64 $01 $5E $00 $2E $01 $24 $01
.db $1E $01 $86 $01 $68 $01 $74 $01
.db $2E $01 $28 $01 $D4 $00 $AE $00
.db $A8 $00 $A2 $00 $72 $00 $38 $00
.db $0C $00 $FA $FF $B8 $00 $C0 $00
.db $D6 $00 $D4 $00 $1A $01 $08 $01
.db $36 $01 $2A $01

L84E1FD:
.db $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $FF $FF
.db $00 $00 $00 $00 $00 $00 $00 $00
.db $FF $FF $00 $00 $00 $00 $00 $00
.db $FF $FF $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $FF $FF $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00
.db $FF $FF $00 $00 $00 $00 $00 $00
.db $FF $FF $00 $00 $00 $00 $00 $00
.db $FF $FF $00 $00 $FF $FF $00 $00
.db $00 $00 $00 $00 $FF $FF $00 $00
.db $FF $FF

L84E253:
	php
	rep #$30
	lda $1410
	tay
	jsr L84E454
	sta $1400
	sta $1406
	cmp #$0000
	bpl L84E284
	lda #$0000
	sec
	sbc $1400
	sta $1400
	lda #$0000
	sec
	sbc $1406
	sta $1406
	lda #$0001
	sta $1416
	bra L84E28A

L84E284:
	lda #$0000
	sta $1416
L84E28A:
	lda $1400
	sta $2D
	lda $1412
	sta $2F
	jsl L808D1E
	lda $32
	sta $1400
	lda $1406
	sta $2D
	lda $1414
	sta $2F
	jsl L808D1E
	lda $32
	sta $1406
	lda $1416
	cmp #$0001
	bne L84E2CC
	lda #$0000
	sec
	sbc $1400
	sta $1400
	lda #$0000
	sec
	sbc $1406
	sta $1406
L84E2CC:
	lda $1410
	tay
	jsr L84E34E
	sta $1402
	sta $1404
	cmp #$0000
	bpl L84E2FA
	lda #$0000
	sec
	sbc $1402
	sta $1402
	lda #$0000
	sec
	sbc $1404
	sta $1404
	lda #$0001
	sta $1416
	bra L84E300

L84E2FA:
	lda #$0000
	sta $1416
L84E300:
	lda $1402
	sta $2D
	lda $1412
	sta $2F
	jsl L808D1E
	lda $32
	sta $1402
	lda $1404
	sta $2D
	lda $1414
	sta $2F
	jsl L808D1E
	lda $32
	sta $1404
	lda $1416
	cmp #$0001
	bne L84E342
	lda #$0000
	sec
	sbc $1402
	sta $1402
	lda #$0000
	sec
	sbc $1404
	sta $1404
L84E342:
	lda #$0000
	sec
	sbc $1404
	sta $1404
	plp
	rts

L84E34E:
	php
	rep #$30
	cpy #$005B
	bpl L84E35E
	tya
	asl
	tay
	lda.w L84E39E,Y
	bra L84E39C

L84E35E:
	cpy #$00B5
	bpl L84E372
	lda #$00B4
	sty $15
	sec
	sbc $15
	asl
	tay
	lda.w L84E39E,Y
	bra L84E39C

L84E372:
	cpy #$010F
	bpl L84E38B
	lda #$00B4
	sta $15
	tya
	sec
	sbc $15
	asl
	tay
	lda.w L84E39E,Y
	eor #$FFFF
	ina
	bra L84E39C

L84E38B:
	lda #$0168
	sty $15
	sec
	sbc $15
	asl
	tay
	lda.w L84E39E,Y
	eor #$FFFF
	ina
L84E39C:
	plp
	rts

L84E39E:
.db $00 $00 $04 $00 $08 $00 $0D $00
.db $11 $00 $16 $00 $1A $00 $1F $00
.db $23 $00 $28 $00 $2C $00 $30 $00
.db $35 $00 $39 $00 $3D $00 $42 $00
.db $46 $00 $4A $00 $4F $00 $53 $00
.db $57 $00 $5B $00 $5F $00 $64 $00
.db $68 $00 $6C $00 $70 $00 $74 $00
.db $78 $00 $7C $00 $7F $00 $83 $00
.db $87 $00 $8B $00 $8F $00 $92 $00
.db $96 $00 $9A $00 $9D $00 $A1 $00
.db $A4 $00 $A7 $00 $AB $00 $AE $00
.db $B1 $00 $B5 $00 $B8 $00 $BB $00
.db $BE $00 $C1 $00 $C4 $00 $C6 $00
.db $C9 $00 $CC $00 $CF $00 $D1 $00
.db $D4 $00 $D6 $00 $D9 $00 $DB $00
.db $DD $00 $DF $00 $E2 $00 $E4 $00
.db $E6 $00 $E8 $00 $E9 $00 $EB $00
.db $ED $00 $EE $00 $F0 $00 $F2 $00
.db $F3 $00 $F4 $00 $F6 $00 $F7 $00
.db $F8 $00 $F9 $00 $FA $00 $FB $00
.db $FC $00 $FC $00 $FD $00 $FE $00
.db $FE $00 $FF $00 $FF $00 $FF $00
.db $FF $00 $FF $00 $00 $01

L84E454:
	php
	rep #$30
	cpy #$005B
	bpl L84E464
	tya
	asl
	tay
	lda.w L84E4A4,Y
	bra L84E4A2

L84E464:
	cpy #$00B5
	bpl L84E47C
	lda #$00B4
	sty $15
	sec
	sbc $15
	asl
	tay
	lda.w L84E4A4,Y
	eor #$FFFF
	ina
	bra L84E4A2

L84E47C:
	cpy #$010F
	bpl L84E495
	lda #$00B4
	sta $15
	tya
	sec
	sbc $15
	asl
	tay
	lda.w L84E4A4,Y
	eor #$FFFF
	ina
	bra L84E4A2

L84E495:
	lda #$0168
	sty $15
	sec
	sbc $15
	asl
	tay
	lda.w L84E4A4,Y
L84E4A2:
	plp
	rts

L84E4A4:
.db $00 $01 $FF $00
.db $FF $00 $FF $00 $FF $00 $FF $00
.db $FE $00 $FE $00 $FD $00 $FC $00
.db $FC $00 $FB $00 $FA $00 $F9 $00
.db $F8 $00 $F7 $00 $F6 $00 $F4 $00
.db $F3 $00 $F2 $00 $F0 $00 $EE $00
.db $ED $00 $EB $00 $E9 $00 $E8 $00
.db $E6 $00 $E4 $00 $E2 $00 $DF $00
.db $DD $00 $DB $00 $D9 $00 $D6 $00
.db $D4 $00 $D1 $00 $CF $00 $CC $00
.db $C9 $00 $C6 $00 $C4 $00 $C1 $00
.db $BE $00 $BB $00 $B8 $00 $B5 $00
.db $B1 $00 $AE $00 $AB $00 $A7 $00
.db $A4 $00 $A1 $00 $9D $00 $9A $00
.db $96 $00 $92 $00 $8F $00 $8B $00
.db $87 $00 $83 $00 $80 $00 $7C $00
.db $78 $00 $74 $00 $70 $00 $6C $00
.db $68 $00 $64 $00 $5F $00 $5B $00
.db $57 $00 $53 $00 $4F $00 $4A $00
.db $46 $00 $42 $00 $3D $00 $39 $00
.db $35 $00 $30 $00 $2C $00 $28 $00
.db $23 $00 $1F $00 $1A $00 $16 $00
.db $11 $00 $0D $00 $08 $00 $04 $00
.db $00 $00

L84E55A:
	php
	rep #$20
	lda $1400
	sta $AA
	lda $1402
	sta $AC
	lda $1404
	sta $AE
	lda $1406
	sta $B0
	lda $1408
	sta $B2
	lda $140A
	sta $B4
	lda $140C
	sta $89
	lda $140E
	sta $8B
	plp
	rts

L84E587:
	php
	sep #$30
	lda $07D6
	cmp #$02
	beq L84E5AD
	ldx $07DF
	lda.w L84E5AF,X
	rep #$30
	and #$00FF
	tay
	sep #$30
	lda.w L84E5DA,X
	rep #$30
	and #$00FF
	sta $1586
	jsr L84E605
L84E5AD:
	plp
	rts

L84E5AF:
.db $00 $05 $05 $06 $07 $06 $05 $04
.db $07 $06 $06 $07 $06 $05 $07 $07
.db $07 $06 $06 $06 $05 $05 $06 $06
.db $05 $05 $03 $03 $06 $04 $04 $04
.db $04 $03 $05 $04 $04 $04 $03 $04
.db $03 $03 $03

L84E5DA:
.db $00 $18 $18 $10 $08
.db $10 $18 $20 $08 $10 $10 $08 $10
.db $18 $08 $08 $08 $10 $10 $10 $18
.db $18 $10 $10 $18 $18 $28 $28 $10
.db $20 $20 $20 $20 $28 $18 $20 $20
.db $20 $28 $20 $28 $28 $28

L84E605:
	php
	rep #$30
	tya
	pha
	phy
	sep #$20
	lda #$82
	sta $7B
	lda #$02
	sta $5C
	rep #$30
	lda $1454
	cmp #$0001
	beq L84E655
	lda #$0018
	sta $56
	lda $56
	clc
	adc $1586
	sta $56
	lda #$0010
	sta $58
	ldy #$0005
	lda #$00A0
	jsr L84C146
	lda #$0068
	sta $56
	lda $56
	clc
	adc $1586
	sta $56
	lda #$0010
	sta $58
	ply
	lda #$00AA
	jsr L84C146
	bra L84E689

L84E655:
	lda #$0018
	sta $56
	lda $56
	clc
	adc $1586
	sta $56
	lda #$0010
	sta $58
	ldy #$0005
	lda #$00A0
	jsr L84C14D
	lda #$0068
	sta $56
	lda $56
	clc
	adc $1586
	sta $56
	lda #$0010
	sta $58
	ply
	lda #$00AA
	jsr L84C14D
L84E689:
	lda #$0008
	sta $56
	lda $56
	clc
	adc $1586
	sta $56
	lda #$0000
	sta $58
	lda #$0006
	sta $5A
	lda #bank100(L84E836)
	sta $63
	lda #L84E836
	sta $62
	jsl L8093A2
	lda #$0068
	sta $56
	lda $56
	clc
	adc $1586
	sta $56
	lda #$0000
	sta $58
	lda #$0000
	sta $5A
	lda #bank100(L84E836)
	sta $63
	lda #L84E836
	sta $62
	jsl L8093A2
	lda #$0088
	sta $56
	lda $56
	clc
	adc $1586
	sta $56
	lda #$0000
	sta $58
	pla
	sec
	sbc #$0002
	sta $5A
	lda #bank100(L84E836)
	sta $63
	lda #L84E836
	sta $62
	jsl L8093A2
	lda $1452
	cmp #$0000
	beq L84E70B
	jsr L848549
	lda #$0000
	sta $1452
L84E70B:
	plp
	rts

L84E70D:
	php
	rep #$30
	ldx #$00A0
	jsr L84E745
	sep #$20
	lda $07DF
	rep #$20
	and #$00FF
	jsl L84C211
	lda #$7F00
	sta $01
	lda #$F200
	sta $00
	jsl L84C1B8
	lda #$7F00
	sta $01
	lda #$F200
	sta $00
	pea $00B4
	jsr L84C0C5
	pla
	plp
	rts

L84E745:
	php
	rep #$30
	phx
	lda #$7F00
	sta $01
	lda #$F200
	sta $00
	lda #bank100(L84E821)
	sta $04
	lda #L84E821
	sta $03
	jsl L84C1B8
	sep #$20
	lda $07DF
	cmp #$15
	bpl L84E76E
	lda #$A1
	bra L84E770

L84E76E:
	lda #$A2
L84E770:
	sta $7FF205
	lda $07DF
	cmp #$29
	beq L84E7C7
	lda $07DF
	cmp #$2A
	beq L84E7EB
	lda $07DF
	cmp #$15
	bpl L84E78B
	bra L84E78E

L84E78B:
	sec
	sbc #$14
L84E78E:
	sta $15A1
	cmp #$0A
	bpl L84E79F
	clc
	adc #$A0
	sta $7FF20C
	brl L84E80F

L84E79F:
	cmp #$14
	bpl L84E7B9
	lda #$A1
	sta $7FF20B
	lda $15A1
	sec
	sbc #$0A
	clc
	adc #$A0
	sta $7FF20C
	brl L84E80F

L84E7B9:
	lda #$A2
	sta $7FF20B
	lda #$A0
	sta $7FF20C
	bra L84E80F

L84E7C7:
	rep #$20
	lda #bank100(L84C6DB)
	sta $04
	lda #L84C6DB
	sta $03
	lda #$7F00
	sta $01
	lda #$F200
	sta $00
	lda $00
	clc
	adc #$0009
	sta $00
	jsl L84C1B8
	bra L84E80F

L84E7EB:
	rep #$20
	lda #bank100(L84C6E7)
	sta $04
	lda #L84C6E7
	sta $03
	lda #$7F00
	sta $01
	lda #$F200
	sta $00
	lda $00
	clc
	adc #$0009
	sta $00
	jsl L84C1B8
	bra L84E80F

L84E80F:
	rep #$20
	lda #$7F00
	sta $01
	lda #$F200
	sta $00
	jsr L84C0C5
	pla
	plp
	rts

L84E821:
.db $00 $13 $0B $00 $11 $C4 $00 $12
.db $99 $00 $11 $C4 $C4 $00 $13 $02
.db $00 $11 $C4 $00 $00

L84E836:
.db $4B $E8 $84 $5D $E8 $84 $73 $E8
.db $84 $91 $E8 $84 $B8 $E8 $84 $E7
.db $E8 $84 $1E $E9 $84 $04 $00 $00
.db $00 $62 $35 $00 $10 $62 $35 $20
.db $00 $68 $35 $20 $10 $68 $35 $05
.db $00 $00 $00 $62 $35 $00 $10 $64
.db $35 $20 $00 $68 $35 $20 $10 $6A
.db $35 $10 $10 $6E $35 $07 $00 $00
.db $00 $62 $35 $00 $10 $62 $35 $00
.db $20 $64 $35 $20 $00 $68 $35 $20
.db $10 $68 $35 $20 $20 $6A $35 $10
.db $20 $6E $35 $09 $00 $00 $00 $62
.db $35 $00 $10 $62 $35 $00 $20 $62
.db $35 $00 $30 $64 $35 $20 $00 $68
.db $35 $20 $10 $68 $35 $20 $20 $68
.db $35 $20 $30 $6A $35 $00 $10 $30
.db $6E $35 $0B $00 $00 $00 $62 $35
.db $00 $10 $62 $35 $00 $20 $62 $35
.db $00 $30 $62 $35 $00 $40 $64 $35
.db $20 $00 $68 $35 $20 $10 $68 $35
.db $20 $20 $68 $35 $00 $20 $30 $68
.db $35 $20 $40 $6A $35 $10 $40 $6E
.db $35 $0D $00 $00 $00 $62 $35 $00
.db $10 $62 $35 $00 $20 $62 $35 $00
.db $30 $62 $35 $00 $40 $62 $35 $00
.db $50 $64 $35 $20 $00 $68 $35 $20
.db $10 $68 $35 $00 $20 $20 $68 $35
.db $20 $30 $68 $35 $20 $40 $68 $35
.db $20 $50 $6A $35 $10 $50 $6E $35
.db $0D $00 $00 $00 $60 $35 $00 $10
.db $62 $35 $00 $20 $62 $35 $00 $30
.db $62 $35 $00 $40 $62 $35 $00 $50
.db $62 $35 $20 $00 $66 $35 $20 $10
.db $68 $35 $00 $20 $20 $68 $35 $20
.db $30 $68 $35 $20 $40 $68 $35 $20
.db $50 $68 $35 $10 $00 $6C $35

L84E955:
	php
	sep #$20
	lda $87
	pha
	lda $A0
	pha
	lda $A2
	pha
	lda $A4
	pha
	lda $A5
	pha
	lda $A6
	pha
	lda #$03
	sta $87
	lda #$01
	sta $A2
	lda #$40
	sta $A4
	lda #$81
	sta $A5
	lda #$FF
	sta $A6
	jsr L84E9B2
	jsl L8087EA
	rep #$30
	pea $E000
	pea $FF00
	jsr L84E9D0
	pla
	pla
	jsr L84EA2C
	sep #$20
	pla
	sta $A6
	pla
	sta $A5
	pla
	sta $A4
	pla
	sta $A2
	pla
	sta $A0
	pla
	sta $87
	lda #$0F
	sta $7A
	jsr L84EC00
	plp
	rts

L84E9B2:
	php
	sep #$20
	lda #$01
	sta $4310
	lda #$26
	sta $4311
	lda #$6B
	sta $4312
	lda #$15
	sta $4313
	lda #$00
	sta $4314
	plp
	rts

L84E9D0:
	php
	sep #$20
	lda $04,S
	sta $157A
	lda $05,S
	sta $157B
	lda $06,S
	sta $1578
	lda $07,S
	sta $1579
	lda $157B
	sec
	sbc $157A
	lsr
	ina
	clc
	adc $157A
	sta $157C
	ina
	sta $157D
	lda $1579
	sec
	sbc $1578
	lsr
	ina
	clc
	adc $1578
	sta $157E
	ina
	sta $157F
	rep #$30
	lda #$156B
	sta.w WMADDL
	sep #$20
	lda #$00
	sta.w WMADDH
	ldy #$000D
L84EA21:
	stz.w WMDATA
	dey
	cpy #$0000
	bne L84EA21
	plp
	rts

L84EA2C:
	php
	sep #$20
	lda #$0F
	sta $156A
	lda $157A
	sta $1580
	lda $157B
	sta $1581
	lda $1578
	sta $1582
	lda $1579
	sta $1583
	lda $157C
	sta $157A
	lda $157D
	sta $157B
	lda $157E
	sta $1578
	lda $157F
	sta $1579
	rep #$30
	lda #$0000
	sta $15B4
L84EA6C:
	rep #$30
	lda $0127
	bit #$0080
	beq L84EA79
	brl L84EB06

L84EA79:
	jsr L84EB08
	lda $15B4
	ina
	sta $15B4
	lda $15B4
	cmp #$0002
	bne L84EAA0
	lda #$0000
	sta $15B4
	sep #$20
	lda $A6
	cmp #$E0
	bmi L84EAA0
	beq L84EAA0
	lda $A6
	dea
	sta $A6
L84EAA0:
	sep #$20
	lda $157A
	cmp $1580
	beq L84EAB0
	dea
	sta $157A
	bra L84EAB8

L84EAB0:
	lda $156A
	and #$0E
	sta $156A
L84EAB8:
	lda $157B
	cmp $1581
	beq L84EAC6
	ina
	sta $157B
	bra L84EACE

L84EAC6:
	lda $156A
	and #$0D
	sta $156A
L84EACE:
	lda $1578
	cmp $1582
	beq L84EADC
	dea
	sta $1578
	bra L84EAE4

L84EADC:
	lda $156A
	and #$0B
	sta $156A
L84EAE4:
	lda $1579
	cmp $1583
	beq L84EAF2
	ina
	sta $1579
	bra L84EAFA

L84EAF2:
	lda $156A
	and #$07
	sta $156A
L84EAFA:
	lda $156A
	cmp #$00
	bne L84EB03
	bra L84EB06

L84EB03:
	brl L84EA6C

L84EB06:
	plp
	rts

L84EB08:
	php
	jsl L8087EA
	sep #$20
	lda $1578
	sta $15A2
	lda $1579
	sec
	sbc $1578
	ina
	sta $15A3
	lda $15A2
	cmp #$00
	bne L84EB35
	rep #$30
	lda #$0000
	sta $01
	lda #$156B
	sta $00
	bra L84EB87

L84EB35:
	sep #$20
	lda $15A2
	cmp #$80
	bpl L84EB58
	lda $15A2
	sta $156B
	rep #$30
	lda #$00FF
	sta $156C
	lda #$0000
	sta $01
	lda #$156E
	sta $00
	bra L84EB87

L84EB58:
	sep #$20
	lda #$7F
	sta $156B
	rep #$30
	lda #$00FF
	lda #$00FF
	sta $156C
	sep #$20
	lda $15A2
	sec
	sbc #$7F
	sta $156E
	rep #$30
	lda #$00FF
	sta $156F
	lda #$0000
	sta $01
	lda #$1571
	sta $00
L84EB87:
	sep #$20
	lda $15A3
	cmp #$80
	bpl L84EBB3
	lda $15A3
	sta ($00)
	rep #$30
	lda $157A
	inc $00
	sta ($00)
	sep #$20
	lda #$01
	inc $00
	inc $00
	sta ($00)
	rep #$30
	lda #$00FF
	inc $00
	sta ($00)
	bra L84EBEC

L84EBB3:
	sep #$20
	lda #$7F
	sta ($00)
	rep #$30
	lda $157A
	inc $00
	sta ($00)
	sep #$20
	lda $15A3
	sec
	sbc #$7F
	inc $00
	inc $00
	sta ($00)
	rep #$30
	lda $157A
	inc $00
	sta ($00)
	sep #$20
	lda #$01
	inc $00
	inc $00
	sta ($00)
	rep #$30
	lda #$00FF
	inc $00
	sta ($00)
L84EBEC:
	sep #$20
	lda $99
	ora #$20
	sta $99
	lda $F7
	ora #$02
	sta $F7
	lda #$0F
	sta $7A
	plp
	rts

L84EC00:
	php
	sep #$20
	lda $F7
	and #$FD
	sta $F7
	lda $99
	and #$DF
	sta $99
	plp
	rts

L84EC11:
	php
	sep #$20
	lda #$82
	sta $7B
	lda #$02
	sta $5C
	lda $0E00
	cmp #$01
	bne L84EC25
	bra L84EC28

L84EC25:
	brl L84EC95

L84EC28:
	rep #$30
	lda $1584
	cmp #$0007
	bne L84EC34
	bra L84EC37

L84EC34:
	brl L84EC95

L84EC37:
	lda $1422
	cmp #$0004
	beq L84EC78
	lda $1452
	pha
	lda $1420
	pha
	lda $1422
	sta $1420
	lda #$0000
	sta $1452
	lda #$0000
	sta $144C
	lda #$0001
	sta $1458
	lda #$0001
	sta $145A
	lda #$0001
	sta $145C
	jsr L84BA27
	pla
	sta $1420
	pla
	sta $1452
	bra L84EC95

L84EC78:
	lda $1452
	pha
	lda #$0000
	sta $1452
	lda #$0000
	sta $144C
	lda #$0001
	sta $1454
	jsr L84BE47
	pla
	sta $1452
L84EC95:
	sep #$20
	lda $15B4
	cmp #$63
	bne L84ECA6
	rep #$30
	jsr L84F360
	brl L84EE0B

L84ECA6:
	sep #$20
	lda $15B4
	cmp #$00
	beq L84ECB1
	bra L84ECB4

L84ECB1:
	brl L84EDD0

L84ECB4:
	rep #$30
	lda $15A2
	ldy $15B8
	jsr L84EE5B
	sep #$20
	lda $15B5
	cmp #$00
	beq L84ED45
	lda #$08
	sta $15A2
	lda #$08
	sta $15A3
	rep #$30
	lda $15AE
	and #$00FF
	sec
	sbc #$0002
	asl
	asl
	asl
	asl
	pha
	lda $15AE
	xba
	and #$00FF
	sec
	sbc #$0002
	asl
	asl
	asl
	asl
	pha
	lda $15AE
	and #$00FF
	asl
	asl
	asl
	asl
	lsr
	clc
	adc $15B0
	sec
	sbc #$0014
	sta $15A4
	lda $15AE
	xba
	and #$00FF
	asl
	asl
	asl
	asl
	lsr
	clc
	adc $15B2
	sec
	sbc #$0014
	sta $15A6
	lda $15B0
	sta $15A8
	lda $15B2
	sta $15AA
	pla
	xba
	sta $17
	pla
	ora $17
	sta $15AE
	sep #$20
	lda #$00
	sta $15B4
	rep #$30
	jsr L84F360
	brl L84EDE3

L84ED45:
	rep #$30
	lda $15AE
	and #$00FF
	sec
	sbc #$0002
	asl
	asl
	asl
	asl
	sep #$20
	sta $15A2
	lda $15A2
	cmp #$D0
	bcc L84ED66
	lda #$CE
	sta $15A2
L84ED66:
	rep #$30
	lda $15AE
	xba
	and #$00FF
	sec
	sbc #$0002
	asl
	asl
	asl
	asl
	sep #$20
	sta $15A3
	rep #$30
	lda $15B0
	sta $15A4
	lda $15B2
	sta $15A6
	lda $15AE
	and #$00FF
	asl
	asl
	asl
	asl
	lsr
	clc
	adc $15B0
	sec
	sbc #$0014
	sta $15A8
	lda $15A8
	clc
	adc #$0004
	sta $15A8
	lda $15AE
	xba
	and #$00FF
	asl
	asl
	asl
	asl
	lsr
	clc
	adc $15B2
	sec
	sbc #$0014
	sta $15AA
	lda #$0808
	sta $15AE
	sep #$20
	lda #$00
	sta $15B4
	rep #$30
L84EDD0:
	sep #$20
	lda $15B5
	cmp #$00
	beq L84EDE0
	rep #$30
	jsr L84EF74
	bra L84EDE3

L84EDE0:
	jsr L84EFEF
L84EDE3:
	rep #$30
	lda $15AC
	cmp #$0101
	bne L84EE59
	sep #$20
	lda $15B5
	cmp #$00
	bne L84EE0B
	sep #$20
	lda #$63
	sta $15B4
	rep #$30
	lda $15A4
	sec
	sbc #$0004
	sta $15A4
	bra L84EE59

L84EE0B:
	sep #$20
	lda $0E00
	cmp #$01
	beq L84EE1C
	lda $1584
	sta $0E00
	bra L84EE59

L84EE1C:
	rep #$20
	lda $15B8
	cmp #$0000
	beq L84EE3C
	lda $1584
	sta $1420
	bra L84EE59

L84EE2E:
	lda #$0000
	sta $142A
	lda $1422
	sta $1420
	bra L84EE59

L84EE3C:
	lda $15BA
	cmp #$0001
	beq L84EE2E
	sep #$20
	lda #$01
	sta $15B4
	rep #$30
	lda $15B6
	sta $15A2
	lda #$0002
	sta $15B8
L84EE59:
	plp
	rts

L84EE5B:
	php
	pha
	asl
	asl
	asl
	asl
	tax
	lda #$0000
	sta $15AC
	lda.w L84EEA4,X
	sta $15AE
	lda.w L84EEA6,X
	sta $15B0
	lda.w L84EEA8,X
	sta $15B2
	stx $27
	tya
	clc
	adc $27
	tax
	lda.w L84EEAA,X
	sta $15B4
	pla
	cmp #$0008
	bmi L84EEA2
	sep #$30
	ldx $07DF
	lda.l L84E5DA,X
	rep #$30
	and #$00FF
	clc
	adc $15B0
	sta $15B0
L84EEA2:
	plp
	rts

L84EEA4:
.db $07 $07

L84EEA6:
.db $88 $00

L84EEA8:
.db $00 $00

L84EEAA:
.db $00 $00 $00 $01 $00 $00
.db $00 $00 $00 $00 $07 $06 $88 $00
.db $00 $00 $00 $00 $00 $01 $00 $00
.db $00 $00 $00 $00 $07 $04 $88 $00
.db $00 $00 $00 $00 $00 $01 $00 $00
.db $00 $00 $00 $00 $07 $03 $88 $00
.db $00 $00 $00 $00 $00 $01 $00 $00
.db $00 $00 $00 $00 $0F $05 $08 $00
.db $5C $00 $00 $00 $00 $01 $00 $00
.db $00 $00 $00 $00 $0F $04 $08 $00
.db $64 $00 $00 $00 $00 $01 $00 $00
.db $00 $00 $00 $00 $09 $03 $08 $00
.db $A4 $00 $00 $00 $00 $01 $00 $00
.db $00 $00 $00 $00 $0B $03 $08 $00
.db $A4 $00 $00 $00 $00 $01 $00 $00
.db $00 $00 $00 $00 $0A $03 $08 $00
.db $00 $00 $00 $00 $00 $01 $00 $00
.db $00 $00 $00 $00 $0B $03 $08 $00
.db $00 $00 $00 $00 $00 $01 $00 $00
.db $00 $00 $00 $00 $0C $03 $08 $00
.db $00 $00 $00 $00 $00 $01 $00 $00
.db $00 $00 $00 $00 $0D $03 $08 $00
.db $00 $00 $00 $00 $00 $01 $00 $00
.db $00 $00 $00 $00 $0E $03 $08 $00
.db $00 $00 $00 $00 $00 $01 $00 $00
.db $00 $00 $00 $00

L84EF74:
	php
	rep #$30
	lda $15A2
	ldx $15A4
	ldy $15A6
	jsr L84F0A5
	lda $15A4
	sec
	sbc #$0004
	sta $15A4
	sep #$20
	lda $15A2
	clc
	adc #$08
	sta $15A2
	rep #$30
	lda $15A4
	cmp $15A8
	bmi L84EFA4
	bne L84EFB7
L84EFA4:
	lda $15A8
	sta $15A4
	sep #$20
	lda $15AE
	sta $15A2
	lda #$01
	sta $15AC
L84EFB7:
	rep #$30
	lda $15A6
	sec
	sbc #$0004
	sta $15A6
	sep #$20
	lda $15A3
	clc
	adc #$08
	sta $15A3
	rep #$30
	lda $15A6
	cmp $15AA
	bmi L84EFDA
	bne L84EFED
L84EFDA:
	lda $15AA
	sta $15A6
	sep #$20
	lda $15AF
	sta $15A3
	lda #$01
	sta $15AD
L84EFED:
	plp
	rts

L84EFEF:
	php
	rep #$30
	lda $15A2
	ldx $15A4
	ldy $15A6
	jsr L84F0A5
	lda $15A4
	clc
	adc #$0004
	sta $15A4
	sep #$20
	lda $15A2
	cmp #$CE
	bne L84F01A
	lda $15A2
	clc
	adc #$02
	sta $15A2
L84F01A:
	lda $15A2
	sec
	sbc #$08
	sta $15A2
	rep #$30
	lda $15A4
	cmp $15A8
	bmi L84F040
	lda $15A8
	sta $15A4
	sep #$20
	lda $15AE
	sta $15A2
	lda #$01
	sta $15AC
L84F040:
	sep #$20
	lda $15A2
	sta $16
	lda $16
	clc
	adc #$08
	sta $16
	lda $15A2
	cmp $15A3
	bcc L84F05A
	beq L84F05A
	bra L84F0A3

L84F05A:
	lda $15A3
	sec
	sbc #$08
	cmp #$10
	bpl L84F06F
	lda $15A2
	cmp #$08
	bcc L84F06F
	beq L84F06F
	bra L84F0A3

L84F06F:
	rep #$30
	lda $15A6
	clc
	adc #$0004
	sta $15A6
	sep #$20
	lda $15A3
	sec
	sbc #$08
	sta $15A3
	rep #$30
	lda $15A6
	cmp $15AA
	bmi L84F0A3
	lda $15AA
	sta $15A6
	sep #$20
	lda $15AF
	sta $15A3
	lda #$01
	sta $15AD
L84F0A3:
	plp
	rts

L84F0A5:
	php
	rep #$30
	stx $17
	sty $19
	sta $1B
	ldx $50
	lda $17
	sta $0210,X
	lda $19
	sta $0211,X
	lda #$3560
	sta $0212,X
	inx
	inx
	inx
	inx
	lda $1B
	and #$00FF
	clc
	adc $17
	adc #$0010
	sta $0210,X
	lda $19
	sta $0211,X
	lda #$3564
	sta $0212,X
	inx
	inx
	inx
	inx
	lda $17
	sta $0210,X
	lda $1B
	xba
	and #$00FF
	clc
	adc $19
	adc #$0010
	sta $0211,X
	lda #$3566
	sta $0212,X
	inx
	inx
	inx
	inx
	lda $1B
	and #$00FF
	clc
	adc $17
	adc #$0010
	sta $0210,X
	lda $1B
	xba
	and #$00FF
	clc
	adc $19
	adc #$0010
	sta $0211,X
	lda #$356A
	sta $0212,X
	inx
	inx
	inx
	inx
	lda $1B
	and #$00FF
	lsr
	lsr
	lsr
	lsr
	beq L84F15B
L84F131:
	pha
	asl
	asl
	asl
	asl
	sta $1D
	lda $1B
	and #$00FF
	sec
	sbc $1D
	adc $17
	adc #$0010
	sta $0210,X
	lda $19
	sta $0211,X
	lda #$3562
	sta $0212,X
	inx
	inx
	inx
	inx
	pla
	dea
	bne L84F131
L84F15B:
	lda $17
	clc
	adc #$0010
	sta $0210,X
	lda $19
	sta $0211,X
	lda #$3562
	sta $0212,X
	inx
	inx
	inx
	inx
	lda $1B
	and #$00FF
	lsr
	lsr
	lsr
	lsr
	beq L84F1B2
L84F17E:
	pha
	asl
	asl
	asl
	asl
	sta $1D
	lda $1B
	and #$00FF
	sec
	sbc $1D
	adc $17
	adc #$0010
	sta $0210,X
	lda $1B
	xba
	and #$00FF
	clc
	adc #$0010
	adc $19
	sta $0211,X
	lda #$3568
	sta $0212,X
	inx
	inx
	inx
	inx
	pla
	dea
	bne L84F17E
L84F1B2:
	lda $17
	clc
	adc #$0010
	sta $0210,X
	lda $1B
	xba
	and #$00FF
	clc
	adc #$0010
	adc $19
	sta $0211,X
	lda #$3568
	sta $0212,X
	inx
	inx
	inx
	inx
	sep #$20
	lda $1B
	cmp #$10
	bcc L84F1DE
	bra L84F1E1

L84F1DE:
	brl L84F290

L84F1E1:
	lda $1C
	cmp #$10
	bcc L84F1E9
	bra L84F1EC

L84F1E9:
	brl L84F290

L84F1EC:
	rep #$30
	lda $1B
	xba
	and #$00FF
	lsr
	lsr
	lsr
	lsr
L84F1F8:
	pha
	asl
	asl
	asl
	asl
	sta $1F
	lda $1B
	and #$00FF
	lsr
	lsr
	lsr
	lsr
	beq L84F248
L84F20A:
	pha
	asl
	asl
	asl
	asl
	sta $1D
	lda $1B
	and #$00FF
	sec
	sbc $1D
	adc $17
	adc #$0010
	sta $0210,X
	lda #$0000
	ldy $1F
	beq L84F231
	lda $1B
	xba
	and #$00FF
	sec
	sbc $1F
L84F231:
	clc
	adc #$0010
	adc $19
	sta $0211,X
	lda #$35A4
	sta $0212,X
	inx
	inx
	inx
	inx
	pla
	dea
	bne L84F20A
L84F248:
	lda $17
	clc
	adc #$0010
	sta $0210,X
	lda #$0000
	ldy $1F
	beq L84F261
	lda $1B
	xba
	and #$00FF
	sec
	sbc $1F
L84F261:
	clc
	adc #$0010
	adc $19
	sta $0211,X
	lda #$35A4
	sta $0212,X
	inx
	inx
	inx
	inx
	pla
	dea
	bpl L84F1F8
	sep #$20
	lda $1B
	cmp #$10
	bcc L84F282
	bra L84F285

L84F282:
	brl L84F35A

L84F285:
	lda $1C
	cmp #$10
	bcc L84F28D
	bra L84F290

L84F28D:
	brl L84F35A

L84F290:
	rep #$30
	lda $1B
	xba
	and #$00FF
	lsr
	lsr
	lsr
	lsr
	beq L84F2C9
L84F29E:
	pha
	asl
	asl
	asl
	asl
	sta $1D
	lda $17
	sta $0210,X
	lda $1B
	xba
	and #$00FF
	sec
	sbc $1D
	adc $19
	adc #$0010
	sta $0211,X
	lda #$356C
	sta $0212,X
	inx
	inx
	inx
	inx
	pla
	dea
	bne L84F29E
L84F2C9:
	lda $17
	sta $0210,X
	lda $19
	clc
	adc #$0010
	sta $0211,X
	lda #$356C
	sta $0212,X
	inx
	inx
	inx
	inx
	lda $1B
	xba
	and #$00FF
	lsr
	lsr
	lsr
	lsr
	beq L84F321
L84F2ED:
	pha
	asl
	asl
	asl
	asl
	sta $1D
	lda $1B
	and #$00FF
	clc
	adc #$0010
	adc $17
	sta $0210,X
	lda $1B
	xba
	and #$00FF
	sec
	sbc $1D
	adc $19
	adc #$0010
	sta $0211,X
	lda #$356E
	sta $0212,X
	inx
	inx
	inx
	inx
	pla
	dea
	bne L84F2ED
L84F321:
	lda $1B
	and #$00FF
	clc
	adc #$0010
	adc $17
	sta $0210,X
	lda $19
	clc
	adc #$0010
	sta $0211,X
	lda #$356E
	sta $0212,X
	inx
	inx
	inx
	inx
	sep #$20
	lda $1B
	cmp #$10
	bcc L84F34C
	bra L84F34F

L84F34C:
	brl L84F1EC

L84F34F:
	lda $1C
	cmp #$10
	bcc L84F357
	bra L84F35A

L84F357:
	brl L84F1EC

L84F35A:
	rep #$30
	stx $50
	plp
	rts

L84F360:
	php
	sep #$20
	lda #$82
	sta $7B
	lda #$02
	sta $5C
	rep #$30
	lda $15A4
	sta $56
	lda $56
	sec
	sbc #$0004
	sta $56
	lda $15A6
	sta $58
	lda $58
	sec
	sbc #$0004
	sta $58
	lda #$000F
	sta $5A
	lda #bank100(L84C731)
	sta $63
	lda #L84C731
	sta $62
	jsl L8093A2
	plp
	rts

L84F39C:
	php
L84F39D:
	sep #$20
	lda #$82
	sta $7B
	lda #$02
	sta $5C
	jsr L84E587
	lda $0E00
	cmp #$05
	beq L84F3E7
	lda $0E00
	cmp #$08
	beq L84F3E7
	rep #$30
	lda $07DF
	and #$00FF
	cmp #$0015
	bcc L84F3E7
	lda #$0100
	sta $5E
	lda #$0001
	sta $5A
	lda #$00F0
	sta $56
	lda #$0074
	sta $58
	lda #bank100(L848000)
	sta $63
	lda #L848000
	sta $62
	jsl L8093A2
L84F3E7:
	sep #$20
	lda $15B4
	cmp #$00
	beq L84F3F2
	bra L84F3F5

L84F3F2:
	brl L84F459

L84F3F5:
	lda $15B5
	cmp #$00
	beq L84F42C
	rep #$30
	lda #$0010
	sta $15A2
	lda #$0068
	sta $15A4
	lda $15B2
	sta $15A6
	lda #$0018
	sta $15A8
	lda #$00A8
	sta $15AA
	lda #$0000
	sta $15AC
	sep #$20
	lda #$00
	sta $15B4
	brl L84F459

L84F42C:
	rep #$30
	lda #$00A8
	sta $15A2
	lda #$0020
	sta $15A4
	lda $15B2
	sta $15A6
	lda #$0070
	sta $15A8
	lda #$0010
	sta $15AA
	lda #$0000
	sta $15AC
	sep #$20
	lda #$00
	sta $15B4
L84F459:
	sep #$20
	lda $15B5
	cmp #$00
	beq L84F469
	rep #$30
	jsr L84F489
	bra L84F46C

L84F469:
	jsr L84F4CA
L84F46C:
	rep #$30
	jsl L8087EA
	stz $52
	jsl L80954E
	rep #$30
	lda $15AC
	cmp #$0000
	beq L84F484
	bra L84F487

L84F484:
	brl L84F39D

L84F487:
	plp
	rts

L84F489:
	php
	rep #$30
	lda $15A2
	ldx $15A4
	ldy $15A6
	jsr L84F509
	lda $15A4
	sec
	sbc #$0004
	sta $15A4
	lda $15A2
	clc
	adc #$0008
	sta $15A2
	lda $15A4
	cmp $15A8
	bmi L84F4B6
	bne L84F4C8
L84F4B6:
	lda $15A8
	sta $15A4
	lda $15AA
	sta $15A2
	lda #$0001
	sta $15AC
L84F4C8:
	plp
	rts

L84F4CA:
	php
	rep #$30
	lda $15A2
	ldx $15A4
	ldy $15A6
	jsr L84F509
	lda $15A4
	clc
	adc #$0004
	sta $15A4
	lda $15A2
	sec
	sbc #$0008
	sta $15A2
	lda $15A4
	cmp $15A8
	bmi L84F507
	lda $15A8
	sta $15A4
	lda $15AA
	sta $15A2
	lda #$0001
	sta $15AC
L84F507:
	plp
	rts

L84F509:
	php
	rep #$30
	stx $17
	sty $19
	sta $1B
	ldx $50
	lda $17
	sta $0210,X
	lda $19
	sta $0211,X
	lda #$3380
	sta $0212,X
	inx
	inx
	inx
	inx
	lda $17
	clc
	adc #$0010
	sta $0210,X
	lda $19
	sta $0211,X
	lda #$3382
	sta $0212,X
	inx
	inx
	inx
	inx
	lda $17
	sta $0210,X
	lda $19
	clc
	adc #$0010
	sta $0211,X
	lda #$33A0
	sta $0212,X
	inx
	inx
	inx
	inx
	lda $17
	clc
	adc #$0010
	sta $0210,X
	lda $19
	clc
	adc #$0010
	sta $0211,X
	lda #$33A2
	sta $0212,X
	inx
	inx
	inx
	inx
	lda $17
	sta $0210,X
	lda $19
	clc
	adc #$0020
	sta $0211,X
	lda #$33C0
	sta $0212,X
	inx
	inx
	inx
	inx
	lda $17
	clc
	adc #$0010
	sta $0210,X
	lda $19
	clc
	adc #$0020
	sta $0211,X
	lda #$33C2
	sta $0212,X
	inx
	inx
	inx
	inx
	lda $17
	sta $0210,X
	lda $19
	clc
	adc #$0030
	sta $0211,X
	lda #$33C0
	sta $0212,X
	inx
	inx
	inx
	inx
	lda $17
	clc
	adc #$0010
	sta $0210,X
	lda $19
	clc
	adc #$0030
	sta $0211,X
	lda #$33C2
	sta $0212,X
	inx
	inx
	inx
	inx
	lda $17
	sta $0210,X
	lda $19
	clc
	adc #$0040
	sta $0211,X
	lda #$33C0
	sta $0212,X
	inx
	inx
	inx
	inx
	lda $17
	clc
	adc #$0010
	sta $0210,X
	lda $19
	clc
	adc #$0040
	sta $0211,X
	lda #$33C2
	sta $0212,X
	inx
	inx
	inx
	inx
	lda $17
	sta $0210,X
	lda $19
	clc
	adc #$0050
	sta $0211,X
	lda #$33E0
	sta $0212,X
	inx
	inx
	inx
	inx
	lda $17
	clc
	adc #$0010
	sta $0210,X
	lda $19
	clc
	adc #$0050
	sta $0211,X
	lda #$33E2
	sta $0212,X
	inx
	inx
	inx
	inx
	lda $1B
	and #$00FF
	clc
	adc $17
	adc #$0010
	sta $0210,X
	lda $19
	sta $0211,X
	lda #$7380
	sta $0212,X
	inx
	inx
	inx
	inx
	lda $1B
	and #$00FF
	clc
	adc $17
	sta $0210,X
	lda $19
	sta $0211,X
	lda #$7382
	sta $0212,X
	inx
	inx
	inx
	inx
	lda $1B
	and #$00FF
	clc
	adc $17
	adc #$0010
	sta $0210,X
	lda $19
	clc
	adc #$0010
	sta $0211,X
	lda #$73A0
	sta $0212,X
	inx
	inx
	inx
	inx
	lda $1B
	and #$00FF
	clc
	adc $17
	sta $0210,X
	lda $19
	clc
	adc #$0010
	sta $0211,X
	lda #$73A2
	sta $0212,X
	inx
	inx
	inx
	inx
	lda $1B
	and #$00FF
	clc
	adc $17
	adc #$0010
	sta $0210,X
	lda $19
	clc
	adc #$0020
	sta $0211,X
	lda #$73C0
	sta $0212,X
	inx
	inx
	inx
	inx
	lda $1B
	and #$00FF
	clc
	adc $17
	sta $0210,X
	lda $19
	clc
	adc #$0020
	sta $0211,X
	lda #$73C2
	sta $0212,X
	inx
	inx
	inx
	inx
	lda $1B
	and #$00FF
	clc
	adc $17
	adc #$0010
	sta $0210,X
	lda $19
	clc
	adc #$0030
	sta $0211,X
	lda #$73C0
	sta $0212,X
	inx
	inx
	inx
	inx
	lda $1B
	and #$00FF
	clc
	adc $17
	sta $0210,X
	lda $19
	clc
	adc #$0030
	sta $0211,X
	lda #$73C2
	sta $0212,X
	inx
	inx
	inx
	inx
	lda $1B
	and #$00FF
	clc
	adc $17
	adc #$0010
	sta $0210,X
	lda $19
	clc
	adc #$0040
	sta $0211,X
	lda #$73C0
	sta $0212,X
	inx
	inx
	inx
	inx
	lda $1B
	and #$00FF
	clc
	adc $17
	sta $0210,X
	lda $19
	clc
	adc #$0040
	sta $0211,X
	lda #$73C2
	sta $0212,X
	inx
	inx
	inx
	inx
	lda $1B
	and #$00FF
	clc
	adc $17
	adc #$0010
	sta $0210,X
	lda $19
	clc
	adc #$0050
	sta $0211,X
	lda #$73E0
	sta $0212,X
	inx
	inx
	inx
	inx
	lda $1B
	and #$00FF
	clc
	adc $17
	sta $0210,X
	lda $19
	clc
	adc #$0050
	sta $0211,X
	lda #$73E2
	sta $0212,X
	inx
	inx
	inx
	inx
	lda $1B
	and #$00FF
	lsr
	lsr
	lsr
	lsr
	beq L84F7EB
L84F7C1:
	pha
	asl
	asl
	asl
	asl
	sta $1D
	lda $1B
	and #$00FF
	sec
	sbc $1D
	adc $17
	adc #$000F
	sta $0210,X
	lda $19
	sta $0211,X
	lda #$3384
	sta $0212,X
	inx
	inx
	inx
	inx
	pla
	dea
	bne L84F7C1
L84F7EB:
	lda $1B
	and #$00FF
	lsr
	lsr
	lsr
	lsr
	beq L84F824
L84F7F6:
	pha
	asl
	asl
	asl
	asl
	sta $1D
	lda $1B
	and #$00FF
	sec
	sbc $1D
	adc $17
	adc #$000F
	sta $0210,X
	lda $19
	clc
	adc #$0050
	sta $0211,X
	lda #$3386
	sta $0212,X
	inx
	inx
	inx
	inx
	pla
	dea
	bne L84F7F6
L84F824:
	lda $1B
	and #$00FF
	lsr
	lsr
	lsr
	lsr
	beq L84F8A7
L84F82F:
	pha
	asl
	asl
	asl
	asl
	sta $1D
	lda $1B
	and #$00FF
	sec
	sbc $1D
	adc $17
	adc #$000F
	sta $1F
	sta $0210,X
	lda $19
	clc
	adc #$0010
	sta $0211,X
	lda #$33A4
	sta $0212,X
	inx
	inx
	inx
	inx
	lda $1F
	sta $0210,X
	lda $19
	clc
	adc #$0020
	sta $0211,X
	lda #$33A4
	sta $0212,X
	inx
	inx
	inx
	inx
	lda $1F
	sta $0210,X
	lda $19
	clc
	adc #$0030
	sta $0211,X
	lda #$33A4
	sta $0212,X
	inx
	inx
	inx
	inx
	lda $1F
	sta $0210,X
	lda $19
	clc
	adc #$0040
	sta $0211,X
	lda #$33A4
	sta $0212,X
	inx
	inx
	inx
	inx
	pla
	dea
	bne L84F82F
L84F8A7:
	stx $50
	plp
	rts

L84F8AB:
	php
	rep #$30
	lda #$0050
	sta $15A6
	lda $15A2
	cmp #$0001
	beq L84F8C4
	lda #$0050
	sta $15A4
	bra L84F8CA

L84F8C4:
	lda #$0000
	sta $15A4
L84F8CA:
	stz $52
	jsl L80954E
	jsr L84E587
	lda #$0100
	sta $5E
	lda #$0001
	sta $5A
	lda #$00F0
	sta $56
	lda $56
	clc
	adc $15A4
	sta $56
	lda #$0074
	sta $58
	lda #bank100(L848000)
	sta $63
	lda #L848000
	sta $62
	jsl L8093A2
	jsl L8087EA
	lda $15A2
	cmp #$0001
	beq L84F915
	lda $15A4
	sec
	sbc #$0004
	sta $15A4
	bra L84F91F

L84F915:
	lda $15A4
	clc
	adc #$0004
	sta $15A4
L84F91F:
	lda $15A6
	sec
	sbc #$0004
	sta $15A6
	lda $15A6
	cmp #$0000
	bmi L84F933
	bne L84F8CA
L84F933:
	plp
	rts

L84F935:
	php
	rep #$30
	lda $1588
	cmp #$0000
	beq L84F9A9
	lda $0F09
	cmp #$0000
	bne L84F9A5
	lda $158A
	sta $00
	lda $158B
	sta $01
	lda [$00]
	sta $159F
	lda $159F
	cmp #$0000
	bne L84F98B
	lda #$0000
	sta $1588
	lda #$0001
	sta $1452
	lda $1599
	sta $00
	lda $159A
	sta $01
	lda #$0000
	sta [$00]
	lda $159C
	sta $00
	lda $159D
	sta $01
	lda #$0001
	sta [$00]
	bra L84F9A9

L84F98B:
	lda $159F
	and #$00FF
	asl
	tax
	jsr (L84F9AB,X)
	pha
	jsr L84FA77
	pla
	lda $158A
	clc
	adc #$0002
	sta $158A
L84F9A5:
	jsl L87B932
L84F9A9:
	plp
	rts

L84F9AB:
.db $00 $00 $D6 $FA $FC $FA $22 $FB
.db $48 $FB $6E $FB $94 $FB $BA $FB
.db $E0 $FB $06 $FC $2C $FC $52 $FC
.db $78 $FC $87 $FC $A4 $FC $C1 $FC
.db $33 $FD $59 $FD $7F $FD $BD $FD

L84F9D3:
	php
	rep #$30
	asl
	asl
	sta $17
	asl
	clc
	adc $17
	tax
	lda.w L84FA17,X
	sta $158D
	lda.w L84FA19,X
	sta $158F
	lda.w L84FA1B,X
	sta $1591
	lda.w L84FA1D,X
	sta $1593
	lda.w L84FA1F,X
	sta $1595
	lda.w L84FA21,X
	sta $1597
	lda #$0000
	sta $158B
	lda #$158D
	sta $158A
	lda #$0001
	sta $1588
	plp
	rts

L84FA17:
.db $01 $00

L84FA19:
.db $02 $00

L84FA1B:
.db $03 $00

L84FA1D:
.db $04 $00

L84FA1F:
.db $05 $00

L84FA21:
.db $00 $00 $06 $00 $07 $00 $08
.db $00 $09 $00 $00 $00 $00 $00 $01
.db $00 $0A $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $0B $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $0C
.db $00 $0D $00 $0E $00 $00 $00 $00
.db $00 $00 $00 $0F $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $10
.db $00 $11 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $12 $00 $13 $00 $00
.db $00 $00 $00 $00 $00 $00 $00

L84FA77:
	php
	rep #$20
	jsl L87B860
	sep #$20
	lda $04,S
	sta.l $000F29
	lda $05,S
	sta.l $000F2A
	rep #$20
	lda #$2020
	sta $0F25
	lda #$4000
	sta $0F23
	lda #$7E00
	sta $0F21
	lda #$3000
	sta $0F20
	lda $0F05
	ora #$0008
	sta $0F05
	lda #$0000
	sta.l $000F27
	lda #$0000
	sta $0F14
	lda #$0000
	sta $0F12
	lda #$0001
	sta $0F07
	lda #bank100(L87BCCA)
	sta $0F1A
	lda #L87BCCA
	sta $0F19
	plp
	rts

L84FAD6:
	lda #$7F00
	sta $01
	lda #$F200
	sta $00
	lda #bank100(L84C568)
	sta $04
	lda #L84C568
	sta $03
	jsl L84C1B8
	lda #$7F00
	sta $01
	lda #$F200
	sta $00
	lda #$0000
	rts

L84FAFC:
	lda #$7F00
	sta $01
	lda #$F200
	sta $00
	lda #bank100(L84C57B)
	sta $04
	lda #L84C57B
	sta $03
	jsl L84C1B8
	lda #$7F00
	sta $01
	lda #$F200
	sta $00
	lda #$0014
	rts

L84FB22:
	lda #$7F00
	sta $01
	lda #$F200
	sta $00
	lda #bank100(L84C58C)
	sta $04
	lda #L84C58C
	sta $03
	jsl L84C1B8
	lda #$7F00
	sta $01
	lda #$F200
	sta $00
	lda #$0028
	rts

L84FB48:
	lda #$7F00
	sta $01
	lda #$F200
	sta $00
	lda #bank100(L84C59F)
	sta $04
	lda #L84C59F
	sta $03
	jsl L84C1B8
	lda #$7F00
	sta $01
	lda #$F200
	sta $00
	lda #$003C
	rts

L84FB6E:
	lda #$7F00
	sta $01
	lda #$F200
	sta $00
	lda #bank100(L84C5AF)
	sta $04
	lda #L84C5AF
	sta $03
	jsl L84C1B8
	lda #$7F00
	sta $01
	lda #$F200
	sta $00
	lda #$0050
	rts

L84FB94:
	lda #$7F00
	sta $01
	lda #$F200
	sta $00
	lda #bank100(L84C57B)
	sta $04
	lda #L84C57B
	sta $03
	jsl L84C1B8
	lda #$7F00
	sta $01
	lda #$F200
	sta $00
	lda #$0000
	rts

L84FBBA:
	lda #$7F00
	sta $01
	lda #$F200
	sta $00
	lda #bank100(L84C58C)
	sta $04
	lda #L84C58C
	sta $03
	jsl L84C1B8
	lda #$7F00
	sta $01
	lda #$F200
	sta $00
	lda #$0014
	rts

L84FBE0:
	lda #$7F00
	sta $01
	lda #$F200
	sta $00
	lda #bank100(L84C59F)
	sta $04
	lda #L84C59F
	sta $03
	jsl L84C1B8
	lda #$7F00
	sta $01
	lda #$F200
	sta $00
	lda #$0028
	rts

L84FC06:
	lda #$7F00
	sta $01
	lda #$F200
	sta $00
	lda #bank100(L84C5AF)
	sta $04
	lda #L84C5AF
	sta $03
	jsl L84C1B8
	lda #$7F00
	sta $01
	lda #$F200
	sta $00
	lda #$003C
	rts

L84FC2C:
	lda #$7F00
	sta $01
	lda #$F200
	sta $00
	lda #bank100(L84C58C)
	sta $04
	lda #L84C58C
	sta $03
	jsl L84C1B8
	lda #$7F00
	sta $01
	lda #$F200
	sta $00
	lda #$0014
	rts

L84FC52:
	lda #$7F00
	sta $01
	lda #$F200
	sta $00
	lda #bank100(L84C58C)
	sta $04
	lda #L84C58C
	sta $03
	jsl L84C1B8
	lda #$7F00
	sta $01
	lda #$F200
	sta $00
	lda #$0000
	rts

L84FC78:
	lda #$0000
	sta $27
	lda #$0001
	jsr L84BFA7
	lda #$0000
	rts

L84FC87:
	lda #$0000
	sta $27
	lda $1436
	pha
	lda $1438
	sta $1436
	lda #$0002
	jsr L84BFA7
	pla
	sta $1436
	lda #$0034
	rts

L84FCA4:
	lda #$0000
	sta $27
	lda $1436
	pha
	lda $143A
	sta $1436
	lda #$0003
	jsr L84BFA7
	pla
	sta $1436
	lda #$0068
	rts

L84FCC1:
	lda $1442
	cmp #$0000
	bne L84FCCE
	lda #$0000
	bra L84FCDE

L84FCCE:
	lda $1442
	cmp #$0010
	bne L84FCDB
	lda #$0001
	bra L84FCDE

L84FCDB:
	lda #$0002
L84FCDE:
	pha
	sec
	jsr L84ABB4
	pla
	cpy #$0001
	beq L84FD0D
	sta $03
	clc
	adc $03
	adc $03
	tax
	lda.l (L84C5BF + 1),X
	sta $04
	lda.l L84C5BF,X
	sta $03
	lda #$7F00
	sta $01
	lda #$F200
	sta $00
	jsl L84C1B8
	bra L84FD2F

L84FD0D:
	sta $03
	clc
	adc $03
	adc $03
	tax
	lda.l (L84C604 + 1),X
	sta $04
	lda.l L84C604,X
	sta $03
	lda #$7F00
	sta $01
	lda #$F200
	sta $00
	jsl L84C1B8
L84FD2F:
	lda #$009C
	rts

L84FD33:
	lda #$7F00
	sta $01
	lda #$F200
	sta $00
	lda #bank100(L84C664)
	sta $04
	lda #L84C664
	sta $03
	jsl L84C1B8
	lda #$7F00
	sta $01
	lda #$F200
	sta $00
	lda #$00C4
	rts

L84FD59:
	lda #$7F00
	sta $01
	lda #$F200
	sta $00
	lda #bank100(L84C66A)
	sta $04
	lda #L84C66A
	sta $03
	jsl L84C1B8
	lda #$7F00
	sta $01
	lda #$F200
	sta $00
	lda #$00CC
	rts

L84FD7F:
	lda #$7F00
	sta $01
	lda #$F200
	sta $00
	lda #bank100(L84C6C5)
	sta $04
	lda #L84C6C5
	sta $03
	jsl L84C1B8
	lda #$7F00
	sta $01
	lda #$F200
	sta $00
	lda #bank100(L84C671)
	sta $04
	lda #L84C671
	sta $03
	jsl L84C1D1
	lda #$7F00
	sta $01
	lda #$F200
	sta $00
	lda #$0000
	rts

L84FDBD:
	lda #$7F00
	sta $01
	lda #$F200
	sta $00
	lda #bank100(L84C6D0)
	sta $04
	lda #L84C6D0
	sta $03
	jsl L84C1B8
	lda #$7F00
	sta $01
	lda #$F200
	sta $00
	lda #bank100(L84C68B)
	sta $04
	lda #L84C68B
	sta $03
	jsl L84C1D1
	lda #$0034
	rts

L84FDF1:
	phk
	plb
	rep #$30
	jsr L84FDFA
L84FDF8:
	bra L84FDF8

L84FDFA:
	php
	rep #$30
	jsl L808CEA
	jsl L80884A
	jsl L808838
	sep #$20
	lda #$FF
	eor #$FF
	and $F7
	sta $F7
	rep #$30
	jsr L84FEDB
	sep #$20
	lda #$1B
	sta.l $000071
	lda #$84
	sta.l $000072
	lda #$8D
	sta.l $000073
	lda #$00
	sta.l $000076
	lda #$00
	sta.l $000077
	jsl DECOMPRESS_ASSET
	rep #$20
	lda #bank100(L84FEC2)
	sta $01
	lda #L84FEC2
	sta $00
	jsl L808EAD
	sep #$20
	lda #$00
	sta.l $000071
	lda #$80
	sta.l $000072
	lda #$8D
	sta.l $000073
	lda #$00
	sta.l $000076
	lda #$00
	sta.l $000077
	jsl DECOMPRESS_ASSET
	rep #$20
	lda #bank100(L84FECB)
	sta $01
	lda #L84FECB
	sta $00
	jsl L808EAD
	sep #$20
	lda #$B4
	sta.l $000071
	lda #$83
	sta.l $000072
	lda #$8D
	sta.l $000073
	lda #$00
	sta.l $000076
	lda #$00
	sta.l $000077
	jsl DECOMPRESS_ASSET
	rep #$20
	lda #bank100(L84FED4)
	sta $01
	lda #L84FED4
	sta $00
	jsl L808EAD
	jsl L808826
	jsl L8088A0
	jsl L808CB4
	plp
	rts

L84FEC2:
DMA_DATA DecompressionLocation $2000 $80 $0000

L84FECB:
DMA_DATA DecompressionLocation $0800 $80 $7800

L84FED4:
DMA_DATA DecompressionLocation $0200 $00

L84FEDB:
	php
	rep #$30
	sep #$20
	ldx #$2100
	lda #$8F
	sta $00,X
	sta $7A
	lda #$01
	sta $05,X
	sta $7E
	lda #$00
	sta $06,X
	sta $7F
	lda #$78
	sta $09,X
	sta $82
	lda #$00
	sta $0C,X
	sta $85
	stz $11,X
	stz $11,X
	stz $12,X
	stz $12,X
	lda #$04
	sta $2C,X
	sta $A0
	lda #$00
	sta $2D,X
	sta $A1
	stz $2E,X
	stz $A2
	stz $2F,X
	stz $A3
	lda #$00
	sta $33,X
	sta $A9
	plp
	rts

.ENDS
