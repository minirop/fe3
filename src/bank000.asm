.BANK 0
.ORG $0000
.BASE $80

.SECTION "Bank0" FORCE

L808000:
	rep #$30
	jsr $801d
	jsr $824c
	bra L80801C
L80800A:
	stz $045e
	stz $0453
	stz $0455
	stz $045f
	stz $0454
	stz $0456
L80801C:
	rts

L80801D:
	lda $4212
	and.b #$01
	bne L80801D
	stz $044d
	stz $0453
	stz $0454
	stz $0455
	stz $0456
	stz $045e
	stz $045f
	lda $4212
	and.b #$01
	bne L80801D
	stz $044d
	stz $0453
	stz $0454
	stz $0455
	stz $0456
	stz $045e
	stz $045f
	ldx.b #$01
	lda $421a
	jsr $8061
	dex
	lda $4218
	sta $15
	and.b #$0f
	cmp.b #$01
	beq L808070
	stz $0460,x
	stz $0462,x
	rts

L808070:
	lda $044d
	ora $808e,x
	sta $044d
	ldy.b #$10
L80807B:
	lsr $4016,x
	rol $0453,x
	rol $0455,x
	dey
	bne L80807B
	jsr $8090
	jsr $80b0
	rts

L80808E:
	ora ($02,x)
	jsr $809b
	phx
	inx
	inx
	jsr $809b
	plx
	rts

L80809B:
	lda $0453,x
	bpl L8080AA
	and.b #$7f
	eor.b #$ff
	inc A
	sta $0453,x
	bra L8080AC
L8080AA:
	and.b #$7f
L8080AC:
	sta $0453,x
	rts

L8080B0:
	txa
	asl
	asl
	asl
	tay
	lda $0115,y
	and #$9980
	rol $01
	lda $0115,y
	and #$0a40
	sta $0125,y
	lda $0117,y
	and #$9980
	plp
	ora ($b9,x)
	ora [$01],y
	and #$0a40
	sta $0127,y
	lda $0119,y
	and #$9980
	rol
	ora ($b9,x)
	ora $2901,y
	rti

L8080E4:
	asl
	sta $0129,y
	lda $0125,y
	bpl L8080F2
	inc $0464,x
	bra L8080F5
L8080F2:
	stz $0464,x
L8080F5:
	lda $0462,x
	bne L808110
	lda $0127,y
	and.b #$80
	beq L808143
	sta $0460,x
	lda.b #$00
	sta $0127,y
	lda.b #$10
	sta $0462,x
	bra L808143
L808110:
	lda $0464,x
	cmp.b #$07
	bcs L808137
	lda $0453,x
	ora $0455,x
	bne L808137
	dec $0462,x
	beq L808137
	lda $0127,y
	and.b #$80
	and $0460,x
	beq L808143
	lsr
	ora $0127,y
	sta $0127,y
	bra L80813D
L808137:
	lda $0460,x
	sta $0127,y
L80813D:
	stz $0462,x
	stz $0460,x
L808143:
	jsr $822c
	rep #$20
	lda $045b
	and #$00ff
	sta $3d
	eor #$ffff
	inc A
	sta $3f
	lda $0453,x
	and #$00ff
	bit #$0080
	beq L808164
	ora #$ff00
L808164:
	clc
	adc $0457
	sta $0457
	rep #$20
	lda $045c
	and #$00ff
	sta $41
	eor #$ffff
	inc A
	sta $43
	lda $0455,x
	and #$00ff
	bit #$0080
	beq L808189
	ora #$ff00
L808189:
	clc
	adc $0459
	sta $0459
	sep #$20
	stz $045d
	lda $0137
	lsr
	bcs L8081A8
	jsr $81b6
	lda $08de
	bne L8081B3
	jsr $81f1
	bra L8081B3
L8081A8:
	jsr $81f1
	lda $08de
	bne L8081B3
	jsr $81b6
L8081B3:
	sep #$20
	rts

L8081B6:
	lda $045d
	bne L8081F0
	rep #$20
	lda $0457
	bmi L8081D1
	cmp $3d
	bcc L8081EE
	sbc $3d
	sta $0457
	sep #$20
	lda #$01
	bra L8081DF
L8081D1:
	cmp $3f
	bcs L8081EE
	sec
	sbc $3f
	sta $0457
	sep #$20
	lda #$02
L8081DF:
	ora $0128,y
	sta $0126,y
	sta $0128,y
	sta $012a,y
	inc $045d
L8081EE:
	sep #$20
L8081F0:
	rts

L8081F1:
	lda $045d
	bne L80822B
	rep #$20
	lda $0459
	bmi L80820C
	cmp $41
	bcc L808229
	sbc $41
	sta $0459
	sep #$20
	lda #$04
	bra L80821A
L80820C:
	cmp $43
	bcs L808229
	sec
	sbc $43
	sta $0459
	sep #$20
	lda #$08
L80821A:
	ora $0128,y
	sta $0126,y
	sta $0128,y
	sta $012a,y
	inc $045d
L808229:
	sep #$20
L80822B:
	rts

L80822C:
	lda #$30
	sta $045b
	lda #$30
	sta $045c
	lda $0c18
	beq L80823F
	cmp #$03
	bcc L808246
L80823F:
	lda $074a
	cmp #$04
	bne L80824B
L808246:
	lda #$a0
	sta $045b
L80824B:
	rts

L80824C:
	lda $07de
	inc A
	sta $044e,x
	ldx.b #$01
L808255:
	lda $044d
	and $80808e,x
	beq L80826E
	lda $0450,x
	cmp $044e,x
	beq L80826E
	jsr $8275
	bcs L80826E
	lda $044e,x
L80826E:
	sta $0450,x
	dex
	bpl L808255
	rts

L808275:
	lda #$06
	sta $03
L808279:
	lda #$01
	sta $4016
	lda $4016,x
	stz $4016
	lda #$01
	sta $4016
	lda #$00
	sta $4016
	sta $06
	ldy.b #$0a
L808292:
	lda $4016,x
	dey
	bne L808292
	lda $4016,x
	lsr
	rol $06
	lda $4016,x
	lsr
	rol $06
	lda $06
	cmp $044e,x
	beq L8082B1
	dec $03
	bne L808279
	sec
	rts

L8082B1:
	clc
	rts

L8082B3:
	php
	phb
	phk
	plb
	sep #$30
	lda #$ff
	sta $0468
	ldx #$00
	stx $0469
L8082C3:
	lda $7e4000,x
	cmp #$ff
	beq L808308
	cmp #$fe
	beq L808311
	lda $0466
	cmp $7e4001,x
	bcc L808311
	cmp $7e4003,x
	bcs L808311
	lda $0467
	cmp $7e4002,x
	bcc L808311
	cmp $7e4004,x
	bcs L808311
	lda $7e4000,x
	asl
	lda #$00
	rol
	tay
	lda $045e,y
	and $7e4005,x
	beq L808311
	lda $7e4000,x
	and #$7f
	sta $0468
L808308:
	lda #$ff
	sta $7e4000
	plb
	plp
	rtl

L808311:
	txa
	clc
	adc.w #$aa06
	bra L8082C3
L808318:
	php
	phb
	phk
	plb
	sep #$20
	rep #$10
	ldy #$0000
	ldx $0469
	lda [$00],y
	iny
	sta $7e4000,x
	lda [$00],y
	iny
	sta $7e4001,x
	lda [$00],y
	iny
	sta $7e4002,x
	lda [$00],y
	iny
	sta $7e4003,x
	lda [$00],y
	iny
	sta $7e4004,x
	lda [$00],y
	iny
	sta $7e4005,x
	lda #$ff
	sta $7e4006,x
	rep #$20
	lda $0469
	clc
	adc.w #$0006
	sta $0469
	plb
	plp
	rtl

L808365:
	php
	phb
	phk
	plb
	rep #$30
	xba
	sta $01
	stx $00
	ldx $0469
	ldy #$0000
L808376:
	lda [$00],y
	and #$00ff
	cmp #$00ff
	beq L808395
	lda #$0003
	sta $29
L808385:
	lda [$00],y
	iny
	iny
	sta $7e4000,x
	inx
	inx
	dec $29
	bne L808385
	bra L808376
L808395:
	stx $0469
	lda #$ffff
	sta $7e4000,x
	plb
	plp
	rtl

L8083A2:
	php
	sep #$30
	lda $0466
	clc
	adc $0453
	tax
	php
	lda $0453
	and #$80
	beq L8083BF
	plp
	cpx $0453
	bcc L8083C4
	ldx #$00
	bra L8083C4
L8083BF:
	plp
	bcc L8083C4
	ldx #$ff
L8083C4:
	stx $0466
	lda $0467
	clc
	adc $0455
	tay
	php
	lda $0455
	and #$80
	beq L8083E2
	plp
	cpy $0455
	bcc L8083E6
	ldy #$00
	bra L8083E6
L8083E2:
	plp
	bcc L8083E6
	ldy #$ff
L8083E6:
	sty $0467
	rep #$30
	plp
	rtl

L8083ED:
	php
	lda $0466
	sta $2b
	sep #$30
	lda $04ba
	sta $2a
L8083FA:
	dec $2a
	bpl L808402
	inc $2a
	bra L808424
L808402:
	lda $2a
	sta $4202
	lda $04bc
	sta $4203
	nop
	nop
	nop
	lda $4216
	clc
	adc $04b4
	tax
	clc
	adc $04bc
	cmp $2c
	bcc L8083FA
	cpx $2c
	bcs L8083FA
L808424:
	lda $04b9
	sta $29
L808429:
	dec $29
	bmi L808466
	lda $29
	sta $4202
	lda $04bb
	sta $4203
	nop
	nop
	nop
	lda $4216
	clc
	adc $04b3
	tax
	clc
	adc $04bb
	cmp $2b
	bcc L808429
	cpx $2b
	bcs L808429
	lda $2a
	sta $4202
	lda $04b9
	sta $4203
	nop
	nop
	nop
	lda $4216
	clc
	adc $29
	sta $04bd
L808466:
	plp
	rtl

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

L808824:
	rep #$20
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

L8088B3:
	php
	phb
	phk
	plb
	sep #$20
	lda $f2
	ora #$10
	sta $f2
	sta $4200
	plb
	plp
	rtl

L8088C5:
	php
	phb
	phk
	plb
	sep #$20
	lda $f2
	and #$ef
	sta $4200
	sta $f2
	plb
	plp
	rtl

L8088D7:
	php
	phb
	phk
	plb
	sep #$20
	lda $f2
	ora #$20
	sta $4200
	sta $f2
	plb
	plp
	rtl

L8088E9:
	php
	phb
	phk
	plb
	sep #$20
	lda $f2
	and #$df
	sta $4200
	sta $f2
	plb
	plp
	rtl

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

L8089DC:
	lda $0141,y
	sta $4312
	lda $0142,y
	sta $4313
	lda $0143,y
	sta $4314
	lda $0144,y
	sta $4315
	lda $0145,y
	sta $4316
	lda $0146,y
	sta $2115
	lda $0147,y
	sta $2116
	lda $0148,y
	sta $2117
	lda #$81
	sta $4310
	lda #$39
	sta $4311
	; bug?
	lda $2139
	lda $213a
	lda #$02
	sta $420b
	tya
	clc
	adc #$09
	tay
	jmp $893e
L808A29:
	stx $01
	sty $00
	rep #$10
	ldy #$0000
L808A32:
	lda ($00),y
	beq L808A90
	sta $15
	iny
	lda ($00),y
	sta $4312
	iny
	lda ($00),y
	sta $4313
	iny
	lda ($00),y
	sta $4314
	iny
	lda ($00),y
	sta $4315
	iny
	lda ($00),y
	sta $4316
	iny
	lda $15
	and #$01
	beq L808A6D
	stz $4310
	lda #$22
	sta $4311
	lda ($00),y
	iny
	sta $2121
	bra L808A89
L808A6D:
	lda #$01
	sta $4310
	lda #$18
	sta $4311
	lda ($00),y
	iny
	sta $2115
	lda ($00),y
	iny
	sta $2116
	lda ($00),y
	iny
	sta $2117
L808A89:
	lda #$02
	sta $420b
	bra L808A32
L808A90:
	sep #$10
L808A92:
	rtl

L808A93:
	lda $0203
	beq L808A92
	ldx #$01
	ldy #$c0
	stz $0203
	stz $0204
	stz $0205
	sty $00
	stx $01
	rep #$10
	ldy #$0000
L808AAE:
	lda ($00),y
	beq L808AF0
	iny
	sta $15
	rep #$20
	lda ($00),y
	iny
	iny
	sta $2116
	lda #$0000
	sep #$20
	lda ($00),y
	iny
	sta $2115
	lda $15
	and #$7f
	tax
	lda $15
	and #$80
	rep #$20
	beq L808AE2
	lda ($00),y
L808AD8:
	sta $2118
	dex
	bne L808AD8
	sep #$20
	bra L808AAE
L808AE2:
	lda ($00),y
	iny
	iny
	sta $2118
	dex
	bne L808AE2
	sep #$20
	bra L808AAE
L808AF0:
	sep #$10
	rtl

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

L808B7A:
	php
	phb
	phk
	plb
	rep #$30
	ldy #$0000
	lda #$f400
L808B86:
	cpy $65
	bcs L808B9B
	cpy #$0200
	bcs L808B9B
	sta $0210,y
	sta $0212,y
	iny
	iny
	iny
	iny
	bra L808B86
L808B9B:
	lda $65
	lsr
	lsr
	sta $4204
	xba
	and #$00ff
	ora #$0800
	sta $4205
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	lda $4214
	asl
	sta $15
	lda $4216
	sta $17
	ldx #$0000
L808BC1:
	cpx $15
	bcs L808BCC
	stz $0410,x
	inx
	inx
	bra L808BC1
L808BCC:
	lda $17
	beq L808BE0
	ldy $15
	lda $17
	dec A
	asl
	tax
	lda $0410,y
	and $8c47,x
	sta $0410,y
L808BE0:
	ldy $67
	lda #$f400
L808BE5:
	cpy #$0200
	bcs L808BF6
	sta $0210,y
	sta $0212,y
	iny
	iny
	iny
	iny
	bra L808BE5
L808BF6:
	lda $67
	lsr
	lsr
	sta $4204
	xba
	and #$00ff
	ora #$0800
	sta $4205
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	lda $4214
	asl
	sta $15
	lda $4216
	sta $17
	ldx $15
L808C1B:
	cpx #$0020
	bcs L808C27
	stz $0410,x
	inx
	inx
	bra L808C1B
L808C27:
	lda $17
	beq L808C42
	ldx $15
	lda $17
	dec A
	asl
	tay
	lda $8c47,y
	eor #$ffff
	sta $19
	lda $0410,x
	and $19
	sta $0410,x
L808C42:
	stz $50
	plb
	plp
	rtl

L808C47:
.dw $0003
.dw $000F
.dw $003F
.dw $00FF
.dw $03FF
.dw $0FFF
.dw $3FFF

L808C55:
	php
	phb
	phk
	plb
	sep #$20
	rep #$10
L808C5D:
	sta.l $000000,x
	inx
	dey
	bne L808C5D
	plb
	plp
	rtl

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

L808D88:
	php
	phb
	phk
	plb
	rep #$30
	stz $35
	stz $37
	stz $39
	stz $3b
	ldx #$0020
L808D99:
	lsr $2f
	ror $2d
	bcc L808DAC
	lda $31
	clc
	adc $39
	sta $39
	lda $33
	adc $3b
	sta $3b
L808DAC:
	ror $3b
	ror $39
	ror $37
	ror $35
	dex
	bne L808D99
	plb
	plp
	rtl

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

L808DE5:
	php
	phb
	phk
	plb
	rep #$30
	stz $2f
	stz $2d
	lda $37
	ora $35
	bne L808DFB
	stz $33
	stz $31
	bra L808E22
L808DFB:
	ldx #$0021
	clc
L808DFF:
	rol $31
	rol $33
	dex
	beq L808E22
	rol $2d
	rol $2f
	lda $2f
	ora $2d
	beq L808DFF
	lda $2d
	sec
	sbc $35
	tay
	lda $2f
	sbc $37
	bcc L808DFF
	sta $2f
	sty $2d
	bra L808DFF
L808E22:
	plb
	plp
	rtl


L808E25:
	php
	phb
	phk
	plb
	sep #$30
	lda $04ae
	beq L808E36
	jsl L808E4D
	bra L808E4A
L808E36:
	lda $04af
	beq L808E41
	jsl L808E6D
	bra L808E4A
L808E41:
	lda $04b0
	beq L808E4A
	jsl L808E8D
L808E4A:
	plb
	plp
	rtl

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

L808E64:
DMA_DATA $02 $7E2000 $0800 $80 $2800

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

L808E84:
DMA_DATA $02 $7E2800 $0800 $80 $3800

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

L808EA4:
DMA_DATA $02 $7E3000 $0800 $80 $4800

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

.dw L8087EA

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

.db $FF $FE $FD $FB $F7 $EF $DF $BF $7F
.db $00 $01 $02 $04 $08 $10 $20 $40 $80

.dl L8094EE
.dl L8094F4
.dl L8094FA
.dl L809500
.dl L809506
.dl L80950C
.dl L809512
.dl L809518
.dl L80951E
.dl L809524
.dl L80952A
.dl L809530
.dl L809536
.dl L80953C
.dl L809542
.dl L809548

L8094EE:
.db $01 $00 $00 $00 $00 $31
L8094F4:
.db $01 $00 $00 $00 $01 $31
L8094FA:
.db $01 $00 $00 $00 $02 $31
L809500:
.db $01 $00 $00 $00 $03 $31
L809506:
.db $01 $00 $00 $00 $04 $31
L80950C:
.db $01 $00 $00 $00 $05 $31
L809512:
.db $01 $00 $00 $00 $06 $31
L809518:
.db $01 $00 $00 $00 $07 $31
L80951E:
.db $01 $00 $00 $00 $08 $31
L809524:
.db $01 $00 $00 $00 $09 $31
L80952A:
.db $01 $00 $00 $00 $0A $31
L809530:
.db $01 $00 $00 $00 $0B $31
L809536:
.db $01 $00 $00 $00 $0C $31
L80953C:
.db $01 $00 $00 $00 $0D $31
L809542:
.db $01 $00 $00 $00 $0E $31
L809548:
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

.dw $0000
.dw $0003
.dw $000F
.dw $003F
.dw $00FF
.dw $03FF
.dw $0FFF
.dw $3FFF

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

; unsure if code or data
L809626:
	ldy #$8000
	sty $04
	ldy #$9688
	sty $03
	ldy #$0000

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

L809711:
	rep #$20
	ldy $00
	phy
	ldy $01
	phy
	jsl $809777
	lda $00
	sta $03
	lda $01
	sta $04
	ply
	sty $01
	ply
	sty $00
	ldy #$0000
L80972E:
	lda [$03],y
	and #$00ff
	cmp #$0000
	beq L809776
	phy
	lda $00
	pha
	lda $01
	pha
	lda $03
	pha
	lda $04
	pha
	iny
	lda [$03],y
	pha
	dey
	lda [$03],y
	and #$00ff
	dec A
	tay
	lda #$8000
	sta $04
	lda #$9688
	sta $03
	pla
	jsl L809633
	rep #$20
	pla
	sta $04
	pla
	sta $03
	pla
	sta $01
	pla
	sta $00
	pla
	clc
	adc #$0003
	tay
	bra L80972E
L809776:
	rtl

L809777:
	php
	phy
	rep #$20
	and #$00ff
	asl
	tay
	phy
	lda $00
	sta $15
	ldy #$0000
	lda [$00],y
	clc
	adc $15
	sta $00
	ply
	lda [$00],y
	clc
	adc $15
	sta $00
	ply
	plp
	rtl

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

L809B65:
	rtl

L809B66:
	lda.l $0004c7,x
	sta $01
	lda.l $0004c2,x
	sta $00
	ldy #$0000
	lda [$00],y
	sep #$20
	cmp #$80
	beq L809BF0
	cmp #$81
	beq L809BD2
	pha
	lda.l $0004c9,x
	bit #$10
	beq L809B95
	pla
	eor #$ff
	inc A
	clc
	adc.l $0004ce,x
	bra L809B9B
L809B95:
	pla
	clc
	adc.l $0004ce,x
L809B9B:
	sta.l $0004ce,x
	xba
	pha
	lda.l $0004c9,x
	bit #$20
	beq L809BB4
	pla
	eor #$ff
	inc A
	clc
	adc.l $0004d0,x
	bra L809BBA
L809BB4:
	pla
	clc
	adc.l $0004d0,x
L809BBA:
	sta.l $0004d0,x
L809BBE:
	rep #$20
	lda.l $0004c2,x
	sta $00
	clc
	adc #$0002
	sta.l $0004c2,X
	sep #$20
	bra L809BFA
L809BD2:
	xba
	tay
	lda.l $0004d7,X
	beq L809BE5
	cmp #$01
	beq L809BBE
	dec A
	sta.l $0004d7,X
	bra L809C00
L809BE5:
	tya
	cmp #$01
	beq L809BBE
	sta.l $0004d7,x
	bra L809C00
L809BF0:
	lda.l $0006fe
	ora #$01
	sta.l $0006fe
L809BFA:
	lda #$00
	sta.l $0004d7,X
L809C00:
	rtl

L809C01:
	sep #$20
	lda.l $0004ce,x
	clc
	adc #$01
	sta.l $0004ce,x
	lda.l $0004d7,x
	inc A
	sta.l $0004d7,x
	cmp #$40
	bcc L809C2B
	lda.l $0006fe
	ora #$01
	sta.l $0006fe
	lda #$00
	sta.l $0004d7,x
L809C2B:
	rtl

L809C2C:
	lda $7ebd23,x
	bne L809C3B
	sep #$20
	lda #$01
	sta $0d91
	rep #$20
L809C3B:
	lda.l $0006fe
	ora.w #$0001
	sta.l $0006fe
	rtl

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

L809C62:
	lda $7ebd23,x
	bne L809C71
	sep #$20
	lda #$04
	sta $0d91
	rep #$20
L809C71:
	lda.l $0006fe
	ora #$0001
	sta.l $0006fe
	rtl

L809C7D:
	lda $7ebd23,x
	bne L809C8C
	sep #$20
	lda #$08
	sta $0d91
	rep #$20
L809C8C:
	lda.l $0006fe
	ora #$0001
	sta.l $0006fe
	rtl

L809C98:
	sep #$20
	lda #$20
	sta $0d91
	rep #$20
	lda.l $0006fe
	ora #$0001
	sta.l $0006fe
	rtl

L809CAD:
	lda.l $7ebd23,x
	bne L809CD9
	sep #$20
	lda #$10
	sta $0d91
	rep #$20
	lda $04c7,x
	sta $01
	lda $04be,x
	xba
	sta $00
	ldy #$0001
	lda [$00],y
	and #$00ff
	eor #$00ff
	sep #$20
	sta $0d95
	rep #$20
L809CD9:
	lda.l $0006fe
	ora #$0001
	sta.l $0006fe
	rtl

L809CE5:
	sep #$20
	lda #$00
	sta.l $00051b
	rep #$20
	lda.l $0006fe
	ora #$0001
	sta.l $0006fe
	rtl

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

L809D17:
	sep #$20
	stz $04dc,x
	rep #$20
	lda.l $0006fe
	ora #$0001
	sta.l $0006fe
	rtl

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

.dw $0031
.dw $0032
.dw $0033
.dw $0034
.dw $0035
.dw $00B1
.dw $00B2
.dw $00B3
.dw $00B4
.dw $00B5
.dw $0081
.dw $0082
.dw $0083
.dw $0084
.dw $0085
.dw $0086
.dw $0087
.dw $0088
.dw $0089
.dw $008A
.dw $008B
.dw $008C
.dw $008D
.dw $008E
.dw $008F
.dw $00D1
.dw $00D2
.dw $00D3
.dw $00D4
.dw $00D5
.dw $00D6
.dw $00DA
.dw $00DB
.dw $00DC
.dw $00DE
.dw $0090
.dw $00D7
.dw $00D8
.dw $00D9
.dw $003B
.dw $003C
.dw $003D
.dw $00C5
.dw $003E
.dw $00C6
.dw $005F
.dw $00F4

.dw L809C2C
.dw L809CFB
.dw $9C98
.dw L809C47
.dw $9C62
.dw L809D2A
.dw $9D17
.dw $9C7D
.dw $9CAD
.dw $9CE5

.dw $0000
.dw $0000

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
	bcc L809E5C
	jmp L809FA4

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
	cmp #$80
	lda #00
	rol A
	tax
	lda [$03],Y
	bpl L809F7E
	dec A
	eor #$FF
	bra L809F81
L809F7E:
	eor #$FF
	inc A
L809F81:
	clc
	adc $60, X
L809F84:
	jmp $9EF7

L809F87:
	lda $27
	cmp #$80
	lda #$00
	rol A
	tax
	lda [$03],Y
	bpl L809F98
	dec A
	eor #$FF
	bra L809F9B
L809F98:
	eor #$FF
	inc A
L809F9B:
	clc
	adc $60,X

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
	ldx $54
	lda $0410,x
	and $a03b,y
	iny
	and $a03b,y
	sta $0410,x
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

L80A0DD:
	php
	phb
	phk
	plb
	rep #$30
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
	lda $5a
	asl
	tay
	lda [$00],y
	clc
	adc $00
	sta $03
	lda $7b
	and #$00e0
	asl
	asl
	asl
	xba
	tax
	sep #$20
	lda $a266,x
	sta $60
	lda $a26c,x
	sta $61
	lda $4214
	sta $54
	lda $4216
	asl
	sta $55
	ldy #$0000
	lda [$03],y
	iny
	sta $26
	lda [$03],y
	iny
	sta $27
	lda #$08
	sta $28
	rep #$20
	lda $50
	cmp #$01fd
	bcc L80A146
	plb
	plp
	rtl

L80A146:
	lda #$0000
	sep #$20
	lda $27
	cmp #$80
	inc $55
	phy
	jsr $a272
	ply
	dec $55
	stz $16
	lda $5d
	bit #$20
	bne $7b
	lda [$03],y
	sta $15
	bpl L80A168
	dec $16
L80A168:
	stz $1e
	iny
	lda $5d
	bit #$10
	bne $6d
	lda [$03],y
	sta $1d
	bpl L80A179
	dec $1e
L80A179:
	asl $27
	iny
	rep #$20
	lda $15
	clc
	adc $58
	sta $15
	lda $1d
	clc
	adc $56
	sta $1d
	lda [$03],y
	iny
	iny
	ldx $50
	sta $0212,x
	txa
	clc
	adc #$0004
	sta $50
	sep #$20
	lda $15
	ldx $50
	sta $020d,x
	lda $1e
	cmp #$01
	phy
	jsr $a272
	ply
	lda $1d
	ldx $50
	sta $020c,x
	lda $5c
	bmi L80A218
	lda $5d
	bmi L80A230
	lda $5d
	asl
	bmi L80A22E
	inc $55
	inc $55
	lda $55
	cmp #$08
	bcc L80A1D0
	stz $55
	inc $54
L80A1D0:
	dec $26
	beq L80A215
	dec $28
	beq L80A212
	jmp $a13a
	bra L80A1F8
	pha
	lda $27
	cmp #$80
	lda.w #$2a00
	tax
	lda [$03],y
	bpl L80A1EF
	dec A
	eor #$ff
	bra L80A1F2
L80A1EF:
	eor #$ff
	inc A
L80A1F2:
	clc
	adc $60,x
	jmp $a173
L80A1F8:
	lda $27
	cmp #$80
	lda #$00
	rol
	tax
	lda [$03],y
	bpl L80A209
	dec A
	eor #$ff
	bra L80A20C
L80A209:
	eor #$ff
	inc A
L80A20C:
	clc
	adc $60,x
	jmp $a162
L80A212:
	jmp $a131
L80A215:
	plb
	plp
	rtl

L80A218:
	asl
	and #$0e
	sta $15
	lda $020f,x
	bit #$0e
	beq L80A22B
	and #$f1
	ora $15
	sta $020f,x
L80A22B:
	jmp $a1b9

L80A22E:
	bra L80A252

L80A230:
	asl
	asl
	asl
	asl
	and #$c0
	sta $15
	eor #$ff
	sta $17
	lda $020f,x
	eor $15
	and $15
	sta $15
	lda $020f,x
	and $17
	ora $15
	sta $020f,x
	jmp $a1bd

L80A252:
	asl
	asl
	asl
	and #$30
	sta $15
	lda $020f,x
	and #$cf
	ora $15
	sta $020f,x
	jmp $a1c2

; data
.db $F8 $F8 $F8 $F0 $F0 $E0 $F0
.db $E0 $C0 $E0 $C0 $C0

L80A272:
	sep #$10
	ldy $55
	bcs L80A286
	ldx $54
	lda $0410,x
	and $a03b,y
	sta $0410,x
	rep #$10
	rts

L80A286:
	ldx $54
	lda $0410,x
	and $a03b,y
	ora $a043,y
	sta $0410,x
	rep #$10
	rts

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

DMA_DATA $02 $7E2000 $0800 $80 $2800
DMA_DATA $02 $7E2800 $0800 $80 $3800
DMA_DATA $02 $7E3000 $0800 $80 $4800

L80A68F:
	ldx #$0800
L80A692:
	lda #$0000
	sta $7f27fe,x
	dex
	dex
	bne L80A692
	rts

L80A69E:
	stx $56
	sty $58
	sta $17
	ldx #$0004
L80A6A7:
	phx
	lda $17
	and #$f000
	sep #$20
	xba
	stz $5c
	rep #$20
	lsr
	lsr
	lsr
	lsr
	sta $5a
	lda #$8000
	sta $63
	lda #$94be
	sta $62
	jsl L8093a2
	lda $17
	asl
	asl
	asl
	asl
	sta $17
	lda $56
	clc
	adc #$0008
	sta $56
	plx
	dex
	bne L80A6A7
	rts

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
	sta.l ActiveUnit.EXP
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
	lda.l ActiveUnit.UnitID,X
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
	lda.l ActiveUnit.Weapons,X
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

L80A88A:
	php
	rep #$20
	sty $075b
	cmp $075b
	bne L80A899
	txa
	plp
	sec
	rtl

L80A899:
	dec A
	plp
	clc
	rtl

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

L80AA24:
	php
	rep #$20
	cmp #$ffff
	beq L80AA30
	jsl L80B4BB
L80AA30:
	plp
	rtl

L80AA32:
	php
	rep #$20
	sta $087a
	plp
	rtl

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
	lda.l ActiveUnit.Terrain
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
	lda.l ActiveUnit.Terrain
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
	lda #$0000
	sta $01
	lda #$091b
	clc
	adc $19
	sta $00
	lda $17
	clc
	adc #$2800
	tax
	lda $15
	jsl L80A338
	lda #$0000
	sta $01
	lda #$095b
	clc
	adc $19
	sta $00
	lda $17
	clc
	adc #$2820
	tax
	lda $15
	jsl L80A338
	lda #$0000
	sta $01
	lda #$099b
	clc
	adc $19
	sta $00
	lda $17
	clc
	adc #$3800
	tax
	lda $15
	jsl L80A338
	lda #$0000
	sta $01
	lda #$09db
	clc
	adc $19
	sta $00
	lda $17
	clc
	adc #$3820
	tax
	lda $15
	jsl L80A338
	lda $08e0
	and #$00ff
	beq L80B06C
	lda #$0000
	sta $01
	lda #$0a1b
	clc
	adc $19
	sta $00
	lda $17
	clc
	adc #$4800
	tax
	lda $15
	jsl L80A338
	lda #$0000
	sta $01
	lda #$0a5b
	clc
	adc $19
	sta $00
	lda $17
	clc
	adc #$4820
	tax
	lda $15
	jsl L80A338
L80B06C:
	rts

L80B06D:
	php
	rep #$30
	tax
	stz $15
	ldy #$0000
	lda #$0000
	sep #$20
L80B07B:
	clc
	adc [$00],y
	clc
	adc $15
	inc $15
	iny
	dex
	bpl L80B07B
	plp
	rtl

L80B089:
	php
	rep #$30
	lda $07db
	and #$00ff
	beq L80B09C
	dec A
	beq L80B0A5
	dec A
	beq L80B0C2
L80B09A:
	bra L80B09A
L80B09C:
	lda #$00fa
	jsl L80B4E3
	bra L80B0AC
L80B0A5:
	lda #$03fa
	jsl L80B4E3
L80B0AC:
	sep #$20
	lda $0882
	bit #$02
	beq L80B0B9
	jsl $83f312
L80B0B9:
	lda #$02
	trb $0882
	rep #$20
	plp
	rtl

L80B0C2:
	sep #$20
	lda $0882
	bit #$02
	bne L80B0D6
	lda #$02
	tsb $0882
	rep #$20
	jsl $83f312
L80B0D6:
	plp
	rtl

L80B0D8:
	php
	rep #$20
	pha
	jsl $83D912
	lda.l ActiveUnit.ClassID
	and #$00FF
	jsl $83F1AC
	sta $23
	pla
	and #$0020
	clc
	adc $23
	sta $23
	lda.l ActiveUnit.HasMoved
	and #$0001
	beq L80B109
	lda $23
	and #$00DF
	ora #$0040
	sta $23
L80B109:
	plp
	rtl

L80B10B:
	php
	phb
	sep #$20
	lda #$7f
	pha
	plb
	rep #$30
	lda.l $0008fa
	bit #$00e0
	bne L80B132
	lda.l $0008fb
	bit #$00e0
	bne L80B132
	lda.l $0008fd
	bit #$ff80
	bne L80B132
	bra L80B134
L80B132:
	bra L80B132
L80B134:
	lda #$ffff
	ldx #$3800
	ldy #$0800
	jsl L808CA1
	lda.l $0008fa
	and #$00ff
	tax
	lda.l $0008fb
	and #$00ff
	tay
	jsl L80B39C
	tax
	lda #$ff00
	sta $3800,x
	lda #$0000
	sta $4000
	dec A
	sta $4003
	lda.l $0008fa
	sta $4001
	lda #$ffff
	sta $4004
	stz $8cdc
	sep #$20
L80B178:
	stz $8cde
	ldx #$0000
	stx $8cdf
	stx $8ce1
L80B184:
	ldx $8cdf
	lda $8cdc
	cmp $4000,x
	bcs L80B194
	jsr $b1e5
	bra L80B197
L80B194:
	jsr $b212
L80B197:
	rep #$20
	lda $8cdf
	clc
	adc #$0004
	sta $8cdf
	tax
	sep #$20
	lda $4000,x
	cmp #$ff
	bne L80B184
	lda $8cde
	bne L80B1BA
	ldx $8ce1
	cpx #$0000
	beq L80B1E2
L80B1BA:
	lda $8cdc
	cmp.l $0008fd
	beq L80B1E2
	inc $8cdc
	ldx #$0000
L80B1C9:
	rep #$20
	lda $4200,x
	sta $4000,x
	inx
	inx
	cpx $8ce1
	bcc L80B1C9
	lda #$00ff
	sta $4000,x
	sep #$20
	bra L80B178
L80B1E2:
	plb
	plp
	rtl

L80B1E5:
	sep #$20
	lda #$01
	sta $8cde
	rep #$20
	lda #$4000
	sta $12
	ldy $8cdf
	ldx $8ce1
	lda ($12),y
	iny
	iny
	sta $4200,x
	lda ($12),y
	iny
	iny
	sta $4202,x
	txa
	clc
	adc #$0004
	sta $8ce1
	sep #$20
	rts

L80B212:
	rep #$20
	ldx $8cdf
	lda $4001,x
	sta $27
	lda $4003,x
	and #$00ff
	sta $1f
	jsr $b248
	jsr $b263
	jsr $b27e
	lda $1f
	cmp #$0002
	beq L80B247
	lda $27
	and #$00ff
	tax
	lda $28
	and #$00ff
	tay
	dey
	lda #$0003
	jmp $b299
L80B247:
	rts

L80B248:
	lda $1f
	cmp #$0000
	beq L80B262
	lda $27
	and #$00ff
	tax
	lda $28
	and #$00ff
	tay
	dex
	lda #$0001
	jmp $b299
L80B262:
	rts

L80B263:
	lda $1f
	cmp #$0003
	beq L80B27D
	lda $27
	and #$00ff
	tax
	lda $28
	and #$00ff
	tay
	iny
	lda #$0002
	jmp $b299
L80B27D:
	rts

L80B27E:
	lda $1f
	cmp #$0001
	beq L80B298
	lda $27
	and #$00ff
	tax
	lda $28
	and #$00ff
	tay
	inx
	lda #$0000
	jmp $b299
L80B298:
	rts

L80B299:
	sta $25
	txa
	beq L80B2D5
	and #$ff00
	bne L80B2D5
	tya
	beq L80B2D5
	and #$ff00
	bne L80B2D5
	sep #$30
	txa
	cmp.l $0007d1
	bcs L80B2D5
	tya
	cmp.l $0007d2
	bcs L80B2D5
	rep #$30
	stx $21
	sty $22
	jsl L80B39C
	sta $1b
	tax
	lda $3800,x
	beq L80B2DA
	and #$ff00
	cmp #$ff00
	beq L80B2DA
L80B2D5:
	rep #$30
	jmp $b359
L80B2DA:
	jsl L80B35A
	cmp #$00ff
	bne L80B2E6
	jmp $b359
L80B2E6:
	pha
	lda.l $0008fc
	and #$0001
	beq L80B312
	ldx $1b
	lda $2800,x
	and #$0400
	beq L80B312
	lda.l $0008ed
	and #$0020
	eor #$0020
	sta $15
	lda $2800,x
	and #$0020
	cmp $15
	bne L80B312
	pla
	rts

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
	lda.b #$20
	sta.l WRMPYB
	stz $16
	stx $15
	rep #$30
	lda.l RDMPYL
	clc
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

.db $00 $FC $D0

L80BCD7:
.dl $AC9B41
.dl $ACA69E
.dl $ACB0FB
.dl $ACBC89
.dl $ACC396
.dl $ACCC13
.dl $ACD65D
.dl $ACE0B9
.dl $ACEABF
.dl $ACF671
.dl $ACFFAF
.dl $AD8B4D
.dl $AD9649
.dl $ADA0AC
.dl $ADAB5B
.dl $ADB4A6
.dl $ADBCA5
.dl $ADC7BA
.dl $ADD0D3
.dl $ADDA41
.dl $ADE2B4
.dl $ADEB62
.dl $ADF507
.dl $ADFFCD
.dl $AE87F4
.dl $AE909A
.dl $AE9900
.dl $AEA0AA
.dl $AEA9F8
.dl $AEAEDF
.dl $AEB93C
.dl $AEC3B7
.dl $AECD4A
.dl $AED6B0
.dl $AEDFE4
.dl $AEE70D
.dl $AEEFCD
.dl $AEF0C9
.dl $AEFB77
.dl $AF84AE
.dl $AF8CD6
.dl $AF94B4
.dl $AFA213
.dl $AFA971
.dl $AFB243
.dl $A78000
.dl $A790E5
.dl $A7A0D2
.dl $A7B252
.dl $A7C38F
.dl $A7D5C9
.dl $A7E285
.dl $A7EFED
.dl $A882FB
.dl $A8931F
.dl $A8A9C3
.dl $A8C02D
.dl $A8CDA4
.dl $A8D7F2
.dl $A8E27C
.dl $A8F2E4
.dl $A8FC52
.dl $A9901B
.dl $A99E8F
.dl $A9AF24
.dl $A9BC12
.dl $A9C9A1
.dl $A9D49E
.dl $A9DC7F
.dl $A9ED41
.dl $A9F6C9
.dl $AA829B
.dl $AA8BA2
.dl $AA9959
.dl $AAA0FE
.dl $AAB0EB
.dl $AAC003
.dl $AACEBB
.dl $AADF6B
.dl $AAF168
.dl $AAFBC8
.dl $AB8702
.dl $AB903A
.dl $ABA339
.dl $ABB25E
.dl $ABBD23
.dl $ABCC61
.dl $ABE17D
.dl $ABEC77
.dl $AC87A3
.dl $A786F6
.dl $A795B4
.dl $A7A5EE
.dl $A7B92A
.dl $A7CAA9
.dl $A7DA26
.dl $A7E78E
.dl $A7F71E
.dl $A88849
.dl $A89CC4
.dl $A8B40F
.dl $A8C68F
.dl $A8D0DD
.dl $A8DB67
.dl $A8EADF
.dl $A8F911
.dl $A982ED
.dl $A99337
.dl $A9A21C
.dl $A9B74C
.dl $A9C159
.dl $A9CD38
.dl $A9D7A9
.dl $A9E57F
.dl $A9F1A7
.dl $A9FB77
.dl $AA86A6
.dl $AA9044
.dl $AA9D85
.dl $AAA5CD
.dl $AAB4E5
.dl $AAC6CF
.dl $AAD263
.dl $AAE7AB
.dl $AAF752
.dl $AAFD9A
.dl $AB8DDB
.dl $AB968F
.dl $ABA7D6
.dl $ABB782
.dl $ABC12B
.dl $ABD409
.dl $ABE8DB
.dl $ABF83A
.dl $AC8E13

.db $31 $00 $32 $00
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
