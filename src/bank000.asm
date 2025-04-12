.BANK 0
.ORG $0000
.BASE $80

.SECTION "Bank0" FORCE

.db $C2 $30 $20 $1D $80 $20 $4C $82
.db $80 $12 $9C $5E $04 $9C $53 $04
.db $9C $55 $04 $9C $5F $04 $9C $54
.db $04 $9C $56 $04 $60 $AD $12 $42
.db $29 $01 $D0 $F9 $9C $4D $04 $9C
.db $53 $04 $9C $54 $04 $9C $55 $04
.db $9C $56 $04 $9C $5E $04 $9C $5F
.db $04 $AD $12 $42 $29 $01 $D0 $DD
.db $9C $4D $04 $9C $53 $04 $9C $54
.db $04 $9C $55 $04 $9C $56 $04 $9C
.db $5E $04 $9C $5F $04 $A2 $01 $AD
.db $1A $42 $20 $61 $80 $CA $AD $18
.db $42 $85 $15 $29 $0F $C9 $01 $F0
.db $07 $9E $60 $04 $9E $62 $04 $60
.db $AD $4D $04 $1D $8E $80 $8D $4D
.db $04 $A0 $10 $5E $16 $40 $3E $53
.db $04 $3E $55 $04 $88 $D0 $F4 $20
.db $90 $80 $20 $B0 $80 $60 $01 $02
.db $20 $9B $80 $DA $E8 $E8 $20 $9B
.db $80 $FA $60 $BD $53 $04 $10 $0A
.db $29 $7F $49 $FF $1A $9D $53 $04
.db $80 $02 $29 $7F $9D $53 $04 $60
.db $8A $0A $0A $0A $A8 $B9 $15 $01
.db $29 $80 $99 $26 $01 $B9 $15 $01
.db $29 $40 $0A $99 $25 $01 $B9 $17
.db $01 $29 $80 $99 $28 $01 $B9 $17
.db $01 $29 $40 $0A $99 $27 $01 $B9
.db $19 $01 $29 $80 $99 $2A $01 $B9
.db $19 $01 $29 $40 $0A $99 $29 $01
.db $B9 $25 $01 $10 $05 $FE $64 $04
.db $80 $03 $9E $64 $04 $BD $62 $04
.db $D0 $16 $B9 $27 $01 $29 $80 $F0
.db $42 $9D $60 $04 $A9 $00 $99 $27
.db $01 $A9 $10 $9D $62 $04 $80 $33
.db $BD $64 $04 $C9 $07 $B0 $20 $BD
.db $53 $04 $1D $55 $04 $D0 $18 $DE
.db $62 $04 $F0 $13 $B9 $27 $01 $29
.db $80 $3D $60 $04 $F0 $15 $4A $19
.db $27 $01 $99 $27 $01 $80 $06 $BD
.db $60 $04 $99 $27 $01 $9E $62 $04
.db $9E $60 $04 $20 $2C $82 $C2 $20
.db $AD $5B $04 $29 $FF $00 $85 $3D
.db $49 $FF $FF $1A $85 $3F $BD $53
.db $04 $29 $FF $00 $89 $80 $00 $F0
.db $03 $09 $00 $FF $18 $6D $57 $04
.db $8D $57 $04 $C2 $20 $AD $5C $04
.db $29 $FF $00 $85 $41 $49 $FF $FF
.db $1A $85 $43 $BD $55 $04 $29 $FF
.db $00 $89 $80 $00 $F0 $03 $09 $00
.db $FF $18 $6D $59 $04 $8D $59 $04
.db $E2 $20 $9C $5D $04 $AD $37 $01
.db $4A $B0 $0D $20 $B6 $81 $AD $DE
.db $08 $D0 $10 $20 $F1 $81 $80 $0B
.db $20 $F1 $81 $AD $DE $08 $D0 $03
.db $20 $B6 $81 $E2 $20 $60 $AD $5D
.db $04 $D0 $35 $C2 $20 $AD $57 $04
.db $30 $0F $C5 $3D $90 $28 $E5 $3D
.db $8D $57 $04 $E2 $20 $A9 $01 $80
.db $0E $C5 $3F $B0 $19 $38 $E5 $3F
.db $8D $57 $04 $E2 $20 $A9 $02 $19
.db $28 $01 $99 $26 $01 $99 $28 $01
.db $99 $2A $01 $EE $5D $04 $E2 $20
.db $60 $AD $5D $04 $D0 $35 $C2 $20
.db $AD $59 $04 $30 $0F $C5 $41 $90
.db $28 $E5 $41 $8D $59 $04 $E2 $20
.db $A9 $04 $80 $0E $C5 $43 $B0 $19
.db $38 $E5 $43 $8D $59 $04 $E2 $20
.db $A9 $08 $19 $28 $01 $99 $26 $01
.db $99 $28 $01 $99 $2A $01 $EE $5D
.db $04 $E2 $20 $60 $A9 $30 $8D $5B
.db $04 $A9 $30 $8D $5C $04 $AD $18
.db $0C $F0 $04 $C9 $03 $90 $07 $AD
.db $4A $07 $C9 $04 $D0 $05 $A9 $A0
.db $8D $5B $04 $60 $AD $DE $07 $1A
.db $9D $4E $04 $A2 $01 $AD $4D $04
.db $3F $8E $80 $80 $F0 $10 $BD $50
.db $04 $DD $4E $04 $F0 $08 $20 $75
.db $82 $B0 $03 $BD $4E $04 $9D $50
.db $04 $CA $10 $E1 $60 $A9 $06 $85
.db $03 $A9 $01 $8D $16 $40 $BD $16
.db $40 $9C $16 $40 $A9 $01 $8D $16
.db $40 $A9 $00 $8D $16 $40 $85 $06
.db $A0 $0A $BD $16 $40 $88 $D0 $FA
.db $BD $16 $40 $4A $26 $06 $BD $16
.db $40 $4A $26 $06 $A5 $06 $DD $4E
.db $04 $F0 $06 $C6 $03 $D0 $CA $38
.db $60 $18 $60 $08 $8B $4B $AB $E2
.db $30 $A9 $FF $8D $68 $04 $A2 $00
.db $8E $69 $04 $BF $00 $40 $7E $C9
.db $FF $F0 $3D $C9 $FE $F0 $42 $AD
.db $66 $04 $DF $01 $40 $7E $90 $39
.db $DF $03 $40 $7E $B0 $33 $AD $67
.db $04 $DF $02 $40 $7E $90 $2A $DF
.db $04 $40 $7E $B0 $24 $BF $00 $40
.db $7E $0A $A9 $00 $2A $A8 $B9 $5E
.db $04 $3F $05 $40 $7E $F0 $12 $BF
.db $00 $40 $7E $29 $7F $8D $68 $04
.db $A9 $FF $8F $00 $40 $7E $AB $28
.db $6B $8A $18 $69 $06 $AA $80 $AB
.db $08 $8B $4B $AB $E2 $20 $C2 $10
.db $A0 $00 $00 $AE $69 $04 $B7 $00
.db $C8 $9F $00 $40 $7E $B7 $00 $C8
.db $9F $01 $40 $7E $B7 $00 $C8 $9F
.db $02 $40 $7E $B7 $00 $C8 $9F $03
.db $40 $7E $B7 $00 $C8 $9F $04 $40
.db $7E $B7 $00 $C8 $9F $05 $40 $7E
.db $A9 $FF $9F $06 $40 $7E $C2 $20
.db $AD $69 $04 $18 $69 $06 $00 $8D
.db $69 $04 $AB $28 $6B $08 $8B $4B
.db $AB $C2 $30 $EB $85 $01 $86 $00
.db $AE $69 $04 $A0 $00 $00 $B7 $00
.db $29 $FF $00 $C9 $FF $00 $F0 $15
.db $A9 $03 $00 $85 $29 $B7 $00 $C8
.db $C8 $9F $00 $40 $7E $E8 $E8 $C6
.db $29 $D0 $F2 $80 $E1 $8E $69 $04
.db $A9 $FF $FF $9F $00 $40 $7E $AB
.db $28 $6B $08 $E2 $30 $AD $66 $04
.db $18 $6D $53 $04 $AA $08 $AD $53
.db $04 $29 $80 $F0 $0A $28 $EC $53
.db $04 $90 $09 $A2 $00 $80 $05 $28
.db $90 $02 $A2 $FF $8E $66 $04 $AD
.db $67 $04 $18 $6D $55 $04 $A8 $08
.db $AD $55 $04 $29 $80 $F0 $0A $28
.db $CC $55 $04 $90 $09 $A0 $00 $80
.db $05 $28 $90 $02 $A0 $FF $8C $67
.db $04 $C2 $30 $28 $6B $08 $AD $66
.db $04 $85 $2B $E2 $30 $AD $BA $04
.db $85 $2A $C6 $2A $10 $04 $E6 $2A
.db $80 $22 $A5 $2A $8D $02 $42 $AD
.db $BC $04 $8D $03 $42 $EA $EA $EA
.db $AD $16 $42 $18 $6D $B4 $04 $AA
.db $18 $6D $BC $04 $C5 $2C $90 $DA
.db $E4 $2C $B0 $D6 $AD $B9 $04 $85
.db $29 $C6 $29 $30 $39 $A5 $29 $8D
.db $02 $42 $AD $BB $04 $8D $03 $42
.db $EA $EA $EA $AD $16 $42 $18 $6D
.db $B3 $04 $AA $18 $6D $BB $04 $C5
.db $2B $90 $DE $E4 $2B $B0 $DA $A5
.db $2A $8D $02 $42 $AD $B9 $04 $8D
.db $03 $42 $EA $EA $EA $AD $16 $42
.db $18 $65 $29 $8D $BD $04 $28 $6B

L808468:
	php
	phb
	phk
	plb
	sep #$20
	lda $7A
	sta $2100
	sta $B6
	lda $7B
	sta $2101
	sta $B7
	lda $7E
	sta $2105
	sta $BA
	lda $7F
	sta $2106
	sta $BB
	lda $80
	sta $2107
	sta $BC
	lda $81
	sta $2108
	sta $BD
	lda $82
	sta $2109
	sta $BE
	lda $83
	sta $210A
	sta $BF
	lda $84
	sta $210B
	sta $C0
	lda $85
	sta $210C
	sta $C1
	lda $86
	sta $211A
	sta $C2
	lda $B2
	sta $211F
	sta $EE
	lda $B3
	sta $211F
	sta $EF
	lda $B4
	sta $2120
	sta $F0
	lda $B5
	sta $2120
	sta $F1
	lda $AA
	sta $211B
	sta $E6
	lda $AB
	sta $211B
	sta $E7
	lda $AC
	sta $211C
	sta $E8
	lda $AD
	sta $211C
	sta $E9
	lda $AE
	sta $211D
	sta $EA
	lda $AF
	sta $211D
	sta $EB
	lda $B0
	sta $211E
	sta $EC
	lda $B1
	sta $211E
	sta $ED
	lda $87
	sta $2123
	sta $C3
	lda $88
	sta $2124
	sta $C4
	lda $99
	sta $2125
	sta $D5
	lda $9A
	sta $2126
	sta $D6
	lda $9B
	sta $2127
	sta $D7
	lda $9C
	sta $2128
	sta $D8
	lda $9D
	sta $2129
	sta $D9
	lda $9E
	sta $212A
	sta $DA
	lda $9F
	sta $212B
	sta $DB
	lda $A0
	sta $212C
	sta $DC
	lda $A2
	sta $212E
	sta $DE
	lda $A1
	sta $212D
	sta $DD
	lda $A3
	sta $212F
	sta $DF
	lda $A4
	sta $2130
	sta $E0
	lda $A5
	sta $2131
	sta $E1
	lda $A8
	sta $2132
	sta $E4
	lda $A7
	sta $2132
	sta $E3
	lda $A6
	sta $2132
	sta $E2
	lda $A9
	sta $2133
	sta $E5
	lda $89
	sta $210D
	sta $C5
	lda $8A
	sta $210D
	sta $C6
	lda $8D
	sta $210F
	sta $C9
	lda $8E
	sta $210F
	sta $CA
	lda $91
	sta $2111
	sta $CD
	lda $92
	sta $2111
	sta $CE
	lda $95
	sta $2113
	sta $D1
	lda $96
	sta $2113
	sta $D2
	rep #$20
	lda $8B
	dec A
	sep #$20
	sta $210E
	xba
	sta $210E
	rep #$20
	lda $8F
	dec A
	sep #$20
	sta $2110
	xba
	sta $2110
	rep #$20
	lda $93
	dec A
	sep #$20
	sta $2112
	xba
	sta $2112
	rep #$20
	lda $97
	dec A
	sep #$20
	sta $2114
	xba
	sta $2114
	plb
	plp
	rtl

.db $08
.db $E2 $30 $22 $26 $87 $80 $AE $6B
.db $04 $BF $26 $86 $80 $AA $BF $26
.db $86 $80 $AA $BF $26 $86 $80 $C2
.db $20 $29 $FF $00 $28 $6B $FD $65
.db $BE $22 $E4 $E6 $96 $EB $F0 $6B
.db $6A $95 $C2 $B3 $4E $CC $81 $40
.db $8B $1C $B6 $63 $12 $C7 $5A $C8
.db $A3 $9E $F6 $AF $61 $FE $92 $42
.db $5E $ED $71 $93 $4A $B7 $1D $B8
.db $FA $5F $8F $2E $B4 $F2 $0D $E5
.db $32 $C4 $8D $2D $FC $1F $DD $3C
.db $F4 $84 $64 $F8 $94 $29 $EC $4C
.db $36 $7C $44 $67 $C0 $2C $19 $2F
.db $83 $23 $53 $D4 $EE $13 $77 $A6
.db $CF $16 $0B $7B $E0 $74 $E1 $58
.db $47 $45 $C3 $49 $D9 $4D $CD $34
.db $08 $75 $C6 $A2 $0F $88 $18 $A8
.db $25 $35 $52 $17 $BB $AB $38 $11
.db $20 $A7 $04 $8A $E2 $5B $E8 $F1
.db $E9 $AD $33 $73 $D5 $82 $4B $9A
.db $28 $FB $66 $80 $1A $9F $0C $70
.db $26 $07 $54 $03 $9B $A4 $DA $8E
.db $48 $41 $27 $10 $0A $90 $21 $3E
.db $8C $68 $F3 $CB $D7 $FF $5D $CA
.db $14 $A0 $BF $2A $C5 $3B $24 $A5
.db $A1 $1B $78 $4F $B0 $D2 $57 $E7
.db $01 $F5 $6E $CE $91 $C9 $51 $7F
.db $9C $1E $6F $AE $D3 $DE $60 $D6
.db $72 $AC $D1 $E3 $F9 $7A $AA $37
.db $30 $B1 $A9 $02 $DF $B2 $D0 $BD
.db $85 $62 $C1 $3F $46 $7D $43 $56
.db $09 $0E $F7 $79 $89 $31 $DB $87
.db $00 $59 $05 $50 $9D $97 $BC $DC
.db $D8 $BA $6C $69 $76 $06 $86 $EA
.db $39 $5C $55 $EF $B5 $7E $3D $3A
.db $6D $99 $15 $98 $B9 $2B

L808726:
	php
	sep #$30
	phx
	ldx #$0B
L80872C:
	lda $046B
	clc
	adc #$05
	sta $046B
	lda $046C
	clc
	adc #$0D
	sta $046C
	dex
	bne L80872C
	plx
	plp
	rtl

.db $08 $8B $4B $AB
.db $E2 $30 $EE $71 $04 $AD $71 $04
.db $C9 $37 $90 $13 $89 $01 $D0 $07
.db $A9 $01 $8D $71 $04 $80 $08 $20
.db $C0 $87 $A9 $00 $8D $71 $04 $A8
.db $22 $26 $87 $80 $AD $6B $04 $29
.db $1F $A8 $B9 $72 $04 $AB $28 $6B

L808778:
	php
	phb
	phk
	plb
	sep #$30
	lda $046B
	and #$1F
	sta $15
	sta $04A8
	lda #$01
	sta $17
	ldy #$14
	ldx #$36
L808790:
	lda $17
	sta $0472,Y
	lda $15
	sec
	sbc $17
	bpl L80879F
	clc
	adc #$FF
L80879F:
	sta $17
	lda $0472,Y
	sta $15
	tya
	clc
	adc #$15
	cmp #$37
	bcc L8087B0
	sbc #$37
L8087B0:
	tay
	dex
	bne L808790
	jsr $87C0
	jsr $87C0
	jsr $87C0
	plb
	plp
	rtl

L8087C0:
	ldy #$00
L8087C2:
	tya
	sta $15
	cmp #$18
	bcs L8087CD
	adc #$1F
	bcc L8087CF
L8087CD:
	sbc #$18
L8087CF:
	tay
	lda $0472,Y
	sta $17
	ldy $15
	lda $0472,Y
	sec
	sbc $17
	bcs L8087E1
	adc #$FF
L8087E1:
	sta $0472,Y
	iny
	cpy #$37
	bne L8087C2
	rts

L8087EA:
	php
	phb
	phk
	plb
	sep #$30
	lda $F2
	bit #$80
	beq L808807
	lda #$01
	sta $0135
L8087FB:
	lda $0135
	bne L8087FB
	jsl $80B628
	jsr $880A
L808807:
	plb
	plp
	rtl

L80880A:
	rep #$20
	lda $0125
	cmp #$3030
	beq L808815
	rts

L808815:
	sep #$20
	lda $7A
	ora #$80
	sta $7A
	jsl $80BC95
	jmp $A3F4

.db $C2 $20

L808826:
	php
	phb
	phk
	plb
	sep #$20
	lda $F2
	ora #$80
	sta $4200
	sta $F2
	plb
	plp
	rtl

L808838:
	php
	phb
	phk
	plb
	sep #$20
	lda $F2
	and #$7F
	sta $4200
	sta $F2
	plb
	plp
	rtl

L80884A:
	php
	phb
	phk
	plb
	sep #$20
	stz $F7
	stz $0109
	stz $0108
	lda $7A
	ora #$80
	sta $7A
	jsl $8087EA
	lda #$00
	ldy.w #$0080
	ldx.w #$0000
L80886A:
	sta.l DMAP0,X
	inx
	dey
	bne L80886A
	plb
	plp
	rtl

L808875:
	php
	phb
	phk
	plb
	sep #$20
	stz $F7
	stz $0109
	stz $0108
	lda $7A
	ora #$80
	sta $7A
	jsl $8087EA
	lda #$00
	ldy.w #$0040
	ldx.w #$0000
L808895:
	sta.l DMAP4,X
	inx
	dey
	bne L808895
	plb
	plp
	rtl

L8088A0:
	php
	phb
	phk
	plb
	sep #$20
	lda $7A
	and #$7F
	sta $7A
	jsl $8087EA
	plb
	plp
	rtl

; probably functions
.db $08 $8B $4B $AB $E2 $20 $A5 $F2
.db $09 $10 $85 $F2 $8D $00 $42 $AB
.db $28 $6B $08 $8B $4B $AB $E2 $20
.db $A5 $F2 $29 $EF $8D $00 $42 $85
.db $F2 $AB $28 $6B $08 $8B $4B $AB
.db $E2 $20 $A5 $F2 $09 $20 $8D $00
.db $42 $85 $F2 $AB $28 $6B $08 $8B
.db $4B $AB $E2 $20 $A5 $F2 $29 $DF
.db $8D $00 $42 $85 $F2 $AB $28 $6B


L8088FB:
	lda #$00
	sta $4300
	lda #$04
	sta $4301
	lda #$10
	sta $4302
	lda #$02
	sta $4303
	lda #$00
	sta $4304
	lda #$20
	sta $4305
	lda #$02
	sta $4306
	lda #$01
	sta $420B
	lda $7D
	sta $2103
	lda $7C
	sta $2102
L80892D:
	rtl

L80892E:
	lda $0202
	beq L80892D
	stz $0202
	stz $0200
	stz $0201
	ldy #$00
	cpy #$80
L808940:
	bcs L808940
	lda $0140,Y
	beq L80895B
	dec A
	bne L80894D
	jmp $895C
L80894D:
	dec A
	bne L808953
	jmp $8995
L808953:
	dec A
	bne L808959
	jmp $89DC
L808959:
	bra L808959
L80895B:
	rtl

L80895C:
	lda $0141,Y
	sta $4312
	lda $0142,Y
	sta $4313
	lda $0143,Y
	sta $4314
	lda $0144,Y
	sta $4315
	lda $0145,Y
	sta $4316
	lda $0146,Y
	sta $2121
	stz $4310
	lda #$22
	sta $4311
	lda #$02
	sta $420B
	tya
	clc
	adc #$07
	tay
	jmp $893E
	lda $0141,Y
	sta $4312
	lda $0142,Y
	sta $4313
	lda $0143,Y
	sta $4314
	lda $0144,Y
	sta $4315
	lda $0145,Y
	sta $4316
	lda $0146,Y
	sta $2115
	lda $0147,Y
	sta $2116
	lda $0148,Y
	sta $2117
	lda #$01
	sta $4310
	lda #$18
	sta $4311
	lda #$02
	sta $420B
	tya
	clc
	adc #$09
	tay
	jmp $893E

.db $B9 $41 $01 $8D
.db $12 $43 $B9 $42 $01 $8D $13 $43
.db $B9 $43 $01 $8D $14 $43 $B9 $44
.db $01 $8D $15 $43 $B9 $45 $01 $8D
.db $16 $43 $B9 $46 $01 $8D $15 $21
.db $B9 $47 $01 $8D $16 $21 $B9 $48
.db $01 $8D $17 $21 $A9 $81 $8D $10
.db $43 $A9 $39 $8D $11 $43 $AD $39
.db $21 $AD $3A $21 $A9 $02 $8D $0B
.db $42 $98 $18 $69 $09 $A8 $4C $3E
.db $89 $86 $01 $84 $00 $C2 $10 $A0
.db $00 $00 $B1 $00 $F0 $5A $85 $15
.db $C8 $B1 $00 $8D $12 $43 $C8 $B1
.db $00 $8D $13 $43 $C8 $B1 $00 $8D
.db $14 $43 $C8 $B1 $00 $8D $15 $43
.db $C8 $B1 $00 $8D $16 $43 $C8 $A5
.db $15 $29 $01 $F0 $10 $9C $10 $43
.db $A9 $22 $8D $11 $43 $B1 $00 $C8
.db $8D $21 $21 $80 $1C $A9 $01 $8D
.db $10 $43 $A9 $18 $8D $11 $43 $B1
.db $00 $C8 $8D $15 $21 $B1 $00 $C8
.db $8D $16 $21 $B1 $00 $C8 $8D $17
.db $21 $A9 $02 $8D $0B $42 $80 $A2
.db $E2 $10 $6B $AD $03 $02 $F0 $FA
.db $A2 $01 $A0 $C0 $9C $03 $02 $9C
.db $04 $02 $9C $05 $02 $84 $00 $86
.db $01 $C2 $10 $A0 $00 $00 $B1 $00
.db $F0 $3E $C8 $85 $15 $C2 $20 $B1
.db $00 $C8 $C8 $8D $16 $21 $A9 $00
.db $00 $E2 $20 $B1 $00 $C8 $8D $15
.db $21 $A5 $15 $29 $7F $AA $A5 $15
.db $29 $80 $C2 $20 $F0 $0C $B1 $00
.db $8D $18 $21 $CA $D0 $FA $E2 $20
.db $80 $CC $B1 $00 $C8 $C8 $8D $18
.db $21 $CA $D0 $F6 $E2 $20 $80 $BE
.db $E2 $10 $6B

L808AF3:
	php
	lda $4212
	and #$01
	bne L808AF3
	rep #$30
	ldx #$0008
	jsr $8B2F
	ldx #$0000
	jsr $8B2F
	lda $0115
	sta $0125
	lda $0117
	sta $0127
	lda $0119
	sta $0129
	lda $011D
	sta $012D
	lda $011F
	sta $012F
	lda $0121
	sta $0131
	plp
	rtl

L808B2F:
	lda $0110
	and.w #$00FF
	beq L808B45
	ldy.w #$0000
	lda $4218,X
	and.w #$000F
	bne L808B45
	ldy $4218,X
L808B45:
	tya
	sta $3D
	eor $0115,X
	and $3D
	sta $0117,X
	sta $0119,X
	lda $3D
	beq L808B6E
	cmp $0115,X
	bne L808B6E
	dec $011B,X
	bne L808B74
	lda $3D
	sta $0119,X
	lda $0113
	sta $011B,X
	bra L808B74
L808B6E:
	lda $0111
	sta $011B,X
L808B74:
	lda $3D
	sta $0115,X
	rts

.db $08 $8B $4B $AB $C2 $30
.db $A0 $00 $00 $A9 $00 $F4 $C4 $65
.db $B0 $11 $C0 $00 $02 $B0 $0C $99
.db $10 $02 $99 $12 $02 $C8 $C8 $C8
.db $C8 $80 $EB $A5 $65 $4A $4A $8D
.db $04 $42 $EB $29 $FF $00 $09 $00
.db $08 $8D $05 $42 $EA $EA $EA $EA
.db $EA $EA $EA $AD $14 $42 $0A $85
.db $15 $AD $16 $42 $85 $17 $A2 $00
.db $00 $E4 $15 $B0 $07 $9E $10 $04
.db $E8 $E8 $80 $F5 $A5 $17 $F0 $10
.db $A4 $15 $A5 $17 $3A $0A $AA $B9
.db $10 $04 $3D $47 $8C $99 $10 $04
.db $A4 $67 $A9 $00 $F4 $C0 $00 $02
.db $B0 $0C $99 $10 $02 $99 $12 $02
.db $C8 $C8 $C8 $C8 $80 $EF $A5 $67
.db $4A $4A $8D $04 $42 $EB $29 $FF
.db $00 $09 $00 $08 $8D $05 $42 $EA
.db $EA $EA $EA $EA $EA $EA $AD $14
.db $42 $0A $85 $15 $AD $16 $42 $85
.db $17 $A6 $15 $E0 $20 $00 $B0 $07
.db $9E $10 $04 $E8 $E8 $80 $F4 $A5
.db $17 $F0 $17 $A6 $15 $A5 $17 $3A
.db $0A $A8 $B9 $47 $8C $49 $FF $FF
.db $85 $19 $BD $10 $04 $25 $19 $9D
.db $10 $04 $64 $50 $AB $28 $6B $03
.db $00 $0F $00 $3F $00 $FF $00 $FF
.db $03 $FF $0F $FF $3F $08 $8B $4B
.db $AB $E2 $20 $C2 $10 $9F $00 $00
.db $00 $E8 $88 $D0 $F8 $AB $28 $6B

L808C68:
	php
	phb
	phk
	plb
	rep #$30
L808C6E:
	sta.l $000000,X
	inx
	inx
	dey
	dey
	bne L808C6E
	plb
	plp
	rtl

L808C7B:
	php
	phb
	phk
	plb
	sep #$20
	rep #$10
L808C83:
	sta $7E0000,X
	inx
	dey
	bne L808C83
	plb
	plp
	rtl

L808C8E:
	php
	phb
	phk
	plb
	rep #$30
L808C94:
	sta $7E0000,X
	inx
	inx
	dey
	dey
	bne L808C94
	plb
	plp
	rtl

L808CA1:
	php
	phb
	phk
	plb
	rep #$30
L808CA7:
	sta $7F0000,X
	inx
	inx
	dey
	dey
	bne L808CA7
	plb
	plp
	rtl

L808CB4:
	php
	phb
	phk
	plb
	sep #$30
	lda #$0F
	sta $04B2
L808CBF:
	lda #$01
	sta $04B1
L808CC4:
	jsl $8087EA
	dec $04B1
	bne L808CC4
	lda $7A
	and #$F0
	sta $15
	lda $7A
	and #$0F
	cmp #$0F
	bcs L808CDE
	tay
	iny
	tya
L808CDE:
	ora $15
	sta $7A
	dec $04B2
	bne L808CBF
	plb
	plp
	rtl

L808CEA:
	php
	phb
	phk
	plb
	sep #$30
	lda #$0F
	sta $04B2
L808CF5:
	lda #$01
	sta $04B1
L808CFA:
	jsl $8087EA
	dec $04B1
	bne L808CFA
	lda $7A
	and #$F0
	sta $15
	lda $7A
	and #$0F
	beq L808D12
	tay
	dey
	tya
L808D12:
	ora $15
	sta $7A
	dec $04B2
	bne L808CF5
	plb
	plp
	rtl

L808D1E:
	phb
	phk
	plb
	phx
	phy
	pha
	php
	rep #$20
	sep #$10
	ldx $2D
	stx $4202
	ldx $2F
	stx $4203
	nop
	nop
	nop
	lda $4216
	sta $31
	ldx $2E
	stx $4202
	ldx $30
	stx $4203
	nop
	nop
	nop
	ldx $4216
	stx $33
	ldy $4217
	ldx $2E
	stx $4202
	ldx $2F
	stx $4203
	nop
	nop
	nop
	lda $32
	clc
	adc $4216
	sta $32
	bcc L808D68
	iny
L808D68:
	ldx $2D
	stx $4202
	ldx $30
	stx $4203
	nop
	nop
	nop
	lda $32
	clc
	adc $4216
	sta $32
	bcc L808D80
	iny
L808D80:
	sty $34
	plp
	pla
	ply
	plx
	plb
	rtl

; possible function?
.db $08 $8B $4B $AB $C2 $30 $64 $35
.db $64 $37 $64 $39 $64 $3B $A2 $20
.db $00 $46 $2F $66 $2D $90 $0D $A5
.db $31 $18 $65 $39 $85 $39 $A5 $33
.db $65 $3B $85 $3B $66 $3B $66 $39
.db $66 $37 $66 $35 $CA $D0 $E2 $AB
.db $28 $6B

L808DBA:
	php
	phb
	phk
	plb
	rep #$30
	stz $2D
	lda $35
	bne L808DCA
	stz $33
	bra L808DE2
L808DCA:
	ldx #$0011
	clc
L808DCE:
	rol $33
	dex
	beq L808DE2
	rol $2D
	lda $2D
	beq L808DCE
	sec
	sbc $35
	bcc L808DCE
	sta $2D
	bra L808DCE
L808DE2:
	plb
	plp
	rtl

; data
.db $08 $8B $4B $AB $C2 $30 $64 $2F
.db $64 $2D $A5 $37 $05 $35 $D0 $06
.db $64 $33 $64 $31 $80 $27 $A2 $21
.db $00 $18 $26 $31 $26 $33 $CA $F0
.db $1C $26 $2D $26 $2F $A5 $2F $05
.db $2D $F0 $EF $A5 $2D $38 $E5 $35
.db $A8 $A5 $2F $E5 $37 $90 $E3 $85
.db $2F $84 $2D $80 $DD $AB $28 $6B
.db $08 $8B $4B $AB $E2 $30 $AD $AE
.db $04 $F0 $06 $22 $4D $8E $80 $80
.db $14 $AD $AF $04 $F0 $06 $22 $6D
.db $8E $80 $80 $09 $AD $B0 $04 $F0
.db $04 $22 $8D $8E $80 $AB $28 $6B


L808E4D:
	php
	phb
	phk
	plb
	rep #$30
	lda #$8000
	sta $01
	lda #$8E64
	sta $00
	jsl L808EAD
	plb
	plp
	rtl

; data
.db $02 $00 $20 $7E
.db $00 $08 $80 $00 $28

L808E6D:
	php
	phb
	phk
	plb
	rep #$30
	lda #$8000
	sta $01
	lda #$8E84
	sta $00
	jsl L808EAD
	plb
	plp
	rtl

; data
.db $02 $00 $28 $7E
.db $00 $08 $80 $00 $38

L808E8D:
	php
	phb
	phk
	plb
	rep #$30
	lda #$8000
	sta $01
	lda #$8EA4
	sta $00
	jsl L808EAD
	plb
	plp
	rtl

; data
.db $02 $00 $30 $7E
.db $00 $08 $80 $00 $48

L808EAD:
	php
	rep #$30
	ldx $0200
	ldy #$0000
	sep #$20
	lda [$00],Y
	iny
	sta $0140,X
	dec A
	beq L808EE7
	stz $0149,X
	rep #$20
	lda [$00],Y
	sta $0141,X
	iny
	iny
	lda [$00],Y
	sta $0143,X
	iny
	iny
	lda [$00],Y
	sta $0145,X
	iny
	iny
	lda [$00],Y
	sta $0147,X
	txa
	clc
	adc #$0009
	bra L808F04
L808EE7:
	stz $0147,X
	rep #$20
	lda [$00],Y
	sta $0141,X
	iny
	iny
	lda [$00],Y
	sta $0143,X
	iny
	iny
	lda [$00],Y
	sta $0145,X
	txa
	clc
	adc #$0007
L808F04:
	sta $0200
	sep #$30
	lda #$01
	sta $0202
	lda $7A
	bpl L808F16
	jsl $80892E
L808F16:
	plp
	rtl

L808F18:
	php
	phb
	sep #$20
	rep #$10
	lda $73
	pha
	plb
	stz $79
	ldx $76
L808F26:
	phy
	ldy $71
	lda $0000,Y
	iny
	bne L808F32
	jsr $907B
L808F32:
	sty $71
	ply
	sta $74
	cmp #$FF
	bne L808F3E
	plb
	plp
	rtl

L808F3E:
	and #$E0
	cmp #$E0
	bne L808F62
	lda $74
	asl
	asl
	asl
	and #$E0
	pha
	lda $74
	and #$03
	xba
	phy
	ldy $71
	lda $0000,Y
	iny
	bne L808F5D
	jsr $907B
L808F5D:
	sty $71
	ply
	bra L808F6A
L808F62:
	pha
	lda #$00
	xba
	lda $74
	and #$1F
L808F6A:
	tay
	iny
	pla
	cmp #$00
	bpl L808F74
	jmp $9007
L808F74:
	cmp #$20
	beq L808F99
	cmp #$40
	beq L808FB3
	cmp #$60
	beq L808FEC
L808F80:
	phy
	ldy $71
	lda $0000,Y
	iny
	bne L808F8C
	jsr $907B
L808F8C:
	sty $71
	ply
	sta $7E40FE,X
	inx
	dey
	bne L808F80
	beq L808F26
L808F99:
	phy
	ldy $71
	lda $0000,Y
	iny
	bne L808FA5
	jsr $907B
L808FA5:
	sty $71
	ply
L808FA8:
	sta $7E40FE,X
	inx
	dey
	bne L808FA8
	jmp $8F26
L808FB3:
	phy
	ldy $71
	lda $0000,Y
	iny
	bne L808FBF
	jsr $907B
L808FBF:
	sty $71
	ply
	sta $74
	phy
	ldy $71
	lda $0000,Y
	iny
	bne L808FD0
	jsr $907B
L808FD0:
	sty $71
	ply
	sta $75
L808FD5:
	lda $74
	sta $7E40FE,X
	inx
	dey
	beq L808FE9
	lda $75
	sta $7E40FE,X
	inx
	dey
	bne L808FD5
L808FE9:
	jmp $8F26
L808FEC:
	phy
	ldy $71
	lda $0000,Y
	iny
	bne L808FF8
	jsr $907B
L808FF8:
	sty $71
	ply
L808FFB:
	sta $7E40FE,X
	inc A
	inx
	dey
	bne L808FFB
	jmp $8F26
	cmp #$C0
	bcs L80905A
	and #$20
	sta $78
	phy
	ldy $71
	lda $0000,Y
	iny
	bne L80901B
	jsr $907B
L80901B:
	sty $71
	ply
	sta $74
	phy
	ldy $71
	lda $0000,Y
	iny
	bne L80902C
	jsr $907B
L80902C:
	sty $71
	ply
	sta $75
	rep #$20
	lda $74
	clc
	adc $76
	sta $74
L80903A:
	sep #$20
L80903C:
	phy
	phx
	ldx $74
	lda $7E40FE,X
	inx
	stx $74
	plx
	ldy $78
	beq L80904E
	eor #$FF
L80904E:
	sta $7E40FE,X
	inx
	ply
	dey
	bne L80903C
	jmp $8F26
L80905A:
	and #$20
	sta $78
	phy
	ldy $71
	lda $0000,Y
	iny
	bne L80906A
	jsr $907B
L80906A:
	sty $71
	ply
	sta $74
	stz $75
	rep #$20
	txa
	sec
	sbc $74
	sta $74
	bra L80903A

L80907B:
	ldy.w #$8000
	pha
	phb
	pla
	inc A
	pha
	plb
	pla
	rts

L809086:
	lda $0108
	sta.w MDMAEN
	stz $0108
	lda $F7
	ora $0109
	sta $F7
	sta.w HDMAEN
	stz $0109
	rts

L80909D:
	php
	phb
	phk
	plb
	sep #$20
	sta $04AD
L8090A6:
	jsl $8087EA
	dec $04AD
	bne L8090A6
	plb
	plp
	rtl

.db $40 $EA $87

L8090B5:
	rep #$30
	phb
	phk
	plb
	sei
	phd
	pha
	phx
	phy
	sep #$30
	lda $4211
	and #$80
	beq L8090CC
	jsl $86F58A
L8090CC:
	rep #$30
	ply
	plx
	pla
	pld
	cli
	plb
	rti

NMI:
	jml L8090D9

L8090D9:
	rep	#$30
	phb
	phk
	plb
	phd
	pha
	phx
	phy
	lda	#$0000
	pha
	pld
	sep	#$30
	lda	$4210
	sta	$0740
	lda	$1003
	bit	#$02
	beq	L8090FA
	jsl	$86f6f2
L8090FA:
	lda	$0fa1
	beq	L80911C
	lda	$0f64
	bne	L809116
	phb
	rep	#$30
	lda	#$007f
	ldx	#$67dc
	ldy	#$1b00
	mvn	$7f, $00
	plb
	sep	#$30
L809116:
	lda	$f7
	ora	#$08
	sta	$f7
L80911C:
	jsr	$a8b8
	lda	$0135
	beq	L80914B
	lda	$0c10
	bne	L80912D
	jsl	$8088fb
L80912D:
	jsl	$80892e
	jsl	$808468
	jsr	$9086
	jsl	$80bbe1
	jsl	$808af3
	stz	$0135
	inc	$0136
	stz	$0139
	bra	L809164
L80914B:
	lda	$07d9
	beq	L809154
	jsl	$808468
L809154:
	sep	#$30
	inc	$0139
	lda	$0139
	cmp	$013a
	bcc	L809164
	sta	$013a
L809164:
	jsl	$808726
	rep	#$30
	inc	$0137
	ply
	plx
	pla
	pld
	plb
	rti

RESET:
	sei
	clc
	xce
	jml	L80917A

L80917A:
	sep	#$20
	lda	#$80
	sta	$7a
	sta	INIDSP.w
	lda	#$00
	sta	$7ff7
	rep	#$30
	ldx	#$1ffb
	txs
	ldy	#$0000
	phy
	pld
	phk
	plb
	jml	$80a3ed
	php
	sep	#$30
	lda	#$01
	sta	NMITIMEN.w
	sta	$f2
	lda	#$80
	sta	WRIO.w
	stz	WRMPYA.w
	stz	WRMPYB.w
	stz	WRDIVL.w
	stz	WRDIVH.w
	stz	WRDIVB.w
	stz	HTIMEL.w
	stz	$f5
	stz	HTIMEH.w
	stz	$f6
	stz	VTIMEL.w
	stz	$f3
	stz	VTIMEH.w
	stz	$f4
	stz	MDMAEN.w
	stz	HDMAEN.w
	stz	$f7
	lda	#$01
	sta	MEMSEL.w
	sta	$f8
	plp
	rts

L8091dc:
	php
	sep	#$30
	lda	#$8f
	sta	INIDSP.w
	sta	$7a
	lda	#$03
	sta	OBJSEL.w
	sta	$7b
	stz	OAMADDL.w
	stz	$7c
	lda	#$80
	sta	OAMADDH.w
	sta	$7d
	stz	OAMDATA.w
	stz	OAMDATA.w
	lda	#$09
	sta	BGMODE.w
	sta	$7e
	stz	MOSAIC.w
	stz	$7f
	lda	#$29
	sta	BG1SC.w
	sta	$80
	lda	#$39
	sta	BG2SC.w
	sta	$81
	lda	#$48
	sta	BG3SC.w
	sta	$82
	lda	#$00
	stz	BG4SC.w
	stz	$83
	lda	#$00
	sta	BG12NBA.w
	sta	$84
	lda	#$05
	sta	BG34NBA.w
	sta	$85
	stz	BG1HOFS.w
	stz	BG1HOFS.w
	stz	BG1VOFS.w
	stz	BG1VOFS.w
	stz	BG2HOFS.w
	stz	BG2HOFS.w
	stz	BG2VOFS.w
	stz	BG2VOFS.w
	stz	BG3HOFS.w
	stz	BG3HOFS.w
	stz	BG3VOFS.w
	stz	BG3VOFS.w
	stz	BG4HOFS.w
	stz	BG4HOFS.w
	stz	BG4VOFS.w
	stz	BG4VOFS.w
	stz	VMAIN.w
	stz	M7SEL.w
	stz	$86
	stz	M7A.w
	stz	M7B.w
	stz	M7C.w
	stz	M7D.w
	stz	M7X.w
	stz	M7Y.w
	lda	#$00
	sta	W12SEL.w
	sta	$87
	lda	#$00
	sta	W34SEL.w
	sta	$88
	stz	WOBJSEL.w
	stz	$99
	lda	#$00
	sta	W1L.w
	sta	$9a
	lda	#$f8
	sta	W1R.w
	sta	$9b
	stz	W2L.w
	stz	$9c
	stz	W2R.w
	stz	$9d
	stz	WBGLOG.w
	stz	$9e
	stz	WOBJLOG.w
	stz	$9f
	lda	#$11
	sta	TMAIN.w
	sta	$a0
	sta	TMW.w
	sta	$a2
	lda	#$02
	sta	TSUB.w
	sta	$a1
	sta	TSW.w
	sta	$a3
	lda	#$02
	sta	CGWSEL.w
	sta	$a4
	lda	#$a1
	sta	CGADSUB.w
	sta	$a5
	lda	#$20
	sta	COLDATA.w
	sta	$a8
	lda	#$40
	sta	COLDATA.w
	sta	$a7
	lda	#$80
	sta	COLDATA.w
	sta	$a6
	lda	#$00
	sta	SETINI.w
	sta	$a9
	plp
	rts

.db $C2 $30 $A9 $00 $00 $A2 $00 $20
.db $A0 $00 $E0 $22 $8E $8C $80 $A9
.db $00 $00 $AA $A0 $FE $DF $22 $A1
.db $8C $80 $E2 $30 $60

L809315:
	rep #$30
	lda #$1C2F
	jsl $80933B
	lda #$1C2F
	jsl $80934E
	lda #$1C2F
	jsl $809361
	sep #$30
	jsl L808E4D
	jsl L808E6D
	jsl L808E8D
	rts

L80933B:
	php
	phb
	phk
	plb
	rep #$30
	ldx #$2000
	ldy #$0800
	jsl L808C8E
	plb
	plp
	rtl

L80934E:
	php
	phb
	phk
	plb
	rep #$30
	ldx #$2800
	ldy #$0800
	jsl L808C8E
	plb
	plp
	rtl

L809361:
	php
	phb
	phk
	plb
	rep #$30
	ldx #$3000
	ldy #$0800
	jsl L808C8E
	plb
	plp
	rtl

L809374:
	php
	rep #$30
	jsl $80954E
	jsl $8098F0
	jsl L8087EA
	plp
	rtl

L809385:
	php
	phb
	phk
	plb
	sep #$20
	sta $04AD
L80938E:
	jsl $809374
	dec $04AD
	bne L80938E
	plb
	plp
	rtl

L80939a:
	php
	phb
	phk
	plb
	rep #$30
	bra L8093C2
L8093a2:
	stz $5E
L8093a4:
	php
	phb
	phk
	plb
	rep #$30
	lda $63
	sta $01
	lda $62
	sta $00
	lda $5A
	asl
	clc
	adc $5A
	tay
	lda [$00],Y
	sta $03
	iny
	lda [$00],Y
	sta $04
L8093C2:
	lda $50
	lsr
	lsr
	sta $4204
	sep #$20
	lda #$04
	sta $4206
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	lda $4214
	sta $54
	lda $4216
	asl
	sta $55
	ldy #$0000
	lda [$03],Y
	iny
	sta $26
	lda [$03],Y
	iny
	sta $27
	lda #$08
	sta $28
	rep #$20
	lda $50
	cmp #$01FD
	bcc L8093FF
	plb
	plp
	rtl

L8093FF:
	sep #$20
	asl $27
	inc $55
	phy
	jsr $9492
	ply
	dec $55
	stz $16
	stz $1E
	lda [$03],Y
	sta $15
	bpl L809418
	dec $16
L809418:
	iny
	lda [$03],Y
	sta $1D
	bpl L809421
	dec $1E
L809421:
	iny
	rep #$20
	lda $15
	clc
	adc $58
	sta $15
	lda $1D
	clc
	adc $56
	sta $1D
	lda [$03],Y
	iny
	iny
	ldx $50
	clc
	adc $5E
	sta $0212,X
	txa
	clc
	adc #$0004
	sta $50
	sta $65
	sep #$20
	lda $15
	ldx $50
	sta $020D,X
	lda $1E
	clc
	beq L809456
	sec
L809456:
	phy
	jsr $9492
	ply
	lda $1D
	ldx $50
	sta $020C,X
	lda $5C
	bpl L809473
	asl
	sta $15
	lda $020F,X
	and #$F1
	ora $15
	sta $020F,X
L809473:
	inc $55
	inc $55
	lda $55
	cmp #$08
	bcc L809481
	stz $55
	inc $54
L809481:
	dec $26
	beq L80948F
	dec $28
	bne L80948C
	jmp $93EA
L80948C:
	jmp $93F3
L80948F:
	plb
	plp
	rtl

L809492:
	sep #$10
	ldy #$00
	bcc L80949B
	ldy $55
	iny
L80949B:
	ldx $54
	lda $0410,X
	and $94AC,Y
	ora $94B5,Y
	sta $0410,X
	rep #$10
	rts

.db $FF $FE $FD $FB
.db $F7 $EF $DF $BF $7F $00 $01 $02
.db $04 $08 $10 $20 $40 $80 $EE $94
.db $80 $F4 $94 $80 $FA $94 $80 $00
.db $95 $80 $06 $95 $80 $0C $95 $80
.db $12 $95 $80 $18 $95 $80 $1E $95
.db $80 $24 $95 $80 $2A $95 $80 $30
.db $95 $80 $36 $95 $80 $3C $95 $80
.db $42 $95 $80 $48 $95 $80 $01 $00
.db $00 $00 $00 $31 $01 $00 $00 $00
.db $01 $31 $01 $00 $00 $00 $02 $31
.db $01 $00 $00 $00 $03 $31 $01 $00
.db $00 $00 $04 $31 $01 $00 $00 $00
.db $05 $31 $01 $00 $00 $00 $06 $31
.db $01 $00 $00 $00 $07 $31 $01 $00
.db $00 $00 $08 $31 $01 $00 $00 $00
.db $09 $31 $01 $00 $00 $00 $0A $31
.db $01 $00 $00 $00 $0B $31 $01 $00
.db $00 $00 $0C $31 $01 $00 $00 $00
.db $0D $31 $01 $00 $00 $00 $0E $31
.db $01 $00 $00 $00 $0F $31

L80954E:
	php
	phb
	phk
	plb
	rep #$30
	lda #$01FC
	sec
	sbc $52
	lsr
	lsr
	sta $15
	tay
	ldx $52
	lda.w #$F000
L809564:
	sta $0210,X
	inx
	inx
	inx
	inx
	dey
	bpl L809564
	lda $52
	lsr
	lsr
	lsr
	lsr
	and #$FFFE
	tax
	lda $52
	and.w #$001C
	lsr
	tay
	lda $0410,X
	and $959F,Y
	pha
	lda $15
	lsr
	lsr
	lsr
	tay
	pla
L80958D:
	sta $0410,X
	lda.w #$0000
	inx
	inx
	dey
	bpl L80958D
	lda $52
	sta $50
	plb
	plp
	rtl

; data
.db $00 $00 $03 $00 $0F $00 $3F $00
.db $FF $00 $FF $03 $FF $0F $FF $3F

L8095AF:
	rep #$20
	lda #$8000
	sta.l $000703
	lda #$95E0
	sta.l $000702
	lda #$8000
	sta.l $000706
	lda #$95E0
	sta.l $000705
	lda.w #$0000
	ldy.w #$0200
	ldx.w #$0000
L8095D6:
	sta.l $0004BE,X
	inx
	dey
	inx
	dey
	bne L8095D6
	rtl

L8095e1:
	php
	rep #$20
	lda.w #$0000
L8095E7:
	pha
	ora #$2000
	sta.l WRMPYA
	nop
	nop
	nop
	lda.l RDMPYL
	tax
	lda.w #$0000
	sta $04BE,X
	pla
	inc A
	cmp.w #$0010
	bne L8095E7
	plp
	rtl

L809606:
	php
	rep #$20
	lda $00
	sta $0702
	lda $01
	sta $0703
	plp
	rtl

L809615:
	php
	rep #$20
	lda $00
	sta.l $000705
	lda $01
	sta.l $000706
	plp
	rtl

.db $A0 $00 $80 $84 $04 $A0 $88 $96
.db $84 $03 $A0 $00 $00

L809633:
	phy
	pha
	lda.w #$0000
	ldy.w #$0020
	ldx.w #$0000
L80963E:
	sta.l $0006DE,X
	inx
	dey
	inx
	dey
	bne L80963E
	pla
	pha
	and.w #$00FF
	sta.l $0006EE
	pla
	xba
	and.w #$00FF
	sta.l $0006F0
	lda $00
	sta.l $0006E6
	lda $01
	sta.l $0006E7
	lda $03
	sta.l $0006EB
	lda $04
	sta.l $0006EC
	ply
	ldx.w #$0000
L809676:
	lda.l $0004BE,X
	beq L809689
	txa
	clc
	adc.w #$0020
	tax
	cpx #$0200
	bne L809676
	sec
	rtl

L809689:
	lda.l $0006E6
	sta.l $0004C6,X
	lda.l $0006E7
	sta.l $0004C7,X
	lda.l $0006EB
	sta.l $0004CB,X
	lda.l $0006EC
	sta.l $0004CC,X
	lda.l $0006EE
	sta.l $0004CE,X
	lda.l $0006F0
	sta.l $0004D0,X
	lda.l $0006E9
	sta.l $0004C9,X
	lda.l $0006EA
	sta.l $0004CA,X
	lda.w #$0000
	sta.l $0004D6,X
	lda.l $0006F8
	sta.l $0004D8,X
	lda.l $0006FA
	sta.l $0004DA,X
	lda.l $0006FC
	sta.l $0004DC,X
	tya
	jsr $9A9A
	lda $00
	xba
	sta.l $0004BE,X
	phx
	jsr $99F0
	plx
	clc
	rtl

L8096FA:
	jsr $9A9A
	lda $00
	xba
	sta.l $0004BE,X
	phx
	jsr $99F0
	lda.w #$0000
	sta.l $0006FE
	plx
	rtl

.db $C2 $20 $A4 $00 $5A $A4 $01
.db $5A $22 $77 $97 $80 $A5 $00 $85
.db $03 $A5 $01 $85 $04 $7A $84 $01
.db $7A $84 $00 $A0 $00 $00 $B7 $03
.db $29 $FF $00 $C9 $00 $00 $F0 $3E
.db $5A $A5 $00 $48 $A5 $01 $48 $A5
.db $03 $48 $A5 $04 $48 $C8 $B7 $03
.db $48 $88 $B7 $03 $29 $FF $00 $3A
.db $A8 $A9 $00 $80 $85 $04 $A9 $88
.db $96 $85 $03 $68 $22 $33 $96 $80
.db $C2 $20 $68 $85 $04 $68 $85 $03
.db $68 $85 $01 $68 $85 $00 $68 $18
.db $69 $03 $00 $A8 $80 $B8 $6B $08
.db $5A $C2 $20 $29 $FF $00 $0A $A8
.db $5A $A5 $00 $85 $15 $A0 $00 $00
.db $B7 $00 $18 $65 $15 $85 $00 $7A
.db $B7 $00 $18 $65 $15 $85 $00 $7A
.db $28 $6B

L80979A:
	lda.l $000705
	sta $03
	lda.l $000706
	sta $04
	lda.l $0004C7,X
	sta $01
	lda.l $0004BE,X
	xba
	sta $00
	ldy.w #$0000
	lda [$00],Y
	and.w #$00FF
	cmp.w #$0080
	bcc L8097DE
	cmp.w #$00FD
	bcs L8097D6
	sta $15
	lda.w #$00FC
	sec
	sbc $15
	asl
	tay
	lda [$03],Y
	sta.l $0004C0,X
	rts

L8097D6:
	lda #$9AC9
	sta.l $0004C0,X
	rts

L8097DE:
	pha
	lda #$9ACA
	sta.l $0004C0,X
	pla
	dec A
	jsr $97F2
	lda $00
	sta.l $0004C2,X
	rts

L8097F2:
	php
	phy
	rep #$20
	and.w #$00FF
	asl
	tay
	phy
	lda.l $0004C7,X
	sta $01
	lda.l $0004C6,X
	sta $00
	ldy.w #$000C
	lda [$00],Y
	clc
	adc.l $0004C6,X
	sta $00
	ply
	lda [$00],Y
	clc
	adc.l $0004C6,X
	sta $00
	ply
	plp
	rts

L809821:
	lda.l $0004C7,X
	sta $04
	lda.l $0004C6,X
	sta $03
	ldy.w #$0008
	lda [$03],Y
	clc
	adc.l $0004C6,X
	sta $03
	lda.l $0004C7,X
	sta $01
	lda.l $0004BE,X
	xba
	sta $00
	ldy.w #$0001
	lda [$00],Y
	and.w #$00FF
	cmp.w #$0050
	bcc L809866
	sep #$20
	eor #$FF
	inc A
	sta.l $0004D4,X
	lda #$FF
	sta.l $0004D5,X
	rep #$20
	bra L809894
L809866:
	asl
	tay
	lda [$03],Y
	clc
	adc.l $0004C6,X
	sta.l $0004C4,X
	sta $03
	lda.w #$0000
	sta.l $0004D2,X
	tay
	sep #$20
	lda [$03],Y
	sta.l $0004D4,X
	iny
	lda [$03],Y
	sta.l $0004D5,X
	iny
	rep #$20
	tya
	sta.l $0004D2,X
L809894:
	rtl

L809895:
	rep #$20
	lda.l $0004CE,X
	and #$01FF
	sta $56
	lda.l $0004D0,X
	and.w #$00FF
	sta $58
	lda.l $0004D4,X
	and.w #$00FF
	cmp.w #$00FE
	beq L8098EF
	dec A
	sep #$20
	sta $5A
	lda.l $0004CA,X
	sta $5C
	lda.l $0004C9,X
	sta $5D
	rep #$20
	lda.l $0004C6,X
	sta $00
	lda.l $0004C7,X
	sta $63
	sta $01
	ldy.w #$0010
	lda [$00],Y
	clc
	adc.l $0004C6,X
	sta $62
	lda $0702
	sta $00
	lda $0703
	sta $01
	jml [$0000]
L8098EF:
	rtl

L8098F0:
	rep #$20
	lda.w #$0000
	sta.w $0700
	ldx.w #$0000
L8098FB:
	phx
	lda.l $0004BE, X
	beq L80993E
	cmp.w #$0001
	beq L80993A
	lda.l $000700
	inc A
	sta.l $000700
	lda.w #$0000
	sta.l $0006FE
	phx
	jsl L80995A
	plx
	phx
	jsr $997C
	plx
	phx
	jsl L80994B
	plx
	lda.l $0006FE
	beq L80993E
	jsr $99DA
	lda.l $0006FE
	and.w #$0002
	beq L80993E
L80993A:
	jsl L809895
L80993E:
	plx
	txa
	clc
	adc.w #$0020
	tax
	cpx.w #$0200
	bcc L8098FB
	rtl

L80994B:
	lda.l $0004CB, X
	sta $00
	lda.l $0004CC, X
	sta $01
	jml [$0000]

L80995A:
	lda.l $000706
	sta $01
	lda.l $0004C0, X
	sta $00
	cmp.w #$9AC9
	beq L80997B
	cmp.w #$9ACA
	bne L809978
	sep #$20
	lda #$80
	sta $02
	rep #$20
L809978:
	jml [$0000]
L80997B:
	rtl

L80997C:
	sep #$20
	lda.l $0004D5, X
	cmp #$FF
	beq L8099C7
	dec A
	sta.l $0004D5, X
	bne L8099C7
	lda.l $0004C8, X
	sta $05
	lda.l $0004C5, X
	sta $04
	lda.l $0004C4, X
	sta $03
	lda #$00
	xba
	lda.l $0004D2, X
	tay
	lda [$03], Y
	cmp #$00
	beq L8099CC
	cmp #$FF
	bne L8099B4
	ldy.w #$0000
L8099B4:
	lda [$03], Y
	sta.l $0004D4, X
	iny
	lda [$03], Y
	sta.l $0004D5, X
	iny
	tya
	sta.l $0004D2, X
L8099C7:
	jsl L809895
	rts

L8099CC:
	rep #$20
	lda.l $0006FE
	ora #$0002
	sta.l $0006FE
	rts

L8099DA:
	rep #$20
	lda.l $0004C7, X
	sta $01
	lda.l $0004BE, X
	xba
	inc A
	inc A
	sta $00
	xba
	sta.l $0004BE, X

L8099F0:
	rep #$20
	lda.l $0004C7, X
	sta $01
	lda.l $0004BE, X
	xba
	sta $00
	ldy.w #$0000
	lda [$00], Y
	and.w #$00FF
	beq L809A38
	cmp.w #$00FD
	beq L809A30
	cmp.w #$00FE
	beq L809A25
	cmp.w #$00FD
	bcs L809A1D
	cmp.w #$00F0
	bcs L809A40
L809A1D:
	jsr $979A
	jsl L809821
	rts

L809A25:
.db $C8 $B7 $00 $29 $FF $00 $20 $49
.db $9A

; data
.db $80 $AA

L809A30:
.db $A9 $01

.db $00 $9F $BE $04 $00 $60

L809A38:
	lda #$0000
	sta.l $0004BE,X
	rts

L809A40:
	jsr $979A
	jsl L80995A
	bra L8099DA

.db $08 $DA $C2 $20 $A8 $BF $C6
.db $04 $00 $85 $00 $BF $C7 $04 $00
.db $85 $01 $A9 $00 $80 $85 $04 $A9
.db $88 $96 $85 $03 $E2 $20 $BF $C9
.db $04 $00 $48 $BF $CA $04 $00 $48
.db $C2 $20 $BF $CE $04 $00 $29 $FF
.db $00 $85 $15 $BF $D0 $04 $00 $29
.db $FF $00 $EB $05 $15 $22 $33 $96
.db $80 $E2 $20 $68 $9F $CA $04 $00
.db $68 $9F $C9 $04 $00 $C2 $20 $FA
.db $28 $60 $08 $5A $C2 $20 $29 $FF
.db $00 $0A $A8 $5A $BF $C7 $04 $00
.db $85 $01 $BF $C6 $04 $00 $85 $00
.db $A0 $04 $00 $B7 $00 $18 $7F $C6
.db $04 $00 $85 $00 $7A $B7 $00 $18
.db $7F $C6 $04 $00 $85 $00 $7A $28
.db $60 $6B $BF $C7 $04 $00 $85 $01
.db $BF $C2 $04 $00 $85 $00 $A0 $00
.db $00 $B7 $00 $E2 $20 $C9 $80 $F0
.db $73 $C9 $81 $F0 $51 $48 $BF $C9
.db $04 $00 $89 $10 $F0 $0B $68 $49
.db $FF $1A $18 $7F $CE $04 $00 $80
.db $06 $68 $18 $7F $CE $04 $00 $9F
.db $CE $04 $00 $EB $48 $BF $C9 $04
.db $00 $89 $20 $F0 $0B $68 $49 $FF
.db $1A $18 $7F $D0 $04 $00 $80 $06
.db $68 $18 $7F $D0 $04 $00 $9F $D0
.db $04 $00 $C2 $20 $BF $C2 $04 $00
.db $85 $00 $18 $69 $02 $00 $9F $C2
.db $04 $00 $E2 $20 $80 $28 $EB $A8
.db $BF $D7 $04 $00 $F0 $0B $C9 $01
.db $F0 $E0 $3A $9F $D7 $04 $00 $80
.db $1B $98 $C9 $01 $F0 $D4 $9F $D7
.db $04 $00 $80 $10 $AF $FE $06 $00
.db $09 $01 $8F $FE $06 $00 $A9 $00
.db $9F $D7 $04 $00 $6B $6B $BF $C7
.db $04 $00 $85 $01 $BF $C2 $04 $00
.db $85 $00 $A0 $00 $00 $B7 $00 $E2
.db $20 $C9 $80 $F0 $73 $C9 $81 $F0
.db $51 $48 $BF $C9 $04 $00 $89 $10
.db $F0 $0B $68 $49 $FF $1A $18 $7F
.db $CE $04 $00 $80 $06 $68 $18 $7F
.db $CE $04 $00 $9F $CE $04 $00 $EB
.db $48 $BF $C9 $04 $00 $89 $20 $F0
.db $0B $68 $49 $FF $1A $18 $7F $D0
.db $04 $00 $80 $06 $68 $18 $7F $D0
.db $04 $00 $9F $D0 $04 $00 $C2 $20
.db $BF $C2 $04 $00 $85 $00 $18 $69
.db $02 $00 $9F $C2 $04 $00 $E2 $20
.db $80 $28 $EB $A8 $BF $D7 $04 $00
.db $F0 $0B $C9 $01 $F0 $E0 $3A $9F
.db $D7 $04 $00 $80 $1B $98 $C9 $01
.db $F0 $D4 $9F $D7 $04 $00 $80 $10
.db $AF $FE $06 $00 $09 $01 $8F $FE
.db $06 $00 $A9 $00 $9F $D7 $04 $00
.db $6B $E2 $20 $BF $CE $04 $00 $18
.db $69 $01 $9F $CE $04 $00 $BF $D7
.db $04 $00 $1A $9F $D7 $04 $00 $C9
.db $40 $90 $10 $AF $FE $06 $00 $09
.db $01 $8F $FE $06 $00 $A9 $00 $9F
.db $D7 $04 $00 $6B $BF $23 $BD $7E
.db $D0 $09 $E2 $20 $A9 $01 $8D $91
.db $0D $C2 $20 $AF $FE $06 $00 $09
.db $01 $00 $8F $FE $06 $00 $6B $BF
.db $23 $BD $7E $D0 $09 $E2 $20 $A9
.db $02 $8D $91 $0D $C2 $20 $AF $FE
.db $06 $00 $09 $01 $00 $8F $FE $06
.db $00 $6B $BF $23 $BD $7E $D0 $09
.db $E2 $20 $A9 $04 $8D $91 $0D $C2
.db $20 $AF $FE $06 $00 $09 $01 $00
.db $8F $FE $06 $00 $6B $BF $23 $BD
.db $7E $D0 $09 $E2 $20 $A9 $08 $8D
.db $91 $0D $C2 $20 $AF $FE $06 $00
.db $09 $01 $00 $8F $FE $06 $00 $6B
.db $E2 $20 $A9 $20 $8D $91 $0D $C2
.db $20 $AF $FE $06 $00 $09 $01 $00
.db $8F $FE $06 $00 $6B $BF $23 $BD
.db $7E $D0 $26 $E2 $20 $A9 $10 $8D
.db $91 $0D $C2 $20 $BD $C7 $04 $85
.db $01 $BD $BE $04 $EB $85 $00 $A0
.db $01 $00 $B7 $00 $29 $FF $00 $49
.db $FF $00 $E2 $20 $8D $95 $0D $C2
.db $20 $AF $FE $06 $00 $09 $01 $00
.db $8F $FE $06 $00 $6B $E2 $20 $A9
.db $00 $8F $1B $05 $00 $C2 $20 $AF
.db $FE $06 $00 $09 $01 $00 $8F $FE
.db $06 $00 $6B $BF $23 $BD $7E $D0
.db $08 $E2 $20 $A9 $01 $9F $DA $04
.db $00 $C2 $20 $AF $FE $06 $00 $09
.db $01 $00 $8F $FE $06 $00 $6B $E2
.db $20 $9E $DC $04 $C2 $20 $AF $FE
.db $06 $00 $09 $01 $00 $8F $FE $06
.db $00 $6B $DA $E2 $20 $BF $23 $BD
.db $7E $D0 $09 $20 $48 $9D $20 $69
.db $9D $20 $9D $9D $AF $FE $06 $00
.db $09 $01 $8F $FE $06 $00 $FA $6B
.db $08 $C2 $20 $BD $C7 $04 $85 $01
.db $BD $BE $04 $EB $85 $00 $A0 $01
.db $00 $B7 $00 $29 $FF $00 $49 $FF
.db $00 $0A $E2 $20 $8D $92 $0D $28
.db $60 $08 $C2 $20 $A8 $C0 $0A $00
.db $B0 $15 $BD $CE $04 $29 $FF $00
.db $8D $9D $08 $DA $BB $BF $CF $9D
.db $80 $22 $4D $B4 $80 $80 $13 $BD
.db $CE $04 $29 $FF $00 $8D $9F $08
.db $DA $BB $BF $D9 $9D $80 $22 $9E
.db $B4 $80 $FA $28 $60 $08 $AD $92
.db $0D $C9 $0A $B0 $28 $AD $93 $0D
.db $89 $02 $D0 $0F $89 $01 $D0 $1D
.db $89 $10 $D0 $19 $AD $8F $07 $89
.db $10 $F0 $12 $C2 $20 $BD $CE $04
.db $29 $FF $00 $8D $9D $08 $A9 $39
.db $00 $22 $4D $B4 $80 $28 $60 $31
.db $00 $32 $00 $33 $00 $34 $00 $35
.db $00 $B1 $00 $B2 $00 $B3 $00 $B4
.db $00 $B5 $00 $81 $00 $82 $00 $83
.db $00 $84 $00 $85 $00 $86 $00 $87
.db $00 $88 $00 $89 $00 $8A $00 $8B
.db $00 $8C $00 $8D $00 $8E $00 $8F
.db $00 $D1 $00 $D2 $00 $D3 $00 $D4
.db $00 $D5 $00 $D6 $00 $DA $00 $DB
.db $00 $DC $00 $DE $00 $90 $00 $D7
.db $00 $D8 $00 $D9 $00 $3B $00 $3C
.db $00 $3D $00 $C5 $00 $3E $00 $C6
.db $00 $5F $00 $F4 $00 $2C $9C $FB
.db $9C $98 $9C $47 $9C $62 $9C $2A
.db $9D $17 $9D $7D $9C $AD $9C $E5
.db $9C $00 $00 $00 $00 $08 $8B $4B
.db $AB $C2 $30 $BF $DB $04 $00 $29
.db $FF $00 $F0 $08 $20 $4B $A0 $90
.db $03 $4C $A4 $9F $BF $D8 $04 $00
.db $85 $5E $A5 $50 $4A $4A $8D $04
.db $42 $E2 $20 $A9 $04 $8D $06 $42
.db $C2 $20 $A5 $63 $85 $01 $85 $04
.db $A5 $62 $85 $00 $A5 $5A $0A $A8
.db $B7 $00 $18 $65 $00 $85 $03 $A5
.db $7B $29 $E0 $00 $0A $0A $0A $EB
.db $AA $E2 $20 $BD $F5 $9F $85 $60
.db $BD $FB $9F $85 $61 $AD $14 $42
.db $85 $54 $AD $16 $42 $0A $85 $55
.db $A0 $00 $00 $B7 $03 $C8 $85 $26
.db $B7 $03 $C8 $85 $27 $A9 $08 $85
.db $28 $C2 $20 $A5 $50 $C9 $FD $01
.db $90 $03 $AB $28 $6B $A9 $00 $00
.db $85 $19 $E2 $20 $A5 $27 $C9 $80
.db $E6 $55 $5A $20 $01 $A0 $7A $C6
.db $55 $64 $16 $A5 $5D $89 $20 $F0
.db $01 $82 $A3 $00 $B7 $03 $85 $15
.db $10 $02 $C6 $16 $64 $1E $C8 $A5
.db $5D $89 $10 $D0 $78 $B7 $03 $85
.db $1D $10 $02 $C6 $1E $06 $27 $C8
.db $C2 $20 $64 $19 $A5 $15 $18 $65
.db $58 $85 $15 $20 $C2 $A0 $A5 $1D
.db $18 $65 $56 $85 $1D $20 $D0 $A0
.db $B7 $03 $18 $65 $5E $C8 $C8 $A6
.db $50 $9D $12 $02 $8A $18 $69 $04
.db $00 $85 $50 $E2 $20 $A5 $15 $A6
.db $50 $9D $0D $02 $A5 $1E $C9 $01
.db $5A $20 $01 $A0 $7A $A5 $1D $A6
.db $50 $9D $0C $02 $A5 $5C $30 $5F
.db $A5 $5D $30 $73 $A5 $5D $0A $30
.db $6C $E6 $55 $E6 $55 $A5 $55 $C9
.db $08 $90 $04 $64 $55 $E6 $54 $C6
.db $26 $F0 $41 $C6 $28 $F0 $3A $4C
.db $B9 $9E $80 $1B $48 $A5 $27 $C9
.db $80 $A9 $00 $2A $AA $B7 $03 $10
.db $05 $3A $49 $FF $80 $03 $49 $FF
.db $1A $18 $75 $60 $4C $F7 $9E $A5
.db $27 $C9 $80 $A9 $00 $2A $AA $B7
.db $03 $10 $05 $3A $49 $FF $80 $03
.db $49 $FF $1A $18 $75 $60 $4C $E6
.db $9E $4C $B0 $9E $AB $28 $6B $0A
.db $29 $0E $85 $15 $BD $0F $02 $89
.db $0E $F0 $07 $29 $F1 $05 $15 $9D
.db $0F $02 $4C $48 $9F $80 $22 $0A
.db $0A $0A $0A $29 $C0 $85 $15 $49
.db $FF $85 $17 $BD $0F $02 $45 $15
.db $25 $15 $85 $15 $BD $0F $02 $25
.db $17 $05 $15 $9D $0F $02 $4C $4C
.db $9F $0A $0A $0A $29 $30 $85 $15
.db $BD $0F $02 $29 $CF $05 $15 $9D
.db $0F $02 $4C $51 $9F $F8 $F8 $F8
.db $F0 $F0 $E0 $F0 $E0 $C0 $E0 $C0
.db $C0 $E2 $10 $A4 $55 $B0 $0E $A6
.db $54 $BD $10 $04 $39 $3B $A0 $9D
.db $10 $04 $C2 $10 $60 $A5 $19 $D0
.db $10 $A6 $54 $BD $10 $04 $39 $3B
.db $A0 $19 $43 $A0 $9D $10 $04 $80
.db $0F $A6 $54 $BD $10 $04 $39 $3B
.db $A0 $C8 $39 $3B $A0 $9D $10 $04
.db $C2 $10 $60 $FE $FD $FB $F7 $EF
.db $DF $BF $7F $01 $02 $04 $08 $10
.db $20 $40 $80 $DA $E2 $20 $C9 $01
.db $F0 $1B $BF $DB $04 $00 $3A $9F
.db $DB $04 $00 $3A $C2 $20 $29 $FF
.db $00 $AA $E2 $20 $BF $72 $A0 $80
.db $F0 $03 $18 $80 $01 $38 $C2 $20
.db $FA $60 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $01 $00 $00 $01
.db $00 $00 $01 $00 $00 $01 $00 $00
.db $01 $00 $01 $00 $01 $01 $00 $01
.db $01 $00 $01 $01 $00 $01 $01 $01
.db $00 $01 $00 $01 $00 $01 $00 $01
.db $00 $01 $00 $01 $00 $01 $00 $01
.db $00 $01 $01 $01 $00 $01 $01 $01
.db $01 $01 $00 $01 $01 $01 $01 $01
.db $01 $01 $08 $70 $07 $10 $07 $C9
.db $F9 $FF $B0 $02 $E6 $19 $28 $60
.db $08 $A5 $19 $F0 $06 $E2 $20 $A9
.db $F4 $85 $15 $28 $60 $08 $8B $4B
.db $AB $C2 $30 $A5 $50 $4A $4A $8D
.db $04 $42 $E2 $20 $A9 $04 $8D $06
.db $42 $C2 $20 $A5 $63 $85 $01 $85
.db $04 $A5 $62 $85 $00 $A5 $5A $0A
.db $A8 $B7 $00 $18 $65 $00 $85 $03
.db $A5 $7B $29 $E0 $00 $0A $0A $0A
.db $EB $AA $E2 $20 $BD $66 $A2 $85
.db $60 $BD $6C $A2 $85 $61 $AD $14
.db $42 $85 $54 $AD $16 $42 $0A $85
.db $55 $A0 $00 $00 $B7 $03 $C8 $85
.db $26 $B7 $03 $C8 $85 $27 $A9 $08
.db $85 $28 $C2 $20 $A5 $50 $C9 $FD
.db $01 $90 $03 $AB $28 $6B $A9 $00
.db $00 $E2 $20 $A5 $27 $C9 $80 $E6
.db $55 $5A $20 $72 $A2 $7A $C6 $55
.db $64 $16 $A5 $5D $89 $20 $D0 $7B
.db $B7 $03 $85 $15 $10 $02 $C6 $16
.db $64 $1E $C8 $A5 $5D $89 $10 $D0
.db $6D $B7 $03 $85 $1D $10 $02 $C6
.db $1E $06 $27 $C8 $C2 $20 $A5 $15
.db $18 $65 $58 $85 $15 $A5 $1D $18
.db $65 $56 $85 $1D $B7 $03 $C8 $C8
.db $A6 $50 $9D $12 $02 $8A $18 $69
.db $04 $00 $85 $50 $E2 $20 $A5 $15
.db $A6 $50 $9D $0D $02 $A5 $1E $C9
.db $01 $5A $20 $72 $A2 $7A $A5 $1D
.db $A6 $50 $9D $0C $02 $A5 $5C $30
.db $5F $A5 $5D $30 $73 $A5 $5D $0A
.db $30 $6C $E6 $55 $E6 $55 $A5 $55
.db $C9 $08 $90 $04 $64 $55 $E6 $54
.db $C6 $26 $F0 $41 $C6 $28 $F0 $3A
.db $4C $3A $A1 $80 $1B $48 $A5 $27
.db $C9 $80 $A9 $00 $2A $AA $B7 $03
.db $10 $05 $3A $49 $FF $80 $03 $49
.db $FF $1A $18 $75 $60 $4C $73 $A1
.db $A5 $27 $C9 $80 $A9 $00 $2A $AA
.db $B7 $03 $10 $05 $3A $49 $FF $80
.db $03 $49 $FF $1A $18 $75 $60 $4C
.db $62 $A1 $4C $31 $A1 $AB $28 $6B
.db $0A $29 $0E $85 $15 $BD $0F $02
.db $89 $0E $F0 $07 $29 $F1 $05 $15
.db $9D $0F $02 $4C $B9 $A1 $80 $22
.db $0A $0A $0A $0A $29 $C0 $85 $15
.db $49 $FF $85 $17 $BD $0F $02 $45
.db $15 $25 $15 $85 $15 $BD $0F $02
.db $25 $17 $05 $15 $9D $0F $02 $4C
.db $BD $A1 $0A $0A $0A $29 $30 $85
.db $15 $BD $0F $02 $29 $CF $05 $15
.db $9D $0F $02 $4C $C2 $A1 $F8 $F8
.db $F8 $F0 $F0 $E0 $F0 $E0 $C0 $E0
.db $C0 $C0 $E2 $10 $A4 $55 $B0 $0E
.db $A6 $54 $BD $10 $04 $39 $3B $A0
.db $9D $10 $04 $C2 $10 $60 $A6 $54
.db $BD $10 $04 $39 $3B $A0 $19 $43
.db $A0 $9D $10 $04 $C2 $10 $60 $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $08 $C2 $20 $29 $FF $FF $F0 $2E
.db $8D $45 $07 $8E $48 $07 $A5 $00
.db $8D $42 $07 $A5 $01 $8D $43 $07
.db $E2 $20 $A9 $02 $8D $41 $07 $A9
.db $81 $8D $47 $07 $C2 $20 $A9 $00
.db $00 $85 $01 $A9 $41 $07 $85 $00
.db $E2 $20 $22 $AD $8E $80 $28 $6B
.db $08 $C2 $20 $29 $FF $FF $F0 $2E
.db $8D $45 $07 $8E $48 $07 $A5 $00
.db $8D $42 $07 $A5 $01 $8D $43 $07
.db $E2 $20 $A9 $02 $8D $41 $07 $A9
.db $80 $8D $47 $07 $C2 $20 $A9 $00
.db $00 $85 $01 $A9 $41 $07 $85 $00
.db $E2 $20 $22 $AD $8E $80 $28 $6B
.db $08 $C2 $20 $85 $25 $86 $27 $A6
.db $27 $A5 $04 $85 $01 $A5 $03 $85
.db $00 $A5 $25 $29 $00 $FF $E2 $20
.db $EB $C2 $20 $0A $48 $22 $38 $A3
.db $80 $A5 $27 $18 $69 $20 $00 $85
.db $27 $68 $18 $65 $03 $85 $03 $E2
.db $20 $A5 $25 $3A $85 $25 $C2 $20
.db $A5 $25 $29 $FF $00 $D0 $C8 $28
.db $6B $08 $C2 $20 $85 $25 $86 $27
.db $A6 $27 $A5 $04 $85 $01 $A5 $03
.db $85 $00 $A5 $25 $29 $FF $00 $0A
.db $48 $22 $00 $A3 $80 $A5 $27 $18
.db $69 $20 $00 $85 $27 $68 $18 $65
.db $03 $85 $03 $E2 $20 $A5 $26 $3A
.db $85 $26 $C2 $20 $A5 $25 $29 $00
.db $FF $D0 $CD $28 $6B

L80A3ED:
	jsl	$80b3f3
	brl	L80A412

L80A3F4:
	sei
	clc
	xce
	sep	#$20
	lda	#$80
	sta	$7a
	sta	$2100
	lda	#$00
	sta	$7ff7
	rep	#$30
	ldx	#$1ffb
	txs
	ldy	#$0000
	phy
	pld
	phk
	plb

L80A412:
	ldx	#$1ffe
L80A415:
	stz	$00,x
	dex
	dex
	bpl	L80A415
	ldx	#$2000
	lda	#$0000
L80A421:
	sta	$7e0000,x
	inx
	inx
	bne	L80A421
	ldx	#$0000
	lda	#$0000
L80A42F:
	sta	$7f0000,x
	inx
	inx
	bne	L80A42F
	sep	#$30
	stz	$4200
	stz	$f2
	lda	#$8f
	sta	$2100
	sta	$7a
	jsr	$a859
	jsr	$9199
	jsr	L8091dc
	jsr	$9315
	jsl	$80954e
	jsl	$808826
	sep	#$20
	lda	#$54
	sta	$69
	stz	$6a
	stz	$6b
	lda	#$6b
	sta	$6c
	lda	#$44
	sta	$6d
	stz	$6e
	stz	$6f
	lda	#$6b
	sta	$70
	lda	#$01
	sta	$0110
	rep	#$30
	sep	#$20
	lda	#$00
	sta	$074a
	lda	#$00
	sta	$074b
	rep	#$30
	jsl	$8095af
	jsl	$80b611
	lda	#$00e0
	jsl	$80b530
	jsl	$93ea4e
L80A49B: ; main loop
	rep	#$30
	lda	$52
	sta	$65
	jsl	$80954e
	lda	$074a
	and	#$00ff
	asl
	tax
	jsr	($a4ba,x)
	jsl	$8098f0
	jsl	$8087ea
	bra	L80A49B

.db $CA $A4 $CF $A4 $0D $A7
.db $FE $A6 $EF $A6 $1C $A7 $3A $A7
.db $2B $A7 $22 $92 $D9 $8D $60 $C2
.db $30 $AD $4B $07 $29 $FF $00 $0A
.db $AA $FC $DD $A4 $60 $F7 $A4 $E1
.db $A4 $E2 $20 $A9 $02 $8D $4A $07
.db $A9 $00 $9C $00 $0E $C2 $20 $A9
.db $F0 $01 $22 $E3 $B4 $80 $60 $22
.db $4A $88 $80 $22 $45 $D8 $81 $22
.db $8B $87 $83 $22 $09 $AA $80 $22
.db $51 $88 $83 $22 $20 $88 $83 $20
.db $28 $A5 $22 $1A $A6 $80 $22 $26
.db $88 $80 $22 $A0 $88 $80 $E2 $20
.db $A9 $01 $8D $4B $07 $C2 $20 $60
.db $20 $40 $A5 $E2 $20 $A9 $14 $85
.db $A0 $C2 $20 $A9 $10 $00 $8D $11
.db $01 $A9 $04 $00 $8D $13 $01 $60
.db $08 $E2 $30 $A9 $01 $8D $00 $42
.db $85 $F2 $9C $01 $42 $9C $02 $42
.db $9C $03 $42 $9C $04 $42 $9C $05
.db $42 $9C $06 $42 $9C $07 $42 $64
.db $F5 $9C $08 $42 $64 $F6 $9C $09
.db $42 $64 $F3 $9C $0A $42 $64 $F4
.db $9C $0B $42 $9C $0C $42 $64 $F7
.db $A9 $01 $8D $0D $42 $85 $F8 $28
.db $60 $08 $E2 $30 $A9 $0F $85 $7A
.db $A9 $03 $85 $7B $A9 $01 $85 $7E
.db $A9 $00 $85 $7F $A9 $29 $85 $80
.db $A9 $39 $85 $81 $A9 $49 $85 $82
.db $A9 $0C $85 $83 $A9 $20 $85 $84
.db $A9 $55 $85 $85 $A9 $00 $85 $89
.db $85 $8A $A9 $00 $85 $8B $85 $8C
.db $A9 $00 $85 $8D $85 $8E $A9 $00
.db $85 $8F $85 $90 $A9 $00 $85 $91
.db $85 $92 $A9 $00 $85 $93 $85 $94
.db $A9 $00 $85 $95 $85 $96 $A9 $00
.db $85 $97 $85 $98 $A9 $00 $85 $87
.db $A9 $00 $85 $88 $A9 $00 $85 $99
.db $A9 $00 $85 $9E $A9 $00 $85 $9F
.db $A9 $04 $85 $A0 $A9 $04 $85 $A1
.db $A9 $00 $85 $A2 $A9 $00 $85 $A3
.db $A9 $00 $85 $A4 $A9 $00 $85 $A5
.db $A9 $20 $85 $A8 $A9 $40 $85 $A7
.db $A9 $80 $85 $A6 $A9 $00 $85 $A9
.db $28 $6B $A9 $FF $20 $A2 $00 $30
.db $A0 $00 $08 $22 $8E $8C $80 $A9
.db $00 $00 $A2 $00 $28 $A0 $00 $08
.db $22 $8E $8C $80 $A9 $00 $00 $A2
.db $00 $20 $A0 $00 $08 $22 $8E $8C
.db $80 $08 $8B $4B $AB $C2 $30 $A9
.db $00 $80 $85 $01 $A9 $86 $A6 $85
.db $00 $22 $AD $8E $80 $A9 $00 $80
.db $85 $01 $A9 $7D $A6 $85 $00 $22
.db $AD $8E $80 $A9 $00 $80 $85 $01
.db $A9 $74 $A6 $85 $00 $22 $AD $8E
.db $80 $AB $28 $6B $02 $00 $20 $7E
.db $00 $08 $80 $00 $28 $02 $00 $28
.db $7E $00 $08 $80 $00 $38 $02 $00
.db $30 $7E $00 $08 $80 $00 $48 $A2
.db $00 $08 $A9 $00 $00 $9F $FE $27
.db $7F $CA $CA $D0 $F5 $60 $86 $56
.db $84 $58 $85 $17 $A2 $04 $00 $DA
.db $A5 $17 $29 $00 $F0 $E2 $20 $EB
.db $64 $5C $C2 $20 $4A $4A $4A $4A
.db $85 $5A $A9 $00 $80 $85 $63 $A9
.db $BE $94 $85 $62 $22 $A2 $93 $80
.db $A5 $17 $0A $0A $0A $0A $85 $17
.db $A5 $56 $18 $69 $08 $00 $85 $56
.db $FA $CA $D0 $CB $60 $08 $C2 $20
.db $A9 $FF $00 $A2 $00 $30 $A0 $00
.db $08 $22 $8E $8C $80 $28 $6B $8B
.db $E2 $20 $A9 $81 $48 $AB $C2 $20
.db $22 $00 $80 $81 $AB $60 $8B $E2
.db $20 $A9 $83 $48 $AB $C2 $20 $22
.db $B4 $84 $83 $AB $60 $8B $E2 $20
.db $A9 $84 $48 $AB $C2 $20 $22 $BD
.db $90 $84 $AB $60 $8B $E2 $20 $A9
.db $84 $48 $AB $C2 $20 $22 $BD $90
.db $84 $AB $60 $8B $E2 $20 $A9 $87
.db $48 $AB $C2 $20 $22 $00 $80 $87
.db $AB $60 $5C $02 $80 $86 $A9 $FF
.db $FF $A0 $70 $08 $A2 $00 $00 $9F
.db $30 $53 $7F $E8 $88 $E8 $88 $D0
.db $F6 $A9 $FF $FF $A0 $00 $0C $A2
.db $00 $00 $9F $30 $44 $7F $E8 $88
.db $E8 $88 $D0 $F6 $A9 $FF $FF $A0
.db $00 $01 $A2 $00 $00 $9F $30 $50
.db $7F $E8 $88 $E8 $88 $D0 $F6 $A9
.db $00 $00 $A0 $40 $00 $A2 $00 $00
.db $9F $5C $67 $7F $E8 $88 $E8 $88
.db $D0 $F6 $A9 $00 $00 $A0 $40 $00
.db $A2 $00 $00 $9F $9C $67 $7F $E8
.db $88 $E8 $88 $D0 $F6 $A9 $00 $00
.db $A0 $18 $00 $A2 $00 $00 $9F $20
.db $65 $7F $E8 $88 $E8 $88 $D0 $F6
.db $22 $8F $DB $81 $E2 $20 $AD $DF
.db $07 $C9 $15 $90 $0E $C2 $20 $A9
.db $00 $88 $85 $01 $A9 $3E $88 $85
.db $00 $80 $0C $C2 $20 $A9 $00 $88
.db $85 $01 $A9 $60 $80 $85 $00 $64
.db $15 $22 $BE $DC $83 $E2 $20 $A9
.db $00 $8F $05 $44 $7F $C2 $20 $A5
.db $15 $09 $00 $20 $8F $02 $42 $00
.db $EA $EA $EA $AF $16 $42 $00 $AA
.db $A0 $00 $00 $DA $BB $BF $00 $44
.db $7F $FA $9F $30 $53 $7F $E8 $E8
.db $C8 $C8 $98 $C9 $20 $00 $D0 $EB
.db $A5 $15 $09 $00 $10 $8F $02 $42
.db $00 $EA $EA $EA $AF $16 $42 $00
.db $AA $A0 $00 $00 $DA $BB $BF $20
.db $44 $7F $FA $9F $D0 $58 $7F $E8
.db $E8 $C8 $C8 $98 $C9 $10 $00 $D0
.db $EB $E6 $15 $A9 $13 $00 $18 $65
.db $00 $85 $00 $A7 $00 $29 $FF $00
.db $C9 $FF $00 $A5 $15 $29 $FF $00
.db $C9 $01 $00 $F0 $03 $82 $81 $FF
.db $6B $08 $E2 $20 $A9 $02 $8D $DA
.db $07 $A9 $00 $8D $DB $07 $A9 $02
.db $8D $DC $07 $A9 $00 $8D $DE $07
.db $A9 $00 $8D $DD $07 $28 $60 $08
.db $C2 $20 $8E $5B $07 $CD $5B $07
.db $D0 $04 $98 $28 $38 $6B $1A $28
.db $18 $6B $08 $C2 $20 $8C $5B $07
.db $CD $5B $07 $D0 $04 $8A $28 $38
.db $6B $3A $28 $18 $6B $08 $C2 $20
.db $29 $FF $00 $09 $00 $03 $8F $02
.db $42 $00 $EA $EA $EA $AF $16 $42
.db $00 $18 $65 $00 $85 $00 $28 $6B
.db $08 $E2 $20 $EE $51 $07 $C2 $30
.db $AD $37 $01 $29 $07 $00 $F0 $0F
.db $3A $F0 $5E $3A $F0 $06 $3A $D0
.db $53 $82 $E0 $00 $82 $80 $00 $AD
.db $4C $07 $29 $08 $00 $F0 $45 $AD
.db $50 $07 $29 $FF $00 $A2 $07 $00
.db $A0 $00 $00 $22 $77 $A8 $80 $E2
.db $20 $8D $50 $07 $C2 $20 $89 $04
.db $00 $D0 $0C $AD $52 $07 $18 $69
.db $20 $00 $8D $52 $07 $80 $0A $AD
.db $52 $07 $38 $E9 $20 $00 $8D $52
.db $07 $E2 $20 $A9 $0D $8D $21 $21
.db $AD $52 $07 $8D $22 $21 $AD $53
.db $07 $8D $22 $21 $C2 $20 $82 $87
.db $00 $AD $4C $07 $29 $02 $00 $F0
.db $7F $AD $4E $07 $29 $FF $00 $A2
.db $05 $00 $A0 $00 $00 $22 $77 $A8
.db $80 $E2 $20 $8D $4E $07 $AA $A5
.db $84 $29 $0F $1D $F6 $A9 $8D $0B
.db $21 $85 $84 $C2 $20 $80 $59 $AD
.db $4C $07 $29 $01 $00 $F0 $51 $E2
.db $20 $EE $4D $07 $AD $4D $07 $29
.db $0E $EB $C2 $20 $0A $0A $18 $6D
.db $55 $07 $85 $4D $E2 $20 $A5 $4D
.db $8D $22 $43 $A5 $4E $8D $23 $43
.db $AD $57 $07 $8D $24 $43 $A9 $00
.db $8D $25 $43 $A9 $08 $8D $26 $43
.db $A9 $80 $8D $15 $21 $A9 $00 $8D
.db $16 $21 $A9 $1C $8D $17 $21 $A9
.db $01 $8D $20 $43 $A9 $18 $8D $21
.db $43 $A9 $04 $8D $0B $42 $C2 $20
.db $C2 $30 $28 $60 $AD $4C $07 $29
.db $04 $00 $F0 $F4 $AD $4F $07 $29
.db $1E $00 $18 $6D $58 $07 $69 $00
.db $30 $85 $4D $E2 $30 $EE $4F $07
.db $AD $5A $07 $85 $4F $A9 $37 $8D
.db $21 $21 $A7 $4D $8D $22 $21 $A0
.db $01 $B7 $4D $8D $22 $21 $A0 $20
.db $B7 $4D $8D $22 $21 $A0 $21 $B7
.db $4D $8D $22 $21 $80 $BA $20 $20
.db $30 $40 $40 $30 $08 $E2 $20 $AD
.db $4C $07 $09 $07 $8D $4C $07 $28
.db $6B $08 $E2 $20 $AD $4C $07 $29
.db $F8 $8D $4C $07 $28 $6B $08 $C2
.db $20 $C9 $FF $FF $F0 $04 $22 $67
.db $B4 $80 $28 $6B $08 $C2 $20 $C9
.db $FF $FF $F0 $04 $22 $BB $B4 $80
.db $28 $6B $08 $C2 $20 $8D $7A $08
.db $28 $6B $08 $C2 $20 $48 $A9 $F0
.db $01 $22 $E3 $B4 $80 $A9 $10 $00
.db $22 $9D $90 $80 $68 $8D $76 $08
.db $28 $6B $08 $E2 $20 $AD $61 $08
.db $CD $E4 $08 $10 $03 $AD $E4 $08
.db $C2 $20 $29 $FF $00 $85 $17 $AD
.db $E3 $08 $29 $FF $00 $F0 $13 $E2
.db $20 $AD $E5 $08 $38 $ED $E4 $08
.db $C2 $20 $29 $FF $00 $18 $65 $17
.db $85 $17 $A5 $17 $0A $0A $0A $0A
.db $85 $1D $E2 $20 $AD $61 $08 $18
.db $69 $0D $CD $E5 $08 $30 $03 $AD
.db $E5 $08 $38 $ED $E4 $08 $10 $03
.db $82 $C0 $01 $C2 $20 $29 $FF $00
.db $A8 $AD $60 $08 $29 $FF $00 $85
.db $15 $0A $0A $0A $0A $85 $1B $5A
.db $64 $19 $22 $F7 $D8 $83 $A0 $0F
.db $00 $5A $A9 $00 $01 $85 $23 $A6
.db $19 $BF $00 $28 $7F $C9 $00 $04
.db $30 $0A $5A $22 $D8 $B0 $80 $AF
.db $06 $44 $7F $7A $48 $98 $29 $0F
.db $00 $49 $0F $00 $0A $0A $A8 $68
.db $0A $0A $0A $AA $BF $DC $6B $7F
.db $99 $1B $09 $BF $DE $6B $7F $99
.db $1D $09 $BF $E0 $6B $7F $99 $5B
.db $09 $BF $E2 $6B $7F $99 $5D $09
.db $A5 $23 $0A $0A $0A $AA $BF $00
.db $C8 $DA $99 $9B $09 $BF $02 $C8
.db $DA $99 $9D $09 $BF $04 $C8 $DA
.db $99 $DB $09 $BF $06 $C8 $DA $99
.db $DD $09 $7A $E6 $19 $E6 $19 $88
.db $10 $8F $A5 $17 $48 $A5 $1D $48
.db $22 $3F $DC $83 $A5 $1F $C9 $00
.db $04 $90 $08 $38 $E9 $00 $04 $85
.db $1F $80 $69 $AA $A9 $00 $28 $85
.db $21 $A9 $00 $00 $85 $01 $A9 $1B
.db $09 $85 $00 $E2 $20 $A9 $10 $38
.db $ED $60 $08 $C2 $20 $29 $FF $00
.db $0A $0A $48 $DA $20 $6C $AC $A9
.db $00 $38 $85 $21 $A9 $00 $00 $85
.db $01 $A9 $9B $09 $85 $00 $FA $68
.db $48 $DA $20 $6C $AC $A9 $00 $28
.db $85 $21 $A9 $00 $00 $85 $01 $A9
.db $5B $09 $85 $00 $68 $18 $69 $20
.db $00 $AA $68 $48 $DA $20 $6C $AC
.db $A9 $00 $38 $85 $21 $A9 $00 $00
.db $85 $01 $A9 $DB $09 $85 $00 $FA
.db $68 $20 $6C $AC $A5 $1F $29 $E0
.db $FF $AA $A9 $00 $2C $85 $21 $A9
.db $00 $00 $85 $01 $A9 $1B $09 $85
.db $00 $20 $78 $AC $AD $60 $08 $29
.db $FF $00 $F0 $55 $0A $0A $48 $DA
.db $20 $6C $AC $A9 $00 $3C $85 $21
.db $A9 $00 $00 $85 $01 $A9 $9B $09
.db $85 $00 $20 $78 $AC $FA $68 $48
.db $DA $20 $6C $AC $A9 $00 $2C $85
.db $21 $A9 $00 $00 $85 $01 $A9 $5B
.db $09 $85 $00 $20 $78 $AC $68 $18
.db $69 $20 $00 $AA $68 $48 $DA $20
.db $6C $AC $A9 $00 $3C $85 $21 $A9
.db $00 $00 $85 $01 $A9 $DB $09 $85
.db $00 $20 $78 $AC $FA $68 $20 $6C
.db $AC $AD $E2 $08 $1A $29 $FF $00
.db $22 $9D $90 $80 $22 $4E $95 $80
.db $68 $85 $1D $68 $85 $17 $AD $E3
.db $08 $29 $FF $00 $D0 $0C $E6 $17
.db $A5 $1D $18 $69 $10 $00 $85 $1D
.db $80 $0A $C6 $17 $A5 $1D $38 $E9
.db $10 $00 $85 $1D $7A $88 $30 $03
.db $82 $46 $FE $E2 $20 $9C $DE $08
.db $C2 $20 $28 $6B $48 $8A $18 $65
.db $21 $AA $68 $22 $38 $A3 $80 $60
.db $E2 $20 $A9 $10 $38 $ED $60 $08
.db $C2 $20 $29 $FF $00 $0A $0A $18
.db $65 $00 $85 $00 $60 $08 $E2 $20
.db $8B $A9 $80 $48 $AB $AD $DE $08
.db $F0 $5B $AD $E8 $08 $C9 $10 $D0
.db $06 $20 $22 $AD $20 $68 $AE $AD
.db $E8 $08 $38 $ED $EA $08 $8D $E8
.db $08 $D0 $03 $9C $DE $08 $C2 $20
.db $AD $E9 $08 $29 $FF $00 $F0 $40
.db $3A $F0 $35 $3A $F0 $08 $AD $EA
.db $08 $29 $FF $00 $80 $0A $AD $EA
.db $08 $29 $FF $00 $49 $FF $FF $1A
.db $18 $65 $8B $29 $FF $00 $85 $8B
.db $85 $8F $48 $AD $E0 $08 $29 $FF
.db $00 $F0 $05 $68 $85 $93 $80 $05
.db $68 $64 $91 $64 $93 $AB $28 $6B
.db $AD $EA $08 $29 $FF $00 $80 $0A
.db $AD $EA $08 $29 $FF $00 $49 $FF
.db $FF $1A $18 $65 $89 $29 $FF $01
.db $85 $89 $85 $8D $48 $AD $E0 $08
.db $29 $FF $00 $F0 $D3 $68 $85 $91
.db $80 $D3 $08 $C2 $20 $20 $AE $AD
.db $A2 $00 $00 $A9 $00 $01 $85 $23
.db $DA $64 $19 $22 $F7 $D8 $83 $A5
.db $19 $29 $FF $07 $AA $A9 $FF $00
.db $85 $25 $AD $E0 $08 $29 $FF $00
.db $F0 $09 $BF $00 $38 $7F $29 $FF
.db $00 $85 $25 $BF $00 $28 $7F $C9
.db $00 $04 $90 $08 $22 $D8 $B0 $80
.db $AF $06 $44 $7F $85 $19 $FA $DA
.db $8A $0A $0A $85 $21 $20 $E6 $AD
.db $A5 $23 $18 $69 $00 $04 $85 $19
.db $20 $E6 $AD $A9 $FF $FF $85 $19
.db $20 $E6 $AD $FA $AD $E9 $08 $29
.db $02 $00 $D0 $14 $E6 $17 $A5 $1D
.db $18 $69 $10 $00 $85 $1D $E8 $8A
.db $C9 $10 $00 $F0 $0F $82 $8B $FF
.db $E6 $15 $A5 $1B $18 $69 $10 $00
.db $85 $1B $80 $EA $28 $60 $AD $60
.db $08 $29 $FF $00 $85 $15 $AD $61
.db $08 $29 $FF $00 $85 $17 $AD $E9
.db $08 $29 $FF $00 $3A $F0 $12 $3A
.db $3A $F0 $01 $60 $AD $61 $08 $29
.db $FF $00 $18 $69 $0D $00 $85 $17
.db $60 $AD $60 $08 $29 $FF $00 $18
.db $69 $0F $00 $85 $15 $60 $A5 $19
.db $C9 $FF $FF $F0 $05 $0A $0A $0A
.db $85 $19 $A2 $00 $00 $DA $AD $E9
.db $08 $29 $02 $00 $D0 $04 $E8 $E8
.db $E8 $E8 $BD $60 $AE $29 $FF $00
.db $18 $65 $21 $A8 $A5 $19 $C9 $FF
.db $FF $D0 $14 $A5 $25 $C9 $FF $00
.db $F0 $05 $A9 $50 $2D $80 $03 $A9
.db $FF $00 $99 $1B $0A $80 $25 $A9
.db $00 $7F $85 $01 $A9 $DC $6B $85
.db $00 $A5 $19 $C9 $00 $20 $90 $0B
.db $A6 $19 $BF $00 $A8 $DA $99 $9B
.db $09 $80 $09 $5A $A4 $19 $B7 $00
.db $7A $99 $1B $09 $FA $A5 $19 $C9
.db $FF $FF $F0 $04 $E6 $19 $E6 $19
.db $E8 $8A $C9 $04 $00 $D0 $96 $60
.db $00 $02 $40 $42 $00 $40 $02 $42
.db $08 $C2 $20 $20 $D6 $AE $A5 $1F
.db $85 $17 $AD $E9 $08 $29 $02 $00
.db $D0 $29 $A9 $00 $01 $38 $E5 $8B
.db $4A $4A $85 $15 $64 $19 $20 $23
.db $AF $A5 $15 $85 $19 $A9 $40 $00
.db $38 $E5 $15 $F0 $3F $85 $15 $A5
.db $17 $29 $1F $FC $85 $17 $20 $23
.db $AF $80 $31 $A5 $89 $29 $FF $00
.db $85 $15 $A9 $00 $01 $38 $E5 $15
.db $4A $4A $85 $15 $64 $19 $20 $C8
.db $AF $A5 $15 $85 $19 $A9 $40 $00
.db $38 $E5 $15 $F0 $0F $85 $15 $A5
.db $17 $49 $00 $04 $29 $E0 $FF $85
.db $17 $20 $C8 $AF $28 $60 $A5 $89
.db $85 $1B $A5 $8B $85 $1D $AD $E9
.db $08 $29 $FF $00 $F0 $2D $3A $F0
.db $10 $3A $F0 $1A $A5 $8B $18 $69
.db $E0 $00 $29 $FF $00 $85 $1D $80
.db $25 $A5 $89 $18 $69 $00 $01 $29
.db $FF $01 $85 $1B $80 $18 $A5 $8B
.db $38 $E9 $10 $00 $29 $FF $00 $85
.db $1D $80 $0B $A5 $89 $38 $E9 $10
.db $00 $29 $FF $01 $85 $1B $22 $3F
.db $DC $83 $60 $A9 $00 $00 $85 $01
.db $A9 $1B $09 $18 $65 $19 $85 $00
.db $A5 $17 $18 $69 $00 $28 $AA $A5
.db $15 $22 $00 $A3 $80 $A9 $00 $00
.db $85 $01 $A9 $5B $09 $18 $65 $19
.db $85 $00 $A5 $17 $18 $69 $01 $28
.db $AA $A5 $15 $22 $00 $A3 $80 $A9
.db $00 $00 $85 $01 $A9 $9B $09 $18
.db $65 $19 $85 $00 $A5 $17 $18 $69
.db $00 $38 $AA $A5 $15 $22 $00 $A3
.db $80 $A9 $00 $00 $85 $01 $A9 $DB
.db $09 $18 $65 $19 $85 $00 $A5 $17
.db $18 $69 $01 $38 $AA $A5 $15 $22
.db $00 $A3 $80 $AD $E0 $08 $29 $FF
.db $00 $F0 $34 $A9 $00 $00 $85 $01
.db $A9 $1B $0A $18 $65 $19 $85 $00
.db $A5 $17 $18 $69 $00 $48 $AA $A5
.db $15 $22 $00 $A3 $80 $A9 $00 $00
.db $85 $01 $A9 $5B $0A $18 $65 $19
.db $85 $00 $A5 $17 $18 $69 $01 $48
.db $AA $A5 $15 $22 $00 $A3 $80 $60
.db $A9 $00 $00 $85 $01 $A9 $1B $09
.db $18 $65 $19 $85 $00 $A5 $17 $18
.db $69 $00 $28 $AA $A5 $15 $22 $38
.db $A3 $80 $A9 $00 $00 $85 $01 $A9
.db $5B $09 $18 $65 $19 $85 $00 $A5
.db $17 $18 $69 $20 $28 $AA $A5 $15
.db $22 $38 $A3 $80 $A9 $00 $00 $85
.db $01 $A9 $9B $09 $18 $65 $19 $85
.db $00 $A5 $17 $18 $69 $00 $38 $AA
.db $A5 $15 $22 $38 $A3 $80 $A9 $00
.db $00 $85 $01 $A9 $DB $09 $18 $65
.db $19 $85 $00 $A5 $17 $18 $69 $20
.db $38 $AA $A5 $15 $22 $38 $A3 $80
.db $AD $E0 $08 $29 $FF $00 $F0 $34
.db $A9 $00 $00 $85 $01 $A9 $1B $0A
.db $18 $65 $19 $85 $00 $A5 $17 $18
.db $69 $00 $48 $AA $A5 $15 $22 $38
.db $A3 $80 $A9 $00 $00 $85 $01 $A9
.db $5B $0A $18 $65 $19 $85 $00 $A5
.db $17 $18 $69 $20 $48 $AA $A5 $15
.db $22 $38 $A3 $80 $60 $08 $C2 $30
.db $AA $64 $15 $A0 $00 $00 $A9 $00
.db $00 $E2 $20 $18 $77 $00 $18 $65
.db $15 $E6 $15 $C8 $CA $10 $F4 $28
.db $6B $08 $C2 $30 $AD $DB $07 $29
.db $FF $00 $F0 $08 $3A $F0 $0E $3A
.db $F0 $28 $80 $FE $A9 $FA $00 $22
.db $E3 $B4 $80 $80 $07 $A9 $FA $03
.db $22 $E3 $B4 $80 $E2 $20 $AD $82
.db $08 $89 $02 $F0 $04 $22 $12 $F3
.db $83 $A9 $02 $1C $82 $08 $C2 $20
.db $28 $6B $E2 $20 $AD $82 $08 $89
.db $02 $D0 $0B $A9 $02 $0C $82 $08
.db $C2 $20 $22 $12 $F3 $83 $28 $6B
.db $08 $C2 $20 $48 $22 $12 $D9 $83
.db $AF $01 $44 $7F $29 $FF $00 $22
.db $AC $F1 $83 $85 $23 $68 $29 $20
.db $00 $18 $65 $23 $85 $23 $AF $12
.db $44 $7F $29 $01 $00 $F0 $0A $A5
.db $23 $29 $DF $00 $09 $40 $00 $85
.db $23 $28 $6B $08 $8B $E2 $20 $A9
.db $7F $48 $AB $C2 $30 $AF $FA $08
.db $00 $89 $E0 $00 $D0 $14 $AF $FB
.db $08 $00 $89 $E0 $00 $D0 $0B $AF
.db $FD $08 $00 $89 $80 $FF $D0 $02
.db $80 $02 $80 $FE $A9 $FF $FF $A2
.db $00 $38 $A0 $00 $08 $22 $A1 $8C
.db $80 $AF $FA $08 $00 $29 $FF $00
.db $AA $AF $FB $08 $00 $29 $FF $00
.db $A8 $22 $9C $B3 $80 $AA $A9 $00
.db $FF $9D $00 $38 $A9 $00 $00 $8D
.db $00 $40 $3A $8D $03 $40 $AF $FA
.db $08 $00 $8D $01 $40 $A9 $FF $FF
.db $8D $04 $40 $9C $DC $8C $E2 $20
.db $9C $DE $8C $A2 $00 $00 $8E $DF
.db $8C $8E $E1 $8C $AE $DF $8C $AD
.db $DC $8C $DD $00 $40 $B0 $05 $20
.db $E5 $B1 $80 $03 $20 $12 $B2 $C2
.db $20 $AD $DF $8C $18 $69 $04 $00
.db $8D $DF $8C $AA $E2 $20 $BD $00
.db $40 $C9 $FF $D0 $D7 $AD $DE $8C
.db $D0 $08 $AE $E1 $8C $E0 $00 $00
.db $F0 $28 $AD $DC $8C $CF $FD $08
.db $00 $F0 $1F $EE $DC $8C $A2 $00
.db $00 $C2 $20 $BD $00 $42 $9D $00
.db $40 $E8 $E8 $EC $E1 $8C $90 $F1
.db $A9 $FF $00 $9D $00 $40 $E2 $20
.db $80 $96 $AB $28 $6B $E2 $20 $A9
.db $01 $8D $DE $8C $C2 $20 $A9 $00
.db $40 $85 $12 $AC $DF $8C $AE $E1
.db $8C $B1 $12 $C8 $C8 $9D $00 $42
.db $B1 $12 $C8 $C8 $9D $02 $42 $8A
.db $18 $69 $04 $00 $8D $E1 $8C $E2
.db $20 $60 $C2 $20 $AE $DF $8C $BD
.db $01 $40 $85 $27 $BD $03 $40 $29
.db $FF $00 $85 $1F $20 $48 $B2 $20
.db $63 $B2 $20 $7E $B2 $A5 $1F $C9
.db $02 $00 $F0 $13 $A5 $27 $29 $FF
.db $00 $AA $A5 $28 $29 $FF $00 $A8
.db $88 $A9 $03 $00 $4C $99 $B2 $60
.db $A5 $1F $C9 $00 $00 $F0 $13 $A5
.db $27 $29 $FF $00 $AA $A5 $28 $29
.db $FF $00 $A8 $CA $A9 $01 $00 $4C
.db $99 $B2 $60 $A5 $1F $C9 $03 $00
.db $F0 $13 $A5 $27 $29 $FF $00 $AA
.db $A5 $28 $29 $FF $00 $A8 $C8 $A9
.db $02 $00 $4C $99 $B2 $60 $A5 $1F
.db $C9 $01 $00 $F0 $13 $A5 $27 $29
.db $FF $00 $AA $A5 $28 $29 $FF $00
.db $A8 $E8 $A9 $00 $00 $4C $99 $B2
.db $60 $85 $25 $8A $F0 $37 $29 $00
.db $FF $D0 $32 $98 $F0 $2F $29 $00
.db $FF $D0 $2A $E2 $30 $8A $CF $D1
.db $07 $00 $B0 $21 $98 $CF $D2 $07
.db $00 $B0 $1A $C2 $30 $86 $21 $84
.db $22 $22 $9C $B3 $80 $85 $1B $AA
.db $BD $00 $38 $F0 $0D $29 $00 $FF
.db $C9 $00 $FF $F0 $05 $C2 $30 $4C
.db $59 $B3 $22 $5A $B3 $80 $C9 $FF
.db $00 $D0 $03 $4C $59 $B3 $48 $AF
.db $FC $08 $00 $29 $01 $00 $F0 $22
.db $A6 $1B $BD $00 $28 $29 $00 $04
.db $F0 $18 $AF $ED $08 $00 $29 $20
.db $00 $49 $20 $00 $85 $15 $BD $00
.db $28 $29 $20 $00 $C5 $15 $D0 $02
.db $68 $60 $A5 $27 $AA $A5 $28 $A8
.db $22 $9C $B3 $80 $AA $68 $E2 $20
.db $18 $7D $00 $38 $CF $FD $08 $00
.db $90 $06 $F0 $04 $C2 $20 $80 $29
.db $48 $AE $E1 $8C $9D $00 $42 $A5
.db $25 $9D $03 $42 $A6 $1B $68 $9D
.db $00 $38 $A5 $25 $9D $01 $38 $C2
.db $20 $A5 $21 $AE $E1 $8C $9D $01
.db $42 $8A $18 $69 $04 $00 $8D $E1
.db $8C $60 $22 $B3 $B3 $80 $A8 $A9
.db $00 $88 $85 $01 $AF $FF $08 $00
.db $29 $FF $00 $85 $15 $0A $65 $15
.db $69 $83 $B3 $85 $00 $A7 $00 $85
.db $00 $B7 $00 $29 $FF $00 $6B $98
.db $8F $02 $42 $00 $A9 $20 $8F $03
.db $42 $00 $64 $16 $86 $15 $C2 $30
.db $AF $16 $42 $00 $18 $65 $15 $0A
.db $AA $E2 $20 $60 $98 $29 $FF $00
.db $EB $4A $4A $4A $85 $15 $8A $29
.db $FF $00 $65 $15 $0A $C9 $00 $08
.db $10 $FE $6B $08 $C2 $30 $A9 $00
.db $8A $85 $01 $AF $D0 $07 $00 $29
.db $FF $00 $85 $15 $0A $65 $15 $69
.db $F8 $81 $85 $00 $A7 $00 $85 $00
.db $BF $00 $28 $7F $29 $FF $07 $C9
.db $00 $04 $90 $0C $29 $FF $00 $EB
.db $4A $4A $4A $AA $BF $36 $44 $7F
.db $29 $FF $03 $A8 $B7 $00 $29 $FF
.db $00 $28 $6B

L80B3F3:
	php
	phb
	phk
	plb
	rep	#$30
	phx
	phy
	lda	$00
	pha
	lda	$01
	pha
	lda	#$b000
	sta	$01
	ldy	#$8000
	stz	$00
	jsr	$ba79
	ldx	#$005e
L80B411:
	stz	$0862,x
	dex
	dex
	bmi	L80B41A
	bra	L80B411
L80B41A:
	rep	#$30
	pla
	sta	$01
	pla
	sta	$00
	ply
	plx
	plb
	plp
	rtl

.db $08
.db $8B $4B $AB $C2 $30 $DA $A2 $5E
.db $00 $9E $62 $08 $CA $CA $30 $02
.db $80 $F7 $FA $AB $28 $6B $08 $8B
.db $4B $AB $C2 $30 $29 $FF $00 $09
.db $00 $20 $80 $0A $EA $08 $8B $4B
.db $AB $C2 $30 $29 $FF $00 $8D $B3
.db $08 $AD $9D $08 $20 $13 $B8 $0D
.db $B3 $08 $9C $9D $08 $80 $06 $08
.db $8B $4B $AB $C2 $30 $DA $AA $AD
.db $82 $08 $29 $01 $00 $D0 $14 $DA
.db $A2 $00 $00 $BD $62 $08 $F0 $07
.db $E8 $E8 $E0 $06 $00 $D0 $F4 $68
.db $9D $62 $08 $FA $AB $28 $6B $08
.db $8B $4B $AB $C2 $30 $29 $FF $00
.db $09 $00 $20 $80 $0A $EA $08 $8B
.db $4B $AB $C2 $30 $29 $FF $00 $8D
.db $B3 $08 $AD $9F $08 $20 $13 $B8
.db $0D $B3 $08 $9C $9F $08 $CE $9F
.db $08 $80 $06 $08 $8B $4B $AB $C2
.db $30 $DA $AA $AD $82 $08 $29 $01
.db $00 $D0 $14 $DA $A2 $00 $00 $BD
.db $6A $08 $F0 $07 $E8 $E8 $E0 $06
.db $00 $D0 $F4 $68 $9D $6A $08 $FA
.db $AB $28 $6B $08 $8B $4B $AB $C2
.db $30 $DA $AA $C9 $F0 $00 $90 $03
.db $82 $76 $00 $C9 $00 $00 $D0 $03
.db $82 $82 $00 $5A $A6 $00 $DA $A6
.db $01 $DA $AA $AD $96 $08 $D0 $1D
.db $AD $BF $08 $29 $01 $00 $D0 $04
.db $22 $38 $88 $80 $20 $43 $B9 $C2
.db $20 $AD $BF $08 $29 $01 $00 $D0
.db $04 $22 $26 $88 $80 $C2 $30 $FA
.db $86 $01 $FA $86 $00 $7A $80 $4D
.db $08 $8B $4B $AB $C2 $30 $DA $AA
.db $29 $FF $00 $C9 $F0 $00 $B0 $3D
.db $C9 $E0 $00 $90 $38 $C9 $E1 $00
.db $90 $12 $8E $84 $08 $C9 $E9 $00
.db $F0 $12 $C9 $EA $00 $F0 $0D $C9
.db $ED $00 $F0 $08 $AD $82 $08 $29
.db $02 $00 $D0 $19 $AD $96 $08 $D0
.db $14 $DA $A2 $00 $00 $BD $62 $08
.db $F0 $07 $E8 $E8 $E0 $06 $00 $D0
.db $F4 $68 $9D $62 $08 $FA $AB $28
.db $6B $08 $8B $4B $AB $C2 $30 $DA
.db $AA $F0 $0F $E0 $03 $00 $B0 $20
.db $BD $A1 $08 $38 $E9 $50 $00 $9D
.db $A1 $08 $BD $A5 $08 $20 $13 $B8
.db $1D $A1 $08 $22 $67 $B4 $80 $BD
.db $A1 $08 $09 $00 $80 $9D $A1 $08
.db $FA $AB $28 $6B $C2 $30 $AE $AD
.db $08 $E0 $03 $00 $B0 $27 $BD $A1
.db $08 $10 $1A $BD $A9 $08 $F0 $05
.db $C9 $00 $20 $D0 $FB $BD $A5 $08
.db $20 $13 $B8 $1D $A1 $08 $1D $A9
.db $08 $22 $BB $B4 $80 $8A $F0 $05
.db $9C $AD $08 $80 $06 $A9 $02 $00
.db $8D $AD $08 $60 $08 $8B $4B $AB
.db $C2 $30 $DA $AA $E0 $03 $00 $B0
.db $14 $BD $A1 $08 $29 $FF $00 $EB
.db $09 $F8 $00 $22 $E3 $B4 $80 $9E
.db $A1 $08 $9E $A9 $08 $FA $AB $28
.db $6B $08 $8B $4B $AB $C2 $20 $48
.db $A9 $FF $FF $8D $76 $08 $8D $7A
.db $08 $8D $7E $08 $68 $AB $28 $6B
.db $08 $8B $4B $AB $C2 $30 $48 $DA
.db $5A $A5 $00 $48 $A5 $01 $48 $A9
.db $00 $B1 $85 $01 $A9 $40 $D9 $85
.db $00 $A2 $00 $00 $BD $76 $08 $10
.db $71 $C9 $FF $FF $F0 $74 $48 $20
.db $B0 $B8 $C9 $05 $80 $90 $52 $C9
.db $B1 $80 $B0 $4D $48 $AD $BD $08
.db $29 $FF $00 $8D $88 $08 $68 $C9
.db $B1 $80 $B0 $3D $C9 $A1 $80 $90
.db $0C $AD $88 $08 $F0 $0C $C9 $03
.db $00 $B0 $07 $80 $2C $C9 $31 $80
.db $B0 $05 $A9 $01 $00 $80 $12 $C9
.db $91 $80 $B0 $05 $A9 $02 $00 $80
.db $08 $C9 $A1 $80 $B0 $13 $A9 $03
.db $00 $CD $88 $08 $F0 $0B $E2 $20
.db $8D $BD $08 $C2 $20 $22 $E3 $B4
.db $80 $68 $29 $FF $00 $0A $9B $AA
.db $BF $40 $D9 $B1 $99 $76 $08 $BB
.db $80 $05 $DE $78 $08 $D0 $03 $20
.db $DD $B6 $E0 $05 $00 $B0 $07 $E8
.db $E8 $E8 $E8 $82 $76 $FF $20 $B4
.db $B5 $68 $85 $01 $68 $85 $00 $7A
.db $FA $68 $AB $28 $6B $DA $BD $76
.db $08 $A8 $20 $A3 $B7 $AA $D0 $05
.db $3A $A8 $82 $AD $00 $20 $A3 $B7
.db $E0 $00 $20 $90 $58 $E0 $00 $30
.db $90 $59 $E0 $00 $40 $90 $5A $E0
.db $00 $50 $90 $5B $E0 $00 $60 $90
.db $5C $E0 $00 $70 $90 $35 $E0 $00
.db $80 $90 $6B $E0 $00 $90 $90 $25
.db $E0 $00 $A0 $90 $1A $E0 $00 $B0
.db $90 $46 $E0 $00 $C0 $90 $46 $E0
.db $00 $D0 $90 $4C $E0 $00 $E0 $90
.db $00 $20 $6D $B8 $82 $5A $00 $20
.db $65 $B8 $82 $54 $00 $20 $29 $B8
.db $82 $4E $00 $AD $84 $08 $22 $30
.db $B5 $80 $82 $44 $00 $22 $67 $B4
.db $80 $80 $3E $22 $BB $B4 $80 $80
.db $38 $22 $30 $B5 $80 $80 $32 $22
.db $E3 $B4 $80 $80 $2C $A8 $80 $29
.db $20 $A8 $B7 $80 $24 $20 $A8 $B7
.db $AD $96 $08 $D0 $15 $82 $6A $FF
.db $20 $2F $B9 $82 $64 $FF $8A $29
.db $FF $00 $2D $86 $08 $D0 $03 $82
.db $58 $FF $88 $88 $88 $88 $A2 $01
.db $00 $8A $29 $FF $0F $D0 $03 $82
.db $48 $FF $FA $9D $78 $08 $98 $9D
.db $76 $08 $60 $B7 $00 $C8 $C8 $60
.db $08 $8B $4B $AB $C2 $30 $DA $AA
.db $5A $A6 $00 $DA $A6 $01 $DA $AA
.db $AD $96 $08 $D0 $06 $A9 $01 $00
.db $8D $96 $08 $20 $43 $B9 $AD $72
.db $08 $8D $40 $21 $AD $62 $08 $8D
.db $72 $08 $AD $64 $08 $8D $62 $08
.db $AD $66 $08 $8D $64 $08 $AD $68
.db $08 $8D $66 $08 $9C $68 $08 $AD
.db $74 $08 $8D $42 $21 $AD $6A $08
.db $8D $74 $08 $AD $6C $08 $8D $6A
.db $08 $AD $6E $08 $8D $6C $08 $AD
.db $70 $08 $8D $6E $08 $9C $70 $08
.db $FA $86 $01 $FA $86 $00 $7A $FA
.db $AB $28 $60 $29 $FF $00 $8D $B1
.db $08 $EB $4A $4A $4A $38 $ED $B1
.db $08 $18 $69 $00 $01 $29 $00 $1F
.db $60 $DA $5A $AD $61 $07 $29 $FF
.db $00 $4A $4A $4A $AA $AD $61 $07
.db $29 $07 $00 $A8 $A9 $01 $00 $88
.db $30 $03 $0A $80 $FA $3F $10 $80
.db $B1 $F0 $08 $A2 $E2 $00 $A9 $F7
.db $01 $80 $06 $A2 $E1 $00 $A9 $F7
.db $00 $22 $E3 $B4 $80 $8A $22 $30
.db $B5 $80 $7A $FA $60 $A9 $F7 $00
.db $22 $E3 $B4 $80 $60 $DA $C9 $00
.db $00 $D0 $05 $8D $BB $08 $80 $26
.db $C9 $31 $00 $B0 $21 $CD $BB $08
.db $F0 $08 $8D $BB $08 $A9 $E1 $00
.db $80 $10 $AD $B7 $08 $29 $0F $00
.db $AA $BD $A0 $B8 $29 $FF $00 $09
.db $00 $05 $22 $30 $B5 $80 $FA $60
.db $E1 $E2 $E3 $E4 $E5 $E6 $E7 $E8
.db $E1 $E2 $E3 $E4 $E5 $E6 $E7 $E8
.db $48 $5A $A0 $07 $00 $48 $AD $BE
.db $08 $29 $0F $00 $8D $88 $08 $68
.db $C9 $05 $80 $90 $67 $C9 $C1 $80
.db $B0 $62 $C9 $C1 $80 $B0 $3E $C9
.db $31 $80 $B0 $0E $C9 $2D $80 $90
.db $34 $C8 $C9 $2F $80 $90 $2E $82
.db $41 $00 $C9 $91 $80 $B0 $14 $C9
.db $89 $80 $90 $21 $C8 $C9 $8D $80
.db $90 $1B $C8 $C9 $8F $80 $90 $15
.db $82 $28 $00 $C9 $A1 $80 $B0 $23
.db $C9 $9D $80 $B0 $08 $C9 $99 $80
.db $90 $03 $C8 $80 $00 $98 $29 $0F
.db $00 $CD $88 $08 $F0 $16 $E2 $20
.db $8D $BE $08 $C2 $20 $22 $E3 $B4
.db $80 $80 $09 $E2 $20 $A9 $00 $8D
.db $BE $08 $C2 $20 $7A $68 $60 $C9
.db $00 $00 $F0 $07 $C9 $01 $00 $F0
.db $02 $80 $07 $E2 $20 $8D $BF $08
.db $C2 $20 $60 $C2 $30 $9C $8E $08
.db $AD $96 $08 $F0 $42 $A0 $40 $00
.db $8C $8E $08 $C9 $01 $00 $D0 $08
.db $EE $96 $08 $A9 $FC $00 $80 $32
.db $AD $98 $08 $A0 $34 $12 $CC $40
.db $21 $D0 $FB $8D $40 $21 $A0 $7F
.db $00 $8C $42 $21 $CD $40 $21 $D0
.db $FB $AD $9A $08 $85 $00 $AD $9B
.db $08 $85 $01 $A9 $7F $00 $AE $92
.db $08 $AC $94 $08 $82 $8A $00 $A9
.db $FE $00 $8D $40 $21 $9C $42 $21
.db $8A $3A $0A $AA $BF $00 $D8 $B1
.db $8D $88 $08 $A2 $00 $00 $82 $7D
.db $00 $8E $42 $21 $AA $BF $01 $DB
.db $B1 $18 $69 $00 $B0 $85 $01 $64
.db $00 $BF $03 $DB $B1 $1A $4A $8D
.db $8A $08 $BF $05 $DB $B1 $A0 $34
.db $12 $CC $40 $21 $D0 $FB $8D $40
.db $21 $8D $98 $08 $A0 $7F $00 $8C
.db $42 $21 $CD $40 $21 $D0 $FB $BF
.db $00 $DB $B1 $A8 $9C $8C $08 $B7
.db $00 $AA $A9 $7F $00 $CD $42 $21
.db $D0 $FB $8E $40 $21 $AD $8C $08
.db $8D $42 $21 $C8 $C8 $48 $B7 $00
.db $AA $EE $8C $08 $A9 $80 $FF $1C
.db $8C $08 $68 $EE $98 $08 $EE $98
.db $08 $CE $8E $08 $D0 $03 $82 $4B
.db $00 $CE $8A $08 $D0 $CF $A2 $FF
.db $7F $CD $42 $21 $D0 $FB $AC $88
.db $08 $A9 $00 $B1 $85 $01 $64 $00
.db $B7 $00 $F0 $13 $C8 $C8 $8C $88
.db $08 $C9 $F0 $FF $90 $06 $20 $F0
.db $BA $A8 $F0 $E2 $82 $62 $FF $9C
.db $96 $08 $9C $90 $08 $A9 $FF $00
.db $8D $42 $21 $AD $40 $21 $D0 $FB
.db $AD $42 $21 $D0 $F6 $8D $42 $21
.db $8D $40 $21 $60 $8E $92 $08 $8C
.db $94 $08 $A5 $00 $8D $9A $08 $A5
.db $01 $8D $9B $08 $A9 $FF $FF $80
.db $D7 $08 $C2 $30 $A9 $AA $BB $80
.db $06 $A2 $FD $00 $8E $40 $21 $CD
.db $40 $21 $D0 $F5 $E2 $20 $A9 $CC
.db $80 $26 $20 $E5 $BA $EB $A9 $00
.db $80 $0B $EB $20 $E5 $BA $EB $CD
.db $40 $21 $D0 $FB $1A $C2 $20 $8D
.db $40 $21 $E2 $20 $CA $D0 $EB $CD
.db $40 $21 $D0 $FB $69 $03 $F0 $FC
.db $48 $C2 $20 $20 $E5 $BA $20 $E7
.db $BA $AA $20 $E5 $BA $20 $E7 $BA
.db $8D $42 $21 $E2 $20 $E0 $01 $00
.db $A9 $00 $2A $8D $41 $21 $69 $7F
.db $68 $8D $40 $21 $CD $40 $21 $D0
.db $FB $70 $AF $28 $60 $B7 $00 $C8
.db $D0 $05 $E6 $02 $A0 $00 $80 $60
.db $C2 $30 $DA $C9 $F0 $FF $F0 $10
.db $C9 $FA $FF $B0 $4E $C9 $F6 $FF
.db $B0 $0C $A9 $00 $00 $82 $D7 $00
.db $A9 $00 $00 $82 $D1 $00 $C9 $F9
.db $FF $F0 $EF $A8 $AD $60 $07 $29
.db $FF $00 $AA $BF $00 $FF $B1 $29
.db $FF $00 $F0 $14 $AD $B5 $08 $D0
.db $0F $EE $B5 $08 $CE $88 $08 $CE
.db $88 $08 $BF $00 $FE $B1 $80 $07
.db $9C $B5 $08 $BF $00 $FD $B1 $C0
.db $F6 $FF $F0 $44 $C0 $F7 $FF $F0
.db $5D $80 $4C $C9 $FD $FF $F0 $B2
.db $A8 $AD $5F $07 $29 $FF $00 $AA
.db $BF $00 $FF $B1 $29 $FF $00 $F0
.db $14 $AD $B5 $08 $D0 $0F $EE $B5
.db $08 $CE $88 $08 $CE $88 $08 $BF
.db $00 $FE $B1 $80 $07 $9C $B5 $08
.db $BF $00 $FD $B1 $C0 $FA $FF $F0
.db $34 $C0 $FB $FF $F0 $4B $80 $3B
.db $29 $FF $00 $F0 $52 $3A $3A $AA
.db $BF $80 $FB $B1 $82 $48 $00 $29
.db $FF $00 $F0 $43 $3A $3A $AA $BF
.db $C0 $FB $B1 $82 $39 $00 $29 $FF
.db $00 $F0 $34 $3A $3A $AA $BF $00
.db $FC $B1 $82 $2A $00 $29 $FF $00
.db $F0 $25 $3A $3A $AA $BF $40 $FC
.db $B1 $80 $1C $29 $FF $00 $F0 $17
.db $3A $3A $AA $BF $80 $FC $B1 $80
.db $0E $29 $FF $00 $F0 $09 $3A $3A
.db $AA $BF $C0 $FC $B1 $80 $00 $FA
.db $60 $08 $8B $4B $AB $C2 $20 $AD
.db $96 $08 $F0 $03 $82 $A3 $00 $E2
.db $20 $AD $BF $08 $F0 $03 $82 $99
.db $00 $AD $72 $08 $CD $40 $21 $D0
.db $03 $AD $62 $08 $8D $40 $21 $8D
.db $72 $08 $CD $62 $08 $D0 $05 $AD
.db $63 $08 $80 $03 $AD $73 $08 $8D
.db $41 $21 $8D $73 $08 $AD $41 $21
.db $8D $87 $08 $8D $B7 $08 $AD $74
.db $08 $CD $42 $21 $D0 $03 $AD $6A
.db $08 $8D $42 $21 $8D $74 $08 $CD
.db $6A $08 $D0 $05 $AD $6B $08 $80
.db $03 $AD $75 $08 $8D $43 $21 $8D
.db $75 $08 $AD $43 $21 $8D $86 $08
.db $E2 $20 $AD $72 $08 $CD $62 $08
.db $D0 $17 $C2 $20 $AD $64 $08 $8D
.db $62 $08 $AD $66 $08 $8D $64 $08
.db $AD $68 $08 $8D $66 $08 $9C $68
.db $08 $E2 $20 $AD $74 $08 $CD $6A
.db $08 $D0 $17 $C2 $20 $AD $6C $08
.db $8D $6A $08 $AD $6E $08 $8D $6C
.db $08 $AD $70 $08 $8D $6E $08 $9C
.db $70 $08 $AB $28 $6B $08 $8B $4B
.db $AB $C2 $30 $22 $27 $B4 $80 $AD
.db $43 $21 $29 $02 $00 $F0 $11 $A9
.db $E0 $00 $22 $30 $B5 $80 $22 $EA
.db $87 $80 $22 $EA $87 $80 $80 $E7
.db $AD $43 $21 $29 $01 $00 $F0 $11
.db $A9 $F9 $00 $22 $E3 $B4 $80 $22
.db $EA $87 $80 $22 $EA $87 $80 $80
.db $E7 $AB $28 $6B $00 $FC $D0 $41
.db $9B $AC $9E $A6 $AC $FB $B0 $AC
.db $89 $BC $AC $96 $C3 $AC $13 $CC
.db $AC $5D $D6 $AC $B9 $E0 $AC $BF
.db $EA $AC $71 $F6 $AC $AF $FF $AC
.db $4D $8B $AD $49 $96 $AD $AC $A0
.db $AD $5B $AB $AD $A6 $B4 $AD $A5
.db $BC $AD $BA $C7 $AD $D3 $D0 $AD
.db $41 $DA $AD $B4 $E2 $AD $62 $EB
.db $AD $07 $F5 $AD $CD $FF $AD $F4
.db $87 $AE $9A $90 $AE $00 $99 $AE
.db $AA $A0 $AE $F8 $A9 $AE $DF $AE
.db $AE $3C $B9 $AE $B7 $C3 $AE $4A
.db $CD $AE $B0 $D6 $AE $E4 $DF $AE
.db $0D $E7 $AE $CD $EF $AE $C9 $F0
.db $AE $77 $FB $AE $AE $84 $AF $D6
.db $8C $AF $B4 $94 $AF $13 $A2 $AF
.db $71 $A9 $AF $43 $B2 $AF $00 $80
.db $A7 $E5 $90 $A7 $D2 $A0 $A7 $52
.db $B2 $A7 $8F $C3 $A7 $C9 $D5 $A7
.db $85 $E2 $A7 $ED $EF $A7 $FB $82
.db $A8 $1F $93 $A8 $C3 $A9 $A8 $2D
.db $C0 $A8 $A4 $CD $A8 $F2 $D7 $A8
.db $7C $E2 $A8 $E4 $F2 $A8 $52 $FC
.db $A8 $1B $90 $A9 $8F $9E $A9 $24
.db $AF $A9 $12 $BC $A9 $A1 $C9 $A9
.db $9E $D4 $A9 $7F $DC $A9 $41 $ED
.db $A9 $C9 $F6 $A9 $9B $82 $AA $A2
.db $8B $AA $59 $99 $AA $FE $A0 $AA
.db $EB $B0 $AA $03 $C0 $AA $BB $CE
.db $AA $6B $DF $AA $68 $F1 $AA $C8
.db $FB $AA $02 $87 $AB $3A $90 $AB
.db $39 $A3 $AB $5E $B2 $AB $23 $BD
.db $AB $61 $CC $AB $7D $E1 $AB $77
.db $EC $AB $A3 $87 $AC $F6 $86 $A7
.db $B4 $95 $A7 $EE $A5 $A7 $2A $B9
.db $A7 $A9 $CA $A7 $26 $DA $A7 $8E
.db $E7 $A7 $1E $F7 $A7 $49 $88 $A8
.db $C4 $9C $A8 $0F $B4 $A8 $8F $C6
.db $A8 $DD $D0 $A8 $67 $DB $A8 $DF
.db $EA $A8 $11 $F9 $A8 $ED $82 $A9
.db $37 $93 $A9 $1C $A2 $A9 $4C $B7
.db $A9 $59 $C1 $A9 $38 $CD $A9 $A9
.db $D7 $A9 $7F $E5 $A9 $A7 $F1 $A9
.db $77 $FB $A9 $A6 $86 $AA $44 $90
.db $AA $85 $9D $AA $CD $A5 $AA $E5
.db $B4 $AA $CF $C6 $AA $63 $D2 $AA
.db $AB $E7 $AA $52 $F7 $AA $9A $FD
.db $AA $DB $8D $AB $8F $96 $AB $D6
.db $A7 $AB $82 $B7 $AB $2B $C1 $AB
.db $09 $D4 $AB $DB $E8 $AB $3A $F8
.db $AB $13 $8E $AC $31 $00 $32 $00
.db $33 $00 $34 $00 $35 $00 $39 $00
.db $B1 $00 $B2 $00 $B3 $00 $B4 $00
.db $B5 $00 $B6 $00 $53 $00 $51 $00
.db $51 $00 $59 $00 $57 $00 $51 $00
.db $51 $00 $55 $00 $55 $00 $5B $00
.db $5B $00 $51 $00 $53 $00 $55 $00
.db $59 $00 $51 $00 $5D $00 $53 $00
.db $53 $00 $53 $00 $51 $00 $53 $00
.db $51 $00 $51 $00 $51 $00 $51 $00
.db $51 $00 $51 $00 $51 $00 $51 $00
.db $51 $00 $51 $00 $53 $00 $59 $00
.db $51 $00 $51 $00 $55 $00 $55 $00
.db $68 $00 $00 $00 $67 $00 $66 $00
.db $00 $00 $00 $00 $5D $00 $51 $00
.db $51 $00 $51 $00 $00 $80 $D0 $15
.db $86 $D0 $E4 $88 $D0 $FE $90 $D0
.db $41 $96 $D0 $E7 $9A $D0 $D2 $9F
.db $D0 $35 $A9 $D0 $35 $AF $D0 $FE
.db $90 $D0 $35 $AF $D0 $D2 $B2 $D0
.db $B2 $B5 $D0 $D1 $B8 $D0 $5D $BE
.db $D0 $44 $C1 $D0 $44 $C1 $D0 $44
.db $C1 $D0 $44 $C1 $D0 $38 $C5 $D0
.db $38 $CA $D0 $44 $CC $D0 $44 $C1
.db $D0 $42 $CE $D0 $38 $C5 $D0 $44
.db $C1 $D0 $E7 $D0 $D0 $B6 $D2 $D0
.db $8F $D8 $D0 $BC $DA $D0 $5E $DD
.db $D0 $81 $81 $D0 $7C $87 $D0 $26
.db $8A $D0 $00 $93 $D0 $49 $98 $D0
.db $34 $9C $D0 $27 $A2 $D0 $F4 $AB
.db $D0 $F5 $B0 $D0 $00 $93 $D0 $F5
.db $B0 $D0 $AF $B4 $D0 $91 $B7 $D0
.db $01 $BC $D0 $16 $C0 $D0 $C8 $C3
.db $D0 $C8 $C3 $D0 $C8 $C3 $D0 $C8
.db $C3 $D0 $0C $C8 $D0 $87 $CB $D0
.db $CD $CD $D0 $77 $C4 $D0 $54 $D0
.db $D0 $0C $C8 $D0 $C8 $C3 $D0 $20
.db $D2 $D0 $92 $D5 $D0 $1A $DA $D0
.db $1A $DC $D0 $95 $DE $D0 $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.ENDS
