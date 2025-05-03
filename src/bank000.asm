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

L808607:
	php
	sep #$30
	jsl L808726
	ldx $046B
	lda $808626,X
	tax
	lda $808626,X
	tax
	lda $808626,X
	rep #$20
	and #$00FF
	plp
	rtl

.db $FD $65
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

L808744:
	php
	phb
	phk
	plb
	sep #$30
	inc $0471
	lda $0471
	cmp #$37
	bcc L808767
	bit #$01
	bne L80875F
	lda #$01
	sta $0471
	bra L808767
L80875F:
	jsr L8087C0
	lda.w #$8D00
	adc ($04),Y
L808767:
	tay
	jsl L808726
	lda $046B
	and.w #$A81F
	lda $0472,Y
	plb
	plp
	rtl

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
	jsr L8087C0
	jsr L8087C0
	jsr L8087C0
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
	jsl L80B628
	jsr L80880A
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
	jsl L80BC95
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
	jsl L8087EA
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
	jsl L8087EA
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
	jsl L8087EA
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
	jsr L808B2F
	ldx #$0000
	jsr L808B2F
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
	and #$00FF
	beq L808B45
	ldy #$0000
	lda $4218,X
	and #$000F
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
	jsl L8087EA
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
	jsl L8087EA
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
	lda #L808E64
	sta $00
	jsl L808EAD
	plb
	plp
	rtl

L808E64: ; data
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
	lda #L808E84
	sta $00
	jsl L808EAD
	plb
	plp
	rtl

L808E84: ; data
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
	lda #L808EA4
	sta $00
	jsl L808EAD
	plb
	plp
	rtl

L808EA4: ; data
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
	jsl L80892E
L808F16:
	plp
	rtl

; L808F18:
DECOMPRESS_ASSET:
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
	jsr L80907B
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
	jsr L80907B
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
	jsr L80907B
L808F8C:
	sty $71
	ply
	sta.l DecompressionLocation,X
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
	jsr L80907B
L808FA5:
	sty $71
	ply
L808FA8:
	sta.l DecompressionLocation,X
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
	jsr L80907B
L808FBF:
	sty $71
	ply
	sta $74
	phy
	ldy $71
	lda $0000,Y
	iny
	bne L808FD0
	jsr L80907B
L808FD0:
	sty $71
	ply
	sta $75
L808FD5:
	lda $74
	sta.l DecompressionLocation,X
	inx
	dey
	beq L808FE9
	lda $75
	sta.l DecompressionLocation,X
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
	jsr L80907B
L808FF8:
	sty $71
	ply
L808FFB:
	sta.l DecompressionLocation,X
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
	jsr L80907B
L80901B:
	sty $71
	ply
	sta $74
	phy
	ldy $71
	lda $0000,Y
	iny
	bne L80902C
	jsr L80907B
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
	lda.l DecompressionLocation,X
	inx
	stx $74
	plx
	ldy $78
	beq L80904E
	eor #$FF
L80904E:
	sta.l DecompressionLocation,X
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
	jsr L80907B
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
	ldy #$8000
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
	jsl L8087EA
	dec $04AD
	bne L8090A6
	plb
	plp
	rtl

COP:
	rti

.db $EA $87

IRQ:
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
	rep #$30
	phb
	phk
	plb
	phd
	pha
	phx
	phy
	lda #$0000
	pha
	pld
	sep #$30
	lda $4210
	sta $0740
	lda $1003
	bit #$02
	beq L8090FA
	jsl L86F6F2
L8090FA:
	lda $0fa1
	beq L80911C
	lda $0f64
	bne L809116
	phb
	rep #$30
	lda #$007f
	ldx #$67dc
	ldy #$1b00
	mvn $7f, $00
	plb
	sep #$30
L809116:
	lda $f7
	ora #$08
	sta $f7
L80911C:
	jsr L80A8B8
	lda $0135
	beq L80914B
	lda $0c10
	bne L80912D
	jsl L8088FB
L80912D:
	jsl L80892E
	jsl L808468
	jsr L809086
	jsl L80BBE1
	jsl L808AF3
	stz $0135
	inc $0136
	stz $0139
	bra L809164
L80914B:
	lda $07d9
	beq L809154
	jsl L808468
L809154:
	sep #$30
	inc $0139
	lda $0139
	cmp $013a
	bcc L809164
	sta $013a
L809164:
	jsl L808726
	rep #$30
	inc $0137
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
	jml L80917A

L80917A:
	sep #$20
	lda #$80
	sta $7a
	sta.w INIDSP
	lda #$00
	sta $7ff7
	rep #$30
	ldx #$1ffb
	txs
	ldy #$0000
	phy
	pld
	phk
	plb
	jml L80A3ED

L809199:
	php
	sep #$30
	lda #$01
	sta.w NMITIMEN
	sta $f2
	lda #$80
	sta.w WRIO
	stz.w WRMPYA
	stz.w WRMPYB
	stz.w WRDIVL
	stz.w WRDIVH
	stz.w WRDIVB
	stz.w HTIMEL
	stz $f5
	stz.w HTIMEH
	stz $f6
	stz.w VTIMEL
	stz $f3
	stz.w VTIMEH
	stz $f4
	stz.w MDMAEN
	stz.w HDMAEN
	stz $f7
	lda #$01
	sta.w MEMSEL
	sta $f8
	plp
	rts

L8091DC:
	php
	sep #$30
	lda #$8f
	sta.w INIDSP
	sta $7a
	lda #$03
	sta.w OBJSEL
	sta $7b
	stz.w OAMADDL
	stz $7c
	lda #$80
	sta.w OAMADDH
	sta $7d
	stz.w OAMDATA
	stz.w OAMDATA
	lda #$09
	sta.w BGMODE
	sta $7e
	stz.w MOSAIC
	stz $7f
	lda #$29
	sta.w BG1SC
	sta $80
	lda #$39
	sta.w BG2SC
	sta $81
	lda #$48
	sta.w BG3SC
	sta $82
	lda #$00
	stz.w BG4SC
	stz $83
	lda #$00
	sta.w BG12NBA
	sta $84
	lda #$05
	sta.w BG34NBA
	sta $85
	stz.w BG1HOFS
	stz.w BG1HOFS
	stz.w BG1VOFS
	stz.w BG1VOFS
	stz.w BG2HOFS
	stz.w BG2HOFS
	stz.w BG2VOFS
	stz.w BG2VOFS
	stz.w BG3HOFS
	stz.w BG3HOFS
	stz.w BG3VOFS
	stz.w BG3VOFS
	stz.w BG4HOFS
	stz.w BG4HOFS
	stz.w BG4VOFS
	stz.w BG4VOFS
	stz.w VMAIN
	stz.w M7SEL
	stz $86
	stz.w M7A
	stz.w M7B
	stz.w M7C
	stz.w M7D
	stz.w M7X
	stz.w M7Y
	lda #$00
	sta.w W12SEL
	sta $87
	lda #$00
	sta.w W34SEL
	sta $88
	stz.w WOBJSEL
	stz $99
	lda #$00
	sta.w W1L
	sta $9a
	lda #$f8
	sta.w W1R
	sta $9b
	stz.w W2L
	stz $9c
	stz.w W2R
	stz $9d
	stz.w WBGLOG
	stz $9e
	stz.w WOBJLOG
	stz $9f
	lda #$11
	sta.w TMAIN
	sta $a0
	sta.w TMW
	sta $a2
	lda #$02
	sta.w TSUB
	sta $a1
	sta.w TSW
	sta $a3
	lda #$02
	sta.w CGWSEL
	sta $a4
	lda #$a1
	sta.w CGADSUB
	sta $a5
	lda #$20
	sta.w COLDATA
	sta $a8
	lda #$40
	sta.w COLDATA
	sta $a7
	lda #$80
	sta.w COLDATA
	sta $a6
	lda #$00
	sta.w SETINI
	sta $a9
	plp
	rts

L8092F8:
	rep #$30
	lda #$0000
	ldx #$2000
	ldy #$E000
	jsl L808C8E
	lda #$0000
	tax
	ldy #$DFFE
	jsl L808CA1
	sep #$30
	rts

L809315:
	rep #$30
	lda #$1C2F
	jsl L80933B
	lda #$1C2F
	jsl L80934E
	lda #$1C2F
	jsl L809361
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
	jsl L80954E
	jsl L8098F0
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
	jsl L809374
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
	jsr L809492
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
	jsr L809492
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
	lda #$F000
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
	and #$001C
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
	lda #$0000
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
	lda #$0000
	ldy #$0200
	ldx #$0000
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
	lda #$0000
L8095E7:
	pha
	ora #$2000
	sta.l WRMPYA
	nop
	nop
	nop
	lda.l RDMPYL
	tax
	lda #$0000
	sta $04BE,X
	pla
	inc A
	cmp #$0010
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
	lda #$0000
	ldy #$0020
	ldx #$0000
L80963E:
	sta.l $0006DE,X
	inx
	dey
	inx
	dey
	bne L80963E
	pla
	pha
	and #$00FF
	sta.l $0006EE
	pla
	xba
	and #$00FF
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
	ldx #$0000
L809676:
	lda.l $0004BE,X
	beq L809689
	txa
	clc
	adc #$0020
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
	lda #$0000
	sta.l $0004D6,X
	lda.l $0006F8
	sta.l $0004D8,X
	lda.l $0006FA
	sta.l $0004DA,X
	lda.l $0006FC
	sta.l $0004DC,X
	tya
	jsr L809A9A
	lda $00
	xba
	sta.l $0004BE,X
	phx
	jsr L8099F0
	plx
	clc
	rtl

L8096FA:
	jsr L809A9A
	lda $00
	xba
	sta.l $0004BE,X
	phx
	jsr L8099F0
	lda #$0000
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
	ldy #$0000
	lda [$00],Y
	and #$00FF
	cmp #$0080
	bcc L8097DE
	cmp #$00FD
	bcs L8097D6
	sta $15
	lda #$00FC
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
	jsr L8097F2
	lda $00
	sta.l $0004C2,X
	rts

L8097F2:
	php
	phy
	rep #$20
	and #$00FF
	asl
	tay
	phy
	lda.l $0004C7,X
	sta $01
	lda.l $0004C6,X
	sta $00
	ldy #$000C
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
	ldy #$0008
	lda [$03],Y
	clc
	adc.l $0004C6,X
	sta $03
	lda.l $0004C7,X
	sta $01
	lda.l $0004BE,X
	xba
	sta $00
	ldy #$0001
	lda [$00],Y
	and #$00FF
	cmp #$0050
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
	lda #$0000
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
	and #$00FF
	sta $58
	lda.l $0004D4,X
	and #$00FF
	cmp #$00FE
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
	ldy #$0010
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
	lda #$0000
	sta $0700
	ldx #$0000
L8098FB:
	phx
	lda.l $0004BE, X
	beq L80993E
	cmp #$0001
	beq L80993A
	lda.l $000700
	inc A
	sta.l $000700
	lda #$0000
	sta.l $0006FE
	phx
	jsl L80995A
	plx
	phx
	jsr L80997C
	plx
	phx
	jsl L80994B
	plx
	lda.l $0006FE
	beq L80993E
	jsr L8099DA
	lda.l $0006FE
	and #$0002
	beq L80993E
L80993A:
	jsl L809895
L80993E:
	plx
	txa
	clc
	adc #$0020
	tax
	cpx #$0200
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
	cmp #$9AC9
	beq L80997B
	cmp #$9ACA
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
	ldy #$0000
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
	ldy #$0000
	lda [$00], Y
	and #$00FF
	beq L809A38
	cmp #$00FD
	beq L809A30
	cmp #$00FE
	beq L809A25
	cmp #$00FD
	bcs L809A1D
	cmp #$00F0
	bcs L809A40
L809A1D:
	jsr L80979A
	jsl L809821
	rts

L809A25:
	iny
	lda [$00],Y
	and #$00FF
	jsr L809A49
	bra L8099DA

L809A30:
	lda #$0001
	sta.l $0004BE,X
	rts

L809A38:
	lda #$0000
	sta.l $0004BE,X
	rts

L809A40:
	jsr L80979A
	jsl L80995A
	bra L8099DA

L809A49:
	php
	phx
	rep #$20
	tay
	lda.l $0004C6,X
	sta $00
	lda.l $0004C7,X
	sta $01
	lda #$8000
	sta $04
	lda #$9688
	sta $03
	sep #$20
	lda.l $0004C9,X
	pha
	lda.l $0004CA,X
	pha
	rep #$20
	lda.l $0004CE,X
	and #$00FF
	sta $15
	lda.l $0004D0,X
	and #$00FF
	xba
	ora $15
	jsl L809633
	sep #$20
	pla
	sta.l $0004CA,X
	pla
	sta.l $0004C9,X
	rep #$20
	plx
	plp
	rts

L809A9A:
	php
	phy
	rep #$20
	and #$00FF
	asl
	tay
	phy
	lda.l $0004C7, X
	sta $01
	lda.l $0004C6, X
	sta $00
	ldy #$0004
	lda [$00], Y
	clc
	adc.l $0004C6, X
	sta $00
	ply
	lda [$00], Y
	clc
	adc.l $0004C6, X
	sta $00
	ply
	plp
	rts

L809AC9:
	rtl

L809ACA:
	lda.l $0004C7, X
	sta $01
	lda.l $0004C2, X
	sta $00
	ldy #$0000
	lda [$00], Y
	sep #$20
	cmp #$80
	beq L809B54
	cmp #$81
	beq L809B36
	pha
	lda.l $0004C9, X
	bit #$10
	beq L809AF9
	pla
	eor #$FF
	inc A
	clc
	adc.l $0004CE, X
	bra L809AFF
L809AF9:
	pla
	clc
	adc.l $0004CE, X
L809AFF:
	sta.l $0004CE, X
	xba
	pha
	lda.l $0004C9, X
	bit #$20
	beq L809B18
	pla
	eor #$FF
	inc A
	clc
	adc.l $0004D0, X
	bra L809B1E
L809B18:
	pla
	clc
	adc.l $0004D0, X
L809B1E:
	sta.l $0004D0, X
L809B22:
	rep #$20
	lda.l $0004C2, X
	sta $00
	clc
	adc #$0002
	sta.l $0004C2, X
	sep #$20
	bra L809B5E
L809B36:
	xba
	tay
	lda.l $0004D7, X
	beq L809B49
	cmp #$01
	beq L809B22
	dec A
	sta.l $0004D7, X
	bra L809B64
L809B49:
	tya
	cmp #$01
	beq L809B22
	sta.l $0004D7, X
	bra L809B64
L809B54:
	lda.l $0006FE
	ora #$01
	sta.l $0006FE
L809B5E:
	lda #$00
	sta.l $0004D7, X
L809B64:
	rtl

.db $6B $BF $C7 $04 $00 $85 $01 $BF
.db $C2 $04 $00 $85 $00 $A0 $00 $00
.db $B7 $00 $E2 $20 $C9 $80 $F0 $73
.db $C9 $81 $F0 $51 $48 $BF $C9 $04
.db $00 $89 $10 $F0 $0B $68 $49 $FF
.db $1A $18 $7F $CE $04 $00 $80 $06
.db $68 $18 $7F $CE $04 $00 $9F $CE
.db $04 $00 $EB $48 $BF $C9 $04 $00
.db $89 $20 $F0 $0B $68 $49 $FF $1A
.db $18 $7F $D0 $04 $00 $80 $06 $68
.db $18 $7F $D0 $04 $00 $9F $D0 $04
.db $00 $C2 $20 $BF $C2 $04 $00 $85
.db $00 $18 $69 $02 $00 $9F $C2 $04
.db $00 $E2 $20

; data
.db $80 $28

.db $EB $A8 $BF $D7 $04 $00 $F0 $0B
.db $C9 $01 $F0 $E0 $3A $9F $D7 $04
.db $00 $80 $1B $98 $C9 $01 $F0 $D4
.db $9F $D7 $04 $00 $80 $10 $AF $FE
.db $06 $00 $09 $01 $8F $FE $06 $00
.db $A9 $00 $9F $D7 $04 $00 $6B $E2
.db $20 $BF $CE $04 $00 $18 $69 $01
.db $9F $CE $04 $00 $BF $D7 $04 $00
.db $1A $9F $D7 $04 $00 $C9 $40 $90
.db $10 $AF $FE $06 $00 $09 $01 $8F
.db $FE $06 $00 $A9 $00 $9F $D7 $04
.db $00 $6B $BF $23 $BD $7E $D0 $09
.db $E2 $20 $A9 $01 $8D $91 $0D $C2
.db $20 $AF $FE $06 $00 $09 $01 $00
.db $8F $FE $06 $00 $6B

L809C47:
	lda.l $7EBD23, X
	bne L809C56
	sep #$20
	lda #$02
	sta $0D91
	rep #$20
L809C56:
	lda.l $0006FE
	ora #$0001
	sta.l $0006FE
	rtl

.db $BF $23 $BD $7E $D0 $09 $E2 $20
.db $A9 $04 $8D $91 $0D $C2 $20 $AF
.db $FE $06 $00 $09 $01 $00 $8F $FE
.db $06 $00 $6B $BF $23 $BD $7E $D0
.db $09 $E2 $20 $A9 $08 $8D $91 $0D
.db $C2 $20 $AF $FE $06 $00 $09 $01
.db $00 $8F $FE $06 $00 $6B $E2 $20
.db $A9 $20 $8D $91 $0D $C2 $20 $AF
.db $FE $06 $00 $09 $01 $00 $8F $FE
.db $06 $00 $6B $BF $23 $BD $7E $D0
.db $26 $E2 $20 $A9 $10 $8D $91 $0D
.db $C2 $20 $BD $C7 $04 $85 $01 $BD
.db $BE $04 $EB $85 $00 $A0 $01 $00
.db $B7 $00 $29 $FF $00 $49 $FF $00
.db $E2 $20 $8D $95 $0D $C2 $20 $AF
.db $FE $06 $00 $09 $01 $00 $8F $FE
.db $06 $00 $6B $E2 $20 $A9 $00 $8F
.db $1B $05 $00 $C2 $20 $AF $FE $06
.db $00 $09 $01 $00 $8F $FE $06 $00
.db $6B

L809CFB:
	lda.l $7EBD23, X
	bne L809D09
	sep #$20
	lda #$01
	sta.l $0004DA, X
L809D09:
	rep #$20
	lda.l $0006FE
	ora #$0001
	sta.l $0006FE
	rtl

.db $E2 $20 $9E $DC $04 $C2 $20 $AF
.db $FE $06 $00 $09 $01 $00 $8F $FE
.db $06 $00 $6B

L809D2A:
	phx
	sep #$20
	lda.l $7EBD23, X
	bne L809D3C
	jsr L809D48
	jsr L809D69
	jsr L809D9D
L809D3C:
	lda.l $0006FE
	ora #$01
	sta.l $0006FE
	plx
	rtl

L809D48:
	php
	rep #$20
	lda $04C7, X
	sta $01
	lda $04BE, X
	xba
	sta $00
	ldy #$0001
	lda [$00], Y
	and #$00FF
	eor #$FF
	asl
	sep #$20
	sta $0D92
	plp
	rts

L809D69:
	php
	rep #$20
	tay
	cpy #$000A
	bcs L809D87
	lda $04CE, X
	and #$00FF
	sta $089D
	phx
	tyx
	lda.l $809DCF, X
	jsl L80B44D

.db $80 $13

L809D87:
	lda $04CE, X
	and #$00FF
	sta $089F
	phx
	tyx
	lda.l $809DD9, X
	jsl L80B49E
	plx
	plp
	rts

L809D9D:
	php
	lda $0D92
	cmp.b #$0A
	bcs L809DCD
	lda $0D93
	bit.b #$02
	bne L809DBB
	bit.b #$01
	bne L809DCD
	bit.b #$10
	bne L809DCD
	lda $078F
	bit.b #$10
	beq L809DCD
L809DBB:
	rep #$20
	lda $04CE, X
	and #$00FF
	sta $089D
	lda #$0039
	jsl L80B44D
L809DCD:
	plp
	rts

.db $31 $00 $32 $00 $33 $00 $34 $00
.db $35 $00 $B1 $00 $B2 $00 $B3 $00
.db $B4 $00 $B5 $00 $81 $00 $82 $00
.db $83 $00 $84 $00 $85 $00 $86 $00
.db $87 $00 $88 $00 $89 $00 $8A $00
.db $8B $00 $8C $00 $8D $00 $8E $00
.db $8F $00 $D1 $00 $D2 $00

; data
.db $D3 $00

.db $D4 $00 $D5 $00 $D6 $00 $DA $00
.db $DB $00 $DC $00 $DE $00 $90 $00
.db $D7 $00 $D8 $00 $D9 $00 $3B $00
.db $3C $00 $3D $00 $C5 $00 $3E $00
.db $C6 $00 $5F $00 $F4 $00 $2C $9C

; data
.db $FB $9C

.db $98 $9C

; data
.db $47 $9C

.db $62 $9C

; data
.db $2A $9D

.db $17 $9D $7D $9C $AD $9C $E5 $9C
.db $00 $00 $00 $00

L809E45:
	php
	phb
	phk
	plb
	rep #$30
	lda.l $0004DB, X
	and #$00FF
	beq L809E5C
	jsr L80A04B

.db $90 $03
.db $4C $A4 $9F

L809E5C:
	lda.l $0004D8, X
	sta $5E
	lda $50
	lsr
	lsr
	sta $4204
	sep #$20
	lda #$04
	sta $4206
	rep #$20
	lda $63
	sta $01
	sta $04
	lda $62
	sta $00
	lda $5A
	asl
	tay
	lda [$00], Y
	clc
	adc $00
	sta $03
	lda $7B
	and #$00E0
	asl
	asl
	asl
	xba
	tax
	sep #$20
	lda.w L809FF5, X
	sta $60
	lda.w L809FFB, X
	sta $61
	lda $4214
	sta $54
	lda $4216
	asl
	sta $55
	ldy #$0000
	lda [$03], Y
	iny
	sta $26
	lda [$03], Y
	iny
	sta $27
	lda #$08
	sta $28
	rep #$20
	lda $50
	cmp #$01FD
	bcc L809EC5
	plb
	plp
	rtl

L809EC5:
	lda #$0000
	sta $19
	sep #$20
	lda $27
	cmp #$80
	inc $55
	phy
	jsr L80A001
	ply
	dec $55
	stz $16
	lda $5D
	bit #$20
	beq L809EE2
; when beq isn't taken, this byte is merge
; with the next LDA and becomes
; $82 $A3 $00 => BRL L809F87
.db $82
L809EE2:
	lda $00, S
	lda [$03], Y
	sta $15
	bpl L809EEC
	dec $16
L809EEC:
	stz $1E
	iny
	lda $5D
	bit #$10
	bne L809F6D
	lda [$03], Y
	sta $1D
	bpl L809EFD
	dec $1E
L809EFD:
	asl $27
	iny
	rep #$20
	stz $19
	lda $15
	clc
	adc $58
	sta $15
	jsr L80A0C2
	lda $1D
	clc
	adc $56
	sta $1D
	jsr L80A0D0
	lda [$03], Y
	clc
	adc $5E
	iny
	iny
	ldx $50
	sta $0212, X
	txa
	clc
	adc #$0004
	sta $50
	sep #$20
	lda $15
	ldx $50
	sta $020D, X
	lda $1E
	cmp #$01
	phy
	jsr L80A001
	ply
	lda $1D
	ldx $50
	sta $020C, X
	lda $5C
	bmi L809FA7
	lda $5D
	bmi L809FBF
	lda $5D
	asl
	bmi L809FBD
	inc $55
	inc $55
	lda $55
	cmp #$08
	bcc L809F5F
	stz $55
	inc $54
L809F5F:
	dec $26
	beq L809FA4
	dec $28
	beq L809FA1
	jmp $9EB9

L809F6A:
	bra L809F87
	pha
L809F6D:
	lda $27
	cmp.w #$A980
.db $00 $2A ; brk #$2A
	tax
	lda [$03],Y
	bpl L809F7E
	dec A
	eor.w #$80FF
; ???
.db $03
L809F7E:
.db $49
	sbc $75181A,X
	rts

L809F84:
	jmp $9EF7
L809F87:
	lda $27
	cmp.w #$A980
.db $00 $2A ; brk #$2A
	tax
	lda [$03],Y
	bpl L809F98
	dec A
	eor.w #$80FF
; ???
.db $03
L809F98:
.db $49
	sbc $75181A,X
	rts

L809F9E:
	jmp $9EE6

L809FA1:
	jmp $9EB0

L809FA4:
	plb
	plp
	rtl

L809FA7:
	asl
	and #$0E
	sta $15
	lda $020F, X
	bit #$0E
	beq L809FBA
	and #$F1
	ora $15
	sta $020F, X
L809FBA:
	jmp $9F48

L809FBD:
	bra L809FE1

L809FBF:
	asl
	asl
	asl
	asl
	and.w #$85C0
	ora $49,X
	sbc $BD1785,X
	ora $154502
	and $15
	sta $15
	lda $020F,X
	and $17
	ora $15
	sta $020F,X
	jmp $9F4C
L809FE1:
	asl
	asl
	asl
	and.w #$8530
	ora $BD,X
	ora $CF2902
	ora $15
	sta $020F,X
	jmp $9F51

L809FF5:
.db $F8 $F8 $F8 $F0 $F0 $E0
L809FFB:
.db $F0 $E0 $C0 $E0 $C0 $C0

L80A001:
	sep #$10
	ldy $55
	bcs L80A015
	ldx $54
	lda $0410, X
	and $A03B, Y
	sta $0410, X
	rep #$10
	rts
L80A015:
	lda $19
	bne L80A029
	ldx $54
	lda $0410, X
	and $A03B, Y
	ora $A043, Y
	sta $0410, X
	bra L80A038

L80A029:
.db $A6 $54 $BD $10 $04 $39 $3B
.db $A0 $C8 $39 $3B $A0 $9D $10 $04

L80A038:
	rep #$10
	rts

; data
.db $FE $FD $FB $F7 $EF
.db $DF $BF $7F $01 $02 $04 $08 $10
.db $20 $40 $80

L80A04B:
	phx
	sep #$20
	cmp #$01
	beq L80A06D
	lda.l $0004DB,X
	dec A
	sta.l $0004DB,X
	dec A
	rep #$20
	and #$00FF
	tax
	sep #$20
	lda $80A072,X
	beq L80A06D
	clc
	bra L80A06E
L80A06D:
	sec
L80A06E:
	rep #$20
	plx
	rts

.db $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $01 $00 $00 $01 $00 $00
.db $01 $00 $00 $01 $00 $00 $01 $00
.db $01 $00 $01 $01 $00 $01 $01 $00
.db $01 $01 $00 $01 $01 $01 $00 $01
.db $00 $01 $00 $01 $00 $01 $00 $01
.db $00 $01 $00 $01 $00 $01 $00 $01
.db $01 $01 $00 $01 $01 $01 $01 $01
.db $00 $01 $01 $01 $01 $01 $01 $01


L80A0C2:
	php
	bvs L80A0CC
	bpl L80A0CE
	cmp.w #$FFF9
	bcs L80A0CE
L80A0CC:
	inc $19
L80A0CE:
	plp
	rts

L80A0D0:
	php
	lda $19
	beq L80A0DB
	sep #$20
	lda #$F4
	sta $15
L80A0DB:
	plp
	rts

.db $08 $8B $4B
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
.db $A0 $9D $10 $04 $C2 $10 $60

.ALIGN 256
L80A300:
	php
	rep #$20
	and #$FFFF
	beq L80A336
	sta $0745
	stx $0748
	lda $00
	sta $0742
	lda $01
	sta $0743
	sep #$20
	lda #$02
	sta $0741
	lda #$81
	sta $0747
	rep #$20
	lda #$0000
	sta $01
	lda #$0741
	sta $00
	sep #$20
	jsl L808EAD
L80A336:
	plp
	rtl

L80A338:
	php
	rep #$20
	and #$FFFF
	beq L80A36E
	sta $0745
	stx $0748
	lda $00
	sta $0742
	lda $01
	sta $0743
	sep #$20
	lda #$02
	sta $0741
	lda #$80
	sta $0747
	rep #$20
	lda #$0000
	sta $01
	lda #$0741
	sta $00
	sep #$20
	jsl L808EAD
L80A36E:
	plp
	rtl

L80A370:
	php
	rep #$20
	sta $25
	stx $27
L80A377:
	ldx $27
	lda $04
	sta $01
	lda $03
	sta $00
	lda $25
	and #$FF00
	sep #$20
	xba
	rep #$20
	asl
	pha
	jsl L80A338
	lda $27
	clc
	adc #$0020
	sta $27
	pla
	clc
	adc $03
	sta $03
	sep #$20
	lda $25
	dec A
	sta $25
	rep #$20
	lda $25
	and #$00FF
	bne L80A377
	plp
	rtl

L80A3B1:
	php
	rep #$20
	sta $25
	stx $27
L80A3B8:
	ldx $27
	lda $04
	sta $01
	lda $03
	sta $00
	lda $25
	and #$00FF
	asl
	pha
	jsl L80A300
	lda $27
	clc
	adc #$0020
	sta $27
	pla
	clc
	adc $03
	sta $03
	sep #$20
	lda $26
	dec A
	sta $26
	rep #$20
	lda $25
	and #$FF00
	bne L80A3B8
	plp
	rtl

L80A3ED:
	jsl L80B3F3
	brl L80A412

L80A3F4:
	sei
	clc
	xce
	sep #$20
	lda #$80
	sta $7a
	sta $2100
	lda #$00
	sta $7ff7
	rep #$30
	ldx #$1ffb
	txs
	ldy #$0000
	phy
	pld
	phk
	plb
L80A412:
	ldx #$1ffe
L80A415:
	stz $00,x
	dex
	dex
	bpl L80A415
	ldx #$2000
	lda #$0000
L80A421:
	sta $7e0000,x
	inx
	inx
	bne L80A421
	ldx #$0000
	lda #$0000
L80A42F:
	sta $7f0000,x
	inx
	inx
	bne L80A42F
	sep #$30
	stz $4200
	stz $f2
	lda #$8f
	sta $2100
	sta $7a
	jsr L80A859
	jsr L809199
	jsr L8091DC
	jsr L809315
	jsl L80954E
	jsl L808826
	sep #$20
	lda #$54
	sta $69
	stz $6a
	stz $6b
	lda #$6b
	sta $6c
	lda #$44
	sta $6d
	stz $6e
	stz $6f
	lda #$6b
	sta $70
	lda #$01
	sta $0110
	rep #$30
	sep #$20
	lda #$00
	sta $074a
	lda #$00
	sta $074b
	rep #$30
	jsl L8095AF
	jsl L80B611
	lda #$00e0
	jsl L80B530
	jsl $93ea4e
L80A49B: ; main loop
	rep #$30
	lda $52
	sta $65
	jsl L80954E
	lda $074a
	and #$00ff
	asl
	tax
	jsr (L80A4BA,x)
	jsl L8098F0
	jsl L8087EA
	bra L80A49B

L80A4BA:
.dw L80A4CA
.dw L80A4CF
.dw L80A70D
.dw L80A6FE
.dw L80A6EF
.dw L80A71C
.dw L80A73A
.dw L80A72B

L80A4CA:
	jsl $8DD992
	rts

L80A4CF:
	rep #$30
	lda $074B
	and #$00FF
	asl
	tax
	jsr (L80A4DD,X)
	rts

L80A4DD:
.db $F7 $A4 $E1 $A4

L80A4E1:
	sep #$20
	lda #$02
	sta $074A
	lda #$00
	stz $0E00
	rep #$20
	lda #$01F0
	jsl L80B4E3
	rts

L80A4F7:
	jsl L80884A
	jsl $81D845
	jsl $83878B
	jsl L80AA09
	jsl $838851
	jsl $838820
	jsr L80A528
	jsl L80A61A
	jsl L808826
	jsl L8088A0
	sep #$20
	lda #$01
	sta $074B
	rep #$20
	rts

L80A528:
	jsr L80A540
	sep #$20
	lda #$14
	sta $A0
	rep #$20
	lda #$0010
	sta $0111
	lda #$0004
	sta $0113
	rts

L80A540:
	php
	sep #$30
	lda #$01
	sta $4200
	sta $F2
	stz $4201
	stz $4202
	stz $4203
	stz $4204
	stz $4205
	stz $4206
	stz $4207
	stz $F5
	stz $4208
	stz $F6
	stz $4209
	stz $F3
	stz $420A
	stz $F4
	stz $420B
	stz $420C
	stz $F7
	lda #$01
	sta $420D
	sta $F8
	plp
	rts

L80A581:
	php
	sep #$30
	lda #$0F
	sta $7A
	lda #$03
	sta $7B
	lda #$01
	sta $7E
	lda #$00
	sta $7F
	lda #$29
	sta $80
	lda #$39
	sta $81
	lda #$49
	sta $82
	lda #$0C
	sta $83
	lda #$20
	sta $84
	lda #$55
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
	lda #$04
	sta $A0
	lda #$04
	sta $A1
	lda #$00
	sta $A2
	lda #$00
	sta $A3
	lda #$00
	sta $A4
	lda #$00
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
	rtl

L80A61A:
	lda.w #$20FF
	ldx.w #$3000
	ldy.w #$0800
	jsl L808C8E
	lda.w #$0000
	ldx.w #$2800
	ldy.w #$0800
	jsl L808C8E
	lda.w #$0000
	ldx.w #$2000
	ldy.w #$0800
	jsl L808C8E
	php
	phb
	phk
	plb
	rep #$30
	lda #$8000
	sta $01
	lda #$A686
	sta $00
	jsl L808EAD
	lda #$8000
	sta $01
	lda #$A67D
	sta $00
	jsl L808EAD
	lda #$8000
	sta $01
	lda #$A674
	sta $00
	jsl L808EAD
	plb
	plp
	rtl

.db $02 $00 $20 $7E
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
.db $FA $CA $D0 $CB $60

L80A6DD:
	php
	rep #$20
	lda #$00FF
	ldx #$3000
	ldy #$0800
	jsl L808C8E
	plp
	rtl

L80A6EF:
	phb
	sep #$20
	lda #$81
	pha
	plb
	rep #$20
	jsl SECTIONSTART_Bank1
	plb
	rts

L80A6FE:
	phb
	sep #$20
	lda #$83
	pha
	plb
	rep #$20
	jsl $8384B4
	plb
	rts

L80A70D:
	phb
	sep #$20
	lda #$84
	pha
	plb
	rep #$20
	jsl $8490BD
	plb
	rts

L80A71C:
	phb
	sep #$20
	lda #$84
	pha
	plb
	rep #$20
	jsl $8490BD
	plb
	rts

L80A72B:
	phb
	sep #$20
	lda #$87
	pha
	plb
	rep #$20
	jsl SECTIONSTART_Bank7
	plb
	rts

L80A73A:
	jml $868002

L80A73E:
	lda #$FFFF
	ldy #$0870
	ldx #$0000
L80A747:
	sta $7F5330,X
	inx
	dey
	inx
	dey
	bne L80A747
	lda #$FFFF
	ldy #$0C00
	ldx #$0000
L80A75A:
	sta $7F4430,X
	inx
	dey
	inx
	dey
	bne L80A75A
	lda #$FFFF
	ldy #$0100
	ldx #$0000
L80A76D:
	sta $7F5030,X
	inx
	dey
	inx
	dey
	bne L80A76D
	lda #$0000
	ldy #$0040
	ldx #$0000
L80A780:
	sta $7F675C,X
	inx
	dey
	inx
	dey
	bne L80A780
	lda #$0000
	ldy #$0040
	ldx #$0000
L80A793:
	sta $7F679C,X
	inx
	dey
	inx
	dey
	bne L80A793
	lda #$0000
	ldy #$0018
	ldx #$0000
L80A7A6:
	sta $7F6520,X
	inx
	dey
	inx
	dey
	bne L80A7A6
	jsl $81DB8F
	sep #$20
	lda $07DF
	cmp #$15
	bcc L80A7CB
	rep #$20
	lda #$8800
	sta $01
	lda #$883E
	sta $00
	bra L80A7D7
L80A7CB:
	rep #$20
	lda #$8800
	sta $01
	lda #$8060
	sta $00
L80A7D7:
	stz $15
L80A7D9:
	jsl $83DCBE
	sep #$20
	lda #$00
	sta $7F4405
	rep #$20
	lda $15
	ora #$2000
	sta.l WRMPYA
	nop
	nop
	nop
	lda.l RDMPYL
	tax
	ldy #$0000
L80A7FB:
	phx
	tyx
	lda $7F4400,X
	plx
	sta $7F5330,X
	inx
	inx
	iny
	iny
	tya
	cmp #$0020
	bne L80A7FB
	lda $15
	ora #$1000
	sta.l WRMPYA
	nop
	nop
	nop
	lda.l RDMPYL
	tax
	ldy #$0000
L80A824:
	phx
	tyx
	lda $7F4420,X
	plx
	sta $7F58D0,X
	inx
	inx
	iny
	iny
	tya
	cmp #$0010
	bne L80A824
	inc $15
	lda #$0013
	clc
	adc $00
	sta $00
	lda [$00]
	and #$00FF
	cmp #$00FF
	lda $15
	and #$00FF
	cmp #$0001
	beq L80A858
	brl L80A7D9
L80A858:
	rtl

L80A859:
	php
	sep #$20
	lda #$02
	sta $07DA
	lda #$00
	sta $07DB
	lda #$02
	sta $07DC
	lda #$00
	sta $07DE
	lda #$00
	sta $07DD
	plp
	rts

L80A877:
	php
	rep #$20
	stx $075B
	cmp $075B
	bne L80A886
	tya
	plp
	sec
	rtl
L80A886:
	inc A
	plp
	clc
	rtl

.db $08 $C2 $20 $8C $5B $07
.db $CD $5B $07 $D0 $04 $8A $28 $38
.db $6B $3A $28 $18 $6B

L80A89D:
	php
	rep #$20
	and #$00FF
	ora #$0300
	sta.l WRMPYA
	nop
	nop
	nop
	lda.l RDMPYL
	clc
	adc $00
	sta $00
	plp
	rtl

L80A8B8:
	php
	sep #$20
	inc $0751
	rep #$30
	lda $0137
	and #$0007
	beq L80A8D7
	dec A
	beq L80A929
	dec A
	beq L80A8D4
	dec A
	bne L80A924
	brl L80A9B4
L80A8D4:
	brl L80A957
L80A8D7:
	lda $074C
	and #$0008
	beq L80A924
	lda $0750
	and #$00FF
	ldx #$0007
	ldy #$0000
	jsl L80A877
	sep #$20
	sta $0750
	rep #$20
	bit #$0004
	bne L80A907
	lda $0752
	clc
	adc #$0020
	sta $0752
	bra L80A911
L80A907:
	lda $0752
	sec
	sbc #$0020
	sta $0752
L80A911:
	sep #$20
	lda #$0D
	sta $2121
	lda $0752
	sta $2122
	lda $0753
	sta $2122
L80A924:
	rep #$20
	brl L80A9B0
L80A929:
	lda $074C
	and #$0002
	beq L80A9B0
	lda $074E
	and #$00FF
	ldx #$0005
	ldy #$0000
	jsl L80A877
	sep #$20
	sta $074E
	tax
	lda $84
	and #$0F
	ora $A9F6,X
	sta $210B
	sta $84
	rep #$20
	bra L80A9B0
L80A957:
	lda $074C
	and #$0001
	beq L80A9B0
	sep #$20
	inc $074D
	lda $074D
	and #$0E
	xba
	rep #$20
	asl
	asl
	clc
	adc $0755
	sta $4D
	sep #$20
	lda $4D
	sta $4322
	lda $4E
	sta $4323
	lda $0757
	sta $4324
	lda #$00
	sta $4325
	lda #$08
	sta $4326
	lda #$80
	sta $2115
	lda #$00
	sta $2116
	lda #$1C
	sta $2117
	lda #$01
	sta $4320
	lda #$18
	sta $4321
	lda #$04
	sta $420B
	rep #$20
L80A9B0:
	rep #$30
	plp
	rts
L80A9B4:
	lda $074C
	and #$0004
	beq L80A9B0
	lda $074F
	and #$001E
	clc
	adc $0758
	adc #$3000
	sta $4D
	sep #$30
	inc $074F
	lda $075A
	sta $4F
	lda #$37
	sta $2121
	lda [$4D]
	sta $2122
	ldy #$01
	lda [$4D],Y
	sta $2122
	ldy #$20
	lda [$4D],Y
	sta $2122
	ldy #$21
	lda [$4D],Y
	sta $2122
	bra L80A9B0

; data
.db $20 $20 $30 $40 $40 $30

L80A9FC:
	php
	sep #$20
	lda $074C
	ora #$07
	sta $074C
	plp
	rtl

L80AA09:
	php
	sep #$20
	lda $074C
	and #$F8
	sta $074C
	plp
	rtl

L80AA16:
	php
	rep #$20
	cmp #$FFFF
	beq L80AA22
	jsl L80B467
L80AA22:
	plp
	rtl

.db $08 $C2 $20 $C9
.db $FF $FF $F0 $04 $22 $BB $B4 $80
.db $28 $6B $08 $C2 $20 $8D $7A $08
.db $28 $6B

L80AA3A:
	php
	rep #$20
	pha
	lda #$01F0
	jsl L80B4E3
	lda #$0010
	jsl L80909D
	pla
	sta $0876
	plp
	rtl

L80AA52:
	php
	sep #$20
	lda $0861
	cmp $08E4
	bpl L80AA60
	lda $08E4
L80AA60:
	rep #$20
	and #$00FF
	sta $17
	lda $08E3
	and #$00FF
	beq L80AA82
	sep #$20
	lda $08E5
	sec
	sbc $08E4
	rep #$20
	and #$00FF
	clc
	adc $17
	sta $17
L80AA82:
	lda $17
	asl
	asl
	asl
	asl
	sta $1D
	sep #$20
	lda $0861
	clc
	adc #$0D
	cmp $08E5
	bmi L80AA9A
	lda $08E5
L80AA9A:
	sec
	sbc $08E4
	bpl L80AAA3
	brl L80AC63
L80AAA3:
	rep #$20
	and #$00FF
	tay
L80AAA9:
	lda $0860
	and #$00FF
	sta $15
	asl
	asl
	asl
	asl
	sta $1B
	phy
	stz $19
	jsl $83D8F7
	ldy.w #$000F
L80AAC1:
	phy
	lda #$0100
	sta $23
	ldx $19
	lda $7F2800,X
	cmp #$0400
	bmi L80AADC
	phy
	jsl L80B0D8
	lda $7F4406
	ply
L80AADC:
	pha
	tya
	and #$000F
	eor #$000F
	asl
	asl
	tay
	pla
	asl
	asl
	asl
	tax
	lda $7F6BDC,x
	sta $091B,Y
	lda $7F6BDE,X
	sta $091D,Y
	lda $7F6BE0,X
	sta $095B,Y
	lda $7F6BE2,X
	sta $095D,Y
	lda $23
	asl
	asl
	asl
	tax
	lda $DAC800,X
	sta $099B,Y
	lda $DAC802,X
	sta $099D,Y
	lda $DAC804,X
	sta $09DB,Y
	lda $DAC806,X
	sta $09DD,Y
	ply
	inc $19
	inc $19
	dey
	bpl L80AAC1
	lda $17
	pha
	lda $1D
	pha
	jsl $83DC3F
	lda $1F
	cmp #$0400
	bcc L80AB4B
	sec
	sbc #$0400
	sta $1F
	bra L80ABB4
L80AB4B:
	tax
	lda #$2800
	sta $21
	lda #$0000
	sta $01
	lda #$091B
	sta $00
	sep #$20
	lda #$10
	sec
	sbc $0860
	rep #$20
	and #$00FF
	asl
	asl
	pha
	phx
	jsr L80AC6C
	lda #$3800
	sta $21
	lda #$0000
	sta $01
	lda #$099B
	sta $00
	plx
	pla
	pha
	phx
	jsr L80AC6C
	lda #$2800
	sta $21
	lda #$0000
	sta $01
	lda #$095B
	sta $00
	pla
	clc
	adc #$0020
	tax
	pla
	pha
	phx
	jsr L80AC6C
	lda #$3800
	sta $21
	lda #$0000
	sta $01
	lda #$09DB
	sta $00
	plx
	pla
	jsr L80AC6C
L80ABB4:
	lda $1F
	and #$FFE0
	tax
	lda #$2C00
	sta $21
	lda #$0000
	sta $01
	lda #$091B
	sta $00
	jsr L80AC78
	lda $0860
	and #$00FF
	beq L80AC29
	asl
	asl
	pha
	phx
	jsr L80AC6C
	lda #$3C00
	sta $21
	lda #$0000
	sta $01
	lda #$099B
	sta $00
	jsr L80AC78
	plx
	pla
	pha
	phx
	jsr L80AC6C
	lda #$2C00
	sta $21
	lda #$0000
	sta $01
	lda #$095B
	sta $00
	jsr L80AC78
	pla
	clc
	adc #$0020
	tax
	pla
	pha
	phx
	jsr L80AC6C
	lda #$3C00
	sta $21
	lda #$0000
	sta $01
	lda #$09DB
	sta $00
	jsr L80AC78
	plx
	pla
	jsr L80AC6C
L80AC29:
	lda $08E2
	inc A
	and #$00FF
	jsl L80909D
	jsl L80954E
	pla
	sta $1D
	pla
	sta $17
	lda $08E3
	and #$00FF
	bne L80AC52
	inc $17
	lda $1D
	clc
	adc #$0010
	sta $1D
	bra L80AC5C
L80AC52:
	dec $17
	lda $1D
	sec
	sbc #$0010
	sta $1D
L80AC5C:
	ply
	dey
	bmi L80AC63
	brl L80AAA9
L80AC63:
	sep #$20
	stz $08DE
	rep #$20
	plp
	rtl

L80AC6C:
	pha
	txa
	clc
	adc $21
	tax
	pla
	jsl L80A338
	rts

L80AC78:
	sep #$20
	lda #$10
	sec
	sbc $0860
	rep #$20
	and #$00FF
	asl
	asl
	clc
	adc $00
	sta $00
	rts

L80AC8D:
	php
	sep #$20
	phb
	lda #$80
	pha
	plb
	lda $08DE
	beq L80ACF5
	lda $08E8
	cmp #$10
	bne L80ACA7
	jsr L80AD22
	jsr L80AE68
L80ACA7:
	lda $08E8
	sec
	sbc $08EA
	sta $08E8
	bne L80ACB6
	stz $08DE
L80ACB6:
	rep #$20
	lda $08E9
	and #$00FF
	beq L80AD00
	dec A
	beq L80ACF8
	dec A
	beq L80ACCE
	lda $08EA
	and #$00FF
	bra L80ACD8
L80ACCE:
	lda $08EA
	and #$00FF
	eor #$FFFF
	inc A
L80ACD8:
	clc
	adc $8B
	and #$00FF
	sta $8B
	sta $8F
	pha
	lda $08E0
	and #$00FF
	beq L80ACF0
	pla
	sta $93
	bra L80ACF5
L80ACF0:
	pla
	stz $91
	stz $93
L80ACF5:
	plb
	plp
	rtl
L80ACF8:
	lda $08EA
	and #$00FF
	bra L80AD0A
L80AD00:
	lda $08EA
	and #$00FF
	eor #$FFFF
	inc A
L80AD0A:
	clc
	adc $89
	and #$01FF
	sta $89
	sta $8D
	pha
	lda $08E0
	and #$00FF
	beq L80ACF0
	pla
	sta $91
	bra L80ACF5

L80AD22:
	php
	rep #$20
	jsr L80ADAE
	ldx.w #$0000
L80AD2B:
	lda #$0100
	sta $23
	phx
	stz $19
	jsl $83D8F7
	lda $19
	and #$07FF
	tax
	lda #$00FF
	sta $25
	lda $08E0
	and #$00FF
	beq L80AD53
	lda $7F3800,X
	and #$00FF
	sta $25
L80AD53:
	lda $7F2800,X
	cmp #$0400
	bcc L80AD64
	jsl L80B0D8
	lda $7F4406
L80AD64:
	sta $19
	plx
	phx
	txa
	asl
	asl
	sta $21
	jsr L80ADE6
	lda $23
	clc
	adc #$0400
	sta $19
	jsr L80ADE6
	lda #$FFFF
	sta $19
	jsr L80ADE6
	plx
	lda $08E9
	and #$0002
	bne L80ADA0
	inc $17
	lda $1D
	clc
	adc #$0010
	sta $1D
L80AD96:
	inx
	txa
	cmp #$0010
	beq L80ADAC
	brl L80AD2B
L80ADA0:
	inc $15
	lda $1B
	clc
	adc #$0010
	sta $1B
	bra L80AD96
L80ADAC:
	plp
	rts

L80ADAE:
	lda $0860
	and #$00FF
	sta $15
	lda $0861
	and #$00FF
	sta $17
	lda $08E9
	and #$00FF
	dec A
	beq L80ADD9
	dec A
	dec A
	beq L80ADCC
	rts

L80ADCC:
	lda $0861
	and #$00FF
	clc
	adc #$000D
	sta $17
	rts

L80ADD9:
	lda $0860
	and #$00FF
	clc
	adc #$000F
	sta $15
	rts

L80ADE6:
	lda $19
	cmp #$FFFF
	beq L80ADF2
	asl
	asl
	asl
	sta $19
L80ADF2:
	ldx.w #$0000
L80ADF5:
	phx
	lda $08E9
	and #$0002
	bne L80AE02
	inx
	inx
	inx
	inx
L80AE02:
	lda $AE60,X
	and #$00FF
	clc
	adc $21
	tay
	lda $19
	cmp #$FFFF
	bne L80AE27
	lda $25
	cmp #$00FF
	beq L80AE1F
	lda #$2D50
	bra L80AE22
L80AE1F:
	lda #$00FF
L80AE22:
	sta $0A1B,Y
	bra L80AE4C
L80AE27:
	lda #$7F00
	sta $01
	lda #$6BDC
	sta $00
	lda $19
	cmp #$2000
	bcc L80AE43
	ldx $19
	lda $DAA800,X
	sta $099B,Y
	bra L80AE4C
L80AE43:
	phy
	ldy $19
	lda [$00],Y
	ply
	sta $091B,Y
L80AE4C:
	plx
	lda $19
	cmp #$FFFF
	beq L80AE58
	inc $19
	inc $19
L80AE58:
	inx
	txa
	cmp #$0004
	bne L80ADF5
	rts

; data
.db $00 $02 $40 $42 $00 $40 $02 $42

L80AE68:
	php
	rep #$20
	jsr L80AED6
	lda $1F
	sta $17
	lda $08E9
	and #$0002
	bne L80AEA3
	lda #$0100
	sec
	sbc $8B
	lsr
	lsr
	sta $15
	stz $19
	jsr L80AF23
	lda $15
	sta $19
	lda #$0040
	sec
	sbc $15
	beq L80AED4
	sta $15
	lda $17
	and #$FC1F
	sta $17
	jsr L80AF23
	bra L80AED4
L80AEA3:
	lda $89
	and #$00FF
	sta $15
	lda #$0100
	sec
	sbc $15
	lsr
	lsr
	sta $15
	stz $19
	jsr L80AFC8
	lda $15
	sta $19
	lda #$0040
	sec
	sbc $15
	beq L80AED4
	sta $15
	lda $17
	eor #$0400
	and #$FFE0
	sta $17
	jsr L80AFC8
L80AED4:
	plp
	rts

L80AED6:
	lda $89
	sta $1B
	lda $8B
	sta $1D
	lda $08E9
	and #$00FF
	beq L80AF13
	dec A
	beq L80AEF9
	dec A
	beq L80AF06
	lda $8B
	clc
	adc #$00E0
	and #$00FF
	sta $1D
	bra L80AF1E
L80AEF9:
	lda $89
	clc
	adc #$0100
	and #$01FF
	sta $1B
	bra L80AF1E
L80AF06:
	lda $8B
	sec
	sbc #$0010
	and #$00FF
	sta $1D
	bra L80AF1E
L80AF13:
	lda $89
	sec
	sbc #$0010
	and #$01FF
	sta $1B
L80AF1E:
	jsl $83DC3F
	rts

L80AF23:
	lda #$0000
	sta $01
	lda #$091B
	clc
	adc $19
	sta $00
	lda $17
	clc
	adc #$2800
	tax
	lda $15
	jsl L80A300
	lda #$0000
	sta $01
	lda #$095B
	clc
	adc $19
	sta $00
	lda $17
	clc
	adc #$2801
	tax
	lda $15
	jsl L80A300
	lda #$0000
	sta $01
	lda #$099B
	clc
	adc $19
	sta $00
	lda $17
	clc
	adc #$3800
	tax
	lda $15
	jsl L80A300
	lda #$0000
	sta $01
	lda #$09DB
	clc
	adc $19
	sta $00
	lda $17
	clc
	adc #$3801
	tax
	lda $15
	jsl L80A300
	lda $08E0
	and #$00FF
	beq L80AFC7
	lda #$0000
	sta $01
	lda #$0A1B
	clc
	adc $19
	sta $00
	lda $17
	clc
	adc #$4800
	tax
	lda $15
	jsl L80A300
	lda #$0000
	sta $01
	lda #$0A5B
	clc
	adc $19
	sta $00
	lda $17
	clc
	adc #$4801
	tax
	lda $15
	jsl L80A300
L80AFC7:
	rts

L80AFC8:
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

L80B0D8:
	php
	rep #$20
	pha
	jsl $83D912
	lda $7F4401
	and #$00FF
	jsl $83F1AC
	sta $23
	pla
	and #$0020
	clc
	adc $23
	sta $23
	lda $7F4412
	and #$0001
	beq L80B109
	lda $23
	and #$00DF
	ora #$0040
	sta $23
L80B109:
	plp
	rtl

.db $08 $8B $E2 $20 $A9
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
.db $68 $60

L80B312:
	lda $27
	tax
	lda $28
	tay
	jsl L80B39C
	tax
	pla
	sep #$20
	clc
	adc $3800,X
	cmp.l $0008FD
	bcc L80B330
	beq L80B330
	rep #$20
	bra L80B359
L80B330:
	pha
	ldx $8CE1
	sta $4200,X
	lda $25
	sta $4203,X
	ldx $1B
	pla
; sta $3800,X
.db $9D
L80B340:
.db $00 $38
	lda $25
	sta $3801,X
	rep #$20
	lda $21
	ldx $8CE1
	sta $4201,X
	txa
	clc
	adc #$0004
	sta $8CE1
L80B359:
	rts

L80B35A:
	jsl L80B3B3
	tay
	lda #$8800
	sta $01
	lda.l $0008FF
	and #$00FF
	sta $15
	asl
	adc $15
	adc #$B383
	sta $00
	lda [$00]
	sta $00
	lda [$00],Y
	and #$00FF
	rtl

L80B37F:
	tya
	sta.l WRMPYA
	lda #$8F20
	ora $42,S
.db $00 $64 ; brk #$64
	asl $86,X
	ora $C2,X
	bmi L80B340
	asl $42,X
.db $00 $18 ; brk #$18
	adc $15
	asl
	tax
	sep #$20
	rts

L80B39C:
	tya
	and.w #$00FF
	xba
	lsr
	lsr
	lsr
	sta $15
	txa
	and.w #$00FF
	adc $15
	asl
	cmp.w #$0800
L80B3B0:
	bpl L80B3B0
	rtl

L80B3B3:
	php
	rep #$30
	lda #$8A00
	sta $01
	lda.l $0007D0
	and #$00FF
	sta $15
	asl
	adc $15
	adc #$81F8
	sta $00
	lda [$00]
	sta $00
	lda $7F2800,X
	and #$07FF
	cmp #$0400
	bcc L80B3E8
	and #$00FF
	xba
	lsr
	lsr
	lsr
	tax
	lda $7F4436,X
L80B3E8:
	and #$03FF
	tay
	lda [$00],Y
	and #$00FF
	plp
	rtl

L80B3F3:
	php
	phb
	phk
	plb
	rep #$30
	phx
	phy
	lda $00
	pha
	lda $01
	pha
	lda #$b000
	sta $01
	ldy #$8000
	stz $00
	jsr L80BA79
	ldx #$005e
L80B411:
	stz $0862,x
	dex
	dex
	bmi L80B41A
	bra L80B411
L80B41A:
	rep #$30
	pla
	sta $01
	pla
	sta $00
	ply
	plx
	plb
	plp
	rtl

L80B427:
	php
	phb
	phk
	plb
	rep #$30
	phx
	ldx #$005E
L80B431:
	stz $0862,X
	dex
	dex
	bmi L80B43A
	bra L80B431
L80B43A:
	plx
	plb
	plp
	rtl

L80B43E:
	php
	phb
	phk
	plb
	rep #$30
	and #$00FF
	ora #$2000
	bra L80B456

L80B44C:
	nop
L80B44D:
	php
	phb
	phk
	plb
	rep #$30
	and #$00FF
L80B456:
	sta $08B3
	lda $089D
	jsr L80B813
	ora $08B3
	stz $089D
	bra L80B46D

L80B467:
	php
	phb
	phk
	plb
	rep #$30
L80B46D:
	phx
	tax
	lda $0882
	and #$0001
	bne L80B48B
	phx
	ldx #$0000
L80B47B:
	lda $0862,X
	beq L80B487
	inx
	inx
	cpx #$0006
	bne L80B47B
L80B487:
	pla
	sta $0862,X
L80B48B:
	plx
	plb
	plp
	rtl

L80B48F:
	php
	phb
	phk
	plb
	rep #$30
	and #$00FF
	ora #$2000
	bra L80B4A7

L80B49D:
	nop
L80B49E:
	php
	phb
	phk
	plb
	rep #$30
	and #$00FF
L80B4A7:
	sta $08B3
	lda $089F
	jsr L80B813
	ora $08B3
	stz $089F
	dec $089F
	bra L80B4C1

L80B4BB:
	php
	phb
	phk
	plb
	rep #$30
L80B4C1:
	phx
	tax
	lda $0882
	and #$0001
	bne L80B4DF
	phx
	ldx #$0000
L80B4CF:
	lda $086A,X
	beq L80B4DB
	inx
	inx
	cpx #$0006
	bne L80B4CF
L80B4DB:
	pla
	sta $086A,X
L80B4DF:
	plx
	plb
	plp
	rtl

L80B4E3:
	php
	phb
	phk
	plb
	rep #$30
	phx
	tax
	cmp #$00F0
	bcc L80B4F3
	brl L80B569
L80B4F3:
	cmp #$0000
	bne L80B4FB
	brl L80B57D
L80B4FB:
	phy
	ldx $00
	phx
	ldx $01
	phx
	tax
	lda $0896
	bne L80B525
	lda $08BF
	and #$0001
	bne L80B514
	jsl L808838
L80B514:
	jsr L80B943
	rep #$20
	lda $08BF
	and #$0001
	bne L80B525
	jsl L808826
L80B525:
	rep #$30
	plx
	stx $01
	plx
	stx $00
	ply
	bra L80B57D
L80B530:
	php
	phb
	phk
	plb
	rep #$30
	phx
	tax
	and #$00FF
	cmp #$00F0
	bcs L80B57D
	cmp #$00E0
	bcc L80B57D
	cmp #$00E1
	bcc L80B55C
	stx $0884
	cmp #$00E9
	beq L80B564
	cmp #$00EA
	beq L80B564
	cmp #$00ED
	beq L80B564
L80B55C:
	lda $0882
	and #$0002
	bne L80B57D
L80B564:
	lda $0896
	bne L80B57D
L80B569:
	phx
	ldx #$0000
L80B56D:
	lda $0862,X
	beq L80B579
	inx
	inx
	cpx #$0006
	bne L80B56D
L80B579:
	pla
	sta $0862,X
L80B57D:
	plx
	plb
	plp
	rtl

L80B581:
	php
	phb
	phk
	plb
	rep #$30
	phx
	tax
	beq L80B59A
	cpx #$0003
	bcs L80B5B0
	lda $08A1,X
	sec
	sbc #$0050
	sta $08A1,X
L80B59A:
	lda $08A5,X
	jsr L80B813
	ora $08A1,X
	jsl L80B467
	lda $08A1,X
	ora #$8000
	sta $08A1,X
L80B5B0:
	plx
	plb
	plp
	rtl

L80B5B4:
	rep #$30
	ldx $08AD
	cpx #$0003
	bcs L80B5E5
	lda $08A1,X
	bpl L80B5DD
	lda $08A9,X
	beq L80B5CD
L80B5C8:
	cmp #$2000
	bne L80B5C8
L80B5CD:
	lda $08A5,X
	jsr L80B813
	ora $08A1,X
	ora $08A9,X
	jsl L80B4BB
L80B5DD:
	txa
	beq L80B5E5
	stz $08AD
	bra L80B5EB
L80B5E5:
	lda #$0002
	sta $08AD
L80B5EB:
	rts

L80B5EC:
	php
	phb
	phk
	plb
	rep #$30
	phx
	tax
	cpx #$0003
	bcs L80B60D
	lda $08A1,X
	and #$00FF
	xba
	ora #$00F8
	jsl L80B4E3
	stz $08A1,X
	stz $08A9,X
L80B60D:
	plx
	plb
	plp
	rtl

L80B611:
	php
	phb
	phk
	plb
	rep #$20
	pha
	lda #$FFFF
	sta $0876
	sta $087A
	sta $087E
	pla
	plb
	plp
	rtl

L80B628:
	php
	phb
	phk
	plb
	rep #$30
	pha
	phx
	phy
	lda $00
	pha
	lda $01
	pha
	lda #$B100
	sta $01
	lda #$D940
	sta $00
	ldx #$0000
L80B644:
	lda $0876,X
	bpl L80B6BA
	cmp #$FFFF
	beq L80B6C2
	pha
	jsr L80B8B0
	cmp #$8005
	bcc L80B6A9
	cmp #$80B1
	bcs L80B6A9
	pha
	lda $08BD
	and #$00FF
	sta $0888
	pla
	cmp #$80B1
	bcs L80B6A9
	cmp #$80A1
	bcc L80B67D
	lda $0888
	beq L80B682
	cmp #$0003
	bcs L80B682
	bra L80B6A9
L80B67D:
	cmp #$8031
	bcs L80B687
L80B682:
	lda #$0001
	bra L80B699
L80B687:
	cmp #$8091
	bcs L80B691
	lda #$0002
	bra L80B699
L80B691:
	cmp #$80A1
	bcs L80B6A9
	lda #$0003
L80B699:
	cmp $0888
	beq L80B6A9
	sep #$20
	sta $08BD
	rep #$20
	jsl L80B4E3
L80B6A9:
	pla
	and #$00FF
	asl
	txy
	tax
	lda $B1D940,X
	sta $0876,Y
	tyx
	bra L80B6BF
L80B6BA:
	dec $0878,X
	bne L80B6C2
L80B6BF:
	jsr L80B6DD
L80B6C2:
	cpx #$0005
	bcs L80B6CE
	inx
	inx
	inx
	inx
	brl L80B644
L80B6CE:
	jsr L80B5B4
	pla
	sta $01
	pla
	sta $00
	ply
	plx
	pla
	plb
	plp
	rtl

L80B6DD:
	phx
	lda $0876,X
	tay
L80B6E2:
	jsr L80B7A3
	tax
	bne L80B6ED
	dec A
	tay
	brl L80B79A
L80B6ED:
	jsr L80B7A3
	cpx #$2000
	bcc L80B74D
	cpx #$3000
	bcc L80B753
	cpx #$4000
	bcc L80B759
	cpx #$5000
	bcc L80B75F
	cpx #$6000
	bcc L80B765
	cpx #$7000
	bcc L80B743
	cpx #$8000
	bcc L80B77E
	cpx #$9000
	bcc L80B73D
	cpx #$A000
	bcc L80B737
	cpx #$B000
	bcc L80B768
	cpx #$C000
	bcc L80B76D
	cpx #$D000
	bcc L80B778
	cpx #$E000
	bcc L80B731
L80B731:
	jsr L80B86D
	brl L80B791
L80B737:
	jsr L80B865
	brl L80B791
L80B73D:
	jsr L80B829
	brl L80B791
L80B743:
	lda $0884
	jsl L80B530
	brl L80B791
L80B74D:
	jsl L80B467
	bra L80B791
L80B753:
	jsl L80B4BB
	bra L80B791
L80B759:
	jsl L80B530
	bra L80B791
L80B75F:
	jsl L80B4E3
	bra L80B791
L80B765:
	tay
	bra L80B791
L80B768:
	jsr L80B7A8
	bra L80B791
L80B76D:
	jsr L80B7A8
	lda $0896
	bne L80B78A
	brl L80B6E2
L80B778:
	jsr L80B92F
	brl L80B6E2
L80B77E:
	txa
	and #$00FF
	and $0886
	bne L80B78A
	brl L80B6E2
L80B78A:
	dey
	dey
	dey
	dey
	ldx #$0001
L80B791:
	txa
	and #$0FFF
	bne L80B79A
	brl L80B6E2
L80B79A:
	plx
	sta $0878,X
	tya
	sta $0876,X
	rts

L80B7A3:
	lda [$00],Y
	iny
	iny
	rts

L80B7A8:
	php
	phb
	phk
	plb
	rep #$30
	phx
	tax
	phy
	ldx $00
	phx
	ldx $01
	phx
	tax
	lda $0896
	bne L80B7C3
	lda #$0001
	sta $0896
L80B7C3:
	jsr L80B943
	lda $0872
	sta $2140
	lda $0862
	sta $0872
	lda $0864
	sta $0862
	lda $0866
	sta $0864
	lda $0868
	sta $0866
	stz $0868
	lda $0874
	sta $2142
	lda $086A
	sta $0874
	lda $086C
	sta $086A
	lda $086E
	sta $086C
	lda $0870
	sta $086E
	stz $0870
	plx
	stx $01
	plx
	stx $00
	ply
	plx
	plb
	plp
	rts

L80B813:
	and #$00FF
	sta $08B1
	xba
	lsr
	lsr
	lsr
	sec
	sbc $08B1
	clc
	adc #$0100
	and #$1F00
	rts

L80B829:
	phx
	phy
	lda $0761
	and #$00FF
	lsr
	lsr
	lsr
	tax
	lda $0761
	and #$0007
	tay
	lda #$0001
L80B83F:
	dey
	bmi L80B845
	asl
	bra L80B83F
L80B845:
	and $B18010,X
	beq L80B853
	ldx #$00E2
	lda #$01F7
	bra L80B859
L80B853:
	ldx #$00E1
	lda #$00F7
L80B859:
	jsl L80B4E3
	txa
	jsl L80B530
	ply
	plx
	rts

L80B865:
	lda #$00F7
	jsl L80B4E3
	rts

L80B86D:
	phx
	cmp #$0000
	bne L80B878
	sta $08BB
	bra L80B89E
L80B878:
	cmp #$0031
	bcs L80B89E
	cmp $08BB
	beq L80B88A
	sta $08BB
	lda #$00E1
	bra L80B89A
L80B88A:
	lda $08B7
	and #$000F
	tax
	lda $B8A0,X
	and #$00FF
	ora #$0500
L80B89A:
	jsl L80B530
L80B89E:
	plx
	rts

.db $E1 $E2 $E3 $E4 $E5 $E6 $E7 $E8
.db $E1 $E2 $E3 $E4 $E5 $E6 $E7 $E8

L80B8B0:
	pha
	phy
	ldy #$0007
	pha
	lda $08BE
	and #$000F
	sta $0888
	pla
	cmp #$8005
	bcc L80B92C
	cmp #$80C1
	bcs L80B92C
	cmp #$80C1
	bcs L80B90D
	cmp #$8031
	bcs L80B8E2
	cmp #$802D
	bcc L80B90D
	iny
	cmp #$802F
	bcc L80B90D
	brl L80B923
L80B8E2:
	cmp #$8091
	bcs L80B8FB
	cmp #$8089
	bcc L80B90D
	iny
	cmp #$808D
	bcc L80B90D
	iny
	cmp #$808F
	bcc L80B90D
	brl L80B923
L80B8FB:
	cmp #$80A1
	bcs L80B923
	cmp #$809D
	bcs L80B90D
	cmp #$8099
	bcc L80B90D
	iny
	bra L80B90D
L80B90D:
	tya
	and #$000F
	cmp $0888
	beq L80B92C
	sep #$20
	sta $08BE
	rep #$20
	jsl L80B4E3
	bra L80B92C
L80B923:
	sep #$20
	lda #$00
	sta $08BE
	rep #$20
L80B92C:
	ply
	pla
	rts

L80B92F:
	cmp #$0000
	beq L80B93B
	cmp #$0001
	beq L80B93B
	bra L80B942
L80B93B:
	sep #$20
	sta $08BF
	rep #$20
L80B942:
	rts

L80B943:
	rep #$30
	stz $088E
	lda $0896
	beq L80B98F
	ldy #$0040
	sty $088E
	cmp #$0001
	bne L80B960
	inc $0896
	lda #$00FC
	bra L80B992
L80B960:
	lda $0898
	ldy #$1234
L80B966:
	cpy $2140
	bne L80B966
	sta $2140
	ldy #$007F
	sty $2142
L80B974:
	cmp $2140
	bne L80B974
	lda $089A
	sta $00
	lda $089B
	sta $01
	lda #$007F
	ldx $0892
	ldy $0894
	brl L80BA19
L80B98F:
	lda #$00FE
L80B992:
	sta $2140
	stz $2142
	txa
	dec A
	asl
	tax
	lda $B1D800,X
	sta $0888
	ldx #$0000
	brl L80BA26
L80B9A9:
	stx $2142
	tax
	lda $B1DB01,X
	clc
	adc #$B000
	sta $01
	stz $00
	lda $B1DB03,X
	inc A
	lsr
	sta $088A
	lda $B1DB05,X
	ldy #$1234
L80B9C9:
	cpy $2140
	bne L80B9C9
	sta $2140
	sta $0898
	ldy #$007F
	sty $2142
L80B9DA:
	cmp $2140
	bne L80B9DA
	lda $B1DB00,X
	tay
	stz $088C
	lda [$00],Y
	tax
	lda #$007F
L80B9ED:
	cmp $2142
	bne L80B9ED
	stx $2140
	lda $088C
	sta $2142
	iny
	iny
	pha
	lda [$00],Y
	tax
	inc $088C
	lda #$FF80
	trb $088C
	pla
	inc $0898
	inc $0898
	dec $088E
	bne L80BA19
	brl L80BA64
L80BA19:
	dec $088A
	bne L80B9ED
	ldx #$7FFF
L80BA21:
	cmp $2142
	bne L80BA21
L80BA26:
	ldy $0888
	lda #$B100
	sta $01
	stz $00
	lda [$00],Y
	beq L80BA47
	iny
	iny
	sty $0888
	cmp #$FFF0
	bcc L80BA44
	jsr L80BAF0
	tay
	beq L80BA26
L80BA44:
	brl L80B9A9
L80BA47:
	stz $0896
	stz $0890
	lda #$00FF
L80BA50:
	sta $2142
L80BA53:
	lda $2140
	bne L80BA53
	lda $2142
	bne L80BA53
	sta $2142
	sta $2140
	rts

L80BA64:
	stx $0892
	sty $0894
	lda $00
	sta $089A
	lda $01
	sta $089B
	lda #$FFFF
	bra L80BA50

L80BA79:
	php
	rep #$30
	lda #$BBAA
	bra L80BA87
L80BA81:
	ldx #$00FD
	stx $2140
L80BA87:
	cmp $2140
	bne L80BA81
	sep #$20
	lda #$CC
	bra L80BAB8
L80BA92:
	jsr L80BAE5
	xba
	lda #$00
	bra L80BAA5
L80BA9A:
	xba
	jsr L80BAE5
	xba
L80BA9F:
	cmp $2140
	bne L80BA9F
	inc A
L80BAA5:
	rep #$20
	sta $2140
	sep #$20
	dex
	bne L80BA9A
L80BAAF:
	cmp $2140
	bne L80BAAF
L80BAB4:
	adc #$03
	beq L80BAB4
L80BAB8:
	pha
	rep #$20
	jsr L80BAE5
	jsr L80BAE7
	tax
	jsr L80BAE5
	jsr L80BAE7
	sta $2142
	sep #$20
	cpx #$0001
	lda #$00
	rol
	sta $2141
	adc #$7F
	pla
	sta $2140
L80BADC:
	cmp $2140
	bne L80BADC
	bvs L80BA92
	plp
	rts

L80BAE5:
	lda [$00],Y
L80BAE7:
	iny
	bne L80BAEF
	inc $02
	ldy #$8000
L80BAEF:
	rts

L80BAF0:
	rep #$30
	phx
	cmp #$FFF0
	beq L80BB08
	cmp #$FFFA
	bcs L80BB4B
	cmp #$FFF6
	bcs L80BB0E
L80BB02:
	lda #$0000
	brl L80BBDF
L80BB08:
	lda #$0000
	brl L80BBDF
L80BB0E:
	cmp #$FFF9
	beq L80BB02
	tay
	lda $0760
	and #$00FF
	tax
	lda $B1FF00,X
	and #$00FF
	beq L80BB38
	lda $08B5
	bne L80BB38
	inc $08B5
	dec $0888
	dec $0888
	lda $B1FE00,X
	bra L80BB3F
L80BB38:
	stz $08B5
	lda $B1FD00,X
L80BB3F:
	cpy #$FFF6
	beq L80BB88
	cpy #$FFF7
	beq L80BBA6
	bra L80BB97
L80BB4B:
	cmp #$FFFD
	beq L80BB02
	tay
	lda $075F
	and #$00FF
	tax
	lda $B1FF00,X
	and #$00FF
	beq L80BB75
	lda $08B5
	bne L80BB75
	inc $08B5
	dec $0888
	dec $0888
	lda $B1FE00,X
	bra L80BB7C
L80BB75:
	stz $08B5
	lda $B1FD00,X
L80BB7C:
	cpy #$FFFA
	beq L80BBB5
	cpy #$FFFB
	beq L80BBD1
	bra L80BBC3
L80BB88:
	and #$00FF
	beq L80BBDF
	dec A
	dec A
	tax
	lda $B1FB80,X
	brl L80BBDF
L80BB97:
	and #$00FF
	beq L80BBDF
	dec A
	dec A
	tax
	lda $B1FBC0,X
	brl L80BBDF
L80BBA6:
	and #$00FF
	beq L80BBDF
	dec A
	dec A
	tax
	lda $B1FC00,X
	brl L80BBDF
L80BBB5:
	and #$00FF
	beq L80BBDF
	dec A
	dec A
	tax
	lda $B1FC40,X
	bra L80BBDF
L80BBC3:
	and #$00FF
	beq L80BBDF
	dec A
	dec A
	tax
	lda $B1FC80,X
	bra L80BBDF
L80BBD1:
	and #$00FF
	beq L80BBDF
	dec A
	dec A
	tax
	lda $B1FCC0,X
	bra L80BBDF
L80BBDF:
	plx
	rts

L80BBE1:
	php
	phb
	phk
	plb
	rep #$20
	lda $0896
	beq L80BBEF
	brl L80BC92
L80BBEF:
	sep #$20
	lda $08BF
	beq L80BBF9
	brl L80BC92
L80BBF9:
	lda $0872
	cmp $2140
	bne L80BC04
	lda $0862
L80BC04:
	sta $2140
	sta $0872
	cmp $0862
	bne L80BC14
	lda $0863
	bra L80BC17
L80BC14:
	lda $0873
L80BC17:
	sta $2141
	sta $0873
	lda $2141
	sta $0887
	sta $08B7
	lda $0874
	cmp $2142
	bne L80BC31
	lda $086A
L80BC31:
	sta $2142
	sta $0874
	cmp $086A
	bne L80BC41
	lda $086B
	bra L80BC44
L80BC41:
	lda $0875
L80BC44:
	sta $2143
	sta $0875
	lda $2143
	sta $0886
	sep #$20
	lda $0872
	cmp $0862
	bne L80BC71
	rep #$20
	lda $0864
	sta $0862
	lda $0866
	sta $0864
	lda $0868
	sta $0866
	stz $0868
L80BC71:
	sep #$20
	lda $0874
	cmp $086A
	bne L80BC92
	rep #$20
	lda $086C
	sta $086A
	lda $086E
	sta $086C
	lda $0870
	sta $086E
	stz $0870
L80BC92:
	plb
	plp
	rtl

L80BC95:
	php
	phb
	phk
	plb
	rep #$30
	jsl L80B427
L80BC9F:
	lda $2143
	and #$0002
	beq L80BCB8
	lda #$00E0
	jsl L80B530
	jsl L8087EA
	jsl L8087EA
	bra L80BC9F
L80BCB8:
	lda $2143
	and #$0001
	beq L80BCD1
	lda #$00F9
	jsl L80B4E3
	jsl L8087EA
	jsl L8087EA
	bra L80BCB8
L80BCD1:
	plb
	plp
	rtl

.db $00 $FC $D0 $41
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
.db $1A $DC $D0 $95 $DE $D0 $FF
.ENDS
