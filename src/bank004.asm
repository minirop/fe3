.BANK 4
.ORG $0000

.SECTION "Bank4" FORCE

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

.INCBIN "0200C3.bin"

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
	jsr $8567
	jsr $B8A6
	jsr $B93A
	jsr $B98B
	jsl $8087EA
	pla
	inc A
	cmp #$0010
	bcc L848530
	rts

L848549:
	rep #$20
	lda #$000F
L84854E:
	pha
	jsr $8567
	jsr $F935
	jsr $B8A6
	jsr $B93A
	jsr $B98B
	jsl $8087EA
	pla
	dec A
	bpl L84854E
	rts

L848567:
	php
	asl A
	asl A
	sta $15
	sep #$20
	lda #$01
	sta $0E07
	lda #$F1
	sta $0E0D
	rep #$20
	lda #$8400
	sta $0E09
	lda #$859F
	clc
	adc $15
	sta $0E08
	lda #$0004
	sta $0E0B
	lda #$0000
	sta $01
	lda #$0E07
	sta $00
	jsl $808EAD
	plp
	rts

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
	jsl $80954E
	lda $07DF
	and #$00FF
	bne L848638
	inc A
L848638:
	dec A
	asl A
	tax
	lda #$DC00
	sta $01
	lda $DCB000,X
	clc
	adc #$B000
	sta $00
	jsl $87B860
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
	jsl $80954E
	lda $07DF
	and #$00FF
	bne L8486B9
	inc A
L8486B9:
	dec A
	asl A
	tax
	lda #$DC00
	sta $01
	lda $DCB000,X
	clc
	adc #$B000
	sta $00
	jsl $87B860
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
	inc A
	sta $0E2C
	cmp #$0A
	bcc L84875D
	lda $0E2D
	inc A
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
	inc A
	sta $0E2C
	cmp #$0A
	bcc L8487C2
	lda $0E2D
	inc A
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
	jsl $808CEA
	sep #$20
	lda #$03
	sta $0E00
	rep #$20
	lda #$0007
	sta $141E
	brl L848933

L848838:
	jsl $8087EA
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
	jsl $87B932
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
	jsl $8087EA
	jsr L84852B
	jsl $8087EA
	stz $0E04
	stz $52
	jsl $80954E
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
	lda $84E5AF,X
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
	jsl $80954E
	jsr L84E587
	jsr L84852B
	stz $0E04
	stz $52
	jsl $80954E
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
	lda #$8400
	sta $01
	lda #$8987
	sta $00
	jsl $808EAD
	jsr L848710
	jsl $87B903
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

.db $01 $9F $85 $84 $04 $00 $F1

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
	jsl $8087EA
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
	jsl $87B932
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
	jsl $8087EA
	jsr L84852B
	jsl $8087EA
	stz $0E04
	stz $52
	jsl $80954E
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
	jsl $80B4E3
	sep #$20
	lda #$02
	sta $7B
	rep #$20
	jsl $80954E
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
	lda #$8400
	sta $01
	lda #$8ACF
	sta $00
	jsl $808EAD
	jsr L848775
	jsl $87B903
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

.db $01 $9F $85 $84 $04 $00 $F1

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
	inc A
	inc A
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
	inc A
	inc A
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
	lsr A
	lsr A
	lsr A
	lsr A
	lsr A
	lsr A
	lsr A
	tax
	lda $848B3A,X
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
	lsr A
	sta $15
	pla
	and #$FFE0
	clc
	adc $15
	clc
	adc #$3E00
	sta $7EA100,X
	rts

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
	lda #$8400
	sta $63
	lda #$8000
	sta $62
	jsl $8093A2
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
	lda #$8400
	sta $63
	lda #$8000
	sta $62
	jsl $8093A2
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
	lda #$8400
	sta $63
	lda #$8000
	sta $62
	jsl $8093A2
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
	lda.w #$8400
	sta $01
	lda.w #$80c3
	sta $00
	lda.w #$7e00
	sta $04
	lda.w #DecompressionLocation
	sta $03
	lda $0e0f
	jsr L848c96
	plp
	rts

L848C96:
	php
	sep #$20
	stz $08
	sta $4202
	ldy #$0000
L848CA1:
	lda [$00],Y
	sta $4203
	nop
	nop
	nop
	rep #$20
	lda $4216
	lsr
	lsr
	lsr
	lsr
	lsr
	sta $06
	sep #$20
	iny
	lda [$00],Y
	sta $4203
	nop
	nop
	nop
	rep #$20
	lda $4216
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
	lda #$af00
	sta $01
	lda #$c000
	sta $00
	lda #$cb00
	sta $04
	lda #$c000
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
DMA_DATA $02 DecompressionLocation $8000 $80 $0000

L848D26:
	php
	lda #$DB00
	sta.l $000072
	lda #$F7A5
	sta.l $000071
	lda #$0000
	sta.l $000076
	jsl $808F18
	lda #$8400
	sta $01
	lda #$8D50
	sta $00
	jsl $808EAD
	plp
	rts

.db $02 $FE $40 $7E $00 $20 $80 $00
.db $58

L848D59:
	php
	lda #$DB00
	sta.l $000072
	lda #$F5BC
	sta.l $000071
	lda #$0000
	sta.l $000076
	jsl $808F18
	lda #$8400
	sta $01
	lda #$8D83
	sta $00
	jsl $808EAD
	plp
	rts

.db $02 $FE $40 $7E $00 $04 $80 $00
.db $56

L848D8C:
	php
	lda #$DB00
	sta.l $000072
	lda #$F71F
	sta.l $000071
	lda #$0000
	sta.l $000076
	jsl $808F18
	lda #$8400
	sta $01
	lda #$8DC4
	sta $00
	jsl $808EAD
	lda #$8400
	sta $01
	lda #$8DCD
	sta $00
	jsl $808EAD
	plp
	rts

.db $02 $FE $40 $7E $40 $00 $80 $E0
.db $54 $02 $3E $41 $7E $40 $00 $80
.db $E0 $55

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
	asl A
	clc
	adc $15
	tax
	lda $8E26,X
	sta.l $000072
	lda $8E25,X
	sta.l $000071
	lda #$0000
	sta.l $000076
	jsl $808F18
	ldx #$0000
L848E0C:
	phx
	lda #$8400
	sta $01
	lda $8E70,X
	sta $00
	jsl $808EAD
	plx
	inx
	inx
	cpx #$0010
	bcc L848E0C
	plp
	rts

.db $00 $80 $DB $64 $85 $DB $63 $8A
.db $DB $45 $8F $DB $87 $94 $DB $1D
.db $99 $DB $EC $9E $DB $7C $A5 $DB
.db $3C $AB $DB $66 $B0 $DB $68 $B5
.db $DB $DE $BA $DB $6A $C1 $DB $34
.db $C7 $DB $EC $CC $DB $1E $D2 $DB
.db $45 $D6 $DB $15 $DC $DB $5B $E1
.db $DB $B4 $E6 $DB $DB $EB $DB $C6
.db $F0 $DB $00 $80 $DB $00 $80 $DB
.db $00 $80 $DB $80 $8E $89 $8E $92
.db $8E $9B $8E $A4 $8E $AD $8E $B6
.db $8E $BF $8E

L848E80:
.db $02 $FE $40 $7E $00 $01 $80 $80 $58
.db $02 $FE $42 $7E $00 $01 $80 $80 $59
.db $02 $FE $44 $7E $00 $01 $80 $80 $5A
.db $02 $FE $46 $7E $00 $01 $80 $80 $5B
.db $02 $FE $48 $7E $00 $01 $80 $80 $5C
.db $02 $FE $4A $7E $00 $01 $80 $80 $5D
.db $02 $FE $4C $7E $00 $01 $80 $80 $5E
.db $02 $FE $4E $7E $00 $01 $80 $80 $5F

L848EC8:
	php
	rep #$30
	ldy #$0200
	ldx #$0000
L848ED1:
	lda $858000,X
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
	lda $8581E0,X
	sta $7F52F0,X
	inx
	dey
	inx
	dey
	bne L848EEC
	ldy #$0020
	ldx #$0000
L848F00:
	lda $8581E0,X
	sta $7F52D0,X
	inx
	dey
	inx
	dey
	bne L848F00
	ldy #$0020
	ldx #$0000
L848F14:
	lda $8581E0,X
	sta $7F5290,X
	inx
	dey
	inx
	dey
	bne L848F14
	ldy #$0020
	ldx #$0000
L848F28:
	lda $8581E0,X
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
	asl A
	tax
	lda $8FAB,X
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
	lda $858160,X
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
	lda $858180,X
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
	lda $8581A0,X
	sta $7F5230,X
	inx
	dey
	inx
	dey
	bne L848F8D
L848F9B:
	lda #$8300
	sta $01
	lda #$897A
	sta $00
	jsl $808EAD
	plp
	rts

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
    lda #$8400
    sta $4363
    lda #$8443
    sta $4362
    plp
    rts

L8490BD:
    php
    rep #$30
    lda $0E00
    and #$00FF
    asl A
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
	jsl $808CEA
	jsl $80884A
	jsl $808838
	sep #$20
	lda #$FF
	eor #$FF
	and $F7
	sta $F7
	rep #$30
	jsl $808778
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
	jsl $808826
	lda #$0000
	sta $52
	jsl $80954E
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
	jsl $87B860
	jsl $8088A0
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
    jsl $808CEA
    jsl $80884A
    jsl $808838
    sep #$20
    lda #$FF
    eor #$FF
    and $F7
    sta $F7
    rep #$30
    jsl $808778
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
    jsl $808826
    lda #$0000
    sta $52
    jsl $80954E
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
    jsl $87B860
    jsr L84E70D
    jsl $8088A0
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
    jsl $808CEA
    jsl $80884A
    jsl $808838
    sep #$20
    lda #$FF
    eor #$FF
    and $F7
    sta $F7
    rep #$30
    jsl $808778
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
    jsl $808826
    sep #$20
    lda #$02
    sta $7B
    rep #$30
    lda #$0000
    sta $52
    jsl $80954E
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
    jsl $87B860
    sep #$20
    lda #$01
    sta $07D6
    lda #$03
    sta $0E00
    rep #$30
    lda #$0003
    sta $141E
    lda #$04F0
    jsl $80B4E3
    jsr L84E70D
    jsl $8088A0
    jsl $808CB4
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
    jsl $8087EA
    jsl $8087EA
    jsr L848EC8
    lda #$0000
    jsr L84B8F7
    jsl $8087EA
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
    jsl $808CEA
    sep #$20
    lda #$00
    sta $F7
    rep #$30
    jsl $8087EA
    jsl $8DE608
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
    jsl $8DE608
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
    asl A
    tax
    jsr (L829502,X)
    plp
    rts

L829502:
.db $18 $95 $C8 $95 $7F $9C
.db $B7 $9D $0D $9F $00 $A3 $4C $A7
.db $F3 $AB $DF $B2 $11 $EC $28 $B5
.db $08 $E2 $20 $A9 $00 $8D $66 $14
.db $A9 $00 $8D $67 $14 $C2 $30 $A9
.db $00 $00 $8D $2C $14 $A9 $01 $00
.db $8D $4C $14 $A9 $01 $00 $8D $4E
.db $14 $A9 $00 $00 $8D $5E $14 $A9
.db $00 $00 $20 $67 $85 $22 $FE $CB
.db $93 $90 $1B $A9 $01 $00 $8D $68
.db $14 $20 $90 $9C $90 $08 $A9 $03
.db $00 $8D $24 $14 $80 $23 $A9 $01
.db $00 $8D $24 $14 $80 $1B $A9 $00
.db $00 $8D $68 $14 $C2 $20 $20 $90
.db $9C $B0 $08 $A9 $00 $00 $8D $24
.db $14 $80 $06 $A9 $02 $00 $8D $24
.db $14 $E2 $20 $A9 $01 $8D $B4 $15
.db $C2 $20 $AD $24 $14 $8D $A2 $15
.db $A9 $02 $00 $8D $B8 $15 $A9 $00
.db $00 $8D $BA $15 $A9 $01 $00 $8D
.db $84 $15 $A9 $09 $00 $8D $20 $14
.db $AD $24 $14 $20 $D3 $F9 $A9 $00
.db $00 $8D $9D $15 $A9 $2C $14 $8D
.db $9C $15 $A9 $00 $00 $8D $9A $15
.db $A9 $4C $14 $8D $99 $15 $28 $60
.db $08 $C2 $30 $A9 $00 $00 $8D $2E
.db $14 $A9 $00 $00 $8D $30 $14 $A9
.db $00 $00 $8D $32 $14 $A9 $00 $00
.db $8D $34 $14 $A9 $00 $00 $8D $3E
.db $14 $A9 $00 $00 $8D $40 $14 $A9
.db $00 $00 $8D $42 $14 $A9 $00 $00
.db $8D $44 $14 $A9 $00 $00 $8D $46
.db $14 $AD $24 $14 $29 $FF $00 $0A
.db $AA $FC $0E $96 $28 $60 $16 $96
.db $70 $98 $B8 $9A $D1 $9B $08 $C2
.db $30 $20 $82 $B5 $AD $4C $14 $C9
.db $01 $00 $F0 $02 $80 $03 $82 $45
.db $02 $AD $52 $14 $C9 $01 $00 $F0
.db $02 $80 $03 $82 $38 $02 $AD $29
.db $01 $29 $00 $08 $F0 $24 $A9 $2C
.db $00 $22 $67 $B4 $80 $AD $3C $14
.db $C9 $00 $00 $F0 $0C $AD $3C $14
.db $38 $E9 $10 $00 $8D $3C $14 $80
.db $09 $A9 $40 $00 $8D $3C $14 $82
.db $0C $02 $AD $29 $01 $29 $00 $04
.db $F0 $24 $A9 $2C $00 $22 $67 $B4
.db $80 $AD $3C $14 $C9 $40 $00 $F0
.db $0C $AD $3C $14 $18 $69 $10 $00
.db $8D $3C $14 $80 $09 $A9 $00 $00
.db $8D $3C $14 $82 $E0 $01 $AD $27
.db $01 $29 $80 $00 $D0 $03 $82 $D5
.db $01 $A9 $2D $00 $22 $67 $B4 $80
.db $AD $3C $14 $C9 $00 $00 $D0 $12
.db $E2 $20 $A9 $00 $8D $D6 $07 $C2
.db $20 $A9 $02 $00 $8D $20 $14 $82
.db $B4 $01 $AD $3C $14 $C9 $10 $00
.db $D0 $5F $E2 $20 $A9 $01 $8D $D6
.db $07 $C2 $20 $20 $25 $AB $20 $56
.db $AB $90 $03 $20 $E6 $AA $A9 $00
.db $00 $8D $58 $14 $A9 $00 $00 $8D
.db $5A $14 $A9 $00 $00 $8D $5C $14
.db $E2 $20 $A9 $01 $8D $B4 $15 $C2
.db $20 $AD $24 $14 $8D $A2 $15 $A9
.db $04 $00 $8D $B6 $15 $A9 $00 $00
.db $8D $B8 $15 $A9 $00 $00 $8D $BA
.db $15 $A9 $03 $00 $8D $84 $15 $A9
.db $09 $00 $8D $20 $14 $A9 $01 $00
.db $8D $4C $14 $20 $2B $85 $82 $29
.db $01 $AD $3C $14 $C9 $20 $00 $D0
.db $60 $E2 $20 $A9 $02 $8D $D6 $07
.db $C2 $30 $A2 $01 $00 $20 $73 $A9
.db $A9 $00 $00 $8D $58 $14 $A9 $00
.db $00 $8D $5A $14 $A9 $00 $00 $8D
.db $5C $14 $E2 $20 $A9 $01 $8D $B4
.db $15 $C2 $20 $AD $24 $14 $8D $A2
.db $15 $A9 $04 $00 $8D $B6 $15 $A9
.db $00 $00 $8D $B8 $15 $A9 $00 $00
.db $8D $BA $15 $A9 $04 $00 $8D $84
.db $15 $A9 $09 $00 $8D $20 $14 $A9
.db $00 $00 $8D $28 $14 $A9 $01 $00
.db $8D $4C $14 $20 $2B $85 $82 $C1
.db $00 $AD $3C $14 $C9 $30 $00 $D0
.db $5C $E2 $20 $A9 $03 $8D $D6 $07
.db $C2 $30 $A2 $01 $00 $20 $73 $A9
.db $20 $E6 $AA $A9 $00 $00 $8D $58
.db $14 $A9 $00 $00 $8D $5A $14 $A9
.db $00 $00 $8D $5C $14 $E2 $20 $A9
.db $01 $8D $B4 $15 $C2 $20 $AD $24
.db $14 $8D $A2 $15 $A9 $04 $00 $8D
.db $B6 $15 $A9 $00 $00 $8D $B8 $15
.db $A9 $00 $00 $8D $BA $15 $A9 $05
.db $00 $8D $84 $15 $A9 $09 $00 $8D
.db $20 $14 $A9 $01 $00 $8D $4C $14
.db $20 $2B $85 $80 $5D $E2 $20 $A9
.db $04 $8D $D6 $07 $C2 $30 $A2 $00
.db $00 $20 $73 $A9 $A9 $00 $00 $8D
.db $58 $14 $A9 $00 $00 $8D $5A $14
.db $A9 $00 $00 $8D $5C $14 $E2 $20
.db $A9 $01 $8D $B4 $15 $C2 $20 $AD
.db $24 $14 $8D $A2 $15 $A9 $04 $00
.db $8D $B6 $15 $A9 $00 $00 $8D $B8
.db $15 $A9 $00 $00 $8D $BA $15 $A9
.db $06 $00 $8D $84 $15 $A9 $09 $00
.db $8D $20 $14 $A9 $00 $00 $8D $62
.db $14 $A9 $01 $00 $8D $4C $14 $20
.db $2B $85 $A9 $01 $00 $8D $2E $14
.db $A9 $04 $00 $20 $D3 $F9 $A9 $00
.db $00 $8D $9D $15 $A9 $2E $14 $8D
.db $9C $15 $A9 $00 $00 $8D $9A $15
.db $A9 $4C $14 $8D $99 $15 $28 $60
.db $08 $C2 $30 $20 $7D $B6 $AD $4C
.db $14 $C9 $01 $00 $F0 $02 $80 $03
.db $82 $33 $02 $AD $52 $14 $C9 $01
.db $00 $F0 $02 $80 $03 $82 $26 $02
.db $AD $29 $01 $29 $00 $08 $F0 $25
.db $A9 $2C $00 $22 $67 $B4 $80 $AD
.db $3C $14 $C9 $00 $00 $F0 $0D $AD
.db $3C $14 $38 $E9 $10 $00 $8D $3C
.db $14 $82 $02 $02 $A9 $30 $00 $8D
.db $3C $14 $82 $F9 $01 $AD $29 $01
.db $29 $00 $04 $F0 $25 $A9 $2C $00
.db $22 $67 $B4 $80 $AD $3C $14 $C9
.db $30 $00 $F0 $0D $AD $3C $14 $18
.db $69 $10 $00 $8D $3C $14 $82 $D5
.db $01 $A9 $00 $00 $8D $3C $14 $82
.db $CC $01 $AD $27 $01 $29 $80 $00
.db $D0 $03 $82 $C1 $01 $A9 $2D $00
.db $22 $67 $B4 $80 $AD $3C $14 $C9
.db $00 $00 $D0 $5F $E2 $20 $A9 $01
.db $8D $D6 $07 $C2 $20 $20 $25 $AB
.db $20 $56 $AB $90 $03 $20 $E6 $AA
.db $A9 $00 $00 $8D $58 $14 $A9 $00
.db $00 $8D $5A $14 $A9 $00 $00 $8D
.db $5C $14 $E2 $20 $A9 $01 $8D $B4
.db $15 $C2 $20 $AD $24 $14 $8D $A2
.db $15 $A9 $04 $00 $8D $B6 $15 $A9
.db $00 $00 $8D $B8 $15 $A9 $00 $00
.db $8D $BA $15 $A9 $03 $00 $8D $84
.db $15 $A9 $09 $00 $8D $20 $14 $A9
.db $01 $00 $8D $4C $14 $20 $2B $85
.db $82 $2F $01 $AD $3C $14 $C9 $10
.db $00 $D0 $60 $E2 $20 $A9 $02 $8D
.db $D6 $07 $C2 $30 $A2 $01 $00 $20
.db $73 $A9 $A9 $00 $00 $8D $58 $14
.db $A9 $00 $00 $8D $5A $14 $A9 $00
.db $00 $8D $5C $14 $E2 $20 $A9 $01
.db $8D $B4 $15 $C2 $20 $AD $24 $14
.db $8D $A2 $15 $A9 $04 $00 $8D $B6
.db $15 $A9 $00 $00 $8D $B8 $15 $A9
.db $00 $00 $8D $BA $15 $A9 $04 $00
.db $8D $84 $15 $A9 $09 $00 $8D $20
.db $14 $A9 $00 $00 $8D $28 $14 $A9
.db $01 $00 $8D $4C $14 $20 $2B $85
.db $82 $C7 $00 $AD $3C $14 $C9 $20
.db $00 $D0 $62 $E2 $20 $A9 $03 $8D
.db $D6 $07 $C2 $30 $A2 $01 $00 $20
.db $73 $A9 $20 $E6 $AA $A9 $00 $00
.db $8D $58 $14 $A9 $00 $00 $8D $5A
.db $14 $A9 $00 $00 $8D $5C $14 $E2
.db $20 $A9 $01 $8D $B4 $15 $C2 $20
.db $AD $24 $14 $8D $A2 $15 $A9 $04
.db $00 $8D $B6 $15 $A9 $00 $00 $8D
.db $B8 $15 $A9 $00 $00 $8D $BA $15
.db $A9 $05 $00 $8D $84 $15 $A9 $09
.db $00 $8D $20 $14 $A9 $00 $00 $8D
.db $26 $14 $A9 $01 $00 $8D $4C $14
.db $20 $2B $85 $80 $5D $E2 $20 $A9
.db $04 $8D $D6 $07 $C2 $30 $A2 $00
.db $00 $20 $73 $A9 $A9 $00 $00 $8D
.db $58 $14 $A9 $00 $00 $8D $5A $14
.db $A9 $00 $00 $8D $5C $14 $E2 $20
.db $A9 $01 $8D $B4 $15 $C2 $20 $AD
.db $24 $14 $8D $A2 $15 $A9 $04 $00
.db $8D $B6 $15 $A9 $00 $00 $8D $B8
.db $15 $A9 $00 $00 $8D $BA $15 $A9
.db $06 $00 $8D $84 $15 $A9 $09 $00
.db $8D $20 $14 $A9 $00 $00 $8D $62
.db $14 $A9 $01 $00 $8D $4C $14 $20
.db $2B $85 $A9 $01 $00 $8D $2E $14
.db $A9 $04 $00 $20 $D3 $F9 $A9 $00
.db $00 $8D $9D $15 $A9 $2E $14 $8D
.db $9C $15 $A9 $00 $00 $8D $9A $15
.db $A9 $4C $14 $8D $99 $15 $28 $60
.db $08 $C2 $30 $20 $5F $B7 $AD $4C
.db $14 $C9 $01 $00 $F0 $02 $80 $03
.db $82 $04 $01 $AD $52 $14 $C9 $01
.db $00 $F0 $02 $80 $03 $82 $F7 $00
.db $AD $29 $01 $29 $00 $08 $F0 $1D
.db $A9 $2C $00 $22 $67 $B4 $80 $AD
.db $3C $14 $38 $E9 $10 $00 $8D $3C
.db $14 $AD $3C $14 $29 $10 $00 $8D
.db $3C $14 $82 $D2 $00 $AD $29 $01
.db $29 $00 $04 $F0 $1D $A9 $2C $00
.db $22 $67 $B4 $80 $AD $3C $14 $18
.db $69 $10 $00 $8D $3C $14 $AD $3C
.db $14 $29 $10 $00 $8D $3C $14 $82
.db $AD $00 $AD $27 $01 $29 $80 $00
.db $D0 $03 $82 $A2 $00 $A9 $2D $00
.db $22 $67 $B4 $80 $AD $3C $14 $C9
.db $00 $00 $D0 $12 $E2 $20 $A9 $00
.db $8D $D6 $07 $C2 $20 $A9 $02 $00
.db $8D $20 $14 $82 $81 $00 $E2 $20
.db $A9 $02 $8D $D6 $07 $C2 $30 $A2
.db $01 $00 $20 $73 $A9 $A9 $00 $00
.db $8D $58 $14 $A9 $00 $00 $8D $5A
.db $14 $A9 $00 $00 $8D $5C $14 $E2
.db $20 $A9 $01 $8D $B4 $15 $C2 $20
.db $AD $24 $14 $8D $A2 $15 $A9 $04
.db $00 $8D $B6 $15 $A9 $00 $00 $8D
.db $B8 $15 $A9 $00 $00 $8D $BA $15
.db $A9 $04 $00 $8D $84 $15 $A9 $09
.db $00 $8D $20 $14 $A9 $00 $00 $8D
.db $28 $14 $A9 $01 $00 $8D $4C $14
.db $20 $2B $85 $A9 $01 $00 $8D $2E
.db $14 $A9 $04 $00 $20 $D3 $F9 $A9
.db $00 $00 $8D $9D $15 $A9 $2E $14
.db $8D $9C $15 $A9 $00 $00 $8D $9A
.db $15 $A9 $4C $14 $8D $99 $15 $28
.db $60 $08 $C2 $30 $20 $0F $B8 $AD
.db $4C $14 $C9 $01 $00 $F0 $02 $80
.db $03 $82 $99 $00 $AD $52 $14 $C9
.db $01 $00 $F0 $02 $80 $03 $82 $8C
.db $00 $AD $29 $01 $29 $00 $0C $F0
.db $03 $82 $81 $00 $AD $27 $01 $29
.db $80 $00 $D0 $03 $82 $76 $00 $A9
.db $2D $00 $22 $67 $B4 $80 $E2 $20
.db $A9 $02 $8D $D6 $07 $C2 $30 $A2
.db $01 $00 $20 $73 $A9 $E2 $20 $A9
.db $01 $8D $B4 $15 $C2 $20 $AD $24
.db $14 $8D $A2 $15 $A9 $04 $00 $8D
.db $B6 $15 $A9 $00 $00 $8D $B8 $15
.db $A9 $00 $00 $8D $BA $15 $A9 $04
.db $00 $8D $84 $15 $A9 $09 $00 $8D
.db $20 $14 $A9 $00 $00 $8D $28 $14
.db $A9 $01 $00 $8D $4C $14 $20 $2B
.db $85 $A9 $01 $00 $8D $2E $14 $A9
.db $04 $00 $20 $D3 $F9 $A9 $00 $00
.db $8D $9D $15 $A9 $2E $14 $8D $9C
.db $15 $A9 $00 $00 $8D $9A $15 $A9
.db $4C $14 $8D $99 $15 $28 $60 $08
.db $C2 $30 $A9 $0A $00 $8D $22 $14
.db $A9 $08 $00 $8D $20 $14 $28 $60
.db $08 $C2 $30 $A9 $00 $00 $8D $4A
.db $14 $A9 $00 $00 $22 $C2 $CB $93
.db $B0 $18 $E2 $20 $AF $A4 $05 $70
.db $8D $36 $14 $A9 $00 $8D $37 $14
.db $C2 $20 $A9 $01 $00 $8D $4A $14
.db $80 $06 $A9 $00 $00 $8D $36 $14
.db $A9 $01 $00 $22 $C2 $CB $93 $B0
.db $18 $E2 $20 $AF $24 $0C $70 $8D
.db $38 $14 $A9 $00 $8D $39 $14 $C2
.db $20 $A9 $01 $00 $8D $4A $14 $80
.db $06 $A9 $00 $00 $8D $38 $14 $A9
.db $02 $00 $22 $C2 $CB $93 $B0 $18
.db $E2 $20 $AF $A4 $12 $70 $8D $3A
.db $14 $A9 $00 $8D $3B $14 $C2 $20
.db $A9 $01 $00 $8D $4A $14 $80 $06
.db $A9 $00 $00 $8D $3A $14 $AD $4A
.db $14 $C9 $01 $00 $F0 $03 $28 $38
.db $60 $28 $18 $60 $08 $E2 $20 $AD
.db $D6 $07 $C9 $03 $D0 $63 $AD $D7
.db $07 $C9 $00 $F0 $22 $AD $D7 $07
.db $C9 $01 $F0 $38 $AD $D8 $07 $C9
.db $00 $F0 $0A $C2 $20 $AD $3A $14
.db $8D $38 $14 $80 $70 $C2 $20 $AD
.db $3A $14 $8D $36 $14 $80 $66 $E2
.db $20 $AD $D8 $07 $C9 $01 $F0 $0A
.db $C2 $20 $AD $36 $14 $8D $3A $14
.db $80 $53 $C2 $20 $AD $36 $14 $8D
.db $38 $14 $80 $49 $E2 $20 $AD $D8
.db $07 $C9 $00 $F0 $0A $C2 $20 $AD
.db $38 $14 $8D $3A $14 $80 $36 $C2
.db $20 $AD $38 $14 $8D $36 $14 $80
.db $2C $E2 $20 $AD $D7 $07 $C9 $00
.db $F0 $11 $AD $D7 $07 $C9 $01 $F0
.db $14 $C2 $20 $A9 $00 $00 $8D $3A
.db $14 $80 $12 $C2 $20 $A9 $00 $00
.db $8D $36 $14 $80 $08 $C2 $20 $A9
.db $00 $00 $8D $38 $14 $28 $60 $08
.db $C2 $30 $A9 $00 $00 $8D $58 $14
.db $A9 $00 $00 $8D $5A $14 $A9 $00
.db $00 $8D $5C $14 $20 $27 $BA $AD
.db $4C $14 $C9 $01 $00 $F0 $02 $80
.db $03 $82 $2F $01 $AD $52 $14 $C9
.db $01 $00 $F0 $02 $80 $03 $82 $22
.db $01 $AD $29 $01 $29 $00 $08 $F0
.db $21 $A9 $2C $00 $22 $67 $B4 $80
.db $AD $3E $14 $C9 $00 $00 $F0 $0C
.db $AD $3E $14 $38 $E9 $10 $00 $8D
.db $3E $14 $80 $06 $A9 $20 $00 $8D
.db $3E $14 $20 $56 $AB $90 $02 $80
.db $DF $AD $29 $01 $29 $00 $04 $F0
.db $21 $A9 $2C $00 $22 $67 $B4 $80
.db $AD $3E $14 $C9 $20 $00 $F0 $0C
.db $AD $3E $14 $18 $69 $10 $00 $8D
.db $3E $14 $80 $06 $A9 $00 $00 $8D
.db $3E $14 $20 $56 $AB $90 $02 $80
.db $DF $AD $3E $14 $8D $42 $14 $AD
.db $27 $01 $29 $80 $00 $F0 $45 $A9
.db $2D $00 $22 $67 $B4 $80 $AD $3E
.db $14 $C9 $00 $00 $D0 $0B $E2 $20
.db $A9 $00 $8D $D7 $07 $C2 $20 $80
.db $1C $AD $3E $14 $C9 $10 $00 $D0
.db $0B $E2 $20 $A9 $01 $8D $D7 $07
.db $C2 $20 $80 $09 $E2 $20 $A9 $02
.db $8D $D7 $07 $C2 $20 $A9 $00 $00
.db $8D $22 $14 $A9 $08 $00 $8D $20
.db $14 $82 $6F $00 $AD $27 $01 $29
.db $00 $80 $F0 $67 $A9 $BE $00 $22
.db $67 $B4 $80 $A9 $01 $00 $8D $20
.db $14 $E2 $20 $A9 $01 $8D $B4 $15
.db $C2 $20 $A9 $04 $00 $8D $A2 $15
.db $AD $24 $14 $8D $B6 $15 $A9 $00
.db $00 $8D $B8 $15 $A9 $00 $00 $8D
.db $BA $15 $A9 $01 $00 $8D $84 $15
.db $A9 $09 $00 $8D $20 $14 $A9 $01
.db $00 $8D $4C $14 $A9 $00 $00 $8D
.db $2C $14 $20 $2B $85 $AD $24 $14
.db $20 $D3 $F9 $A9 $00 $00 $8D $9D
.db $15 $A9 $2C $14 $8D $9C $15 $A9
.db $00 $00 $8D $9A $15 $A9 $4C $14
.db $8D $99 $15 $28 $60 $08 $C2 $30
.db $AD $28 $14 $29 $FF $00 $0A $AA
.db $FC $1D $9F $28 $60 $21 $9F $CE
.db $A0 $08 $C2 $30 $A9 $00 $00 $8D
.db $58 $14 $A9 $00 $00 $8D $5A $14
.db $A9 $00 $00 $8D $5C $14 $20 $27
.db $BA $AD $4C $14 $C9 $01 $00 $F0
.db $02 $80 $03 $82 $86 $01 $AD $52
.db $14 $C9 $01 $00 $F0 $02 $80 $03
.db $82 $79 $01 $AD $29 $01 $29 $00
.db $08 $F0 $25 $A9 $2C $00 $22 $67
.db $B4 $80 $AD $3E $14 $C9 $00 $00
.db $F0 $0D $AD $3E $14 $38 $E9 $10
.db $00 $8D $3E $14 $82 $55 $01 $A9
.db $20 $00 $8D $3E $14 $82 $4C $01
.db $AD $29 $01 $29 $00 $04 $F0 $25
.db $A9 $2C $00 $22 $67 $B4 $80 $AD
.db $3E $14 $C9 $20 $00 $F0 $0D $AD
.db $3E $14 $18 $69 $10 $00 $8D $3E
.db $14 $82 $28 $01 $A9 $00 $00 $8D
.db $3E $14 $82 $1F $01 $AD $3E $14
.db $8D $42 $14 $AD $27 $01 $29 $80
.db $00 $D0 $03 $82 $A5 $00 $A9 $2D
.db $00 $22 $67 $B4 $80 $AD $3E $14
.db $C9 $00 $00 $D0 $0B $E2 $20 $A9
.db $00 $8D $D7 $07 $C2 $20 $80 $1C
.db $AD $3E $14 $C9 $10 $00 $D0 $0B
.db $E2 $20 $A9 $01 $8D $D7 $07 $C2
.db $20 $80 $09 $E2 $20 $A9 $02 $8D
.db $D7 $07 $C2 $20 $A9 $01 $00 $8D
.db $4C $14 $A9 $00 $00 $8D $54 $14
.db $A9 $01 $00 $8D $5E $14 $E2 $20
.db $A9 $01 $8D $B4 $15 $C2 $20 $A9
.db $04 $00 $8D $A2 $15 $A9 $05 $00
.db $8D $B6 $15 $A9 $00 $00 $8D $B8
.db $15 $A9 $00 $00 $8D $BA $15 $A9
.db $04 $00 $8D $84 $15 $A9 $09 $00
.db $8D $20 $14 $A9 $00 $00 $8D $2C
.db $14 $A9 $01 $00 $8D $28 $14 $20
.db $2B $85 $A9 $07 $00 $20 $D3 $F9
.db $A9 $00 $00 $8D $9D $15 $A9 $34
.db $14 $8D $9C $15 $A9 $00 $00 $8D
.db $9A $15 $A9 $4C $14 $8D $99 $15
.db $82 $69 $00 $AD $27 $01 $29 $00
.db $80 $F0 $61 $A9 $BE $00 $22 $67
.db $B4 $80 $E2 $20 $A9 $01 $8D $B4
.db $15 $C2 $20 $A9 $04 $00 $8D $A2
.db $15 $AD $24 $14 $8D $B6 $15 $A9
.db $00 $00 $8D $B8 $15 $A9 $00 $00
.db $8D $BA $15 $A9 $01 $00 $8D $84
.db $15 $A9 $09 $00 $8D $20 $14 $A9
.db $00 $00 $8D $2C $14 $A9 $01 $00
.db $8D $4C $14 $20 $2B $85 $AD $24
.db $14 $20 $D3 $F9 $A9 $00 $00 $8D
.db $9D $15 $A9 $2C $14 $8D $9C $15
.db $A9 $00 $00 $8D $9A $15 $A9 $4C
.db $14 $8D $99 $15 $28 $60 $08 $C2
.db $30 $AD $5E $14 $C9 $01 $00 $D0
.db $0C $A9 $00 $00 $20 $67 $85 $A9
.db $00 $00 $8D $5E $14 $A9 $00 $00
.db $8D $54 $14 $20 $47 $BE $AD $4C
.db $14 $C9 $01 $00 $F0 $02 $80 $03
.db $82 $03 $02 $AD $52 $14 $C9 $01
.db $00 $F0 $02 $80 $03 $82 $F6 $01
.db $AD $29 $01 $29 $00 $08 $F0 $1D
.db $A9 $2C $00 $22 $67 $B4 $80 $AD
.db $44 $14 $38 $E9 $10 $00 $8D $44
.db $14 $AD $44 $14 $29 $10 $00 $8D
.db $44 $14 $82 $D1 $01 $AD $29 $01
.db $29 $00 $04 $F0 $1D $A9 $2C $00
.db $22 $67 $B4 $80 $AD $44 $14 $18
.db $69 $10 $00 $8D $44 $14 $AD $44
.db $14 $29 $10 $00 $8D $44 $14 $82
.db $AC $01 $AD $27 $01 $29 $80 $00
.db $D0 $03 $82 $17 $01 $AD $44 $14
.db $C9 $00 $00 $D0 $0B $E2 $20 $A9
.db $00 $8D $D8 $07 $C2 $20 $80 $09
.db $E2 $20 $A9 $01 $8D $D8 $07 $C2
.db $20 $AD $42 $14 $C9 $00 $00 $D0
.db $0B $AD $36 $14 $C9 $00 $00 $D0
.db $21 $82 $BA $00 $AD $42 $14 $C9
.db $10 $00 $D0 $0B $AD $38 $14 $C9
.db $00 $00 $D0 $0E $82 $A7 $00 $AD
.db $3A $14 $C9 $00 $00 $D0 $03 $82
.db $9C $00 $A9 $2D $00 $22 $67 $B4
.db $80 $A9 $01 $00 $8D $4E $14 $A9
.db $00 $00 $8D $40 $14 $A9 $00 $00
.db $8D $2E $14 $A9 $01 $00 $8D $52
.db $14 $A9 $04 $00 $8D $22 $14 $A9
.db $01 $00 $8D $28 $14 $E2 $20 $A9
.db $01 $8D $B4 $15 $C2 $20 $18 $20
.db $B4 $AB $98 $8D $A2 $15 $AD $A2
.db $15 $18 $69 $06 $00 $8D $A2 $15
.db $A9 $02 $00 $8D $B8 $15 $A9 $00
.db $00 $8D $BA $15 $A9 $07 $00 $8D
.db $84 $15 $A9 $09 $00 $8D $20 $14
.db $A9 $00 $00 $8D $2C $14 $A9 $00
.db $00 $8D $2A $14 $A9 $00 $00 $8D
.db $48 $14 $A9 $01 $00 $8D $62 $14
.db $A9 $00 $00 $8D $5E $14 $A9 $05
.db $00 $20 $D3 $F9 $A9 $00 $00 $8D
.db $9D $15 $A9 $30 $14 $8D $9C $15
.db $A9 $00 $00 $8D $9A $15 $A9 $4E
.db $14 $8D $99 $15 $80 $2E $A9 $2E
.db $00 $22 $67 $B4 $80 $A9 $00 $00
.db $8D $40 $14 $A9 $00 $00 $8D $2E
.db $14 $A9 $00 $00 $8D $34 $14 $A9
.db $04 $00 $8D $22 $14 $A9 $01 $00
.db $8D $28 $14 $A9 $08 $00 $8D $20
.db $14 $82 $8A $00 $AD $27 $01 $29
.db $00 $80 $D0 $03 $82 $7F $00 $A9
.db $BE $00 $22 $67 $B4 $80 $A9 $01
.db $00 $8D $4C $14 $A9 $00 $00 $8D
.db $2E $14 $A9 $00 $00 $8D $34 $14
.db $E2 $20 $A9 $01 $8D $B4 $15 $C2
.db $20 $A9 $05 $00 $8D $A2 $15 $A9
.db $04 $00 $8D $B6 $15 $A9 $00 $00
.db $8D $B8 $15 $A9 $00 $00 $8D $BA
.db $15 $A9 $04 $00 $8D $84 $15 $A9
.db $09 $00 $8D $20 $14 $A9 $00 $00
.db $8D $2C $14 $A9 $01 $00 $8D $4C
.db $14 $A9 $00 $00 $8D $28 $14 $A9
.db $01 $00 $8D $22 $14 $20 $2B $85
.db $A9 $04 $00 $20 $D3 $F9 $A9 $00
.db $00 $8D $9D $15 $A9 $2E $14 $8D
.db $9C $15 $A9 $00 $00 $8D $9A $15
.db $A9 $4C $14 $8D $99 $15 $28 $60
.db $08 $C2 $30 $AD $26 $14 $29 $FF
.db $00 $0A $AA $FC $10 $A3 $28 $60
.db $14 $A3 $F2 $A4 $08 $C2 $30 $A9
.db $00 $00 $8D $46 $14 $AD $62 $14
.db $C9 $00 $00 $D0 $14 $A9 $00 $00
.db $8D $58 $14 $A9 $00 $00 $8D $5A
.db $14 $A9 $00 $00 $8D $5C $14 $80
.db $07 $AD $62 $14 $3A $8D $62 $14
.db $20 $27 $BA $AD $2E $14 $C9 $01
.db $00 $F0 $02 $80 $03 $82 $09 $00
.db $20 $3B $BF $A9 $01 $00 $8D $2E
.db $14 $AD $4C $14 $C9 $01 $00 $F0
.db $02 $80 $03 $82 $8A $01 $AD $52
.db $14 $C9 $01 $00 $F0 $02 $80 $03
.db $82 $7D $01 $AD $29 $01 $29 $00
.db $08 $F0 $21 $A9 $2C $00 $22 $67
.db $B4 $80 $AD $3E $14 $C9 $00 $00
.db $F0 $0C $AD $3E $14 $38 $E9 $10
.db $00 $8D $3E $14 $80 $06 $A9 $20
.db $00 $8D $3E $14 $20 $56 $AB $B0
.db $E1 $AD $29 $01 $29 $00 $04 $F0
.db $21 $A9 $2C $00 $22 $67 $B4 $80
.db $AD $3E $14 $C9 $20 $00 $F0 $0C
.db $AD $3E $14 $18 $69 $10 $00 $8D
.db $3E $14 $80 $06 $A9 $00 $00 $8D
.db $3E $14 $20 $56 $AB $B0 $E1 $AD
.db $3E $14 $C9 $00 $00 $D0 $0B $E2
.db $20 $A9 $00 $8D $D7 $07 $C2 $20
.db $80 $1C $AD $3E $14 $C9 $10 $00
.db $D0 $0B $E2 $20 $A9 $01 $8D $D7
.db $07 $C2 $20 $80 $09 $E2 $20 $A9
.db $02 $8D $D7 $07 $C2 $20 $AD $27
.db $01 $29 $80 $00 $D0 $03 $82 $72
.db $00 $A9 $2D $00 $22 $67 $B4 $80
.db $AD $3E $14 $48 $AD $36 $14 $48
.db $AD $38 $14 $48 $AD $3A $14 $48
.db $AD $3E $14 $C9 $00 $00 $F0 $10
.db $AD $3E $14 $C9 $10 $00 $F0 $10
.db $A9 $E7 $03 $8D $3A $14 $80 $10
.db $A9 $E7 $03 $8D $36 $14 $80 $08
.db $A9 $E7 $03 $8D $38 $14 $80 $00
.db $C2 $30 $A2 $01 $00 $20 $73 $A9
.db $68 $8D $3A $14 $68 $8D $38 $14
.db $68 $8D $36 $14 $68 $8D $3E $14
.db $A9 $01 $00 $8D $46 $14 $A9 $01
.db $00 $8D $64 $14 $A9 $05 $00 $8D
.db $22 $14 $A9 $01 $00 $8D $26 $14
.db $82 $75 $00 $AD $27 $01 $29 $00
.db $80 $F0 $6D $A9 $BE $00 $22 $67
.db $B4 $80 $E2 $20 $A9 $01 $8D $B4
.db $15 $C2 $20 $A9 $04 $00 $8D $A2
.db $15 $AD $24 $14 $8D $B6 $15 $A9
.db $00 $00 $8D $B8 $15 $A9 $00 $00
.db $8D $BA $15 $A9 $05 $00 $8D $22
.db $14 $A9 $01 $00 $8D $84 $15 $A9
.db $09 $00 $8D $20 $14 $A9 $00 $00
.db $8D $2C $14 $A9 $00 $00 $8D $26
.db $14 $A9 $01 $00 $8D $4C $14 $20
.db $2B $85 $AD $24 $14 $20 $D3 $F9
.db $A9 $00 $00 $8D $9D $15 $A9 $2C
.db $14 $8D $9C $15 $A9 $00 $00 $8D
.db $9A $15 $A9 $4C $14 $8D $99 $15
.db $28 $60 $08 $C2 $30 $AD $5E $14
.db $C9 $01 $00 $D0 $06 $A9 $00 $00
.db $20 $67 $85 $A9 $00 $00 $8D $5E
.db $14 $20 $27 $BA $AD $29 $01 $29
.db $00 $08 $F0 $21 $A9 $2C $00 $22
.db $67 $B4 $80 $AD $42 $14 $C9 $00
.db $00 $F0 $0C $AD $42 $14 $38 $E9
.db $10 $00 $8D $42 $14 $80 $06 $A9
.db $20 $00 $8D $42 $14 $AD $3E $14
.db $CD $42 $14 $F0 $DE $AD $29 $01
.db $29 $00 $04 $F0 $21 $A9 $2C $00
.db $22 $67 $B4 $80 $AD $42 $14 $C9
.db $20 $00 $F0 $0C $AD $42 $14 $18
.db $69 $10 $00 $8D $42 $14 $80 $06
.db $A9 $00 $00 $8D $42 $14 $AD $3E
.db $14 $CD $42 $14 $F0 $DE $AD $42
.db $14 $C9 $00 $00 $D0 $0B $E2 $20
.db $A9 $00 $8D $D8 $07 $C2 $20 $80
.db $1C $AD $42 $14 $C9 $10 $00 $D0
.db $0B $E2 $20 $A9 $01 $8D $D8 $07
.db $C2 $20 $80 $09 $E2 $20 $A9 $02
.db $8D $D8 $07 $C2 $20 $AD $27 $01
.db $29 $80 $00 $D0 $03 $82 $75 $01
.db $AD $42 $14 $C9 $00 $00 $D0 $0B
.db $AD $36 $14 $C9 $00 $00 $D0 $21
.db $82 $C1 $00 $AD $42 $14 $C9 $10
.db $00 $D0 $0B $AD $38 $14 $C9 $00
.db $00 $D0 $0E $82 $AE $00 $AD $3A
.db $14 $C9 $00 $00 $D0 $03 $82 $A3
.db $00 $A9 $2D $00 $22 $67 $B4 $80
.db $A9 $00 $00 $8D $40 $14 $A9 $01
.db $00 $8D $52 $14 $A9 $01 $00 $8D
.db $58 $14 $A9 $01 $00 $8D $5A $14
.db $A9 $01 $00 $8D $5C $14 $A9 $01
.db $00 $8D $4E $14 $E2 $20 $A9 $01
.db $8D $B4 $15 $C2 $30 $38 $20 $B4
.db $AB $98 $8D $A2 $15 $AD $A2 $15
.db $18 $69 $06 $00 $8D $A2 $15 $A9
.db $02 $00 $8D $B8 $15 $A9 $00 $00
.db $8D $BA $15 $A9 $05 $00 $8D $22
.db $14 $A9 $07 $00 $8D $84 $15 $A9
.db $09 $00 $8D $20 $14 $A9 $00 $00
.db $8D $2C $14 $A9 $00 $00 $8D $2A
.db $14 $A9 $01 $00 $8D $48 $14 $A9
.db $01 $00 $8D $62 $14 $A9 $00 $00
.db $8D $5E $14 $A9 $05 $00 $20 $D3
.db $F9 $A9 $00 $00 $8D $9D $15 $A9
.db $30 $14 $8D $9C $15 $A9 $00 $00
.db $8D $9A $15 $A9 $4E $14 $8D $99
.db $15 $82 $A1 $00 $A9 $00 $00 $8D
.db $40 $14 $A9 $00 $00 $8D $30 $14
.db $A9 $00 $00 $8D $32 $14 $A9 $00
.db $00 $8D $2E $14 $A9 $01 $00 $8D
.db $4C $14 $A9 $01 $00 $8D $4E $14
.db $AD $D8 $07 $C9 $00 $00 $D0 $17
.db $C2 $20 $A9 $00 $00 $8D $58 $14
.db $A9 $01 $00 $8D $5A $14 $A9 $01
.db $00 $8D $5C $14 $82 $33 $00 $E2
.db $20 $AD $D8 $07 $C9 $01 $D0 $16
.db $C2 $20 $A9 $01 $00 $8D $58 $14
.db $A9 $00 $00 $8D $5A $14 $A9 $01
.db $00 $8D $5C $14 $80 $14 $C2 $20
.db $A9 $01 $00 $8D $58 $14 $A9 $01
.db $00 $8D $5A $14 $A9 $00 $00 $8D
.db $5C $14 $A9 $00 $00 $8D $52 $14
.db $A9 $00 $00 $8D $4C $14 $20 $27
.db $BA $A9 $2E $00 $22 $67 $B4 $80
.db $A9 $00 $00 $8D $26 $14 $A9 $05
.db $00 $8D $22 $14 $A9 $08 $00 $8D
.db $20 $14 $82 $2D $00 $AD $27 $01
.db $29 $00 $80 $F0 $25 $A9 $BE $00
.db $22 $67 $B4 $80 $A9 $00 $00 $8D
.db $58 $14 $A9 $00 $00 $8D $5A $14
.db $A9 $00 $00 $8D $5C $14 $A9 $00
.db $00 $8D $64 $14 $A9 $00 $00 $8D
.db $26 $14 $28 $60 $08 $C2 $30 $AD
.db $5E $14 $C9 $01 $00 $D0 $0C $A9
.db $00 $00 $20 $67 $85 $A9 $00 $00
.db $8D $5E $14 $AD $62 $14 $C9 $00
.db $00 $30 $02 $D0 $14 $A9 $00 $00
.db $8D $58 $14 $A9 $00 $00 $8D $5A
.db $14 $A9 $00 $00 $8D $5C $14 $80
.db $07 $AD $62 $14 $3A $8D $62 $14
.db $20 $27 $BA $AD $2E $14 $C9 $01
.db $00 $F0 $02 $80 $03 $82 $09 $00
.db $20 $3B $BF $A9 $01 $00 $8D $2E
.db $14 $AD $4C $14 $C9 $01 $00 $F0
.db $02 $80 $03 $82 $C3 $01 $AD $52
.db $14 $C9 $01 $00 $F0 $02 $80 $03
.db $82 $B6 $01 $AD $29 $01 $29 $00
.db $08 $F0 $23 $A9 $2C $00 $22 $67
.db $B4 $80 $AD $3E $14 $C9 $00 $00
.db $30 $0E $F0 $0C $AD $3E $14 $38
.db $E9 $10 $00 $8D $3E $14 $80 $06
.db $A9 $20 $00 $8D $3E $14 $20 $56
.db $AB $B0 $DF $AD $29 $01 $29 $00
.db $04 $F0 $21 $A9 $2C $00 $22 $67
.db $B4 $80 $AD $3E $14 $C9 $20 $00
.db $10 $0C $AD $3E $14 $18 $69 $10
.db $00 $8D $3E $14 $80 $06 $A9 $00
.db $00 $8D $3E $14 $20 $56 $AB $B0
.db $E1 $AD $3E $14 $8D $42 $14 $AD
.db $3E $14 $C9 $00 $00 $D0 $0B $E2
.db $20 $A9 $00 $8D $D7 $07 $C2 $20
.db $80 $1C $AD $3E $14 $C9 $10 $00
.db $D0 $0B $E2 $20 $A9 $01 $8D $D7
.db $07 $C2 $20 $80 $09 $E2 $20 $A9
.db $02 $8D $D7 $07 $C2 $20 $AD $27
.db $01 $29 $80 $00 $D0 $03 $82 $A9
.db $00 $A9 $2D $00 $22 $67 $B4 $80
.db $A9 $01 $00 $8D $58 $14 $A9 $01
.db $00 $8D $5A $14 $A9 $01 $00 $8D
.db $5C $14 $A9 $00 $00 $8D $40 $14
.db $A9 $01 $00 $8D $52 $14 $A9 $01
.db $00 $8D $4E $14 $E2 $20 $A9 $01
.db $8D $B4 $15 $C2 $20 $18 $20 $B4
.db $AB $98 $8D $A2 $15 $AD $A2 $15
.db $18 $69 $06 $00 $8D $A2 $15 $A9
.db $02 $00 $8D $B8 $15 $A9 $00 $00
.db $8D $BA $15 $A9 $07 $00 $8D $84
.db $15 $A9 $09 $00 $8D $20 $14 $A9
.db $00 $00 $8D $2C $14 $A9 $06 $00
.db $8D $22 $14 $A9 $00 $00 $8D $2A
.db $14 $A9 $01 $00 $8D $48 $14 $A9
.db $01 $00 $8D $54 $14 $A9 $01 $00
.db $8D $62 $14 $A9 $00 $00 $8D $5E
.db $14 $A9 $05 $00 $20 $D3 $F9 $A9
.db $00 $00 $8D $9D $15 $A9 $30 $14
.db $8D $9C $15 $A9 $00 $00 $8D $9A
.db $15 $A9 $4E $14 $8D $99 $15 $82
.db $6F $00 $AD $27 $01 $29 $00 $80
.db $F0 $67 $A9 $BE $00 $22 $67 $B4
.db $80 $A9 $01 $00 $8D $20 $14 $E2
.db $20 $A9 $01 $8D $B4 $15 $C2 $20
.db $A9 $04 $00 $8D $A2 $15 $AD $24
.db $14 $8D $B6 $15 $A9 $00 $00 $8D
.db $B8 $15 $A9 $00 $00 $8D $BA $15
.db $A9 $01 $00 $8D $84 $15 $A9 $09
.db $00 $8D $20 $14 $A9 $00 $00 $8D
.db $2C $14 $A9 $01 $00 $8D $4C $14
.db $20 $2B $85 $AD $24 $14 $20 $D3
.db $F9 $A9 $00 $00 $8D $9D $15 $A9
.db $2C $14 $8D $9C $15 $A9 $00 $00
.db $8D $9A $15 $A9 $4C $14 $8D $99
.db $15 $28 $60 $08 $C2 $30 $A5 $27
.db $48 $AD $36 $14 $48 $AD $38 $14
.db $48 $AD $3A $14 $48 $A9 $00 $00
.db $85 $27 $E0 $01 $00 $F0 $2C $AD
.db $36 $14 $C9 $00 $00 $D0 $06 $A9
.db $E7 $03 $8D $36 $14 $AD $38 $14
.db $C9 $00 $00 $D0 $06 $A9 $E7 $03
.db $8D $38 $14 $AD $3A $14 $C9 $00
.db $00 $D0 $06 $A9 $E7 $03 $8D $3A
.db $14 $80 $47 $AD $36 $14 $C9 $00
.db $00 $F0 $12 $AD $38 $14 $C9 $00
.db $00 $F0 $19 $AD $3A $14 $C9 $00
.db $00 $F0 $20 $80 $2D $A9 $00 $00
.db $8D $3E $14 $A9 $00 $00 $8D $42
.db $14 $82 $EF $00 $A9 $10 $00 $8D
.db $3E $14 $A9 $10 $00 $8D $42 $14
.db $82 $E0 $00 $A9 $20 $00 $8D $3E
.db $14 $A9 $20 $00 $8D $42 $14 $82
.db $D1 $00 $AD $36 $14 $CD $38 $14
.db $30 $02 $D0 $24 $AD $36 $14 $CD
.db $3A $14 $30 $02 $D0 $53 $A9 $00
.db $00 $8D $3E $14 $A9 $00 $00 $8D
.db $42 $14 $A5 $27 $C9 $01 $00 $F0
.db $02 $80 $03 $82 $A5 $00 $80 $45
.db $AD $38 $14 $CD $3A $14 $30 $02
.db $D0 $1A $A9 $10 $00 $8D $3E $14
.db $A9 $10 $00 $8D $42 $14 $A5 $27
.db $C9 $01 $00 $F0 $02 $80 $03 $82
.db $81 $00 $80 $21 $A9 $20 $00 $8D
.db $3E $14 $A9 $20 $00 $8D $42 $14
.db $A5 $27 $C9 $01 $00 $F0 $6C $80
.db $0C $AD $3A $14 $CD $38 $14 $30
.db $02 $D0 $BD $80 $DF $AD $3E $14
.db $C9 $00 $00 $F0 $22 $AD $3E $14
.db $C9 $10 $00 $F0 $34 $E2 $20 $AF
.db $FE $1F $70 $C9 $02 $D0 $44 $C2
.db $20 $A9 $E6 $03 $8D $3A $14 $A9
.db $01 $00 $85 $27 $82 $63 $FF $E2
.db $20 $AF $FE $1F $70 $C9 $00 $D0
.db $2A $C2 $20 $A9 $E6 $03 $8D $36
.db $14 $A9 $01 $00 $85 $27 $82 $49
.db $FF $E2 $20 $AF $FE $1F $70 $C9
.db $01 $D0 $10 $C2 $20 $A9 $E6 $03
.db $8D $38 $14 $A9 $01 $00 $85 $27
.db $82 $2F $FF $C2 $20 $68 $8D $3A
.db $14 $68 $8D $38 $14 $68 $8D $36
.db $14 $68 $85 $27 $28 $60 $08 $C2
.db $30 $AD $36 $14 $CD $38 $14 $30
.db $10 $AD $36 $14 $CD $3A $14 $30
.db $20 $A9 $00 $00 $8D $3E $14 $80
.db $22 $AD $38 $14 $CD $3A $14 $30
.db $08 $A9 $10 $00 $8D $3E $14 $80
.db $12 $A9 $20 $00 $8D $3E $14 $80
.db $0A $AD $3A $14 $CD $38 $14 $30
.db $E0 $80 $EE $28 $60 $08 $E2 $20
.db $AF $FE $1F $70 $C9 $00 $F0 $12
.db $AF $FE $1F $70 $C9 $01 $F0 $14
.db $C2 $20 $A9 $20 $00 $8D $3E $14
.db $80 $12 $C2 $20 $A9 $00 $00 $8D
.db $3E $14 $80 $08 $C2 $20 $A9 $10
.db $00 $8D $3E $14 $28 $60 $08 $C2
.db $20 $AD $3E $14 $C9 $00 $00 $D0
.db $0A $AD $36 $14 $C9 $00 $00 $F0
.db $1E $80 $1F $AD $3E $14 $C9 $10
.db $00 $D0 $0A $AD $38 $14 $C9 $00
.db $00 $F0 $0C $80 $0D $AD $3A $14
.db $C9 $00 $00 $F0 $02 $80 $03 $28
.db $38 $60 $28 $18 $60 $08 $C2 $20
.db $AD $36 $14 $C9 $00 $00 $D0 $19
.db $AD $38 $14 $C9 $00 $00 $D0 $11
.db $AD $3A $14 $C9 $00 $00 $D0 $09
.db $A9 $00 $00 $8D $3C $14 $28 $38
.db $60 $28 $18 $60 $08 $C2 $30 $90
.db $0B $AD $42 $14 $4A $4A $4A $4A
.db $85 $17 $80 $09 $AD $3E $14 $4A
.db $4A $4A $4A $85 $17 $AD $68 $14
.db $C9 $01 $00 $F0 $19 $E2 $20 $AF
.db $E2 $1C $70 $85 $27 $A9 $00 $85
.db $28 $C2 $30 $A5 $17 $C5 $27 $D0
.db $05 $A0 $01 $00 $80 $03 $A0 $00
.db $00 $28 $60 $08 $C2 $30 $AD $2A
.db $14 $29 $FF $00 $0A $AA $FC $03
.db $AC $28 $60 $07 $AC $7D $AF $08
.db $C2 $30 $AD $5E $14 $C9 $01 $00
.db $D0 $02 $80 $03 $82 $4D $01 $AD
.db $62 $14 $C9 $00 $00 $D0 $02 $80
.db $03 $82 $8C $00 $AD $48 $14 $C9
.db $00 $00 $F0 $2B $AD $52 $14 $48
.db $A9 $01 $00 $8D $52 $14 $A9 $00
.db $00 $8D $4C $14 $A9 $01 $00 $8D
.db $58 $14 $A9 $01 $00 $8D $5A $14
.db $A9 $01 $00 $8D $5C $14 $20 $27
.db $BA $68 $8D $52 $14 $80 $1D $AD
.db $52 $14 $48 $A9 $01 $00 $8D $52
.db $14 $A9 $00 $00 $8D $4C $14 $A9
.db $01 $00 $8D $54 $14 $20 $47 $BE
.db $68 $8D $52 $14 $E2 $20 $A9 $01
.db $8D $B4 $15 $C2 $30 $18 $20 $B4
.db $AB $98 $8D $A2 $15 $AD $A2 $15
.db $18 $69 $06 $00 $8D $A2 $15 $A9
.db $00 $00 $8D $B8 $15 $A9 $01 $00
.db $8D $BA $15 $A9 $09 $00 $8D $20
.db $14 $A9 $00 $00 $8D $30 $14 $A9
.db $00 $00 $8D $5E $14 $82 $CB $02
.db $AD $48 $14 $C9 $00 $00 $F0 $25
.db $AD $52 $14 $48 $A9 $00 $00 $8D
.db $52 $14 $A9 $01 $00 $8D $58 $14
.db $A9 $01 $00 $8D $5A $14 $A9 $01
.db $00 $8D $5C $14 $20 $27 $BA $68
.db $8D $52 $14 $80 $17 $AD $52 $14
.db $48 $A9 $00 $00 $8D $52 $14 $A9
.db $01 $00 $8D $54 $14 $20 $47 $BE
.db $68 $8D $52 $14 $AD $62 $14 $C9
.db $01 $00 $10 $08 $A9 $01 $00 $8D
.db $54 $14 $80 $06 $A9 $00 $00 $8D
.db $54 $14 $AD $52 $14 $48 $A9 $00
.db $00 $8D $52 $14 $38 $20 $B4 $AB
.db $20 $0B $BC $68 $8D $52 $14 $20
.db $2B $85 $AD $62 $14 $3A $8D $62
.db $14 $E2 $20 $A9 $01 $8D $B4 $15
.db $C2 $20 $AD $22 $14 $C9 $05 $00
.db $D0 $03 $38 $80 $01 $18 $20 $B4
.db $AB $98 $8D $A2 $15 $AD $A2 $15
.db $18 $69 $06 $00 $8D $A2 $15 $A9
.db $00 $00 $8D $B8 $15 $A9 $01 $00
.db $8D $BA $15 $A9 $09 $00 $8D $20
.db $14 $82 $17 $02 $AD $48 $14 $C9
.db $00 $00 $F0 $25 $AD $52 $14 $48
.db $A9 $00 $00 $8D $52 $14 $A9 $01
.db $00 $8D $58 $14 $A9 $01 $00 $8D
.db $5A $14 $A9 $01 $00 $8D $5C $14
.db $20 $27 $BA $68 $8D $52 $14 $80
.db $17 $AD $52 $14 $48 $A9 $00 $00
.db $8D $52 $14 $A9 $01 $00 $8D $54
.db $14 $20 $47 $BE $68 $8D $52 $14
.db $AD $62 $14 $C9 $00 $00 $F0 $02
.db $80 $03 $82 $10 $00 $A9 $00 $00
.db $8D $54 $14 $38 $20 $B4 $AB $20
.db $0B $BC $82 $B6 $01 $AD $52 $14
.db $48 $A9 $01 $00 $8D $52 $14 $A9
.db $00 $00 $8D $54 $14 $38 $20 $B4
.db $AB $20 $0B $BC $68 $8D $52 $14
.db $A9 $01 $00 $8D $2A $14 $A9 $00
.db $00 $8D $32 $14 $A9 $01 $00 $8D
.db $50 $14 $A9 $07 $00 $8D $84 $15
.db $A9 $07 $00 $8D $20 $14 $A9 $00
.db $00 $8D $1A $14 $A2 $03 $00 $20
.db $F7 $BD $22 $EA $87 $80 $64 $52
.db $22 $4E $95 $80 $AD $48 $14 $C9
.db $00 $00 $F0 $02 $80 $03 $82 $26
.db $00 $AD $52 $14 $48 $A9 $00 $00
.db $8D $52 $14 $A9 $01 $00 $8D $58
.db $14 $A9 $01 $00 $8D $5A $14 $A9
.db $01 $00 $8D $5C $14 $20 $27 $BA
.db $68 $8D $52 $14 $82 $17 $00 $AD
.db $52 $14 $48 $A9 $00 $00 $8D $52
.db $14 $A9 $01 $00 $8D $54 $14 $20
.db $47 $BE $68 $8D $52 $14 $AD $52
.db $14 $48 $A9 $01 $00 $8D $52 $14
.db $A9 $00 $00 $8D $54 $14 $38 $20
.db $B4 $AB $20 $0B $BC $68 $8D $52
.db $14 $A2 $02 $00 $20 $F7 $BD $22
.db $EA $87 $80 $64 $52 $22 $4E $95
.db $80 $AD $48 $14 $C9 $00 $00 $F0
.db $25 $AD $52 $14 $48 $A9 $00 $00
.db $8D $52 $14 $A9 $01 $00 $8D $58
.db $14 $A9 $01 $00 $8D $5A $14 $A9
.db $01 $00 $8D $5C $14 $20 $27 $BA
.db $68 $8D $52 $14 $80 $17 $AD $52
.db $14 $48 $A9 $00 $00 $8D $52 $14
.db $A9 $01 $00 $8D $54 $14 $20 $47
.db $BE $68 $8D $52 $14 $AD $52 $14
.db $48 $A9 $01 $00 $8D $52 $14 $A9
.db $00 $00 $8D $54 $14 $38 $20 $B4
.db $AB $20 $0B $BC $68 $8D $52 $14
.db $A2 $01 $00 $20 $F7 $BD $22 $EA
.db $87 $80 $64 $52 $22 $4E $95 $80
.db $AD $48 $14 $C9 $00 $00 $F0 $25
.db $AD $52 $14 $48 $A9 $00 $00 $8D
.db $52 $14 $A9 $01 $00 $8D $58 $14
.db $A9 $01 $00 $8D $5A $14 $A9 $01
.db $00 $8D $5C $14 $20 $27 $BA $68
.db $8D $52 $14 $80 $17 $AD $52 $14
.db $48 $A9 $00 $00 $8D $52 $14 $A9
.db $01 $00 $8D $54 $14 $20 $47 $BE
.db $68 $8D $52 $14 $AD $52 $14 $48
.db $A9 $01 $00 $8D $52 $14 $A9 $00
.db $00 $8D $54 $14 $38 $20 $B4 $AB
.db $20 $0B $BC $68 $8D $52 $14 $A2
.db $00 $00 $20 $F7 $BD $A9 $06 $00
.db $20 $D3 $F9 $A9 $00 $00 $8D $9D
.db $15 $A9 $32 $14 $8D $9C $15 $A9
.db $00 $00 $8D $9A $15 $A9 $50 $14
.db $8D $99 $15 $28 $60 $08 $C2 $30
.db $AD $48 $14 $C9 $00 $00 $F0 $25
.db $AD $52 $14 $48 $A9 $00 $00 $8D
.db $52 $14 $A9 $01 $00 $8D $58 $14
.db $A9 $01 $00 $8D $5A $14 $A9 $01
.db $00 $8D $5C $14 $20 $27 $BA $68
.db $8D $52 $14 $80 $1D $A9 $01 $00
.db $8D $54 $14 $AD $52 $14 $48 $A9
.db $00 $00 $8D $52 $14 $A9 $01 $00
.db $8D $54 $14 $20 $47 $BE $68 $8D
.db $52 $14 $AD $52 $14 $48 $A9 $00
.db $00 $8D $52 $14 $A9 $01 $00 $8D
.db $54 $14 $AD $22 $14 $C9 $05 $00
.db $D0 $03 $38 $80 $01 $18 $20 $B4
.db $AB $20 $0B $BC $68 $8D $52 $14
.db $20 $3D $BD $AD $50 $14 $C9 $01
.db $00 $F0 $02 $80 $03 $82 $DD $02
.db $AD $52 $14 $C9 $01 $00 $F0 $02
.db $80 $03 $82 $D0 $02 $AD $29 $01
.db $29 $00 $08 $F0 $1D $A9 $2C $00
.db $22 $67 $B4 $80 $AD $40 $14 $38
.db $E9 $10 $00 $8D $40 $14 $AD $40
.db $14 $29 $10 $00 $8D $40 $14 $82
.db $AB $02 $AD $29 $01 $29 $00 $04
.db $F0 $1D $A9 $2C $00 $22 $67 $B4
.db $80 $AD $40 $14 $18 $69 $10 $00
.db $8D $40 $14 $AD $40 $14 $29 $10
.db $00 $8D $40 $14 $82 $86 $02 $AD
.db $27 $01 $29 $80 $00 $F0 $5C $A9
.db $01 $00 $8D $50 $14 $AD $40 $14
.db $C9 $10 $00 $F0 $59 $A9 $2E $00
.db $22 $67 $B4 $80 $AD $48 $14 $C9
.db $00 $00 $D0 $06 $A9 $01 $00 $8D
.db $50 $14 $A9 $00 $00 $8D $26 $14
.db $A9 $00 $00 $8D $32 $14 $A9 $00
.db $00 $8D $30 $14 $A9 $01 $00 $8D
.db $4E $14 $A9 $01 $00 $8D $58 $14
.db $A9 $01 $00 $8D $5A $14 $A9 $01
.db $00 $8D $5C $14 $A9 $08 $00 $8D
.db $20 $14 $A9 $00 $00 $8D $2A $14
.db $82 $22 $02 $AD $27 $01 $29 $00
.db $80 $D0 $03 $82 $08 $02 $A9 $BE
.db $00 $22 $67 $B4 $80 $20 $2B $85
.db $22 $EA $87 $80 $64 $52 $22 $4E
.db $95 $80 $AD $48 $14 $C9 $00 $00
.db $F0 $25 $AD $52 $14 $48 $A9 $00
.db $00 $8D $52 $14 $A9 $01 $00 $8D
.db $58 $14 $A9 $01 $00 $8D $5A $14
.db $A9 $01 $00 $8D $5C $14 $20 $27
.db $BA $68 $8D $52 $14 $80 $17 $AD
.db $52 $14 $48 $A9 $00 $00 $8D $52
.db $14 $A9 $01 $00 $8D $54 $14 $20
.db $47 $BE $68 $8D $52 $14 $AD $52
.db $14 $48 $A9 $00 $00 $8D $52 $14
.db $A9 $01 $00 $8D $54 $14 $38 $20
.db $B4 $AB $20 $0B $BC $68 $8D $52
.db $14 $A2 $00 $00 $20 $F7 $BD $64
.db $52 $22 $4E $95 $80 $AD $48 $14
.db $C9 $00 $00 $F0 $25 $AD $52 $14
.db $48 $A9 $00 $00 $8D $52 $14 $A9
.db $01 $00 $8D $58 $14 $A9 $01 $00
.db $8D $5A $14 $A9 $01 $00 $8D $5C
.db $14 $20 $27 $BA $68 $8D $52 $14
.db $80 $17 $AD $52 $14 $48 $A9 $00
.db $00 $8D $52 $14 $A9 $01 $00 $8D
.db $54 $14 $20 $47 $BE $68 $8D $52
.db $14 $AD $52 $14 $48 $A9 $00 $00
.db $8D $52 $14 $A9 $01 $00 $8D $54
.db $14 $38 $20 $B4 $AB $20 $0B $BC
.db $68 $8D $52 $14 $A2 $01 $00 $20
.db $F7 $BD $22 $EA $87 $80 $64 $52
.db $22 $4E $95 $80 $AD $48 $14 $C9
.db $00 $00 $F0 $25 $AD $52 $14 $48
.db $A9 $00 $00 $8D $52 $14 $A9 $01
.db $00 $8D $58 $14 $A9 $01 $00 $8D
.db $5A $14 $A9 $01 $00 $8D $5C $14
.db $20 $27 $BA $68 $8D $52 $14 $80
.db $17 $AD $52 $14 $48 $A9 $00 $00
.db $8D $52 $14 $A9 $01 $00 $8D $54
.db $14 $20 $47 $BE $68 $8D $52 $14
.db $AD $52 $14 $48 $A9 $00 $00 $8D
.db $52 $14 $A9 $01 $00 $8D $54 $14
.db $38 $20 $B4 $AB $20 $0B $BC $68
.db $8D $52 $14 $A2 $02 $00 $20 $F7
.db $BD $22 $EA $87 $80 $64 $52 $22
.db $4E $95 $80 $AD $48 $14 $C9 $00
.db $00 $F0 $25 $AD $52 $14 $48 $A9
.db $00 $00 $8D $52 $14 $A9 $01 $00
.db $8D $58 $14 $A9 $01 $00 $8D $5A
.db $14 $A9 $01 $00 $8D $5C $14 $20
.db $27 $BA $68 $8D $52 $14 $80 $17
.db $AD $52 $14 $48 $A9 $00 $00 $8D
.db $52 $14 $A9 $01 $00 $8D $54 $14
.db $20 $47 $BE $68 $8D $52 $14 $AD
.db $52 $14 $48 $A9 $00 $00 $8D $52
.db $14 $A9 $01 $00 $8D $54 $14 $38
.db $20 $B4 $AB $20 $0B $BC $68 $8D
.db $52 $14 $A2 $03 $00 $20 $F7 $BD
.db $AD $48 $14 $C9 $00 $00 $D0 $0C
.db $A9 $00 $00 $8D $4E $14 $A9 $00
.db $00 $8D $50 $14 $A9 $07 $00 $8D
.db $84 $15 $A9 $00 $00 $8D $2A $14
.db $A9 $07 $00 $8D $20 $14 $A9 $00
.db $00 $8D $32 $14 $A9 $00 $00 $8D
.db $30 $14 $A9 $01 $00 $8D $62 $14
.db $A9 $01 $00 $8D $5E $14 $A9 $01
.db $00 $8D $54 $14 $80 $0F $AD $27
.db $01 $29 $00 $20 $F0 $07 $AD $1A
.db $14 $1A $8D $1A $14 $28 $60 $08
.db $E2 $20 $AD $D6 $07 $8D $A1 $15
.db $C2 $20 $22 $00 $C0 $93 $E2 $20
.db $AD $D6 $07 $C9 $00 $D0 $21 $20
.db $37 $B5 $A9 $00 $85 $F7 $A9 $03
.db $8D $4A $07 $A9 $01 $8D $D0 $08
.db $A9 $09 $8D $00 $0E $C2 $20 $A9
.db $0A $00 $8D $20 $14 $82 $0E $02
.db $E2 $20 $AD $D6 $07 $C9 $01 $D0
.db $0B $C2 $20 $A9 $0A $00 $8D $20
.db $14 $82 $FA $01 $E2 $20 $AD $D6
.db $07 $C9 $02 $D0 $0B $C2 $20 $A9
.db $0A $00 $8D $20 $14 $82 $E6 $01
.db $C2 $20 $A9 $00 $00 $8D $52 $14
.db $A9 $00 $00 $8D $2E $14 $E2 $20
.db $AD $A1 $15 $C9 $04 $F0 $02 $80
.db $03 $82 $8C $00 $C2 $30 $A9 $00
.db $00 $8D $64 $14 $38 $20 $B4 $AB
.db $C0 $00 $00 $F0 $24 $22 $FE $CB
.db $93 $B0 $08 $A9 $00 $00 $8D $24
.db $14 $80 $16 $A9 $01 $00 $8D $24
.db $14 $AD $3C $14 $38 $E9 $10 $00
.db $8D $3C $14 $A9 $01 $00 $8D $68
.db $14 $E2 $20 $AD $D8 $07 $C9 $00
.db $D0 $17 $C2 $20 $A9 $00 $00 $8D
.db $58 $14 $A9 $01 $00 $8D $5A $14
.db $A9 $01 $00 $8D $5C $14 $82 $B8
.db $00 $E2 $20 $AD $D8 $07 $C9 $01
.db $D0 $17 $C2 $20 $A9 $01 $00 $8D
.db $58 $14 $A9 $00 $00 $8D $5A $14
.db $A9 $01 $00 $8D $5C $14 $82 $98
.db $00 $C2 $20 $A9 $01 $00 $8D $58
.db $14 $A9 $01 $00 $8D $5A $14 $A9
.db $00 $00 $8D $5C $14 $82 $81 $00
.db $C2 $30 $18 $20 $B4 $AB $C0 $00
.db $00 $F0 $24 $22 $FE $CB $93 $B0
.db $08 $A9 $00 $00 $8D $24 $14 $80
.db $16 $A9 $01 $00 $8D $24 $14 $AD
.db $3C $14 $38 $E9 $10 $00 $8D $3C
.db $14 $A9 $01 $00 $8D $68 $14 $E2
.db $20 $AD $D7 $07 $C9 $00 $D0 $16
.db $C2 $20 $A9 $00 $00 $8D $58 $14
.db $A9 $01 $00 $8D $5A $14 $A9 $01
.db $00 $8D $5C $14 $80 $33 $E2 $20
.db $AD $D7 $07 $C9 $01 $D0 $16 $C2
.db $20 $A9 $01 $00 $8D $58 $14 $A9
.db $00 $00 $8D $5A $14 $A9 $01 $00
.db $8D $5C $14 $80 $14 $C2 $20 $A9
.db $01 $00 $8D $58 $14 $A9 $01 $00
.db $8D $5A $14 $A9 $00 $00 $8D $5C
.db $14 $A9 $03 $00 $8D $62 $14 $20
.db $1C $9D $20 $8D $AB $90 $18 $A9
.db $00 $00 $8D $58 $14 $A9 $00 $00
.db $8D $5A $14 $A9 $00 $00 $8D $5C
.db $14 $A9 $00 $00 $8D $62 $14 $20
.db $27 $BA $20 $2B $85 $AD $22 $14
.db $C9 $06 $00 $D0 $0B $20 $25 $AB
.db $20 $56 $AB $90 $03 $20 $E6 $AA
.db $20 $8D $AB $90 $53 $A9 $00 $00
.db $8D $2C $14 $A9 $00 $00 $8D $3C
.db $14 $A9 $01 $00 $8D $4C $14 $A9
.db $01 $00 $8D $4E $14 $A9 $00 $00
.db $8D $5E $14 $A9 $03 $00 $8D $24
.db $14 $E2 $20 $A9 $01 $8D $B4 $15
.db $C2 $20 $A9 $04 $00 $8D $A2 $15
.db $AD $24 $14 $8D $B6 $15 $A9 $00
.db $00 $8D $B8 $15 $A9 $00 $00 $8D
.db $BA $15 $A9 $01 $00 $8D $84 $15
.db $A9 $09 $00 $8D $20 $14 $80 $08
.db $AD $22 $14 $8D $20 $14 $28 $60
.db $AD $24 $14 $20 $D3 $F9 $A9 $00
.db $00 $8D $9D $15 $A9 $2C $14 $8D
.db $9C $15 $A9 $00 $00 $8D $9A $15
.db $A9 $4C $14 $8D $99 $15 $28 $60
.db $08 $C2 $30 $20 $F1 $8B $E2 $20
.db $A9 $02 $8D $00 $0E $28 $60 $08
.db $E2 $20 $A9 $0F $85 $7A $C2 $30
.db $48 $E2 $20 $A9 $01 $85 $7F $C2
.db $30 $22 $EA $87 $80 $68 $48 $A2
.db $00 $60 $E2 $20 $85 $7A $49 $0F
.db $0A $0A $0A $0A $85 $17 $A5 $7F
.db $29 $0F $85 $7F $A5 $7F $05 $17
.db $85 $7F $C2 $30 $DA $22 $EA $87
.db $80 $FA $EA $EA $CA $D0 $FB $68
.db $C9 $FF $FF $F0 $03 $3A $80 $CE
.db $28 $60 $08 $E2 $20 $A9 $82 $85
.db $7B $A9 $02 $85 $5C $C2 $20 $AD
.db $4C $14 $C9 $01 $00 $F0 $7A $A9
.db $98 $00 $85 $56 $A9 $10 $00 $85
.db $58 $A0 $05 $00 $A9 $00 $00 $20
.db $46 $C1 $A9 $20 $00 $85 $58 $A0
.db $05 $00 $A9 $0A $00 $20 $46 $C1
.db $A9 $30 $00 $85 $58 $A0 $05 $00
.db $A9 $24 $00 $20 $46 $C1 $A9 $40
.db $00 $85 $58 $A0 $05 $00 $A9 $2E
.db $00 $20 $46 $C1 $A9 $50 $00 $85
.db $58 $A0 $05 $00 $A9 $48 $00 $20
.db $46 $C1 $AD $2C $14 $C9 $00 $00
.db $F0 $63 $A9 $88 $00 $85 $56 $A9
.db $10 $00 $85 $58 $A5 $58 $18 $6D
.db $3C $14 $85 $58 $A9 $00 $00 $85
.db $5A $A9 $00 $84 $85 $63 $A9 $04
.db $C7 $85 $62 $22 $A2 $93 $80 $80
.db $3C $A9 $98 $00 $85 $56 $A9 $10
.db $00 $85 $58 $A0 $05 $00 $20 $8E
.db $C1 $A9 $20 $00 $85 $58 $A0 $05
.db $00 $20 $8E $C1 $A9 $30 $00 $85
.db $58 $A0 $05 $00 $20 $8E $C1 $A9
.db $40 $00 $85 $58 $A0 $05 $00 $20
.db $8E $C1 $A9 $50 $00 $85 $58 $A0
.db $05 $00 $20 $8E $C1 $A9 $88 $00
.db $85 $56 $A9 $00 $00 $85 $58 $A9
.db $00 $00 $85 $5A $A9 $00 $84 $85
.db $63 $A9 $31 $C7 $85 $62 $22 $A2
.db $93 $80 $AD $52 $14 $C9 $00 $00
.db $F0 $09 $20 $49 $85 $A9 $00 $00
.db $8D $52 $14 $28 $60 $08 $E2 $20
.db $A9 $82 $85 $7B $A9 $02 $85 $5C
.db $C2 $20 $AD $4C $14 $C9 $01 $00
.db $F0 $6C $A9 $98 $00 $85 $56 $A9
.db $10 $00 $85 $58 $A0 $05 $00 $A9
.db $00 $00 $20 $46 $C1 $A9 $20 $00
.db $85 $58 $A0 $05 $00 $A9 $0A $00
.db $20 $46 $C1 $A9 $30 $00 $85 $58
.db $A0 $05 $00 $A9 $24 $00 $20 $46
.db $C1 $A9 $40 $00 $85 $58 $A0 $05
.db $00 $A9 $2E $00 $20 $46 $C1 $AD
.db $2C $14 $C9 $00 $00 $F0 $58 $A9
.db $88 $00 $85 $56 $A9 $10 $00 $85
.db $58 $A5 $58 $18 $6D $3C $14 $85
.db $58 $A9 $00 $00 $85 $5A $A9 $00
.db $84 $85 $63 $A9 $04 $C7 $85 $62
.db $22 $A2 $93 $80 $80 $31 $A9 $98
.db $00 $85 $56 $A9 $10 $00 $85 $58
.db $A0 $05 $00 $20 $8E $C1 $A9 $20
.db $00 $85 $58 $A0 $05 $00 $20 $8E
.db $C1 $A9 $30 $00 $85 $58 $A0 $05
.db $00 $20 $8E $C1 $A9 $40 $00 $85
.db $58 $A0 $05 $00 $20 $8E $C1 $A9
.db $88 $00 $85 $56 $A9 $00 $00 $85
.db $58 $A9 $01 $00 $85 $5A $A9 $00
.db $84 $85 $63 $A9 $31 $C7 $85 $62
.db $22 $A2 $93 $80 $AD $52 $14 $C9
.db $00 $00 $F0 $09 $20 $49 $85 $A9
.db $00 $00 $8D $52 $14 $28 $60 $08
.db $E2 $20 $A9 $82 $85 $7B $A9 $02
.db $85 $5C $C2 $20 $AD $4C $14 $C9
.db $01 $00 $F0 $50 $A9 $98 $00 $85
.db $56 $A9 $10 $00 $85 $58 $A0 $05
.db $00 $A9 $00 $00 $20 $46 $C1 $A9
.db $20 $00 $85 $58 $A0 $05 $00 $A9
.db $0A $00 $20 $46 $C1 $AD $2C $14
.db $C9 $00 $00 $F0 $42 $A9 $88 $00
.db $85 $56 $A9 $10 $00 $85 $58 $A5
.db $58 $18 $6D $3C $14 $85 $58 $A9
.db $00 $00 $85 $5A $A9 $00 $84 $85
.db $63 $A9 $04 $C7 $85 $62 $22 $A2
.db $93 $80 $80 $1B $A9 $98 $00 $85
.db $56 $A9 $10 $00 $85 $58 $A0 $05
.db $00 $20 $8E $C1 $A9 $20 $00 $85
.db $58 $A0 $05 $00 $20 $8E $C1 $A9
.db $88 $00 $85 $56 $A9 $00 $00 $85
.db $58 $A9 $02 $00 $85 $5A $A9 $00
.db $84 $85 $63 $A9 $31 $C7 $85 $62
.db $22 $A2 $93 $80 $AD $52 $14 $C9
.db $00 $00 $F0 $09 $20 $49 $85 $A9
.db $00 $00 $8D $52 $14 $28 $60 $08
.db $E2 $20 $A9 $82 $85 $7B $A9 $02
.db $85 $5C $C2 $20 $AD $4C $14 $C9
.db $01 $00 $F0 $42 $A9 $98 $00 $85
.db $56 $A9 $10 $00 $85 $58 $A0 $05
.db $00 $A9 $00 $00 $20 $46 $C1 $AD
.db $2C $14 $C9 $00 $00 $F0 $37 $A9
.db $88 $00 $85 $56 $A9 $10 $00 $85
.db $58 $A5 $58 $18 $6D $3C $14 $85
.db $58 $A9 $00 $00 $85 $5A $A9 $00
.db $84 $85 $63 $A9 $04 $C7 $85 $62
.db $22 $A2 $93 $80 $80 $10 $A9 $98
.db $00 $85 $56 $A9 $10 $00 $85 $58
.db $A0 $05 $00 $20 $8E $C1 $A9 $88
.db $00 $85 $56 $A9 $00 $00 $85 $58
.db $A9 $03 $00 $85 $5A $A9 $00 $84
.db $85 $63 $A9 $31 $C7 $85 $62 $22
.db $A2 $93 $80 $AD $52 $14 $C9 $00
.db $00 $F0 $09 $20 $49 $85 $A9 $00
.db $00 $8D $52 $14 $28 $60 $08 $C2
.db $30 $AD $64 $14 $C9 $00 $00 $F0
.db $1D $AD $37 $01 $29 $0F $00 $0A
.db $AA $BD $D7 $B8 $8F $D8 $52 $7F
.db $A9 $00 $84 $85 $01 $A9 $D0 $B8
.db $85 $00 $22 $AD $8E $80 $28 $60
.db $01 $D8 $52 $7F $02 $00 $D4 $F7
.db $00 $F7 $00 $18 $01 $39 $01 $5A
.db $01 $BB $01 $DE $01 $5F $02 $BF
.db $02 $7F $02 $1F $02 $DE $01 $5A
.db $01 $39 $01 $18 $01 $F7 $00 $08
.db $C2 $30 $0A $AA $BD $1A $B9 $8F
.db $30 $51 $7F $A9 $00 $84 $85 $01
.db $A9 $13 $B9 $85 $00 $22 $AD $8E
.db $80 $28 $60 $01 $30 $51 $7F $02
.db $00 $00 $24 $00 $24 $00 $03 $00
.db $02 $00 $01 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $08 $C2 $30 $48 $DA $AD
.db $37 $01 $4A $4A $4A $4A $29 $0F
.db $00 $0A $AA $BD $6B $B9 $8F $74
.db $51 $7F $A9 $00 $84 $85 $01 $A9
.db $64 $B9 $85 $00 $22 $AD $8E $80
.db $FA $68 $28 $60 $01 $74 $51 $7F
.db $02 $00 $22 $A7 $21 $A7 $21 $A7
.db $25 $A7 $25 $A7 $29 $A7 $29 $A7
.db $2D $A7 $2D $A7 $2D $A7 $2D $A7
.db $29 $A7 $29 $A7 $25 $A7 $25 $A7
.db $21 $A7 $21 $08 $C2 $30 $48 $DA
.db $E2 $20 $AD $66 $14 $1A $8D $66
.db $14 $AD $66 $14 $C9 $05 $90 $3A
.db $A9 $00 $8D $66 $14 $AD $67 $14
.db $18 $69 $02 $8D $67 $14 $AD $67
.db $14 $C9 $3E $90 $07 $F0 $05 $A9
.db $00 $8D $67 $14 $AD $67 $14 $C2
.db $30 $29 $FF $00 $AA $BD $E7 $B9
.db $8F $7C $51 $7F $A9 $00 $84 $85
.db $01 $A9 $E0 $B9 $85 $00 $22 $AD
.db $8E $80 $C2 $30 $FA $68 $28 $60
.db $01 $7C $51 $7F $02 $00 $25 $6C
.db $36 $8D $3A $8E $3E $AE $42 $AF
.db $46 $D0 $46 $F1 $4A $F2 $4E $12
.db $53 $13 $57 $34 $5B $55 $5F $56
.db $5F $76 $63 $77 $67 $98 $6B $98
.db $6B $77 $67 $76 $63 $56 $5F $55
.db $5F $34 $5B $13 $57 $12 $53 $F2
.db $4E $F1 $4A $D0 $46 $AF $46 $AE
.db $42 $8E $3E $8D $3A $6C $36 $08
.db $E2 $20 $A9 $82 $85 $7B $A9 $02
.db $85 $5C $C2 $20 $AD $4C $14 $C9
.db $01 $00 $F0 $02 $80 $03 $82 $57
.db $01 $A9 $18 $00 $85 $56 $A9 $6C
.db $00 $85 $58 $A0 $0D $00 $AD $58
.db $14 $C9 $01 $00 $F0 $08 $A9 $00
.db $00 $20 $46 $C1 $80 $06 $A9 $00
.db $00 $20 $4D $C1 $A9 $7C $00 $85
.db $58 $A0 $0D $00 $AD $5A $14 $C9
.db $01 $00 $F0 $08 $A9 $2A $00 $20
.db $46 $C1 $80 $06 $A9 $2A $00 $20
.db $4D $C1 $A9 $8C $00 $85 $58 $A0
.db $0D $00 $AD $5C $14 $C9 $01 $00
.db $F0 $08 $A9 $64 $00 $20 $46 $C1
.db $80 $06 $A9 $64 $00 $20 $4D $C1
.db $AD $54 $14 $C9 $00 $00 $F0 $13
.db $AD $56 $14 $C9 $00 $00 $F0 $0B
.db $AD $58 $14 $C9 $00 $00 $F0 $03
.db $82 $03 $01 $AD $20 $14 $C9 $05
.db $00 $F0 $0B $AD $20 $14 $C9 $07
.db $00 $F0 $12 $82 $82 $00 $AD $26
.db $14 $C9 $00 $00 $F0 $02 $80 $03
.db $82 $75 $00 $80 $0D $AD $22 $14
.db $C9 $06 $00 $F0 $02 $80 $03 $82
.db $66 $00 $A9 $08 $00 $85 $56 $A9
.db $6C $00 $85 $58 $AD $3E $14 $CD
.db $42 $14 $D0 $30 $AD $3E $14 $C9
.db $00 $00 $D0 $08 $A9 $10 $00 $8D
.db $42 $14 $80 $20 $AD $3E $14 $C9
.db $10 $00 $D0 $08 $A9 $20 $00 $8D
.db $42 $14 $80 $10 $AD $3E $14 $C9
.db $20 $00 $D0 $08 $A9 $00 $00 $8D
.db $42 $14 $80 $00 $A5 $58 $18 $6D
.db $42 $14 $85 $58 $A9 $01 $00 $85
.db $5A $A9 $00 $84 $85 $63 $A9 $04
.db $C7 $85 $62 $22 $A2 $93 $80 $20
.db $A6 $B8 $20 $3A $B9 $20 $8B $B9
.db $A9 $08 $00 $85 $56 $A9 $6C $00
.db $85 $58 $A5 $58 $18 $6D $3E $14
.db $85 $58 $AD $26 $14 $C9 $01 $00
.db $F0 $19 $AD $20 $14 $C9 $07 $00
.db $F0 $02 $80 $08 $AD $22 $14 $C9
.db $06 $00 $D0 $07 $A9 $01 $00 $85
.db $5A $80 $05 $A9 $03 $00 $85 $5A
.db $A9 $00 $84 $85 $63 $A9 $04 $C7
.db $85 $62 $22 $A2 $93 $80 $80 $26
.db $A9 $18 $00 $85 $56 $A9 $6C $00
.db $85 $58 $A0 $0D $00 $20 $8E $C1
.db $A9 $7C $00 $85 $58 $A0 $0D $00
.db $20 $8E $C1 $A9 $8C $00 $85 $58
.db $A0 $0D $00 $20 $8E $C1 $A9 $08
.db $00 $85 $56 $A9 $5C $00 $85 $58
.db $A9 $04 $00 $85 $5A $A9 $00 $84
.db $85 $63 $A9 $31 $C7 $85 $62 $22
.db $A2 $93 $80 $A9 $88 $00 $85 $56
.db $A9 $5C $00 $85 $58 $A9 $05 $00
.db $85 $5A $A9 $00 $84 $85 $63 $A9
.db $31 $C7 $85 $62 $22 $A2 $93 $80
.db $AD $52 $14 $C9 $00 $00 $F0 $09
.db $20 $49 $85 $A9 $00 $00 $8D $52
.db $14 $28 $60 $08 $E2 $20 $A9 $82
.db $85 $7B $A9 $02 $85 $5C $C2 $20
.db $C0 $01 $00 $F0 $7A $AD $4E $14
.db $C9 $01 $00 $F0 $25 $A9 $18 $00
.db $85 $56 $A9 $B4 $00 $85 $58 $A0
.db $07 $00 $AD $54 $14 $C9 $01 $00
.db $F0 $08 $A9 $8E $00 $20 $46 $C1
.db $80 $06 $A9 $8E $00 $20 $4D $C1
.db $80 $10 $A9 $18 $00 $85 $56 $A9
.db $B4 $00 $85 $58 $A0 $07 $00 $20
.db $8E $C1 $A9 $08 $00 $85 $56 $A9
.db $A4 $00 $85 $58 $A9 $06 $00 $85
.db $5A $A9 $00 $84 $85 $63 $A9 $31
.db $C7 $85 $62 $22 $A2 $93 $80 $A9
.db $88 $00 $85 $56 $A9 $A4 $00 $85
.db $58 $A9 $07 $00 $85 $5A $A9 $00
.db $84 $85 $63 $A9 $31 $C7 $85 $62
.db $22 $A2 $93 $80 $82 $77 $00 $AD
.db $4E $14 $C9 $01 $00 $F0 $25 $A9
.db $18 $00 $85 $56 $A9 $B4 $00 $85
.db $58 $A0 $09 $00 $AD $54 $14 $C9
.db $01 $00 $F0 $08 $A9 $8E $00 $20
.db $46 $C1 $80 $06 $A9 $8E $00 $20
.db $4D $C1 $80 $10 $A9 $18 $00 $85
.db $56 $A9 $B4 $00 $85 $58 $A0 $09
.db $00 $20 $8E $C1 $A9 $08 $00 $85
.db $56 $A9 $A4 $00 $85 $58 $A9 $06
.db $00 $85 $5A $A9 $00 $84 $85 $63
.db $A9 $31 $C7 $85 $62 $22 $A2 $93
.db $80 $A9 $88 $00 $85 $56 $A9 $A4
.db $00 $85 $58 $A9 $08 $00 $85 $5A
.db $A9 $00 $84 $85 $63 $A9 $31 $C7
.db $85 $62 $22 $A2 $93 $80 $AD $5E
.db $14 $C9 $01 $00 $F0 $14 $AD $62
.db $14 $C9 $00 $00 $F0 $02 $80 $03
.db $82 $18 $00 $AD $62 $14 $3A $8D
.db $62 $14 $AD $52 $14 $C9 $00 $00
.db $F0 $09 $20 $49 $85 $A9 $00 $00
.db $8D $52 $14 $28 $60 $08 $E2 $20
.db $A9 $82 $85 $7B $A9 $02 $85 $5C
.db $C2 $20 $AD $50 $14 $C9 $01 $00
.db $F0 $55 $A9 $C8 $00 $85 $56 $A9
.db $B4 $00 $85 $58 $A0 $02 $00 $A9
.db $C2 $00 $20 $46 $C1 $A9 $C8 $00
.db $85 $56 $A9 $C4 $00 $85 $58 $A0
.db $02 $00 $A9 $C6 $00 $20 $46 $C1
.db $AD $54 $14 $C9 $00 $00 $F0 $47
.db $A9 $B8 $00 $85 $56 $A9 $B4 $00
.db $85 $58 $A5 $58 $18 $6D $40 $14
.db $85 $58 $A9 $02 $00 $85 $5A $A9
.db $00 $84 $85 $63 $A9 $04 $C7 $85
.db $62 $22 $A2 $93 $80 $80 $20 $A9
.db $C8 $00 $85 $56 $A9 $B4 $00 $85
.db $58 $A0 $02 $00 $20 $8E $C1 $A9
.db $C8 $00 $85 $56 $A9 $C4 $00 $85
.db $58 $A0 $02 $00 $20 $8E $C1 $A9
.db $B8 $00 $85 $56 $A9 $A4 $00 $85
.db $58 $A9 $09 $00 $85 $5A $A9 $00
.db $84 $85 $63 $A9 $31 $C7 $85 $62
.db $22 $A2 $93 $80 $AD $52 $14 $C9
.db $00 $00 $F0 $09 $20 $49 $85 $A9
.db $00 $00 $8D $52 $14 $28 $60 $08
.db $E2 $20 $A9 $82 $85 $7B $A9 $02
.db $85 $5C $C2 $30 $A9 $C0 $00 $85
.db $56 $A9 $AC $00 $85 $58 $E0 $00
.db $00 $F0 $11 $E0 $01 $00 $F0 $13
.db $E0 $02 $00 $F0 $15 $A9 $0F $00
.db $85 $5A $80 $13 $A9 $0C $00 $85
.db $5A $80 $0C $A9 $0D $00 $85 $5A
.db $80 $05 $A9 $0E $00 $85 $5A $A9
.db $00 $84 $85 $63 $A9 $31 $C7 $85
.db $62 $22 $A2 $93 $80 $28 $60 $08
.db $E2 $20 $A9 $82 $85 $7B $A9 $02
.db $85 $5C $C2 $20 $AD $4C $14 $C9
.db $01 $00 $F0 $02 $80 $03 $82 $6D
.db $00 $A9 $18 $00 $85 $56 $A9 $74
.db $00 $85 $58 $A0 $0D $00 $AD $54
.db $14 $C9 $01 $00 $F0 $08 $A9 $00
.db $00 $20 $46 $C1 $80 $06 $A9 $00
.db $00 $20 $4D $C1 $A9 $18 $00 $85
.db $56 $A9 $84 $00 $85 $58 $A0 $0D
.db $00 $AD $54 $14 $C9 $01 $00 $F0
.db $08 $A9 $2A $00 $20 $46 $C1 $80
.db $06 $A9 $2A $00 $20 $4D $C1 $A9
.db $08 $00 $85 $56 $A9 $74 $00 $85
.db $58 $A5 $58 $18 $6D $44 $14 $85
.db $58 $A9 $04 $00 $85 $5A $A9 $00
.db $84 $85 $63 $A9 $04 $C7 $85 $62
.db $22 $A2 $93 $80 $80 $20 $A9 $18
.db $00 $85 $56 $A9 $74 $00 $85 $58
.db $A0 $0D $00 $20 $8E $C1 $A9 $18
.db $00 $85 $56 $A9 $84 $00 $85 $58
.db $A0 $0D $00 $20 $8E $C1 $A9 $08
.db $00 $85 $56 $A9 $64 $00 $85 $58
.db $A9 $0A $00 $85 $5A $A9 $00 $84
.db $85 $63 $A9 $31 $C7 $85 $62 $22
.db $A2 $93 $80 $A9 $78 $00 $85 $56
.db $A9 $64 $00 $85 $58 $A9 $0B $00
.db $85 $5A $A9 $00 $84 $85 $63 $A9
.db $31 $C7 $85 $62 $22 $A2 $93 $80
.db $AD $52 $14 $C9 $00 $00 $F0 $09
.db $20 $49 $85 $A9 $00 $00 $8D $52
.db $14 $28 $60 $08 $C2 $20 $A9 $01
.db $00 $8D $52 $14 $A9 $01 $00 $85
.db $27 $AD $36 $14 $48 $AD $58 $14
.db $C9 $01 $00 $F0 $09 $A9 $01 $00
.db $A2 $00 $00 $20 $A7 $BF $AD $5A
.db $14 $C9 $01 $00 $F0 $0F $AD $38
.db $14 $8D $36 $14 $A9 $02 $00 $A2
.db $34 $00 $20 $A7 $BF $AD $5C $14
.db $C9 $01 $00 $F0 $0F $AD $3A $14
.db $8D $36 $14 $A9 $03 $00 $A2 $68
.db $00 $20 $A7 $BF $68 $8D $36 $14
.db $AD $62 $14 $C9 $00 $00 $F0 $07
.db $AD $62 $14 $3A $8D $62 $14 $A9
.db $00 $00 $8D $4C $14 $28 $60 $08
.db $C2 $30 $A4 $27 $C0 $00 $00 $F0
.db $01 $DA $48 $A9 $00 $7F $85 $01
.db $A9 $00 $F2 $85 $00 $A9 $00 $84
.db $85 $04 $A9 $AE $C6 $85 $03 $22
.db $B8 $C1 $84 $68 $E2 $20 $18 $69
.db $A0 $8F $00 $F2 $7F $AD $36 $14
.db $D0 $03 $82 $A2 $00 $C9 $15 $10
.db $04 $A9 $A1 $80 $02 $A9 $A2 $8F
.db $07 $F2 $7F $AD $36 $14 $C9 $29
.db $F0 $45 $C9 $2A $F0 $65 $C9 $15
.db $10 $02 $80 $03 $38 $E9 $14 $8D
.db $A1 $15 $C9 $0A $10 $0A $18 $69
.db $A0 $8F $0E $F2 $7F $82 $91 $00
.db $C9 $14 $10 $15 $A9 $A1 $8F $0D
.db $F2 $7F $AD $A1 $15 $38 $E9 $0A
.db $18 $69 $A0 $8F $0E $F2 $7F $80
.db $78 $A9 $A2 $8F $0D $F2 $7F $A9
.db $A0 $8F $0E $F2 $7F $80 $6A $C2
.db $20 $A9 $00 $84 $85 $04 $A9 $DB
.db $C6 $85 $03 $A9 $00 $7F $85 $01
.db $A9 $00 $F2 $85 $00 $A5 $00 $18
.db $69 $0D $00 $85 $00 $22 $B8 $C1
.db $84 $80 $46 $C2 $20 $A9 $00 $84
.db $85 $04 $A9 $E7 $C6 $85 $03 $A9
.db $00 $7F $85 $01 $A9 $00 $F2 $85
.db $00 $A5 $00 $18 $69 $0D $00 $85
.db $00 $22 $B8 $C1 $84 $80 $22 $C2
.db $20 $A9 $00 $84 $85 $04 $A9 $F3
.db $C6 $85 $03 $A9 $00 $7F $85 $01
.db $A9 $00 $F2 $85 $00 $A5 $00 $18
.db $69 $02 $00 $85 $00 $22 $B8 $C1
.db $84 $C2 $20 $AD $36 $14 $22 $11
.db $C2 $84 $A9 $00 $7F $85 $01 $A9
.db $00 $F2 $85 $00 $22 $D1 $C1 $84
.db $A4 $27 $C0 $00 $00 $F0 $04 $20
.db $C5 $C0 $68 $28 $60 $08 $C2 $20
.db $22 $60 $B8 $87 $E2 $20 $A3 $04
.db $8F $29 $0F $00 $A3 $05 $8F $2A
.db $0F $00 $C2 $20 $A9 $20 $20 $8D
.db $25 $0F $A9 $00 $40 $8D $23 $0F
.db $A9 $00 $7E $8D $21 $0F $A9 $00
.db $30 $8D $20 $0F $AD $05 $0F $09
.db $08 $00 $8D $05 $0F $A9 $00 $00
.db $8F $27 $0F $00 $A9 $00 $00 $8D
.db $14 $0F $A9 $00 $00 $8D $12 $0F
.db $A9 $01 $00 $8D $07 $0F $A9 $00
.db $87 $8D $1A $0F $A9 $CA $BC $8D
.db $19 $0F $E2 $20 $A5 $7A $29 $80
.db $F0 $08 $C2 $20 $22 $2E $89 $80
.db $80 $04 $22 $EA $87 $80 $22 $32
.db $B9 $87 $C2 $20 $AD $09 $0F $C9
.db $00 $00 $D0 $DE $28 $60 $C2 $30
.db $A2 $00 $3E $80 $05 $C2 $30 $A2
.db $00 $3C $86 $19 $85 $17 $A6 $50
.db $A5 $56 $85 $15 $A5 $15 $9D $10
.db $02 $18 $69 $10 $00 $85 $15 $A5
.db $58 $9D $11 $02 $A5 $17 $05 $19
.db $9D $12 $02 $A5 $17 $18 $69 $02
.db $00 $89 $10 $00 $F0 $04 $18 $69
.db $10 $00 $85 $17 $E8 $E8 $E8 $E8
.db $88 $D0 $D1 $86 $50 $60 $5A $C2
.db $30 $A6 $50 $A5 $56 $85 $15 $A5
.db $15 $9D $10 $02 $18 $69 $10 $00
.db $85 $15 $A5 $58 $9D $11 $02 $A9
.db $A4 $33 $9D $12 $02 $E8 $E8 $E8
.db $E8 $88 $D0 $E3 $86 $50 $7A $60
.db $08 $E2 $20 $A0 $00 $00 $B7 $03
.db $97 $00 $C8 $C9 $00 $D0 $F7 $B7
.db $03 $97 $00 $C9 $00 $D0 $F3 $28
.db $6B $08 $C2 $30 $A5 $00 $85 $06
.db $A5 $01 $85 $07 $E2 $20 $A0 $FF
.db $FF $C8 $B7 $00 $C9 $00 $D0 $F9
.db $C8 $B7 $00 $C9 $00 $D0 $F2 $C2
.db $30 $88 $98 $18 $65 $06 $85 $06
.db $E2 $20 $A0 $00 $00 $B7 $03 $97
.db $06 $C8 $C9 $00 $D0 $F7 $B7 $03
.db $97 $06 $C8 $C9 $00 $D0 $EE $28
.db $6B $08 $C2 $30 $0A $AA $A9 $00
.db $84 $85 $04 $BF $23 $C2 $84 $85
.db $03 $28 $6B $7F $C2 $92 $C2 $A4
.db $C2 $B2 $C2 $C1 $C2 $D3 $C2 $E2
.db $C2 $F5 $C2 $07 $C3 $16 $C3 $2C
.db $C3 $3B $C3 $4B $C3 $59 $C3 $68
.db $C3 $76 $C3 $85 $C3 $94 $C3 $A7
.db $C3 $BB $C3 $C9 $C3 $DD $C3 $EF
.db $C3 $03 $C4 $17 $C4 $2B $C4 $3D
.db $C4 $51 $C4 $61 $C4 $70 $C4 $82
.db $C4 $94 $C4 $A2 $C4 $B4 $C4 $C4
.db $C4 $D8 $C4 $EA $C4 $FD $C4 $11
.db $C5 $21 $C5 $35 $C5 $43 $C5 $55
.db $C5 $7F $C2 $7F $C2 $7F $C2 $00
.db $11 $C4 $C4 $C4 $C4 $C4 $C4 $C4
.db $C4 $C4 $C4 $C4 $C4 $C4 $C4 $C4
.db $00 $00 $00 $11 $6F $79 $5D $19
.db $00 $12 $22 $8C $00 $11 $11 $C4
.db $C4 $C4 $00 $00 $00 $11 $7E $79
.db $88 $19 $ED $AD $C4 $C4 $C4 $C4
.db $00 $00 $00 $11 $8B $8E $79 $6F
.db $53 $7D $63 $7D $C4 $C4 $C4 $00
.db $00 $00 $11 $55 $7A $79 $51 $7D
.db $19 $F7 $DE $00 $12 $7A $00 $11
.db $C4 $00 $00 $00 $11 $6C $97 $52
.db $51 $B9 $54 $71 $8F $7A $71 $C4
.db $00 $00 $00 $11 $7A $6C $56 $7D
.db $8B $98 $19 $00 $12 $68 $00 $11
.db $C4 $C4 $C4 $00 $00 $00 $12 $CB
.db $00 $13 $0C $00 $11 $7C $B9 $7A
.db $7D $C4 $C4 $C4 $C4 $00 $00 $00
.db $11 $94 $78 $7D $5E $5D $F9 $70
.db $68 $79 $8D $C4 $00 $00 $00 $11
.db $69 $79 $88 $19 $00 $12 $41 $00
.db $13 $0D $00 $12 $7C $00 $11 $D1
.db $C4 $C4 $00 $00 $00 $11 $51 $56
.db $68 $52 $51 $F9 $92 $7A $5D $C4
.db $C4 $00 $00 $00 $12 $6F $00 $11
.db $0C $20 $19 $AE $E8 $F9 $80 $77
.db $C4 $00 $00 $00 $11 $CB $D6 $19
.db $FF $56 $88 $52 $7D $C4 $C4 $00
.db $00 $00 $11 $51 $78 $63 $98 $51
.db $19 $F7 $02 $C4 $C4 $C4 $00 $00
.db $00 $11 $5D $60 $B9 $7B $B9 $8C
.db $F9 $6F $79 $5D $00 $00 $00 $11
.db $6F $71 $58 $B9 $64 $F9 $94 $78
.db $7D $5E $5D $00 $00 $00 $11 $8F
.db $77 $9D $58 $65 $52 $62 $F9 $56
.db $70 $75 $00 $00 $00 $13 $0E $0F
.db $00 $11 $2D $00 $13 $10 $00 $11
.db $09 $29 $EF $DE $C4 $00 $00 $00
.db $12 $23 $00 $11 $19 $00 $12 $BB
.db $BC $00 $11 $7E $B9 $68 $6C $C4
.db $C4 $00 $00 $00 $11 $6F $71 $58
.db $B9 $64 $19 $F1 $FF $C4 $C4 $00
.db $00 $00 $12 $C6 $00 $11 $3E $2A
.db $0C $BB $00 $12 $7A $00 $11 $C4
.db $C4 $C4 $C4 $00 $00 $00 $11 $80
.db $79 $66 $51 $00 $13 $11 $12 $00
.db $11 $C4 $C4 $C4 $C4 $00 $00 $00
.db $11 $6F $59 $8C $66 $51 $19 $00
.db $13 $04 $00 $12 $DF $00 $11 $C4
.db $C4 $00 $00 $00 $13 $13 $00 $11
.db $2A $00 $13 $14 $00 $11 $27 $2A
.db $10 $F1 $F3 $C4 $C4 $00 $00 $00
.db $12 $60 $00 $11 $3F $14 $00 $12
.db $6F $00 $11 $0C $20 $14 $C4 $C4
.db $C4 $00 $00 $00 $11 $80 $79 $66
.db $51 $00 $12 $1B $1C $00 $11 $C4
.db $C4 $C4 $C4 $00 $00 $00 $12 $23
.db $00 $11 $19 $00 $12 $C8 $00 $11
.db $C4 $C4 $C4 $C4 $C4 $C4 $C4 $00
.db $00 $00 $13 $16 $00 $11 $19 $FE
.db $DE $C4 $C4 $C4 $C4 $C4 $C4 $00
.db $00 $00 $11 $5F $53 $79 $6C $79
.db $F9 $8F $78 $9D $84 $C4 $00 $00
.db $00 $11 $CB $D6 $19 $B7 $00 $12
.db $E0 $00 $11 $C4 $C4 $C4 $C4 $C4
.db $00 $00 $00 $11 $CB $D6 $DE $00
.db $12 $14 $00 $11 $EE $C4 $C4 $C4
.db $C4 $C4 $00 $00 $00 $11 $51 $7D
.db $78 $19 $D6 $C4 $C4 $C4 $C4 $C4
.db $00 $00 $00 $11 $E6 $CC $19 $00
.db $13 $18 $00 $11 $D1 $C4 $C4 $C4
.db $C4 $C4 $00 $00 $00 $12 $F1 $00
.db $11 $19 $AE $E8 $C4 $C4 $C4 $C4
.db $C4 $C4 $00 $00 $00 $12 $D4 $00
.db $11 $06 $0B $2A $10 $00 $13 $19
.db $00 $11 $C4 $C4 $C4 $C4 $00 $00
.db $00 $11 $F1 $F2 $19 $00 $13 $1E
.db $1F $00 $11 $C4 $C4 $C4 $C4 $C4
.db $00 $00 $00 $11 $F1 $00 $12 $46
.db $00 $13 $1B $1C $00 $11 $C4 $C4
.db $C4 $C4 $C4 $00 $00 $00 $11 $80
.db $77 $19 $00 $13 $1D $00 $12 $16
.db $00 $11 $C4 $C4 $C4 $C4 $C4 $00
.db $00 $00 $14 $6F $00 $11 $19 $F7
.db $02 $C4 $C4 $C4 $C4 $C4 $C4 $00
.db $00 $00 $12 $4B $52 $00 $11 $19
.db $00 $12 $67 $00 $11 $F7 $C4 $C4
.db $C4 $C4 $C4 $00 $00 $00 $11 $E9
.db $EA $B5 $B6 $C4 $C4 $C4 $C4 $C4
.db $C4 $00 $00 $00 $11 $E7 $CC $19
.db $00 $12 $47 $00 $11 $C4 $C4 $C4
.db $C4 $C4 $C4 $00 $00 $00 $11 $CC
.db $19 $00 $12 $BC $00 $13 $20 $00
.db $11 $C4 $C4 $C4 $C4 $C4 $00 $00
.db $00 $12 $42 $00 $13 $05 $00 $11
.db $06 $27 $00 $12 $51 $00 $11 $22
.db $29 $00 $00 $00 $13 $06 $07 $00
.db $11 $06 $27 $00 $12 $51 $00 $11
.db $22 $29 $00 $00 $00 $12 $4B $00
.db $13 $08 $00 $11 $06 $27 $00 $12
.db $51 $00 $11 $22 $29 $00 $00 $00
.db $13 $06 $07 $00 $11 $2D $00 $13
.db $09 $00 $11 $0D $C4 $00 $00 $00
.db $13 $06 $07 $00 $11 $2D $00 $13
.db $0A $00 $11 $0D $C4 $00 $00 $C8
.db $C5 $84 $DC $C5 $84 $F0 $C5 $84
.db $00 $13 $06 $07 $00 $11 $A1 $1A
.db $C4 $00 $13 $0A $00 $11 $0B $2A
.db $1F $0D $00 $00 $00 $13 $06 $07
.db $00 $11 $A2 $1A $C4 $00 $13 $0A
.db $00 $11 $0B $2A $1F $0D $00 $00
.db $00 $13 $06 $07 $00 $11 $A3 $1A
.db $C4 $00 $13 $0A $00 $11 $0B $2A
.db $1F $0D $00 $00 $0D $C6 $84 $2A
.db $C6 $84 $47 $C6 $84 $00 $12 $42
.db $00 $13 $05 $00 $11 $F9 $00 $13
.db $06 $07 $00 $11 $A1 $1A $C4 $00
.db $13 $0A $00 $11 $0B $2A $1F $0D
.db $00 $00 $00 $12 $42 $00 $13 $05
.db $00 $11 $F9 $00 $13 $06 $07 $00
.db $11 $A2 $1A $C4 $00 $13 $0A $00
.db $11 $0B $2A $1F $0D $00 $00 $00
.db $12 $42 $00 $13 $05 $00 $11 $F9
.db $00 $13 $06 $07 $00 $11 $A3 $1A
.db $C4 $00 $13 $0A $00 $11 $0B $2A
.db $1F $0D $00 $00 $00 $11 $1A $02
.db $00 $00 $00 $11 $02 $02 $04 $00
.db $00 $00 $11 $C4 $E9 $EA $F7 $BF
.db $00 $13 $25 $00 $11 $C4 $E9 $EA
.db $CC $14 $00 $12 $9E $00 $11 $19
.db $FE $00 $00 $00 $11 $C4 $00 $12
.db $A2 $A3 $00 $11 $F7 $BF $00 $13
.db $25 $00 $11 $C4 $00 $13 $01 $02
.db $00 $11 $19 $00 $13 $19 $00 $11
.db $C4 $C4 $C4 $C4 $00 $00 $C4 $F9
.db $00 $13 $0B $00 $11 $C4 $00 $12
.db $99 $00 $11 $C4 $C4 $00 $13 $02
.db $00 $11 $C4 $00 $00 $00 $13 $0B
.db $00 $11 $A1 $00 $12 $99 $00 $00
.db $00 $13 $0B $00 $11 $A2 $00 $12
.db $99 $00 $00 $00 $13 $24 $00 $13
.db $02 $00 $11 $A1 $C4 $00 $00 $00
.db $13 $24 $00 $13 $02 $00 $11 $A2
.db $C4 $00 $00 $00 $12 $A7 $00 $11
.db $DF $E0 $00 $00 $00 $11 $C4 $C4
.db $C4 $C4 $00 $00 $13 $C7 $84 $19
.db $C7 $84 $1F $C7 $84 $25 $C7 $84
.db $2B $C7 $84 $01 $00 $00 $00 $4E
.db $37 $01 $00 $00 $00 $4E $37 $01
.db $00 $00 $00 $4E $37 $01 $00 $00
.db $00 $4E $3B $01 $00 $00 $00 $4E
.db $37 $61 $C7 $84 $C5 $C7 $84 $21
.db $C8 $84 $6D $C8 $84 $B0 $C8 $84
.db $00 $C9 $84 $48 $C9 $84 $90 $C9
.db $84 $9E $C9 $84 $BC $C9 $84 $EF
.db $C9 $84 $32 $CA $84 $7E $CA $84
.db $C1 $CA $84 $E8 $CA $84 $0F $CB
.db $84 $18 $00 $00 $00 $60 $35 $00
.db $10 $62 $35 $00 $20 $62 $35 $00
.db $30 $62 $35 $00 $40 $62 $35 $00
.db $50 $62 $35 $00 $60 $64 $35 $60
.db $00 $66 $35 $00 $60 $10 $68 $35
.db $60 $20 $68 $35 $60 $30 $68 $35
.db $60 $40 $68 $35 $60 $50 $68 $35
.db $60 $60 $6A $35 $10 $00 $6C $35
.db $20 $00 $6C $35 $00 $30 $00 $6C
.db $35 $40 $00 $6C $35 $50 $00 $6C
.db $35 $10 $60 $6E $35 $20 $60 $6E
.db $35 $30 $60 $6E $35 $40 $60 $6E
.db $35 $50 $60 $6E $35 $16 $00 $00
.db $00 $60 $35 $00 $10 $62 $35 $00
.db $20 $62 $35 $00 $30 $62 $35 $00
.db $40 $62 $35 $00 $50 $62 $35 $00
.db $60 $64 $35 $50 $00 $66 $35 $00
.db $50 $10 $68 $35 $50 $20 $68 $35
.db $50 $30 $68 $35 $50 $40 $68 $35
.db $50 $50 $68 $35 $50 $60 $6A $35
.db $10 $00 $6C $35 $20 $00 $6C $35
.db $00 $30 $00 $6C $35 $40 $00 $6C
.db $35 $10 $60 $6E $35 $20 $60 $6E
.db $35 $30 $60 $6E $35 $40 $60 $6E
.db $35 $12 $00 $00 $00 $60 $35 $00
.db $10 $62 $35 $00 $20 $62 $35 $00
.db $30 $62 $35 $00 $40 $62 $35 $00
.db $50 $62 $35 $00 $60 $64 $35 $30
.db $00 $66 $35 $00 $30 $10 $68 $35
.db $30 $20 $68 $35 $30 $30 $68 $35
.db $30 $40 $68 $35 $30 $50 $68 $35
.db $30 $60 $6A $35 $10 $00 $6C $35
.db $20 $00 $6C $35 $00 $10 $60 $6E
.db $35 $20 $60 $6E $35 $10 $00 $00
.db $00 $60 $35 $00 $10 $62 $35 $00
.db $20 $62 $35 $00 $30 $62 $35 $00
.db $40 $62 $35 $00 $50 $62 $35 $00
.db $60 $64 $35 $20 $00 $66 $35 $00
.db $20 $10 $68 $35 $20 $20 $68 $35
.db $20 $30 $68 $35 $20 $40 $68 $35
.db $20 $50 $68 $35 $20 $60 $6A $35
.db $10 $00 $6C $35 $10 $60 $6E $35
.db $13 $00 $00 $00 $60 $35 $00 $10
.db $62 $35 $00 $20 $62 $35 $00 $30
.db $62 $35 $00 $40 $62 $35 $00 $50
.db $62 $35 $00 $60 $62 $35 $00 $70
.db $62 $35 $00 $40 $00 $66 $35 $40
.db $10 $68 $35 $40 $20 $68 $35 $40
.db $30 $68 $35 $40 $40 $68 $35 $40
.db $50 $68 $35 $40 $60 $68 $35 $40
.db $70 $68 $35 $00 $10 $00 $6C $35
.db $20 $00 $6C $35 $30 $00 $6C $35
.db $11 $00 $00 $00 $62 $35 $00 $10
.db $62 $35 $00 $20 $62 $35 $00 $30
.db $62 $35 $00 $40 $62 $35 $00 $50
.db $62 $35 $00 $60 $64 $35 $40 $00
.db $68 $35 $00 $40 $10 $68 $35 $40
.db $20 $68 $35 $40 $30 $68 $35 $40
.db $40 $68 $35 $40 $50 $68 $35 $40
.db $60 $6A $35 $10 $60 $6E $35 $20
.db $60 $6E $35 $00 $30 $60 $6E $35
.db $11 $00 $00 $00 $60 $35 $00 $10
.db $62 $35 $00 $20 $62 $35 $00 $30
.db $62 $35 $00 $40 $62 $35 $00 $50
.db $62 $35 $00 $60 $62 $35 $00 $70
.db $62 $35 $00 $20 $00 $66 $35 $20
.db $10 $68 $35 $20 $20 $68 $35 $20
.db $30 $68 $35 $20 $40 $68 $35 $20
.db $50 $68 $35 $20 $60 $68 $35 $20
.db $70 $68 $35 $00 $10 $00 $6C $35
.db $03 $00 $00 $00 $64 $35 $20 $00
.db $6A $35 $10 $00 $6E $35 $07 $00
.db $00 $00 $62 $35 $00 $10 $62 $35
.db $00 $20 $64 $35 $20 $00 $68 $35
.db $20 $10 $68 $35 $20 $20 $6A $35
.db $10 $20 $6E $35 $0C $00 $00 $00
.db $60 $35 $00 $10 $62 $35 $00 $20
.db $62 $35 $00 $30 $64 $35 $30 $00
.db $66 $35 $30 $10 $68 $35 $30 $20
.db $68 $35 $30 $30 $6A $35 $00 $10
.db $00 $6C $35 $20 $00 $6C $35 $10
.db $30 $6E $35 $20 $30 $6E $35 $10
.db $00 $00 $00 $60 $35 $00 $10 $62
.db $35 $00 $20 $62 $35 $00 $30 $62
.db $35 $00 $40 $62 $35 $00 $50 $62
.db $35 $00 $60 $62 $35 $30 $00 $66
.db $35 $00 $30 $10 $68 $35 $30 $20
.db $68 $35 $30 $30 $68 $35 $30 $40
.db $68 $35 $30 $50 $68 $35 $30 $60
.db $68 $35 $10 $00 $6C $35 $20 $00
.db $6C $35 $12 $00 $00 $00 $62 $35
.db $00 $10 $62 $35 $00 $20 $62 $35
.db $00 $30 $62 $35 $00 $40 $62 $35
.db $00 $50 $62 $35 $00 $60 $62 $35
.db $00 $70 $64 $35 $00 $30 $00 $68
.db $35 $30 $10 $68 $35 $30 $20 $68
.db $35 $30 $30 $68 $35 $30 $40 $68
.db $35 $30 $50 $68 $35 $30 $60 $68
.db $35 $30 $70 $6A $35 $00 $10 $70
.db $6E $35 $20 $70 $6E $35 $10 $00
.db $FC $FC $60 $35 $FC $0C $62 $35
.db $FC $14 $62 $35 $FC $24 $64 $35
.db $0C $FC $6C $35 $0C $0C $A4 $35
.db $0C $14 $A4 $35 $0C $24 $6E $35
.db $00 $24 $FC $66 $35 $24 $0C $68
.db $35 $24 $14 $68 $35 $24 $24 $6A
.db $35 $1C $FC $6C $35 $1C $0C $A4
.db $35 $1C $14 $A4 $35 $1C $24 $6E
.db $35 $09 $00 $00 $00 $60 $35 $00
.db $10 $62 $35 $00 $20 $64 $35 $10
.db $00 $6C $35 $10 $10 $A4 $35 $10
.db $20 $6E $35 $20 $00 $66 $35 $20
.db $10 $68 $35 $00 $20 $20 $6A $35
.db $09 $00 $04 $04 $60 $35 $04 $10
.db $62 $35 $04 $1C $64 $35 $1C $04
.db $66 $35 $1C $10 $68 $35 $1C $1C
.db $6A $35 $10 $04 $6C $35 $10 $1C
.db $6E $35 $00 $14 $10 $A4 $35 $04
.db $00 $08 $08 $60 $35 $08 $18 $64
.db $35 $18 $08 $66 $35 $18 $18 $6A
.db $35

L84CB21:
	php
L84CB22:
	rep #$30
	lda $141E
	and #$00FF
	asl A
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
	jsl $8087EA
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
	inc A
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
	inc A
	sta $0E0F
	rep #$20
	jsr L848C79
L84CDAD:
	lda $0127
	and #$4000
	beq L84CDC3
	sep #$20
	lda $0E0F
	dec A
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
	jsl $8087EA
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
	jsl $8087EA
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
	asl A
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
	jsl $8087EA
	lda #$0001
	sta $146A
	lda #$0134
	cmp $DF4D,X
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
	cmp $DFA3,X
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
	jsl $80B4E3
	lda #$0076
	jsl $80B4BB
	jsl $8087EA
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
	dec A
	bne L84CF4B
	pla
	dec A
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
	jsl $8087EA
	lda $15A4
	inc A
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
	inc A
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
	jsl $8087EA
	sep #$20
	lda $F7
	ora #$70
	sta $F7
	rep #$30
	lda #$0077
	jsl $80B4BB
	jsl $8087EA
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
	dec A
	bne L84D055
	pla
	dec A
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
	jsl $8087EA
	lda $1412
	cmp #$1800
	bcc L84D0A5
	beq L84D0A5
	bra L84D0D3

L84D0A5:
	lda $15A4
	inc A
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
	dec A
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
	jsl $80B4E3
	jsl $8087EA
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
	dec A
	bne L84D118
	pla
	dec A
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
	dec A
	bne L84D12A
	pla
	dec A
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
	jsl $808CEA
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
	cmp $DF4D,X
	beq L84D187
	lda $1408
	clc
	adc $15B0
	sta $1408
	lda $1408
	cmp $DF4D,X
	bmi L84D187
	lda $DF4D,X
	sta $1408
L84D187:
	lda $140C
	cmp $DFF9,X
	beq L84D1A7
	lda $140C
	clc
	adc $15B0
	sta $140C
	lda $140C
	cmp $DFF9,X
	bmi L84D1A7
	lda $DFF9,X
	sta $140C
L84D1A7:
	bra L84D1ED

L84D1A9:
	lda $1408
	cmp $DF4D,X
	beq L84D1CB
	lda $1408
	sec
	sbc $15B0
	sta $1408
	lda $1408
	cmp $DF4D,X
	bmi L84D1C5
	bne L84D1CB
L84D1C5:
	lda $DF4D,X
	sta $1408
L84D1CB:
	lda $140C
	cmp $DFF9,X
	beq L84D1ED
	lda $140C
	sec
	sbc $15B0
	sta $140C
	lda $140C
	cmp $DFF9,X
	bmi L84D1E7
	bne L84D1ED
L84D1E7:
	lda $DFF9,X
	sta $140C
L84D1ED:
	lda $15B2
	cmp #$FFFF
	beq L84D237
	lda $140A
	cmp $DFA3,X
	beq L84D215
	lda $140A
	clc
	adc $15B0
	sta $140A
	lda $140A
	cmp $DFA3,X
	bmi L84D215
	lda $DFA3,X
	sta $140A
L84D215:
	lda $140E
	cmp $E04F,X
	beq L84D235
	lda $140E
	clc
	adc $15B0
	sta $140E
	lda $140E
	cmp $E04F,X
	bmi L84D235
	lda $E04F,X
	sta $140E
L84D235:
	bra L84D27B

L84D237:
	lda $140A
	cmp $DFA3,X
	beq L84D259
	lda $140A
	sec
	sbc $15B0
	sta $140A
	lda $140A
	cmp $DFA3,X
	bmi L84D253
	bne L84D259
L84D253:
	lda $DFA3,X
	sta $140A
L84D259:
	lda $140E
	cmp $E04F,X
	beq L84D27B
	lda $140E
	sec
	sbc $15B0
	sta $140E
	lda $140E
	cmp $E04F,X
	bmi L84D275
	bne L84D27B
L84D275:
	lda $E04F,X
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
	asl A
	tax
	lda $E1FD,X
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
	lda $DF4D,X
	sta $1408
	lda $DFA3,X
	sta $140A
	lda $DFF9,X
	sta $140C
	lda $E04F,X
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
	jsl $8087EA
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
	dec A
	bne L84D353
	pla
	dec A
	bne L84D34F
L84D35C:
	sep #$20
	lda $A6
	dec A
	sta $A6
	rep #$30
	jsl $8087EA
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
	dec A
	bne L84D3A3
	pla
	dec A
	bne L84D39F
L84D3AC:
	lda #$0002
	sta $A4
	lda #$0001
	sta $A5
	jsl $8087EA
	sep #$20
	lda $F7
	ora #$40
	sta $F7
	rep #$30
L84D3C4:
	lda #$80B6
	sta $0876
	jsl $8087EA
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
	dec A
	bne L84D40A
	pla
	dec A
	bne L84D406
L84D413:
	jsl $8087EA
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
	dec A
	sta $17
	lda $17
	cmp #$0000
	bpl L84D3FB
	lda #$0001
	sta $146A
L84D43C:
	lda $1408
	cmp $E0A5,X
	beq L84D4B1
	sep #$20
	lda $DEF7,X
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
	cmp $E0A5,X
	bmi L84D4B1
	beq L84D4B1
	lda $E0A5,X
	sta $1408
	lda $E151,X
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
	cmp $E0A5,X
	bpl L84D4B1
	lda $E0A5,X
	sta $1408
	lda $E151,X
	sta $140C
	lda #$0000
	sta $15B2
L84D4B1:
	rep #$30
	lda $140A
	cmp $E0FB,X
	beq L84D528
	sep #$20
	lda $DEF8,X
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
	cmp $E0FB,X
	bmi L84D528
	beq L84D528
	lda $E0FB,X
	sta $140A
	lda $E1A7,X
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
	cmp $E0FB,X
	bpl L84D528
	lda $E0FB,X
	sta $140A
	lda $E1A7,X
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
	jsl $8087EA
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
	dec A
	bne L84D57B
	pla
	dec A
	bne L84D577
L84D584:
	lda $1408
	cmp $E0A5,X
	bne L84D58E
	bra L84D591

L84D58E:
	brl L84D43C

L84D591:
	lda $140A
	cmp $E0FB,X
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
	dec A
	bne L84D5D3
	pla
	dec A
	bne L84D5CF
L84D5DC:
	jsl $8087EA
	lda $17
	inc A
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
	jsl $8087EA
	lda #$0000
	sta $15B2
L84D608:
	lda $140A
	inc A
	sta $140A
	lda $140E
	inc A
	sta $140E
	lda $15B4
	cmp #$0000
	beq L84D633
	sep #$20
	lda $0E0F
	dec A
	sta $0E0F
	rep #$20
	jsr L848C79
	lda $15B4
	dec A
	sta $15B4
L84D633:
	lda $15B2
	inc A
	sta $15B2
	jsr L84E55A
	jsl $8087EA
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
	dec A
	bne L84D66E
	pla
	dec A
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
	jsl $808CEA
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
	asl A
	tax
	phx
	lda $DF4D,X
	sta $1408
	lda $DFA3,X
	sta $140A
	lda $DFF9,X
	sta $140C
	lda $E04F,X
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
	jsl $8087EA
	lda #$0001
	sta $146A
	sep #$20
	lda $F7
	ora #$70
	sta $F7
	rep #$30
	jsl $8087EA
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
	dec A
	bne L84D717
	pla
	dec A
	bne L84D713
L84D720:
	sep #$20
	lda $7A
	inc A
	sta $7A
	rep #$30
	jsl $8087EA
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
	dec A
	bne L84D769
	pla
	dec A
	bne L84D765
L84D772:
	lda #$0003
	sta $141E
	plp
	rts

L84D77A:
	jsl $808CEA
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
	sta $2181
	sep #$20
	lda #$00
	sta $2183
	ldy #$000A
L84D79C:
	stz $2180
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
	sta $2181
	sep #$20
	lda #$00
	sta $2183
	ldy #$0025
L84D802:
	stz $2180
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
	lda $D9D7,Y
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
	lda $D9D7,Y
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
	lda $D9D7,Y
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
	lda $D9D7,Y
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
	lda $DB3F,Y
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
	lda $DB3F,Y
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
	lda $DB3F,Y
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
	lda $DB3F,Y
	sta $19
L84D975:
	lda $19
	sta $1551,X
	iny
	inx
	cpx #$14
	bne L84D926
	lda $1569
	dec A
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

.db $00
.db $00 $03 $00 $06 $00 $0A $00 $0D
.db $00 $11 $00 $14 $00 $17 $00 $1A
.db $00 $1D $00 $20 $00 $22 $00 $25
.db $00 $27 $00 $29 $00 $2B $00 $2C
.db $00 $2E $00 $2F $00 $30 $00 $31
.db $00 $31 $00 $31 $00 $31 $00 $31
.db $00 $31 $00 $30 $00 $2F $00 $2E
.db $00 $2C $00 $2B $00 $29 $00 $27
.db $00 $25 $00 $22 $00 $20 $00 $1D
.db $00 $1A $00 $17 $00 $14 $00 $11
.db $00 $0D $00 $0A $00 $06 $00 $03
.db $00 $00 $00 $FD $FF $FA $FF $F6
.db $FF $F3 $FF $EF $FF $EC $FF $E9
.db $FF $E6 $FF $E3 $FF $E0 $FF $DE
.db $FF $DB $FF $D9 $FF $D7 $FF $D5
.db $FF $D4 $FF $D2 $FF $D1 $FF $D0
.db $FF $CF $FF $CF $FF $CF $FF $CF
.db $FF $CF $FF $CF $FF $D0 $FF $D1
.db $FF $D2 $FF $D4 $FF $D5 $FF $D7
.db $FF $D9 $FF $DB $FF $DE $FF $E0
.db $FF $E3 $FF $E6 $FF $E9 $FF $EC
.db $FF $EF $FF $F3 $FF $F6 $FF $FA
.db $FF $FD $FF $00 $00 $03 $00 $06
.db $00 $0A $00 $0D $00 $11 $00 $14
.db $00 $17 $00 $1A $00 $1D $00 $20
.db $00 $22 $00 $25 $00 $27 $00 $29
.db $00 $2B $00 $2C $00 $2E $00 $2F
.db $00 $30 $00 $31 $00 $31 $00 $31
.db $00 $31 $00 $31 $00 $31 $00 $30
.db $00 $2F $00 $2E $00 $2C $00 $2B
.db $00 $29 $00 $27 $00 $25 $00 $22
.db $00 $20 $00 $1D $00 $1A $00 $17
.db $00 $14 $00 $11 $00 $0D $00 $0A
.db $00 $06 $00 $03 $00 $00 $00 $FD
.db $FF $FA $FF $F6 $FF $F3 $FF $EF
.db $FF $EC $FF $E9 $FF $E6 $FF $E3
.db $FF $E0 $FF $DE $FF $DB $FF $D9
.db $FF $D7 $FF $D5 $FF $D4 $FF $D2
.db $FF $D1 $FF $D0 $FF $CF $FF $CF
.db $FF $CF $FF $CF $FF $CF $FF $CF
.db $FF $D0 $FF $D1 $FF $D2 $FF $D4
.db $FF $D5 $FF $D7 $FF $D9 $FF $DB
.db $FF $DE $FF $E0 $FF $E3 $FF $E6
.db $FF $E9 $FF $EC $FF $EF $FF $F3
.db $FF $F6 $FF $FA $FF $FD $FF $0F
.db $0F $0E $0D $0C $0B $0A $09 $08
.db $08 $08 $08 $09 $0A $0B $0C $0D
.db $0E $0F $0F $0F $0F $0E $0D $0C
.db $0B $0A $09 $08 $08 $08 $08 $09
.db $0A $0B $0C $0D $0E $0F $0F

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
	jsl $80B4BB
	jsl $8087EA
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
	dec A
	bne L84DB9B
	pla
	dec A
	bne L84DB97
L84DBA4:
	lda $140A
	dec A
	sta $140A
	lda $140E
	dec A
	sta $140E
	lda $15B2
	inc A
	sta $15B2
	jsr L84E55A
	jsl $8087EA
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
	dec A
	bne L84DBFE
	pla
	dec A
	bne L84DBFA
L84DC07:
	sep #$20
	lda $0E0F
	dec A
	sta $0E0F
	rep #$30
	jsr L848C79
	jsl $8087EA
	lda $15B0
	dec A
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
	jsl $80B4BB
	jsl $8087EA
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
	dec A
	bne L84DC6A
	pla
	dec A
	bne L84DC66
L84DC73:
	sep #$20
	lda $15B4
	bit #$01
	bne L84DC80
	clc
	ror A
	bra L84DC82

L84DC80:
	sec
	ror A
L84DC82:
	sta $15B4
	lda $15B4
	bit #$01
	bne L84DC90
	clc
	ror A
	bra L84DC92

L84DC90:
	sec
	ror A
L84DC92:
	sta $15B4
	lda $15B4
	bit #$01
	bne L84DCA0
	clc
	ror A
	bra L84DCA2

L84DCA0:
	sec
	ror A
L84DCA2:
	sta $15B4
	lda $15B4
	bit #$01
	bne L84DCB0
	clc
	ror A
	bra L84DCB2

L84DCB0:
	sec
	ror A
L84DCB2:
	sta $15B4
	lda $15B4
	inc A
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
	rol A
	bra L84DCD3

L84DCD1:
	sec
	rol A
L84DCD3:
	sta $15B4
	lda $15B4
	bmi L84DCDF
	clc
	rol A
	bra L84DCE1

L84DCDF:
	sec
	rol A
L84DCE1:
	sta $15B4
	lda $15B4
	bmi L84DCED
	clc
	rol A
	bra L84DCEF

L84DCED:
	sec
	rol A
L84DCEF:
	sta $15B4
	lda $15B4
	bmi L84DCFB
	clc
	rol A
	bra L84DCFD

L84DCFB:
	sec
	rol A
L84DCFD:
	sta $15B4
	lda $15B5
	dec A
	sta $15B5
	lda $15B4
	sta $7F
	lda $7A
	dec A
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
	dec A
	sta $0E0F
L84DD29:
	rep #$30
	jsr L848C79
	jsl $8087EA
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
	jsl $808CEA
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
	lda $84E5AF,X
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
	jsl $80B4E3
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
	jsl $8087EA
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
	dec A
	bne L84DDF8
	pla
	dec A
	bne L84DDF4
L84DE01:
	sep #$20
	lda $A6
	inc A
	sta $A6
	rep #$30
	jsl $8087EA
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
	asl A
	tax
	lda $DEA1,X
	sta $0876
L84DE58:
	plp
	rts

L84DE5A:
	jsl $808CEA
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
	jsl $80B4E3
	lda #$04F0
	jsl $80B4E3
	jsl $8087EA
	sep #$20
	lda #$01
	sta $07D6
	lda #$09
	sta $0E00
	plp
	rts

.db $00 $00 $1C $80 $1C $80 $1C
.db $80 $1C $80 $1C $80 $1C $80 $1C
.db $80 $1C $80 $1C $80 $1C $80 $1C
.db $80 $1C $80 $1C $80 $1C $80 $1D
.db $80 $1D $80 $1D $80 $1D $80 $1D
.db $80 $1D $80 $31 $80 $31 $80 $31
.db $80 $31 $80 $31 $80 $31 $80 $31
.db $80 $31 $80 $33 $80 $33 $80 $33
.db $80 $33 $80 $33 $80 $33 $80 $35
.db $80 $35 $80 $35 $80 $35 $80 $35
.db $80 $35 $80 $36 $80 $36 $80 $00
.db $00 $00 $FF $FF $00 $FF $00 $FF
.db $FF $FF $FF $00 $00 $00 $00 $FF
.db $00 $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $00 $FF $FF $FF $00 $00
.db $00 $00 $00 $FF $FF $00 $00 $FF
.db $FF $FF $00 $00 $00 $00 $FF $FF
.db $00 $FF $FF $FF $FF $00 $FF $00
.db $FF $00 $00 $00 $FF $FF $FF $00
.db $FF $00 $FF $FF $FF $FF $00 $FF
.db $FF $00 $00 $00 $FF $00 $00 $FF
.db $FF $FF $00 $FF $FF $00 $00 $F0
.db $00 $EA $01 $90 $01 $68 $01 $38
.db $01 $36 $01 $66 $01 $E0 $01 $98
.db $01 $82 $01 $80 $01 $20 $01 $FC
.db $00 $F0 $00 $EE $00 $B4 $00 $B0
.db $00 $18 $01 $D6 $00 $1A $01 $F0
.db $00 $B0 $00 $10 $01 $18 $01 $10
.db $01 $B2 $00 $B0 $00 $B4 $00 $C2
.db $00 $F4 $00 $F4 $00 $D6 $00 $8A
.db $01 $B8 $01 $B8 $01 $F0 $00 $EF
.db $00 $20 $01 $54 $01 $82 $01 $7E
.db $01 $0E $01 $00 $00 $31 $01 $27
.db $01 $2B $01 $2B $01 $03 $01 $F5
.db $00 $49 $01 $71 $01 $A3 $01 $87
.db $01 $7D $01 $4D $01 $0D $01 $35
.db $01 $2D $01 $35 $01 $95 $01 $C9
.db $01 $C9 $00 $97 $01 $31 $01 $95
.db $01 $E1 $01 $C9 $01 $E1 $01 $95
.db $01 $93 $01 $35 $01 $FB $00 $11
.db $01 $0D $01 $C9 $00 $A5 $00 $6B
.db $00 $6D $00 $35 $01 $2D $01 $4D
.db $01 $41 $01 $85 $01 $7B $01 $A9
.db $01 $00 $00 $74 $00 $6E $01 $14
.db $01 $EC $00 $BC $00 $BA $00 $EA
.db $00 $64 $01 $1C $01 $06 $01 $04
.db $01 $A4 $00 $82 $00 $76 $00 $74
.db $00 $38 $00 $34 $00 $9C $00 $5A
.db $00 $9E $00 $74 $00 $34 $00 $94
.db $00 $9C $00 $94 $00 $36 $00 $34
.db $00 $38 $00 $48 $00 $78 $00 $78
.db $00 $5A $00 $0E $01 $3E $01 $3E
.db $01 $76 $00 $74 $00 $A4 $00 $D8
.db $00 $06 $01 $02 $01 $92 $00 $00
.db $00 $C2 $00 $BC $00 $BE $00 $BE
.db $00 $96 $00 $88 $00 $DE $00 $06
.db $01 $36 $01 $1A $01 $12 $01 $E0
.db $00 $A0 $00 $C8 $00 $C0 $00 $C8
.db $00 $28 $01 $5E $01 $5E $00 $2A
.db $01 $C2 $00 $28 $01 $76 $01 $5E
.db $01 $76 $01 $2A $01 $28 $01 $C8
.db $00 $92 $00 $A6 $00 $A2 $00 $5E
.db $00 $38 $00 $02 $00 $02 $00 $C8
.db $00 $C0 $00 $E0 $00 $D4 $00 $18
.db $01 $08 $01 $36 $01 $00 $00 $08
.db $02 $B6 $01 $74 $01 $44 $01 $36
.db $01 $66 $01 $C8 $01 $A8 $01 $8A
.db $01 $80 $01 $28 $01 $02 $01 $F2
.db $00 $EE $00 $B4 $00 $BA $00 $18
.db $01 $D6 $00 $0A $01 $18 $01 $BA
.db $00 $14 $01 $26 $01 $02 $01 $BA
.db $00 $B0 $00 $B4 $00 $C0 $00 $02
.db $01 $F4 $00 $D4 $00 $8A $01 $BA
.db $01 $B6 $01 $F2 $00 $EE $00 $28
.db $01 $54 $01 $8A $01 $7E $01 $0E
.db $01 $F8 $00 $00 $00 $23 $01 $31
.db $01 $2F $01 $F7 $00 $F5 $00 $49
.db $01 $91 $01 $9D $01 $87 $01 $7D
.db $01 $43 $01 $13 $01 $29 $01 $2D
.db $01 $35 $01 $99 $01 $D1 $01 $C9
.db $00 $99 $01 $91 $01 $89 $01 $F3
.db $01 $D5 $01 $DF $01 $99 $01 $93
.db $01 $3F $01 $19 $01 $13 $01 $0D
.db $01 $E1 $00 $A5 $00 $79 $00 $65
.db $00 $29 $01 $2D $01 $43 $01 $41
.db $01 $87 $01 $7B $01 $A9 $01 $9D
.db $01 $00 $00 $8C $01 $3C $01 $FA
.db $00 $C8 $00 $BA $00 $EC $00 $4C
.db $01 $2C $01 $10 $01 $04 $01 $AC
.db $00 $88 $00 $76 $00 $74 $00 $3A
.db $00 $3E $00 $9C $00 $5A $00 $8E
.db $00 $9C $00 $3E $00 $98 $00 $AA
.db $00 $86 $00 $3E $00 $34 $00 $38
.db $00 $46 $00 $88 $00 $78 $00 $58
.db $00 $0E $01 $3E $01 $3C $01 $76
.db $00 $74 $00 $AE $00 $D8 $00 $0E
.db $01 $02 $01 $92 $00 $7C $00 $00
.db $00 $B8 $00 $C6 $00 $C4 $00 $8A
.db $00 $88 $00 $DA $00 $26 $01 $30
.db $01 $1C $01 $10 $01 $D8 $00 $A8
.db $00 $BC $00 $C2 $00 $C8 $00 $2E
.db $01 $64 $01 $5E $00 $2E $01 $24
.db $01 $1E $01 $86 $01 $68 $01 $74
.db $01 $2E $01 $28 $01 $D4 $00 $AE
.db $00 $A8 $00 $A2 $00 $72 $00 $38
.db $00 $0C $00 $FA $FF $B8 $00 $C0
.db $00 $D6 $00 $D4 $00 $1A $01 $08
.db $01 $36 $01 $2A $01 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $FF
.db $FF $00 $00 $00 $00 $00 $00 $00
.db $00 $FF $FF $00 $00 $00 $00 $00
.db $00 $FF $FF $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $FF $FF $00
.db $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $FF $FF $00 $00 $00 $00 $00
.db $00 $FF $FF $00 $00 $00 $00 $00
.db $00 $FF $FF $00 $00 $FF $FF $00
.db $00 $00 $00 $00 $00 $FF $FF $00
.db $00 $FF $FF

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
	jsl $808D1E
	lda $32
	sta $1400
	lda $1406
	sta $2D
	lda $1414
	sta $2F
	jsl $808D1E
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
	jsl $808D1E
	lda $32
	sta $1402
	lda $1404
	sta $2D
	lda $1414
	sta $2F
	jsl $808D1E
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
	asl A
	tay
	lda $E39E,Y
	bra L84E39C

L84E35E:
	cpy #$00B5
	bpl L84E372
	lda #$00B4
	sty $15
	sec
	sbc $15
	asl A
	tay
	lda $E39E,Y
	bra L84E39C

L84E372:
	cpy #$010F
	bpl L84E38B
	lda #$00B4
	sta $15
	tya
	sec
	sbc $15
	asl A
	tay
	lda $E39E,Y
	eor #$FFFF
	inc A
	bra L84E39C

L84E38B:
	lda #$0168
	sty $15
	sec
	sbc $15
	asl A
	tay
	lda $E39E,Y
	eor #$FFFF
	inc A
L84E39C:
	plp
	rts

.db $00 $00
.db $04 $00 $08 $00 $0D $00 $11 $00
.db $16 $00 $1A $00 $1F $00 $23 $00
.db $28 $00 $2C $00 $30 $00 $35 $00
.db $39 $00 $3D $00 $42 $00 $46 $00
.db $4A $00 $4F $00 $53 $00 $57 $00
.db $5B $00 $5F $00 $64 $00 $68 $00
.db $6C $00 $70 $00 $74 $00 $78 $00
.db $7C $00 $7F $00 $83 $00 $87 $00
.db $8B $00 $8F $00 $92 $00 $96 $00
.db $9A $00 $9D $00 $A1 $00 $A4 $00
.db $A7 $00 $AB $00 $AE $00 $B1 $00
.db $B5 $00 $B8 $00 $BB $00 $BE $00
.db $C1 $00 $C4 $00 $C6 $00 $C9 $00
.db $CC $00 $CF $00 $D1 $00 $D4 $00
.db $D6 $00 $D9 $00 $DB $00 $DD $00
.db $DF $00 $E2 $00 $E4 $00 $E6 $00
.db $E8 $00 $E9 $00 $EB $00 $ED $00
.db $EE $00 $F0 $00 $F2 $00 $F3 $00
.db $F4 $00 $F6 $00 $F7 $00 $F8 $00
.db $F9 $00 $FA $00 $FB $00 $FC $00
.db $FC $00 $FD $00 $FE $00 $FE $00
.db $FF $00 $FF $00 $FF $00 $FF $00
.db $FF $00 $00 $01

L84E454:
	php
	rep #$30
	cpy #$005B
	bpl L84E464
	tya
	asl A
	tay
	lda $E4A4,Y
	bra L84E4A2

L84E464:
	cpy #$00B5
	bpl L84E47C
	lda #$00B4
	sty $15
	sec
	sbc $15
	asl A
	tay
	lda $E4A4,Y
	eor #$FFFF
	inc A
	bra L84E4A2

L84E47C:
	cpy #$010F
	bpl L84E495
	lda #$00B4
	sta $15
	tya
	sec
	sbc $15
	asl A
	tay
	lda $E4A4,Y
	eor #$FFFF
	inc A
	bra L84E4A2

L84E495:
	lda #$0168
	sty $15
	sec
	sbc $15
	asl A
	tay
	lda $E4A4,Y
L84E4A2:
	plp
	rts

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
	lda $E5AF,X
	rep #$30
	and #$00FF
	tay
	sep #$30
	lda $E5DA,X
	rep #$30
	and #$00FF
	sta $1586
	jsr L84E605
L84E5AD:
	plp
	rts

.db $00
.db $05 $05 $06 $07 $06 $05 $04 $07
.db $06 $06 $07 $06 $05 $07 $07 $07
.db $06 $06 $06 $05 $05 $06 $06 $05
.db $05 $03 $03 $06 $04 $04 $04 $04
.db $03 $05 $04 $04 $04 $03 $04 $03
.db $03 $03 $00 $18 $18 $10 $08 $10
.db $18 $20 $08 $10 $10 $08 $10 $18
.db $08 $08 $08 $10 $10 $10 $18 $18
.db $10 $10 $18 $18 $28 $28 $10 $20
.db $20 $20 $20 $28 $18 $20 $20 $20
.db $28 $20 $28 $28 $28

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
	lda #$8400
	sta $63
	lda #$E836
	sta $62
	jsl $8093A2
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
	lda #$8400
	sta $63
	lda #$E836
	sta $62
	jsl $8093A2
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
	lda #$8400
	sta $63
	lda #$E836
	sta $62
	jsl $8093A2
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
	lda #$8400
	sta $04
	lda #$E821
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
	lda #$8400
	sta $04
	lda #$C6DB
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
	lda #$8400
	sta $04
	lda #$C6E7
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

.db $00 $13 $0B $00 $11 $C4 $00
.db $12 $99 $00 $11 $C4 $C4 $00 $13
.db $02 $00 $11 $C4 $00 $00 $4B $E8
.db $84 $5D $E8 $84 $73 $E8 $84 $91
.db $E8 $84 $B8 $E8 $84 $E7 $E8 $84
.db $1E $E9 $84 $04 $00 $00 $00 $62
.db $35 $00 $10 $62 $35 $20 $00 $68
.db $35 $20 $10 $68 $35 $05 $00 $00
.db $00 $62 $35 $00 $10 $64 $35 $20
.db $00 $68 $35 $20 $10 $6A $35 $10
.db $10 $6E $35 $07 $00 $00 $00 $62
.db $35 $00 $10 $62 $35 $00 $20 $64
.db $35 $20 $00 $68 $35 $20 $10 $68
.db $35 $20 $20 $6A $35 $10 $20 $6E
.db $35 $09 $00 $00 $00 $62 $35 $00
.db $10 $62 $35 $00 $20 $62 $35 $00
.db $30 $64 $35 $20 $00 $68 $35 $20
.db $10 $68 $35 $20 $20 $68 $35 $20
.db $30 $6A $35 $00 $10 $30 $6E $35
.db $0B $00 $00 $00 $62 $35 $00 $10
.db $62 $35 $00 $20 $62 $35 $00 $30
.db $62 $35 $00 $40 $64 $35 $20 $00
.db $68 $35 $20 $10 $68 $35 $20 $20
.db $68 $35 $00 $20 $30 $68 $35 $20
.db $40 $6A $35 $10 $40 $6E $35 $0D
.db $00 $00 $00 $62 $35 $00 $10 $62
.db $35 $00 $20 $62 $35 $00 $30 $62
.db $35 $00 $40 $62 $35 $00 $50 $64
.db $35 $20 $00 $68 $35 $20 $10 $68
.db $35 $00 $20 $20 $68 $35 $20 $30
.db $68 $35 $20 $40 $68 $35 $20 $50
.db $6A $35 $10 $50 $6E $35 $0D $00
.db $00 $00 $60 $35 $00 $10 $62 $35
.db $00 $20 $62 $35 $00 $30 $62 $35
.db $00 $40 $62 $35 $00 $50 $62 $35
.db $20 $00 $66 $35 $20 $10 $68 $35
.db $00 $20 $20 $68 $35 $20 $30 $68
.db $35 $20 $40 $68 $35 $20 $50 $68
.db $35 $10 $00 $6C $35 $08 $E2 $20
.db $A5 $87 $48 $A5 $A0 $48 $A5 $A2
.db $48 $A5 $A4 $48 $A5 $A5 $48 $A5
.db $A6 $48 $A9 $03 $85 $87 $A9 $01
.db $85 $A2 $A9 $40 $85 $A4 $A9 $81
.db $85 $A5 $A9 $FF $85 $A6 $20 $B2
.db $E9 $22 $EA $87 $80 $C2 $30 $F4
.db $00 $E0 $F4 $00 $FF $20 $D0 $E9
.db $68 $68 $20 $2C $EA $E2 $20 $68
.db $85 $A6 $68 $85 $A5 $68 $85 $A4
.db $68 $85 $A2 $68 $85 $A0 $68 $85
.db $87 $A9 $0F $85 $7A $20 $00 $EC
.db $28 $60 $08 $E2 $20 $A9 $01 $8D
.db $10 $43 $A9 $26 $8D $11 $43 $A9
.db $6B $8D $12 $43 $A9 $15 $8D $13
.db $43 $A9 $00 $8D $14 $43 $28 $60
.db $08 $E2 $20 $A3 $04 $8D $7A $15
.db $A3 $05 $8D $7B $15 $A3 $06 $8D
.db $78 $15 $A3 $07 $8D $79 $15 $AD
.db $7B $15 $38 $ED $7A $15 $4A $1A
.db $18 $6D $7A $15 $8D $7C $15 $1A
.db $8D $7D $15 $AD $79 $15 $38 $ED
.db $78 $15 $4A $1A $18 $6D $78 $15
.db $8D $7E $15 $1A $8D $7F $15 $C2
.db $30 $A9 $6B $15 $8D $81 $21 $E2
.db $20 $A9 $00 $8D $83 $21 $A0 $0D
.db $00 $9C $80 $21 $88 $C0 $00 $00
.db $D0 $F7 $28 $60 $08 $E2 $20 $A9
.db $0F $8D $6A $15 $AD $7A $15 $8D
.db $80 $15 $AD $7B $15 $8D $81 $15
.db $AD $78 $15 $8D $82 $15 $AD $79
.db $15 $8D $83 $15 $AD $7C $15 $8D
.db $7A $15 $AD $7D $15 $8D $7B $15
.db $AD $7E $15 $8D $78 $15 $AD $7F
.db $15 $8D $79 $15 $C2 $30 $A9 $00
.db $00 $8D $B4 $15 $C2 $30 $AD $27
.db $01 $89 $80 $00 $F0 $03 $82 $8D
.db $00 $20 $08 $EB $AD $B4 $15 $1A
.db $8D $B4 $15 $AD $B4 $15 $C9 $02
.db $00 $D0 $15 $A9 $00 $00 $8D $B4
.db $15 $E2 $20 $A5 $A6 $C9 $E0 $30
.db $07 $F0 $05 $A5 $A6 $3A $85 $A6
.db $E2 $20 $AD $7A $15 $CD $80 $15
.db $F0 $06 $3A $8D $7A $15 $80 $08
.db $AD $6A $15 $29 $0E $8D $6A $15
.db $AD $7B $15 $CD $81 $15 $F0 $06
.db $1A $8D $7B $15 $80 $08 $AD $6A
.db $15 $29 $0D $8D $6A $15 $AD $78
.db $15 $CD $82 $15 $F0 $06 $3A $8D
.db $78 $15 $80 $08 $AD $6A $15 $29
.db $0B $8D $6A $15 $AD $79 $15 $CD
.db $83 $15 $F0 $06 $1A $8D $79 $15
.db $80 $08 $AD $6A $15 $29 $07 $8D
.db $6A $15 $AD $6A $15 $C9 $00 $D0
.db $02 $80 $03 $82 $66 $FF $28 $60
.db $08 $22 $EA $87 $80 $E2 $20 $AD
.db $78 $15 $8D $A2 $15 $AD $79 $15
.db $38 $ED $78 $15 $1A $8D $A3 $15
.db $AD $A2 $15 $C9 $00 $D0 $0E $C2
.db $30 $A9 $00 $00 $85 $01 $A9 $6B
.db $15 $85 $00 $80 $52 $E2 $20 $AD
.db $A2 $15 $C9 $80 $10 $1A $AD $A2
.db $15 $8D $6B $15 $C2 $30 $A9 $FF
.db $00 $8D $6C $15 $A9 $00 $00 $85
.db $01 $A9 $6E $15 $85 $00 $80 $2F
.db $E2 $20 $A9 $7F $8D $6B $15 $C2
.db $30 $A9 $FF $00 $A9 $FF $00 $8D
.db $6C $15 $E2 $20 $AD $A2 $15 $38
.db $E9 $7F $8D $6E $15 $C2 $30 $A9
.db $FF $00 $8D $6F $15 $A9 $00 $00
.db $85 $01 $A9 $71 $15 $85 $00 $E2
.db $20 $AD $A3 $15 $C9 $80 $10 $23
.db $AD $A3 $15 $92 $00 $C2 $30 $AD
.db $7A $15 $E6 $00 $92 $00 $E2 $20
.db $A9 $01 $E6 $00 $E6 $00 $92 $00
.db $C2 $30 $A9 $FF $00 $E6 $00 $92
.db $00 $80 $39 $E2 $20 $A9 $7F $92
.db $00 $C2 $30 $AD $7A $15 $E6 $00
.db $92 $00 $E2 $20 $AD $A3 $15 $38
.db $E9 $7F $E6 $00 $E6 $00 $92 $00
.db $C2 $30 $AD $7A $15 $E6 $00 $92
.db $00 $E2 $20 $A9 $01 $E6 $00 $E6
.db $00 $92 $00 $C2 $30 $A9 $FF $00
.db $E6 $00 $92 $00 $E2 $20 $A5 $99
.db $09 $20 $85 $99 $A5 $F7 $09 $02
.db $85 $F7 $A9 $0F $85 $7A $28 $60
.db $08 $E2 $20 $A5 $F7 $29 $FD $85
.db $F7 $A5 $99 $29 $DF $85 $99 $28
.db $60

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
	asl A
	asl A
	asl A
	asl A
	pha
	lda $15AE
	xba
	and #$00FF
	sec
	sbc #$0002
	asl A
	asl A
	asl A
	asl A
	pha
	lda $15AE
	and #$00FF
	asl A
	asl A
	asl A
	asl A
	lsr A
	clc
	adc $15B0
	sec
	sbc #$0014
	sta $15A4
	lda $15AE
	xba
	and #$00FF
	asl A
	asl A
	asl A
	asl A
	lsr A
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
	asl A
	asl A
	asl A
	asl A
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
	asl A
	asl A
	asl A
	asl A
	sep #$20
	sta $15A3
	rep #$30
	lda $15B0
	sta $15A4
	lda $15B2
	sta $15A6
	lda $15AE
	and #$00FF
	asl A
	asl A
	asl A
	asl A
	lsr A
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
	asl A
	asl A
	asl A
	asl A
	lsr A
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
	asl A
	asl A
	asl A
	asl A
	tax
	lda #$0000
	sta $15AC
	lda $EEA4,X
	sta $15AE
	lda $EEA6,X
	sta $15B0
	lda $EEA8,X
	sta $15B2
	stx $27
	tya
	clc
	adc $27
	tax
	lda $EEAA,X
	sta $15B4
	pla
	cmp #$0008
	bmi L84EEA2
	sep #$30
	ldx $07DF
	lda $84E5DA,X
	rep #$30
	and #$00FF
	clc
	adc $15B0
	sta $15B0
L84EEA2:
	plp
	rts

.db $07 $07 $88 $00
.db $00 $00 $00 $00 $00 $01 $00 $00
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
	lsr A
	lsr A
	lsr A
	lsr A
	beq L84F15B
L84F131:
	pha
	asl A
	asl A
	asl A
	asl A
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
	dec A
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
	lsr A
	lsr A
	lsr A
	lsr A
	beq L84F1B2
L84F17E:
	pha
	asl A
	asl A
	asl A
	asl A
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
	dec A
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
	lsr A
	lsr A
	lsr A
	lsr A
L84F1F8:
	pha
	asl A
	asl A
	asl A
	asl A
	sta $1F
	lda $1B
	and #$00FF
	lsr A
	lsr A
	lsr A
	lsr A
	beq L84F248
L84F20A:
	pha
	asl A
	asl A
	asl A
	asl A
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
	dec A
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
	dec A
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
	lsr A
	lsr A
	lsr A
	lsr A
	beq L84F2C9
L84F29E:
	pha
	asl A
	asl A
	asl A
	asl A
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
	dec A
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
	lsr A
	lsr A
	lsr A
	lsr A
	beq L84F321
L84F2ED:
	pha
	asl A
	asl A
	asl A
	asl A
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
	dec A
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
	lda #$8400
	sta $63
	lda #$C731
	sta $62
	jsl $8093A2
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
	lda #$8400
	sta $63
	lda #$8000
	sta $62
	jsl $8093A2
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
	jsl $8087EA
	stz $52
	jsl $80954E
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
	lsr A
	lsr A
	lsr A
	lsr A
	beq L84F7EB
L84F7C1:
	pha
	asl A
	asl A
	asl A
	asl A
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
	dec A
	bne L84F7C1
L84F7EB:
	lda $1B
	and #$00FF
	lsr A
	lsr A
	lsr A
	lsr A
	beq L84F824
L84F7F6:
	pha
	asl A
	asl A
	asl A
	asl A
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
	dec A
	bne L84F7F6
L84F824:
	lda $1B
	and #$00FF
	lsr A
	lsr A
	lsr A
	lsr A
	beq L84F8A7
L84F82F:
	pha
	asl A
	asl A
	asl A
	asl A
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
	dec A
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
	jsl $80954E
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
	lda #$8400
	sta $63
	lda #$8000
	sta $62
	jsl $8093A2
	jsl $8087EA
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
	asl A
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
	jsl $87B932
L84F9A9:
	plp
	rts

L84F9AB:
.db $00 $00 $D6 $FA $FC
.db $FA $22 $FB $48 $FB $6E $FB $94
.db $FB $BA $FB $E0 $FB $06 $FC $2C
.db $FC $52 $FC $78 $FC $87 $FC $A4
.db $FC $C1 $FC $33 $FD $59 $FD $7F
.db $FD $BD $FD

L84F9D3:
	php
	rep #$30
	asl A
	asl A
	sta $17
	asl A
	clc
	adc $17
	tax
	lda $FA17,X
	sta $158D
	lda $FA19,X
	sta $158F
	lda $FA1B,X
	sta $1591
	lda $FA1D,X
	sta $1593
	lda $FA1F,X
	sta $1595
	lda $FA21,X
	sta $1597
	lda #$0000
	sta $158B
	lda #$158D
	sta $158A
	lda #$0001
	sta $1588
	plp
	rts

.db $01
.db $00 $02 $00 $03 $00 $04 $00 $05
.db $00 $00 $00 $06 $00 $07 $00 $08
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
	jsl $87B860
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
	lda #$8700
	sta $0F1A
	lda #$BCCA
	sta $0F19
	plp
	rts

L84FAD6:
	lda #$7F00
	sta $01
	lda #$F200
	sta $00
	lda #$8400
	sta $04
	lda #$C568
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
	lda #$8400
	sta $04
	lda #$C57B
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
	lda #$8400
	sta $04
	lda #$C58C
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
	lda #$8400
	sta $04
	lda #$C59F
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
	lda #$8400
	sta $04
	lda #$C5AF
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
	lda #$8400
	sta $04
	lda #$C57B
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
	lda #$8400
	sta $04
	lda #$C58C
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
	lda #$8400
	sta $04
	lda #$C59F
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
	lda #$8400
	sta $04
	lda #$C5AF
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
	lda #$8400
	sta $04
	lda #$C58C
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
	lda #$8400
	sta $04
	lda #$C58C
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
	lda $84C5C0,X
	sta $04
	lda $84C5BF,X
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
	lda $84C605,X
	sta $04
	lda $84C604,X
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
	lda #$8400
	sta $04
	lda #$C664
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
	lda #$8400
	sta $04
	lda #$C66A
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
	lda #$8400
	sta $04
	lda #$C6C5
	sta $03
	jsl L84C1B8
	lda #$7F00
	sta $01
	lda #$F200
	sta $00
	lda #$8400
	sta $04
	lda #$C671
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
	lda #$8400
	sta $04
	lda #$C6D0
	sta $03
	jsl L84C1B8
	lda #$7F00
	sta $01
	lda #$F200
	sta $00
	lda #$8400
	sta $04
	lda #$C68B
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
	jsl $808CEA
	jsl $80884A
	jsl $808838
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
	jsl $808F18
	rep #$20
	lda #$8400
	sta $01
	lda #$FEC2
	sta $00
	jsl $808EAD
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
	jsl $808F18
	rep #$20
	lda #$8400
	sta $01
	lda #$FECB
	sta $00
	jsl $808EAD
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
	jsl $808F18
	rep #$20
	lda #$8400
	sta $01
	lda #$FED4
	sta $00
	jsl $808EAD
	jsl $808826
	jsl $8088A0
	jsl $808CB4
	plp
	rts

.db $02 $FE $40 $7E $00 $20
.db $80 $00 $00 $02 $FE $40 $7E $00
.db $08 $80 $00 $78 $01 $FE $40 $7E
.db $00 $02 $00 $08 $C2 $30 $E2 $20
.db $A2 $00 $21 $A9 $8F $95 $00 $85
.db $7A $A9 $01 $95 $05 $85 $7E $A9
.db $00 $95 $06 $85 $7F $A9 $78 $95
.db $09 $85 $82 $A9 $00 $95 $0C $85
.db $85 $74 $11 $74 $11 $74 $12 $74
.db $12 $A9 $04 $95 $2C $85 $A0 $A9
.db $00 $95 $2D $85 $A1 $74 $2E $64
.db $A2 $74 $2F $64 $A3 $A9 $00 $95
.db $33 $85 $A9 $28 $60 $FF
.ENDS
