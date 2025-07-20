.BANK 1
.ORG $0000
.BASE $80

.SECTION "Bank1" FORCE

L818000:
	php
	rep #$30
	lda $0c18
	and #$00ff
	asl
	tax
	jsr (L818010,x)
	plp
	rtl

L818010:
.dw L81802C
.dw $810D
.dw $81E0
.dw $9806
.dw $AD6E
.dw $B9B8
.dw $BAAD
.dw $BC4E
.dw $BE11
.dw $C236
.dw $C332
.dw $C401
.dw $C4C1
.dw $C583

L81802C:
	sep #$20
	rep #$20
	lda $0c1a
	and #$00ff
	asl
	tax
	sep #$20
	jsr (L81803E,x)
	rts

L81803E:
.dw $8042
.dw $8093

L818042:
	sep #$20
	jsr $d6de
	ldx #$0303
	lda $085e
	sec
	sbc $0860
	cmp #$08
	bcs L818058
	ldx #$0313
L818058:
	stx $0c1b
	rep #$20
	txa
	clc
	adc #$0100
	sta $0bb5
	sta $0bb3
	sta $0c05
	jsl $81d5a8
	ldx $15
	ldy #$9f64
	lda #$0000
	jsl $81e21f
	sep #$20
	ldx #$3187
	stx $0c08
	lda #$04
	sta $0c07
	jsl $81d77b
	jsl $81d2c6
	jmp $d6c2

L818093:
	rep #$20
	lda #$809c
	jmp $d7f2

L81809B:
	rts

L81809C:
.dw $80AC
.dw $80C2
.dw $809B
.dw $809B
.dw $80E3
.dw $809B
.dw $809B
.dw $809B

L8180AC:
	sep #$20
	dec $0bb6
	dec $0bb6
	lda $0bb6
	cmp #$02
	bne L8180D6
	lda #$0a
	sta $0bb6
	bra L8180D6
	sep #$20
	inc $0bb6
	inc $0bb6
	lda $0bb6
	cmp #$0c
	bne L8180D6
	lda #$04
	sta $0bb6
L8180D6:
	jsl $81d2c6
	lda $0bb6
	sta $0bb4
	jmp $d6c2

L8180E3:
	sep #$20
	lda $0bb6
	sec
	sbc #$04
	lsr
	sta $0c0a
	lda $0c17
	sta $074a
	stz $0c1a
	stz $0c19
	jsl L81D853
	ldx $0bc1
	stx $50
	stx $52
	jsl L80954E
	jmp $d6c2

L81810D:
	sep #$20
	rep #$20
	lda $0c1a
	and #$00ff
	asl
	tax
	sep #$20
	jsr ($811f,x)
	rts

L81811F:
.dw L818123
.dw L818160

L818123:
	sep #$20
	jsr $d6de
	ldx #$0494
	lda.w #$8d03
	tcs
	tsb $1c8d
	tsb $04a9
	sta $0c1d
	lda.w #$8d04
	asl $9c0c,x
	asl
	tsb.w $00a9
	jsl $81d35f
	jsl $81d4ee
	rep #$20
	lda $15
	clc
	adc #$0042
	sta $0bd5
	tax
	lda $0c0a
	jsl $81d6ac
	jmp $d6c2

L818160:
	rep #$20
	lda #$8169
	jmp $d7f2

	rts

.dw $81AD
.dw $81CC
.dw $8168
.dw $8168
.dw $8180
.dw $8179
.dw $8168
.dw $8168

L818179:
	sep #$20
	lda #$ff
	sta $0c0a
	sep #$20
	lda $0c17
	sta $074a
	stz $0c1a
	stz $0c19
	lda #$03
	sta $0c1b
	sta $0c1c
	lda #$04
	sta $0c1d
	lda #$04
	sta $0c1e
	lda #$01
	jsl $81d35f
	jsl $81d4ee
	jmp $d6c2

L8181AD:
	sep #$20
	lda $0c0a
	inc A
	sta $0c0a
	cmp #$64
	beq L8181C7
L8181BA:
	ldx $0bd5
	lda $0c0a
	jsl $81d6ac
	jmp $d6c2

L8181C7:
	stz $0c0a
	bra L8181BA

L8181CC:
	sep #$20
	lda $0c0a
	dec A
	sta $0c0a
	cmp #$ff
	bne L8181BA
	lda #$63
	sta $0c0a
	bra L8181BA

L8181E0:
	sep #$20
	rep #$20
	lda $0c1a
	and #$00ff
	asl
	tax
	sep #$20
	jsr (L8181F2,x)
	rts

L8181F2:
.dw L8181F4

L8181F4:
	sep #$20
	phb
	lda #$81
	pha
	plb
	jsl $81e475
	ldx #$0000
	stx $50
	stx $52
	jsl L8087EA
	jsr $d957
	lda $0c0a
	cmp #$01
	beq L818217
	jmp $821a
L818217:
	jmp $8a15

L81821A:
	sep #$20
	jsr $8325
	lda #$00
	sta $0b0e
	ldx #$0602
	stx $0b10
	jsr $83a3
L81822D:
	jsr $868b
	bcc L818235
L818232:
	brl L8182EB
L818235:
	ldx $0bb5
	cpx #$0201
	bne L818244
	lda #$ff
	sta $0c0a
	bra L818232
L818244:
	jsl $81e46b
	jsr $84de
	cmp #$00
	bne L818251
	bra L81822D
L818251:
	lda $7f5345,x
	cmp #$00
	beq L818268
	lda $07e0
	cmp $0c03
	bcs L81822D
	inc $07e0
	lda #$00
	bra L81826D
L818268:
	dec $07e0
	lda #$01
L81826D:
	sta $7f5345,X
	ldx $0bb3
	phx
	lda $0bb3
	clc
	adc #$02
	sta $0bb3
	ldx $0bd1
	lda $7f5345,x
	ldy #$0005
	jsr $c91f
	plx
	stx $0bb3
	lda $0c01
	dec A
	xba
	lda #$0f
	rep #$20
	sta.l WRMPYA
	nop
	nop
	nop
	lda.l RDMPYL
	sep #$20
	sta $19
	jsr $849a
	sec
	sbc $19
	asl
	asl
	rep #$20
	and #$00ff
	tay
	lda #$0000
	sta $01
	lda #$0210
	clc
	adc $0bc5
	clc
	adc #$0003
	sta $00
	sep #$20
	lda [$00],y
	eor #$02
	sta [$00],y
	jsr $8458
	jsl $81e475
	jsr $d6c2
	rep #$20
	lda #$006f
	jsl L80B467
	jsl L8087EA
	sep #$20
	brl L81822D

L8182EB:
	sep #$20
	jsl $81e46b
	ldx #$0000
	stx $50
	stx $52
	stx $0bc1
	jsl L80954E
	lda #$03
	sta $0c17
	sta $074a
	stz $0c1a
	jsr $8910
	jsl L81D853
	jsl $81e475
	jsr $d6c2
	rep #$20
	lda #$002d
	jsl L80AA16
	sep #$20
	plb
	rts

L818325:
	php
	sep #$20
	lda $07e0
	xba
	lda #$20
	rep #$20
	sta.l WRMPYA
	nop
	nop
	nop
	lda.l RDMPYL
	sep #$20
	tax
L81833E:
	sep #$20
	lda #$01
	sta $7f5345,x
	rep #$20
	txa
	clc
	adc #$0020
	cmp #$05a0
	beq L818355
	tax
	bra L81833E
L818355:
	ldx #$0000
L818358:
	lda $7f5342,x
	and #$0080
	bne L81836C
	txa
	clc
	adc #$0020
	tax
	cpx #$05a0
	bne L818358
L81836C:
	txa
	lsr
	lsr
	lsr
	lsr
	lsr
	tay
	lda #$000f
	jsl $81d718
	cpy #$0000
	beq L818380
	inc A
L818380:
	ora #$0100
	xba
	sta $0c01
	lda #$8900
	sta $01
	lda $07ce
	and #$00ff
	asl
	tax
	lda $89c45c,x
	sta $00
	lda [$00]
	sep #$20
	sta $0c03
	plp
	rts

8183A3:
	php
	rep #$20
	jsl $81e46b
	stz $50
	stz $52
	lda #$0000
	jsl $81d35f
	lda #$0501
	sta $0c1b
	lda #$0c1e
	sta $0c1d
	jsl $81d4ee
	jsr $8458
	ldx $0b10
	stx $0bb5
	stx $0bb3
	jsr $849a
	jsl L81D86F
	jsl L8087EA
	lda.l ActiveUnit.PortraitID
	ldx #$0000
	jsl $81d10f
	jsl $81cdab
	jsl L8087EA
	ldx #$1101
	stx $0c1b
	jsl $81ccd9
	lda $50
	sta $0bc3
	sep #$20
	ldx #$0602
	stx $0c05
	ldx #$3189
	stx $0c08
	lda #$05
	sta $0c07
	jsl $81d77b
	ldx #$060b
	stx $0c05
	jsl $81d77b
	ldx #$0614
	stx $0c05
	jsl $81d77b
	ldx #$3187
	stx $0c08
	ldx #$0201
	stx $0c05
	lda #$01
	sta $0c07
	jsl $81d77b
	ldx $50
	stx $0bc5
	jsr $84f6
	ldx $50
	stx $0bc7
	jsl $81e475
	jsr $d6c2
	jsl L8087EA
	plp
	rts

L818458:
	php
	sep #$20
	ldx #$0042
	ldy #$c638
	lda $0b0e
	inc A
	jsl $81e21f
	lda $0b0e
	beq L818470
L81846E:
	plp
	rts

L818470:
	lda $0c03
	sec
	sbc $07e0
	beq L818482
	ldx #$00aa
	jsl $81d6ac
	bra L81846E
L818482:
	ldx #$00a6
	ldy #$c638
	lda #$00
	jsl $81e21f
	ldx #$00a6
	lda $0c03
	jsl $81d6ac
	bra L81846E

L81849A:
	php
	sep #$20
	lda $0c01
	dec A
	xba
	lda #$0f
	rep #$20
	sta.l WRMPYA
	nop
	nop
	nop
	lda.l RDMPYL
	sep #$20
	sta $17
	stz $18
	lda $0bb6
	sec
	sbc #$06
	lsr
	jsl $87a9e8
	clc
	adc $17
	sta $17
	rep #$20
	lda $0bb5
	and #$00ff
	dec A
	dec A
	tay
	lda #$0009
	jsl $81d718
	clc
	adc $17
	plp
	rts

L8184DE:
	php
	rep #$20
	jsr $849a
	asl
	asl
	asl
	asl
	asl
	tax
	stx $0bd1
	lda $7f5346,x
	and #$00ff
	plp
	rts

L8184F6:
	php
	ldx $0bc5
	stx $50
	stx $52
	sep #$20
	lda $0c01
	dec A
	xba
	lda #$0f
	rep #$20
	sta.l WRMPYA
	nop
	nop
	nop
	lda.l RDMPYL
	sep #$20
	rep #$20
	asl
	asl
	asl
	asl
	asl
	sta $0bd1
	lda #$0602
	sta $0c1b
	lda #$0a1c
	sta $0c1d
	lda #$0002
	jsl $81d35f
	jsl $81d4ee
	ldx #$0606
	stx $0c1b
L81853D:
	sep #$20
	jsr $8606
	lda $0c1b
	clc
	adc #$09
	sta $0c1b
	cmp #$21
	bne L818561
	lda #$06
	sta $0c1b
	inc $0c1c
	inc $0c1c
	lda $0c1c
	cmp #$10
	beq L81857C
L818561:
	rep #$20
	lda $0bd1
	clc
	adc #$0020
	sta $0bd1
	tax
	lda $7f5342,x
	and #$0080
	bne L81857C
	cpx #$05a0
	bne L81853D
L81857C:
	rep #$20
	lda $0c01
	dec A
	and #$00ff
	sta $15
	lda $15
	and #$00ff
	asl
	tax
	jsr (L8185A2,x)
	jsl $81d2c6
	ldx $0bb5
	stx $0bb3
	ldx $50
	stx $0bc7
	plp
	rts

L8185A2:
.dw L8185A8
.dw $85C6
.dw $85F4

L8185A8:
	lda $0c02
	and #$00ff
	cmp #$0002
	bcs L8185B4
	rts

L8185B4:
	ldx #$03ba
	lda #$24fe
	sta $7e3000,x
	lda #$24fa
	sta $7e3040,x
	rts

L8185C6:
	ldx #$01ba
	lda #$a4fa
	sta $7e3000,x
	lda #$24fe
	sta $7e3040,x
	lda $0c02
	and #$00ff
	cmp #$0003
	bcs L8185E3
	rts

L8185E3:
	ldx #$03ba
	lda #$24fe
	sta $7e3000,x
	lda #$24fa
	sta $7e3040,x
	ldx #$01ba
	lda #$a4fa
	sta $7e3000,x
	lda #$24fe
	sta $7e3040,x
	rts

L818606:
	sep #$20
	ldx $0bd1
	lda $7f5346,x
	pha
	jsl $81d5a8
	ldx $15
	ldy #$d662
	pla
	jsl $81e21f
	rep #$20
	lda $17
	sec
	sbc #$0084
	tax
	lda #$00ff
	sta $7e3000,x
	sta $7e3040,x
	sta $7e3002,x
	sta $7e3042,x
	lda $0c1b
	sec
	sbc #$0002
	sta $0bb3
	ldx $0bd1
	lda $7f5345,x
	ldy #$0005
	jsr $c91f
	sep #$20
	ldx $0bb3
	stx $0c05
	lda #$01
	sta $0c07
	ldx $0bd1
	lda $7f5345,x
	asl
	sta $27
	lda #$38
	ora $27
	sta $0c09
	lda $7f5331,x
	asl
	sta $27
	lda $7f5331,x
	and #$f8
	asl
	clc
	adc #$40
	clc
	adc $27
	sta $0c08
	jsl $81d77b
	rts

L81868B:
	php
	rep #$20
	jsl L8087EA
	pea $868b
	lda $0127
	and #$1000
	bne L8186A4
	lda #$86a7
	jmp $d7f2

L8186A3:
	rts

L8186A4:
	jmp $87b5

.dw L8186B7
.dw $86ED
.dw $873B
.dw $8773
.dw $87C4
.dw $87B1
.dw $87C8
.dw $86A3

L8186B7:
	sep #$20
	lda $0bb6
	cmp #$02
	bne L8186C1
	rts

L8186C1:
	lda $0bb6
	cmp #$06
	beq L8186d1
	dec $0bb6
	dec $0bb6
	jmp $88af
L8186d1:
	lda $0c01
	cmp #$01
	beq L8186EA
	dec $0c01
	lda #$0e
	sta $0bb6
	jsl $81e46b
	jsr $84f6
	jmp $88af
L8186EA:
	brl L8187A0

L8186ED:
	sep #$20
	lda $0bb6
	cmp #$02
	bne L8186FF
	ldx #$0602
	stx $0bb5
	jmp $88af
L8186FF:
	lda $0bb6
	cmp #$0e
	beq L81871A
	inc $0bb6
	inc $0bb6
	jsr $84de
	lda $7f5342,x
	and #$80
	bne L818734
	jmp $88af
L81871A:
	lda $0c01
	cmp $0c02
	beq L81873A
	inc $0c01
	lda #$06
	sta $0bb6
	jsl $81e46b
	jsr $84f6
	jmp $8758
L818734:
	dec $0bb6
	dec $0bb6
L81873A:
	rts

L81873B:
	sep #$20
	lda $0bb6
	cmp #$02
	bne L818745
	rts

L818745:
	lda $0bb5
	sec
	sbc #$09
	bmi L818753
	sta $0bb5
	jmp $88af
L818753:
	lda #$14
	sta $0bb5
L818758:
	jsr $84de
	lda $7f5342,x
	and #$80
	beq L818770
	lda $0bb5
	sec
	sbc #$09
	sta $0bb5
	cmp #$02
	bne L818758
L818770:
	jmp $88af
L818773:
	sep #$20
	lda $0bb6
	cmp #$02
	bne L81877D
	rts

L81877D:
	lda $0bb5
	clc
	adc #$09
	cmp #$1d
	beq L818798
	sta $0bb5
	jsr $84de
	lda $7f5342,x
	and #$80
	bne L818798
	jmp $88af
L818798:
	lda #$02
	sta $0bb5
	jmp $88af

L8187A0:
	sep #$20
	lda $0b0e
	beq L8187A8
	rts

L8187A8:
	ldx #$0201
	stx $0bb5
	jmp $88af

L8187B1:
	ply
	plp
	sec
	rts

L8187B5:
	sep #$20
	lda $0b0e
	beq L8187BD
	rts

L8187BD:
	lda #$ff
	sta $0c0a
	bra L8187B1

8187C4:
	ply
	plp
	clc
	rts

.db $C2 $20 $22 $6B $E4 $81 $A9 $00
.db $00 $22 $B6 $D1 $81 $22 $EA $87
.db $80 $A9 $01 $00 $A2 $00 $7F $86
.db $0D $A2 $28 $44 $86 $0C $22 $C0
.db $D1 $81 $22 $EA $87 $80 $A9 $00
.db $00 $AE $C7 $0B $22 $36 $DE $93
.db $AE $C3 $0B $AC $C7 $0B $22 $8D
.db $A9 $87 $AD $C7 $0B $85 $50 $85
.db $52 $A2 $00 $7F $86 $0D $A2 $28
.db $44 $86 $0C $A9 $01 $00 $22 $C0
.db $D1 $81 $A2 $01 $01 $8E $1B $0C
.db $20 $0E $CE $A5 $50 $48 $64 $50
.db $64 $52 $A9 $01 $11 $8D $1B $0C
.db $22 $CF $CA $81 $68 $85 $50 $85
.db $52 $A9 $10 $1B $8D $1B $0C $22
.db $A8 $D5 $81 $A6 $15 $A0 $0F $00
.db $A9 $FF $00 $9F $00 $30 $7E $E8
.db $E8 $88 $D0 $F7 $A9 $03 $00 $22
.db $F8 $D6 $81 $22 $75 $E4 $81 $20
.db $C2 $D6 $22 $EA $87 $80 $AD $27
.db $01 $29 $40 $80 $D0 $02 $80 $F2
.db $22 $6B $E4 $81 $A9 $10 $00 $A2
.db $01 $00 $A0 $01 $00 $22 $A3 $A9
.db $87 $22 $67 $DE $93 $A9 $00 $00
.db $85 $50 $85 $52 $A2 $01 $11 $8E
.db $1B $0C $22 $D9 $CC $81 $AD $C7
.db $0B $85 $50 $85 $52 $22 $4E $95
.db $80 $22 $75 $E4 $81 $A9 $02 $00
.db $22 $F8 $D6 $81 $4C $C2 $D6 $C2
.db $20 $22 $6B $E4 $81 $AD $B5 $0B
.db $C9 $01 $02 $D0 $16 $22 $C6 $D2
.db $81 $AD $B5 $0B $8D $B3 $0B $22
.db $75 $E4 $81 $20 $C2 $D6 $22 $EA
.db $87 $80 $60 $20 $9A $84 $22 $6F
.db $D8 $81 $22 $C6 $D2 $81 $AD $B5
.db $0B $8D $B3 $0B $A9 $00 $00 $85
.db $50 $85 $52 $A2 $01 $11 $8E $1B
.db $0C $22 $D9 $CC $81 $22 $EA $87
.db $80 $22 $75 $E4 $81 $A2 $00 $00
.db $AF $17 $44 $7F $22 $0F $D1 $81
.db $22 $AB $CD $81 $20 $C2 $D6 $60
.db $08 $C2 $20 $A9 $00 $7F $85 $01
.db $A9 $00 $38 $85 $00 $A9 $00 $7E
.db $85 $04 $A9 $FE $40 $85 $03 $A2
.db $00 $00 $E0 $A0 $05 $F0 $54 $BF
.db $45 $53 $7F $29 $FF $00 $F0 $08
.db $8A $18 $69 $20 $00 $AA $80 $EA
.db $A0 $00 $00 $BF $30 $53 $7F $97
.db $00 $C8 $C8 $E8 $E8 $C0 $20 $00
.db $D0 $F1 $A5 $00 $18 $69 $20 $00
.db $85 $00 $A0 $00 $00 $8A $38 $E9
.db $20 $00 $4A $AA $BF $D0 $58 $7F
.db $97 $03 $C8 $C8 $E8 $E8 $C0 $10
.db $00 $D0 $F1 $A5 $03 $18 $69 $10
.db $00 $85 $03 $A0 $00 $00 $8A $0A
.db $AA $80 $A7 $A2 $00 $00 $E0 $A0
.db $05 $F0 $54 $BF $45 $53 $7F $29
.db $FF $00 $D0 $08 $8A $18 $69 $20
.db $00 $AA $80 $EA $A0 $00 $00 $BF
.db $30 $53 $7F $97 $00 $C8 $C8 $E8
.db $E8 $C0 $20 $00 $D0 $F1 $A5 $00
.db $18 $69 $20 $00 $85 $00 $A0 $00
.db $00 $8A $38 $E9 $20 $00 $4A $AA
.db $BF $D0 $58 $7F $97 $03 $C8 $C8
.db $E8 $E8 $C0 $10 $00 $D0 $F1 $A5
.db $03 $18 $69 $10 $00 $85 $03 $A0
.db $00 $00 $8A $0A $AA $80 $A7 $A2
.db $00 $00 $A0 $00 $00 $A9 $00 $38
.db $85 $00 $B7 $00 $9F $30 $53 $7F
.db $C8 $C8 $E8 $E8 $E0 $A0 $05 $D0
.db $F1 $A2 $00 $00 $A0 $00 $00 $A9
.db $FE $40 $85 $03 $B7 $03 $9F $D0
.db $58 $7F $C8 $C8 $E8 $E8 $E0 $D0
.db $02 $D0 $F1 $28 $60 $E2 $20 $20
.db $25 $83 $A9 $01 $8D $0E $0B $A2
.db $02 $06 $8E $10 $0B $20 $A3 $83
.db $20 $8B $86 $90 $03 $82 $BB $F8
.db $E2 $20 $AD $01 $0C $8D $0D $0B
.db $AE $B5 $0B $8E $10 $0B $A2 $03
.db $0C $8E $12 $0B $20 $BB $95 $20
.db $8D $96 $90 $13 $22 $EA $87 $80
.db $20 $57 $D9 $20 $E0 $D8 $22 $AE
.db $D8 $81 $20 $A3 $83 $80 $C9 $C2
.db $20 $AD $62 $0B $29 $FF $00 $0A
.db $AA $BF $72 $8A $81 $85 $15 $6C
.db $15 $00 $7E $8A $93 $8C $4D $8D
.db $44 $8D $7C $8A $80 $C9 $E2 $20
.db $AE $B5 $0B $8E $12 $0B $9C $61
.db $0B $20 $DA $8E $90 $0B $AE $12
.db $0B $8E $B5 $0B $8E $B3 $0B $80
.db $AE $A9 $01 $8D $00 $0C $A2 $01
.db $0E $8E $18 $0B $20 $04 $91 $20
.db $9B $93 $90 $1B $AF $00 $44 $7F
.db $22 $23 $A9 $87 $22 $AE $D8 $81
.db $A2 $12 $0B $8E $B5 $0B $8E $B3
.db $0B $20 $BB $95 $82 $80 $FF $E2
.db $20 $AE $B5 $0B $8E $18 $0B $20
.db $66 $93 $BF $02 $38 $7F $C9 $FF
.db $F0 $CA $C9 $0C $D0 $03 $82 $95
.db $00 $C2 $20 $22 $01 $D9 $81 $20
.db $66 $93 $BF $03 $38 $7F $29 $FF
.db $00 $0A $0A $0A $0A $0A $AA $BF
.db $30 $53 $7F $29 $FF $00 $22 $23
.db $A9 $87 $22 $6F $D8 $81 $22 $01
.db $D9 $81 $20 $66 $93 $BF $02 $38
.db $7F $E2 $20 $8D $25 $0B $AD $14
.db $0C $F0 $09 $AD $25 $0B $38 $E9
.db $08 $8D $25 $0B $22 $FF $96 $87
.db $A0 $00 $00 $B7 $0C $C9 $FF $F0
.db $07 $C8 $C0 $04 $00 $D0 $F4 $88
.db $98 $8D $24 $0B $A9 $01 $8D $1E
.db $0B $22 $BD $96 $81 $22 $B2 $DC
.db $81 $22 $BD $96 $81 $22 $EA $87
.db $80 $A9 $00 $22 $B6 $D1 $81 $22
.db $EA $87 $80 $A9 $01 $A2 $00 $7F
.db $86 $0D $A2 $28 $44 $86 $0C $22
.db $C0 $D1 $81 $20 $99 $8F $20 $49
.db $8C $C2 $20 $82 $C1 $00 $E2 $20
.db $AE $B5 $0B $8E $18 $0B $22 $FF
.db $96 $87 $A0 $00 $00 $B7 $0C $C9
.db $FF $F0 $07 $C8 $C0 $04 $00 $D0
.db $F4 $88 $98 $8D $26 $0B $A9 $04
.db $A2 $0A $00 $A0 $01 $00 $22 $A3
.db $A9 $87 $20 $4E $E0 $90 $1B $C2
.db $20 $AE $18 $0B $8E $B5 $0B $22
.db $C6 $D2 $81 $AD $B5 $0B $8D $B3
.db $0B $20 $B8 $91 $20 $C2 $D6 $82
.db $E5 $FE $C2 $20 $A5 $0C $48 $A5
.db $0D $48 $5A $AE $18 $0B $8E $B5
.db $0B $20 $66 $93 $BF $03 $38 $7F
.db $29 $FF $00 $AA $BF $30 $50 $7F
.db $85 $15 $7A $68 $85 $0D $68 $85
.db $0C $E2 $20 $B7 $0C $9F $30 $50
.db $7F $C8 $C8 $C8 $C8 $B7 $0C $9F
.db $31 $50 $7F $A5 $16 $97 $0C $88
.db $88 $88 $88 $A5 $15 $97 $0C $C2
.db $20 $22 $9B $97 $81 $22 $C6 $D9
.db $81 $20 $99 $8F $20 $49 $8C $22
.db $EA $87 $80 $A9 $00 $00 $22 $B6
.db $D1 $81 $22 $EA $87 $80 $A9 $01
.db $00 $A2 $00 $7F $86 $0D $A2 $28
.db $44 $86 $0C $22 $C0 $D1 $81 $AF
.db $00 $38 $7F $29 $FF $00 $C9 $FF
.db $00 $D0 $03 $82 $66 $FE $82 $5B
.db $FE $08 $E2 $20 $AD $FF $0B $18
.db $69 $01 $85 $15 $AD $00 $0C $C5
.db $15 $90 $0F $CE $00 $0C $A2 $0F
.db $18 $8E $B5 $0B $8E $B3 $0B $8E
.db $18 $0B $AE $18 $0B $8E $B5 $0B
.db $20 $66 $93 $B0 $08 $AE $B5 $0B
.db $8E $18 $0B $28 $60 $C2 $20 $AD
.db $D9 $0B $38 $ED $D5 $0B $4A $4A
.db $3A $0A $AA $BD $F9 $92 $8D $18
.db $0B $28 $60 $E2 $20 $A9 $02 $8D
.db $0F $0B $8D $1E $0B $82 $B4 $00
.db $E2 $20 $98 $8D $24 $0B $A9 $01
.db $8D $01 $0C $A9 $02 $8D $0E $0B
.db $AE $10 $0B $8E $16 $0B $A2 $02
.db $06 $8E $10 $0B $22 $01 $D9 $81
.db $22 $BD $96 $81 $20 $57 $D9 $20
.db $A3 $83 $20 $8B $86 $90 $3D $22
.db $BD $96 $81 $AD $0D $0B $8D $01
.db $0C $AE $16 $0B $8E $10 $0B $8E
.db $B5 $0B $8E $B3 $0B $20 $9A $84
.db $22 $6F $D8 $81 $22 $EA $87 $80
.db $AF $17 $44 $7F $A2 $00 $00 $22
.db $0F $D1 $81 $A9 $00 $22 $B6 $D1
.db $81 $A9 $01 $8D $0E $0B $20 $BB
.db $95 $4C $47 $8A $20 $DE $84 $CD
.db $84 $0B $D0 $03 $4C $CA $8C $20
.db $9A $84 $22 $6F $D8 $81 $22 $FF
.db $96 $87 $A0 $00 $00 $B7 $0C $C9
.db $FF $F0 $07 $C8 $C0 $04 $00 $D0
.db $F4 $88 $98 $8D $25 $0B $22 $01
.db $D9 $81 $22 $BD $96 $81 $22 $B2
.db $DC $81 $80 $8B $E2 $20 $A9 $01
.db $8D $0F $0B $80 $07 $E2 $20 $A9
.db $00 $8D $0F $0B $E2 $20 $A2 $10
.db $02 $8E $B5 $0B $AF $20 $44 $7F
.db $C9 $FF $D0 $26 $A2 $10 $0C $8E
.db $B5 $0B $AF $28 $44 $7F $C9 $FF
.db $D0 $18 $AD $0F $0B $F0 $04 $A9
.db $07 $80 $02 $A9 $03 $22 $E6 $E3
.db $81 $AE $12 $0B $8E $B5 $0B $82
.db $BD $FC $AD $0F $0B $D0 $15 $22
.db $1E $AC $87 $90 $0F $A9 $00 $22
.db $E6 $E3 $81 $AE $12 $0B $8E $B5
.db $0B $82 $A3 $FC $AE $B5 $0B $8E
.db $B3 $0B $22 $C6 $D2 $81 $AE $B5
.db $0B $8E $B3 $0B $20 $C2 $D6 $20
.db $88 $B0 $90 $2B $C2 $20 $AF $00
.db $44 $7F $22 $23 $A9 $87 $22 $AE
.db $D8 $81 $AE $12 $0B $8E $B5 $0B
.db $22 $C6 $D2 $81 $AE $B5 $0B $8E
.db $B3 $0B $A9 $BE $00 $22 $16 $AA
.db $80 $20 $C2 $D6 $82 $60 $FC $E2
.db $20 $DA $7A $C9 $00 $D0 $0C $A2
.db $00 $7F $86 $10 $A2 $20 $44 $86
.db $0F $80 $0A $A2 $00 $7F $86 $10
.db $A2 $28 $44 $86 $0F $E2 $20 $8D
.db $14 $0C $AD $0F $0B $F0 $0A $C9
.db $01 $F0 $03 $4C $A0 $8C $4C $9F
.db $8E $B7 $0F $85 $15 $C8 $C8 $C8
.db $C8 $B7 $0F $85 $16 $A9 $FF $97
.db $0F $88 $88 $88 $88 $97 $0F $C2
.db $20 $A5 $15 $22 $D4 $AB $87 $22
.db $9B $97 $81 $E2 $20 $20 $08 $95
.db $22 $1E $AC $87 $90 $03 $4C $BC
.db $8D $AD $14 $0C $D0 $39 $AF $20
.db $44 $7F $C9 $FF $D0 $10 $AF $28
.db $44 $7F $C9 $FF $F0 $E8 $A2 $10
.db $0C $8E $B5 $0B $80 $11 $AD $B6
.db $0B $C9 $02 $F0 $0A $C9 $0C $F0
.db $06 $CE $B6 $0B $CE $B6 $0B $22
.db $C6 $D2 $81 $AE $B5 $0B $8E $B3
.db $0B $20 $C2 $D6 $4C $B7 $8D $AF
.db $28 $44 $7F $C9 $FF $D0 $D7 $AF
.db $20 $44 $7F $C9 $FF $F0 $AF $A2
.db $10 $02 $8E $B5 $0B $80 $D8 $C2
.db $20 $5A $B7 $0F $22 $2F $EE $83
.db $90 $0B $7A $A9 $01 $00 $22 $E6
.db $E3 $81 $4C $B7 $8D $E2 $20 $7A
.db $5A $22 $82 $B2 $81 $90 $04 $7A
.db $4C $B7 $8D $7A $A9 $FF $97 $0F
.db $C8 $C8 $C8 $C8 $97 $0F $22 $9B
.db $97 $81 $E2 $20 $20 $08 $95 $82
.db $6F $FF $08 $C2 $20 $22 $6B $E4
.db $81 $A5 $50 $48 $A2 $0B $00 $A0
.db $00 $00 $A9 $06 $00 $22 $A3 $A9
.db $87 $A2 $0D $0B $8E $1B $0C $22
.db $A8 $D5 $81 $A6 $15 $A0 $38 $C6
.db $A9 $05 $00 $22 $1F $E2 $81 $A9
.db $0D $0C $8D $05 $0C $A9 $CD $31
.db $8D $08 $0C $E2 $20 $A9 $02 $8D
.db $07 $0C $22 $7B $D7 $81 $9C $63
.db $0B $C2 $20 $A9 $0D $0C $8D $B5
.db $0B $8D $B3 $0B $22 $C6 $D2 $81
.db $A2 $0D $0C $8E $5D $0B $A2 $0D
.db $0E $8E $5F $0B $20 $C2 $D6 $22
.db $75 $E4 $81 $22 $4E $E3 $81 $AD
.db $62 $0B $29 $FF $00 $C9 $FF $00
.db $D0 $2A $C2 $20 $22 $6B $E4 $81
.db $68 $85 $50 $85 $52 $22 $4E $95
.db $80 $A2 $0B $00 $A0 $01 $00 $A9
.db $06 $00 $22 $A3 $A9 $87 $20 $C2
.db $D6 $22 $75 $E4 $81 $22 $EA $87
.db $80 $28 $38 $60 $E2 $20 $8D $14
.db $0C $C2 $20 $20 $99 $8F $A2 $00
.db $00 $BF $00 $38 $7F $29 $FF $00
.db $C9 $FF $00 $F0 $AE $68 $28 $18
.db $60 $08 $E2 $20 $A9 $D7 $8D $04
.db $0C $AD $14 $0C $F0 $05 $A9 $28
.db $8D $04 $0C $C2 $20 $22 $1E $DD
.db $93 $A9 $00 $7F $85 $01 $A9 $00
.db $38 $85 $00 $A9 $00 $7F $85 $04
.db $A9 $D0 $58 $85 $03 $20 $E6 $8F
.db $AE $9E $0B $20 $2B $90 $AD $9E
.db $0B $4A $4A $22 $8A $DD $93 $AD
.db $D9 $0B $38 $E9 $00 $38 $8D $D9
.db $0B $20 $EA $90 $28 $60 $08 $C2
.db $20 $A2 $00 $00 $A0 $00 $00 $BF
.db $30 $50 $7F $29 $FF $00 $C9 $FF
.db $00 $F0 $25 $22 $70 $97 $81 $B0
.db $04 $E8 $E8 $80 $16 $BF $30 $50
.db $7F $97 $00 $8A $EB $29 $00 $FF
.db $09 $0C $00 $C8 $C8 $97 $00 $C8
.db $C8 $E8 $E8 $E0 $00 $01 $D0 $CF
.db $8C $9E $0B $98 $18 $65 $00 $85
.db $00 $28 $60 $08 $C2 $20 $A5 $03
.db $38 $E9 $D0 $58 $0A $C9 $A0 $05
.db $B0 $2B $AA $BF $42 $53 $7F $29
.db $80 $00 $D0 $21 $AF $00 $44 $7F
.db $29 $FF $00 $85 $15 $BF $30 $53
.db $7F $29 $FF $00 $C5 $15 $F0 $03
.db $20 $75 $90 $A5 $03 $18 $69 $10
.db $00 $85 $03 $80 $C9 $A5 $00 $8D
.db $D9 $0B $A9 $FF $FF $87 $00 $E6
.db $00 $87 $00 $28 $60 $08 $C2 $20
.db $A9 $00 $00 $8D $A1 $0B $A9 $04
.db $00 $8D $A4 $0B $20 $98 $90 $A9
.db $08 $00 $8D $A1 $0B $A9 $0C $00
.db $8D $A4 $0B $20 $98 $90 $28 $60
.db $AC $A1 $0B $B7 $03 $29 $FF $00
.db $C9 $FF $00 $F0 $06 $22 $70 $97
.db $81 $B0 $07 $C8 $CC $A4 $0B $D0
.db $EA $60 $B7 $03 $29 $FF $00 $85
.db $15 $C8 $C8 $C8 $C8 $B7 $03 $EB
.db $29 $00 $FF $05 $15 $87 $00 $88
.db $88 $88 $88 $98 $29 $FF $00 $85
.db $15 $A5 $03 $38 $E9 $D0 $58 $4A
.db $4A $4A $4A $EB $05 $15 $E6 $00
.db $E6 $00 $87 $00 $E6 $00 $E6 $00
.db $80 $C1 $08 $C2 $20 $AC $D9 $0B
.db $A9 $30 $00 $22 $18 $D7 $81 $C0
.db $00 $00 $F0 $01 $1A $E2 $20 $8D
.db $FF $0B $28 $60 $08 $C2 $20 $22
.db $6B $E4 $81 $22 $53 $D8 $81 $64
.db $50 $64 $52 $AD $14 $0C $29 $FF
.db $00 $D0 $05 $A9 $20 $00 $80 $03
.db $A9 $28 $00 $85 $15 $E2 $20 $A9
.db $81 $85 $5C $AD $14 $0C $8D $16
.db $0C $C2 $20 $A9 $00 $7F $85 $0D
.db $A9 $00 $44 $18 $65 $15 $85 $0C
.db $A2 $01 $01 $8E $1B $0C $A9 $00
.db $00 $85 $5E $A9 $00 $00 $AD $14
.db $0C $29 $FF $00 $22 $0B $CB $81
.db $E2 $20 $A2 $87 $31 $8E $08 $0C
.db $A2 $01 $0E $8E $05 $0C $A9 $06
.db $8D $07 $0C $22 $7B $D7 $81 $A2
.db $89 $31 $8E $08 $0C $A2 $0F $0E
.db $8E $05 $0C $A9 $06 $8D $07 $0C
.db $22 $7B $D7 $81 $C2 $20 $A6 $50
.db $8E $C9 $0B $20 $79 $92 $A9 $04
.db $00 $A2 $0A $00 $A0 $00 $00 $22
.db $A3 $A9 $87 $AE $18 $0B $8E $B5
.db $0B $8E $B3 $0B $22 $C6 $D2 $81
.db $20 $B8 $91 $A5 $50 $85 $52 $22
.db $4E $95 $80 $20 $13 $93 $28 $60
.db $08 $E2 $20 $A9 $04 $A2 $0A $00
.db $A0 $01 $00 $22 $A3 $A9 $87 $20
.db $66 $93 $BF $02 $38 $7F $C9 $FF
.db $D0 $02 $28 $60 $A2 $02 $0A $AD
.db $B5 $0B $C9 $01 $D0 $03 $A2 $10
.db $0A $8E $1B $0C $86 $1F $A2 $0B
.db $04 $8E $1D $0C $A9 $04 $22 $5F
.db $D3 $81 $22 $EE $D4 $81 $C2 $20
.db $20 $66 $93 $BF $02 $38 $7F $29
.db $FF $00 $C9 $0C $00 $F0 $57 $C9
.db $04 $00 $10 $04 $1A $48 $80 $05
.db $38 $E9 $07 $00 $48 $BF $03 $38
.db $7F $29 $FF $00 $0A $0A $0A $0A
.db $0A $AA $BF $46 $53 $7F $29 $FF
.db $00 $48 $A5 $1F $18 $69 $01 $01
.db $8D $1B $0C $22 $A8 $D5 $81 $A6
.db $15 $A0 $62 $D6 $68 $22 $1F $E2
.db $81 $8A $18 $69 $04 $00 $AA $68
.db $22 $AC $D6 $81 $8A $38 $E9 $08
.db $00 $AA $A0 $BC $A9 $A9 $01 $00
.db $22 $1F $E2 $81 $80 $19 $A5 $1F
.db $18 $69 $01 $01 $8D $1B $0C $22
.db $A8 $D5 $81 $A6 $15 $A0 $BC $A9
.db $A9 $02 $00 $22 $1F $E2 $81 $28
.db $60 $08 $C2 $20 $A2 $01 $0D $8E
.db $1B $0C $A2 $1E $0E $8E $1D $0C
.db $A9 $00 $00 $22 $5F $D3 $81 $22
.db $EE $D4 $81 $9C $A4 $0B $AE $A4
.db $0B $BD $F9 $92 $C9 $FF $FF $F0
.db $46 $8D $B5 $0B $20 $66 $93 $B0
.db $3E $48 $22 $65 $EE $83 $B0 $05
.db $A0 $00 $00 $80 $03 $A0 $01 $00
.db $5A $AE $A4 $0B $BD $F9 $92 $18
.db $69 $02 $00 $8D $1B $0C $22 $A8
.db $D5 $81 $A6 $15 $7A $AD $A4 $0B
.db $4A $8D $9E $0B $A9 $40 $00 $8D
.db $A1 $0B $68 $22 $36 $C7 $81 $EE
.db $A4 $0B $EE $A4 $0B $80 $AF $A2
.db $BA $03 $8E $04 $0B $A2 $7A $06
.db $8E $06 $0B $22 $24 $E8 $81 $28
.db $60 $01 $0E $0F $0E $01 $10 $0F
.db $10 $01 $12 $0F $12 $01 $14 $0F
.db $14 $01 $16 $0F $16 $01 $18 $0F
.db $18 $FF $FF $08 $C2 $20 $20 $42
.db $93 $E2 $20 $A0 $00 $00 $A2 $00
.db $00 $B7 $00 $C9 $FF $F0 $0D $9D
.db $36 $0B $C8 $C8 $C8 $C8 $E8 $E0
.db $0C $00 $D0 $ED $A9 $FE $9D $36
.db $0B $A0 $00 $64 $22 $86 $E4 $81
.db $28 $60 $08 $C2 $20 $AD $00 $0C
.db $29 $FF $00 $3A $A0 $30 $00 $22
.db $33 $D7 $81 $8D $D5 $0B $A9 $00
.db $7F $85 $01 $A9 $00 $38 $18 $6D
.db $D5 $0B $85 $00 $28 $60 $08 $C2
.db $20 $20 $42 $93 $AD $B6 $0B $29
.db $FF $00 $38 $E9 $0E $00 $0A $0A
.db $18 $6D $D5 $0B $AA $AD $B5 $0B
.db $29 $FF $00 $C9 $01 $00 $F0 $04
.db $E8 $E8 $E8 $E8 $EC $D9 $0B $B0
.db $07 $BF $00 $38 $7F $28 $18 $60
.db $28 $38 $60 $C2 $20 $22 $EA $87
.db $80 $AD $29 $01 $89 $00 $08 $D0
.db $23 $89 $00 $04 $D0 $21 $89 $00
.db $02 $D0 $1F $89 $00 $01 $D0 $1A
.db $AD $27 $01 $89 $80 $00 $D0 $18
.db $89 $00 $80 $D0 $16 $89 $40 $00
.db $D0 $14 $80 $CF $4C $E1 $93 $4C
.db $14 $94 $4C $54 $94 $4C $54 $94
.db $4C $79 $94 $4C $97 $94 $4C $9B
.db $94 $AD $B6 $0B $29 $FF $00 $C9
.db $0E $00 $F0 $09 $CE $B6 $0B $CE
.db $B6 $0B $82 $FE $00 $AD $00 $0C
.db $29 $FF $00 $C9 $01 $00 $D0 $02
.db $80 $99 $CE $00 $0C $AD $B5 $0B
.db $29 $FF $00 $09 $00 $18 $8D $B5
.db $0B $82 $9E $00 $AD $B6 $0B $29
.db $FF $00 $C9 $18 $00 $F0 $17 $EE
.db $B6 $0B $EE $B6 $0B $20 $66 $93
.db $90 $09 $CE $B6 $0B $CE $B6 $0B
.db $82 $68 $FF $82 $BD $00 $E2 $20
.db $AD $00 $0C $CD $FF $0B $B0 $F0
.db $EE $00 $0C $A9 $0E $8D $B6 $0B
.db $20 $66 $93 $90 $05 $A9 $01 $8D
.db $B5 $0B $80 $5E $E2 $20 $AD $B5
.db $0B $C9 $01 $F0 $08 $A9 $01 $8D
.db $B5 $0B $82 $8E $00 $A9 $0F $8D
.db $B5 $0B $20 $66 $93 $90 $08 $A9
.db $01 $8D $B5 $0B $82 $24 $FF $80
.db $7A $C2 $20 $20 $66 $93 $29 $FF
.db $00 $C9 $3D $00 $F0 $07 $C9 $3F
.db $00 $F0 $02 $18 $60 $A9 $08 $00
.db $22 $F4 $E3 $81 $82 $04 $FF $C2
.db $20 $38 $60 $C2 $20 $A2 $02 $0E
.db $8E $30 $0B $A2 $10 $0E $8E $32
.db $0B $20 $66 $93 $22 $A6 $E6 $81
.db $80 $41 $C2 $20 $22 $6B $E4 $81
.db $AE $B5 $0B $8E $18 $0B $AE $C9
.db $0B $86 $50 $86 $52 $20 $79 $92
.db $A9 $04 $00 $A2 $0A $00 $A0 $01
.db $00 $22 $A3 $A9 $87 $AE $18 $0B
.db $8E $B5 $0B $8E $B3 $0B $22 $C6
.db $D2 $81 $20 $B8 $91 $A5 $50 $85
.db $52 $22 $4E $95 $80 $20 $13 $93
.db $82 $A8 $FE $C2 $20 $22 $C6 $D2
.db $81 $AD $B5 $0B $8D $B3 $0B $20
.db $B8 $91 $20 $C2 $D6 $82 $93 $FE
.db $08 $E2 $20 $22 $6B $E4 $81 $A6
.db $50 $DA $AD $14 $0C $D0 $4D $AE
.db $1A $0B $86 $50 $A2 $12 $02 $8E
.db $1B $0C $A2 $0C $08 $8E $1D $0C
.db $A9 $00 $22 $5F $D3 $81 $22 $EE
.db $D4 $81 $A2 $12 $02 $8E $1B $0C
.db $A2 $00 $7F $86 $0D $A2 $20 $44
.db $86 $0C $A9 $00 $22 $D6 $C7 $81
.db $22 $EA $87 $80 $20 $C2 $D6 $22
.db $75 $E4 $81 $A9 $00 $22 $B6 $D1
.db $81 $22 $EA $87 $80 $FA $86 $50
.db $86 $52 $28 $60 $AE $1C $0B $86
.db $50 $A2 $12 $0C $8E $1B $0C $A2
.db $0C $08 $8E $1D $0C $A9 $00 $22
.db $5F $D3 $81 $22 $EE $D4 $81 $A2
.db $12 $0C $8E $1B $0C $A2 $00 $7F
.db $86 $0D $A2 $28 $44 $86 $0C $A9
.db $01 $22 $D6 $C7 $81 $22 $EA $87
.db $80 $20 $C2 $D6 $22 $75 $E4 $81
.db $A9 $01 $A2 $00 $7F $86 $0D $A2
.db $28 $44 $86 $0C $22 $C0 $D1 $81
.db $22 $EA $87 $80 $FA $86 $50 $86
.db $52 $28 $60 $08 $E2 $20 $22 $EA
.db $87 $80 $22 $6B $E4 $81 $A2 $00
.db $00 $86 $50 $86 $52 $22 $53 $D8
.db $81 $AE $10 $0B $8E $B5 $0B $8E
.db $B3 $0B $20 $9A $84 $22 $6F $D8
.db $81 $A2 $01 $01 $8E $1B $0C $22
.db $CF $CA $81 $AE $9F $0F $8E $1A
.db $0B $A6 $50 $8E $1C $0B $A2 $10
.db $0B $8E $1B $0C $A2 $0F $0A $8E
.db $1D $0C $A9 $00 $22 $5F $D3 $81
.db $22 $EE $D4 $81 $A2 $12 $0C $8E
.db $1B $0C $A2 $00 $7F $86 $0D $A2
.db $28 $44 $86 $0C $A9 $01 $22 $D6
.db $C7 $81 $A2 $C6 $02 $A0 $38 $C6
.db $A9 $04 $22 $1F $E2 $81 $A2 $87
.db $31 $8E $08 $0C $A2 $10 $0C $8E
.db $05 $0C $A9 $04 $8D $07 $0C $22
.db $7B $D7 $81 $A2 $03 $0C $8E $05
.db $0C $22 $7B $D7 $81 $AE $12 $0B
.db $8E $B5 $0B $8E $B3 $0B $22 $C6
.db $D2 $81 $22 $EA $87 $80 $A9 $00
.db $22 $B6 $D1 $81 $22 $EA $87 $80
.db $A9 $01 $A2 $00 $7F $86 $0D $A2
.db $28 $44 $86 $0C $22 $C0 $D1 $81
.db $A6 $50 $86 $52 $22 $4E $95 $80
.db $20 $C2 $D6 $22 $75 $E4 $81 $22
.db $EA $87 $80 $28 $60 $08 $E2 $20
.db $A2 $03 $0C $8E $5D $0B $A2 $03
.db $12 $8E $5F $0B $AD $13 $0B $38
.db $E9 $0C $4A $8D $61 $0B $22 $4E
.db $E3 $81 $AD $62 $0B $C9 $FF $D0
.db $03 $28 $38 $60 $AE $B5 $0B $8E
.db $12 $0B $28 $18 $60 $08 $22 $6B
.db $E4 $81 $A2 $00 $00 $86 $50 $86
.db $52 $22 $4E $95 $80 $22 $53 $D8
.db $81 $20 $C2 $D6 $22 $75 $E4 $81
.db $22 $EA $87 $80 $28 $6B $08 $C2
.db $20 $8D $A7 $0B $AD $B6 $0B $29
.db $FF $00 $C9 $12 $00 $30 $05 $A9
.db $09 $0A $80 $03 $A9 $09 $12 $28
.db $08 $C2 $20 $8D $1B $0C $22 $A8
.db $D5 $81 $A6 $15 $A0 $BC $A9 $A9
.db $04 $00 $22 $1F $E2 $81 $AD $1B
.db $0C $18 $69 $01 $01 $8D $1B $0C
.db $22 $A8 $D5 $81 $A6 $15 $A0 $58
.db $DF $AD $A7 $0B $22 $1F $E2 $81
.db $A0 $BC $A9 $A9 $03 $00 $22 $1F
.db $E2 $81 $AD $1B $0C $18 $69 $07
.db $04 $8D $B5 $0B $8D $B3 $0B $22
.db $C6 $D2 $81 $E2 $20 $A9 $01 $8D
.db $07 $0C $C2 $20 $AD $1B $0C $18
.db $69 $00 $04 $8D $05 $0C $A9 $89
.db $31 $8D $08 $0C $22 $7B $D7 $81
.db $AD $05 $0C $18 $69 $07 $00 $8D
.db $05 $0C $22 $7B $D7 $81 $28 $60
.db $08 $DA $5A $E2 $20 $EB $A9 $0E
.db $C2 $20 $8F $02 $42 $00 $EA $EA
.db $EA $AF $16 $42 $00 $E2 $20 $AA
.db $BF $E9 $A6 $88 $2D $04 $0C $D0
.db $05 $7A $FA $28 $18 $6B $7A $FA
.db $28 $38 $6B $08 $E2 $30 $20 $A6
.db $97 $20 $D6 $97 $28 $6B $A0 $03
.db $A2 $00 $BF $20 $44 $7F $C9 $FF
.db $D0 $1A $BF $21 $44 $7F $9F $20
.db $44 $7F $BF $25 $44 $7F $9F $24
.db $44 $7F $A9 $FF $9F $21 $44 $7F
.db $9F $25 $44 $7F $E8 $8A $C9 $03
.db $D0 $D8 $88 $10 $D3 $60 $A0 $03
.db $A2 $00 $BF $28 $44 $7F $C9 $FF
.db $D0 $1A $BF $29 $44 $7F $9F $28
.db $44 $7F $BF $2D $44 $7F $9F $2C
.db $44 $7F $A9 $FF $9F $29 $44 $7F
.db $9F $2D $44 $7F $E8 $8A $C9 $03
.db $D0 $D8 $88 $10 $D3 $60 $E2 $20
.db $C2 $20 $AD $1A $0C $29 $FF $00
.db $0A $AA $E2 $20 $FC $18 $98 $60
.db $1A $98 $E2 $20 $22 $4E $95 $80
.db $22 $EA $87 $80 $20 $DE $D6 $A9
.db $FF $8D $11 $0C $A9 $04 $22 $F8
.db $D6 $81 $A9 $01 $8D $10 $0C $9C
.db $61 $0B $E2 $20 $AD $5E $08 $38
.db $ED $60 $08 $C9 $08 $B0 $05 $A2
.db $17 $02 $80 $03 $A2 $02 $02 $8E
.db $1B $0C $A0 $EA $9F $A2 $00 $00
.db $A9 $06 $9C $10 $0C $22 $CC $E2
.db $81 $AD $62 $0B $C9 $FF $D0 $5E
.db $A9 $FF $8D $0A $0C $A9 $02 $22
.db $F8 $D6 $81 $A9 $01 $8D $10 $0C
.db $9C $61 $0B $A2 $00 $00 $86 $50
.db $86 $52 $8E $C1 $0B $22 $4E $95
.db $80 $22 $53 $D8 $81 $AD $17 $0C
.db $8D $4A $07 $9C $1A $0C $9C $19
.db $0C $9C $10 $0C $4C $C2 $D6 $E2
.db $20 $A9 $01 $8D $10 $0C $A2 $00
.db $00 $86 $50 $86 $52 $22 $4E $95
.db $80 $22 $53 $D8 $81 $9C $1A $0C
.db $A9 $FF $8D $11 $0C $A9 $02 $22
.db $F8 $D6 $81 $4C $3A $98 $E2 $20
.db $A9 $FF $8D $11 $0C $A9 $05 $22
.db $F8 $D6 $81 $AD $B5 $0B $8D $B7
.db $0B $C2 $20 $AD $62 $0B $29 $FF
.db $00 $0A $AA $BF $EC $98 $81 $85
.db $15 $6C $15 $00 $18 $9D $FF $9C
.db $11 $99 $08 $99 $15 $9C $F8 $98
.db $E2 $20 $AD $62 $0B $8D $0A $0C
.db $A9 $12 $8D $DF $08 $4C $73 $98
.db $E2 $20 $22 $9A $E8 $81 $4C $9F
.db $98 $E2 $20 $A6 $50 $8E $CF $0B
.db $A9 $71 $8D $36 $0B $A9 $78 $8D
.db $37 $0B $A9 $72 $8D $38 $0B $A9
.db $74 $8D $39 $0B $A9 $76 $8D $3A
.db $0B $A9 $79 $8D $3B $0B $A9 $73
.db $8D $3C $0B $A9 $75 $8D $3D $0B
.db $A9 $6E $8D $3E $0B $A9 $70 $8D
.db $3F $0B $A9 $77 $8D $40 $0B $A9
.db $6F $8D $41 $0B $A9 $7D $8D $42
.db $0B $A9 $6C $8D $43 $0B $A9 $7E
.db $8D $44 $0B $A9 $3E $8D $45 $0B
.db $A9 $3C $8D $46 $0B $A9 $FE $8D
.db $47 $0B $A0 $00 $64 $22 $7D $E4
.db $81 $AD $B7 $0B $C9 $02 $F0 $05
.db $A2 $01 $02 $80 $03 $A2 $09 $02
.db $8E $B0 $0B $C2 $20 $20 $CF $99
.db $20 $C2 $D6 $22 $EA $87 $80 $AD
.db $27 $01 $89 $00 $80 $D0 $07 $89
.db $80 $00 $D0 $05 $80 $ED $4C $9F
.db $98 $AD $DF $07 $29 $FF $00 $C9
.db $15 $00 $90 $DF $AE $CF $0B $86
.db $50 $86 $52 $20 $DB $9A $20 $C2
.db $D6 $22 $EA $87 $80 $AD $27 $01
.db $89 $80 $80 $F0 $F4 $80 $BC $08
.db $E2 $20 $AE $B0 $0B $8E $1B $0C
.db $8E $9E $0B $A2 $16 $18 $8E $1D
.db $0C $A9 $00 $22 $5F $D3 $81 $22
.db $EE $D4 $81 $C2 $20 $EE $1B $0C
.db $EE $1C $0C $22 $A8 $D5 $81 $A6
.db $15 $A0 $EA $9F $A9 $03 $00 $22
.db $1F $E2 $81 $22 $A8 $D5 $81 $A6
.db $15 $A0 $4E $C9 $AD $DF $07 $22
.db $1F $E2 $81 $AD $F1 $07 $F0 $17
.db $AD $9E $0B $18 $69 $08 $05 $8D
.db $1B $0C $22 $A8 $D5 $81 $A6 $15
.db $AD $F1 $07 $22 $E1 $D5 $81 $AD
.db $DF $07 $29 $FF $00 $C9 $2A $00
.db $90 $26 $AF $35 $65 $7F $29 $FF
.db $00 $85 $15 $AF $36 $65 $7F $29
.db $FF $00 $85 $17 $AF $37 $65 $7F
.db $29 $FF $00 $18 $65 $15 $18 $65
.db $17 $18 $6D $56 $08 $48 $80 $04
.db $AD $56 $08 $48 $AD $9E $0B $18
.db $69 $06 $07 $8D $1B $0C $22 $A8
.db $D5 $81 $A6 $15 $68 $22 $99 $D6
.db $81 $22 $E5 $DB $83 $B0 $02 $80
.db $03 $A9 $20 $00 $48 $AD $9E $0B
.db $18 $69 $09 $0D $8D $1B $0C $22
.db $A8 $D5 $81 $A6 $15 $68 $22 $AC
.db $D6 $81 $22 $ED $DB $83 $B0 $02
.db $80 $03 $A9 $40 $00 $38 $E9 $20
.db $00 $48 $AD $9E $0B $18 $69 $12
.db $0D $8D $1B $0C $22 $A8 $D5 $81
.db $A6 $15 $68 $22 $AC $D6 $81 $AD
.db $9E $0B $18 $69 $02 $13 $8D $1B
.db $0C $22 $A8 $D5 $81 $A6 $15 $A0
.db $36 $D0 $AD $DF $07 $22 $1F $E2
.db $81 $28 $60 $08 $C2 $20 $22 $6B
.db $E4 $81 $AE $B0 $0B $8E $1B $0C
.db $A2 $16 $18 $8E $1D $0C $A9 $00
.db $00 $22 $5F $D3 $81 $22 $EE $D4
.db $81 $AD $B0 $0B $18 $69 $02 $01
.db $8D $1B $0C $22 $A8 $D5 $81 $A6
.db $15 $A0 $22 $B5 $A9 $13 $00 $22
.db $1F $E2 $81 $A9 $00 $00 $8D $D1
.db $0B $AE $D1 $0B $BF $CF $9B $81
.db $C9 $FF $FF $D0 $06 $22 $75 $E4
.db $81 $28 $60 $E2 $20 $A9 $01 $8D
.db $B9 $0A $BF $D2 $9B $81 $22 $8F
.db $DB $93 $A9 $01 $8D $07 $0C $AE
.db $D1 $0B $BF $D1 $9B $81 $8D $08
.db $0C $AD $BA $0A $D0 $04 $A9 $3E
.db $80 $02 $A9 $36 $8D $09 $0C $C2
.db $20 $BF $CF $9B $81 $18 $6D $B0
.db $0B $8D $05 $0C $22 $7B $D7 $81
.db $AD $05 $0C $8D $1B $0C $22 $A8
.db $D5 $81 $A6 $15 $A0 $BC $A9 $A9
.db $00 $00 $22 $1F $E2 $81 $AD $05
.db $0C $18 $69 $02 $00 $8D $1B $0C
.db $22 $A8 $D5 $81 $AE $D1 $0B $BF
.db $D2 $9B $81 $A6 $15 $A0 $58 $DF
.db $22 $1F $E2 $81 $AD $05 $0C $18
.db $69 $02 $00 $8D $1B $0C $22 $A8
.db $D5 $81 $A6 $15 $A0 $07 $00 $AD
.db $BA $0A $29 $FF $00 $D0 $05 $A9
.db $01 $00 $80 $03 $A9 $00 $00 $20
.db $45 $C9 $AD $D1 $0B $18 $69 $04
.db $00 $8D $D1 $0B $82 $4A $FF $01
.db $03 $40 $71 $0C $03 $42 $78 $01
.db $05 $44 $72 $0C $05 $46 $74 $01
.db $07 $48 $76 $0C $07 $4A $79 $01
.db $09 $4C $73 $0C $09 $4E $75 $01
.db $0B $60 $6E $0C $0B $62 $70 $01
.db $0D $64 $77 $0C $0D $66 $6F $01
.db $11 $68 $7D $0C $11 $6A $6C $01
.db $13 $6C $7E $0C $13 $6E $3E $01
.db $15 $80 $3C $FF $FF $E2 $20 $AD
.db $61 $0B $8D $A4 $0B $9C $61 $0B
.db $A6 $50 $8E $C7 $0B $AD $B5 $0B
.db $C9 $02 $F0 $05 $A2 $0D $02 $80
.db $03 $A2 $09 $02 $8E $1B $0C $A9
.db $05 $A0 $D6 $BD $A2 $00 $00 $22
.db $CC $E2 $81 $AD $62 $0B $C9 $FF
.db $D0 $0F $A2 $00 $00 $8E $C1 $0B
.db $AD $A4 $0B $8D $61 $0B $4C $9F
.db $98 $AD $61 $0B $8D $A5 $0B $A6
.db $50 $8E $C1 $0B $A9 $FF $8D $11
.db $0C $A9 $05 $22 $F8 $D6 $81 $A9
.db $00 $EB $AD $62 $0B $AA $BD $DA
.db $07 $8D $61 $0B $BF $FA $9C $81
.db $48 $AD $62 $0B $1A $AA $A9 $0E
.db $8D $1C $0C $A0 $D6 $BD $68 $22
.db $CC $E2 $81 $AD $62 $0B $C9 $FF
.db $D0 $3A $A9 $FF $8D $11 $0C $A9
.db $02 $22 $F8 $D6 $81 $A9 $0C $8D
.db $1C $0C $A2 $0A $0E $8E $1D $0C
.db $A9 $01 $22 $5F $D3 $81 $22 $EE
.db $D4 $81 $AD $A5 $0B $8D $61 $0B
.db $AE $C7 $0B $86 $50 $86 $52 $22
.db $4E $95 $80 $AE $B7 $0B $8E $B5
.db $0B $82 $51 $FF $A9 $00 $EB $AD
.db $A5 $0B $AA $AD $62 $0B $9D $DA
.db $07 $AD $A5 $0B $C9 $00 $F0 $06
.db $C9 $01 $F0 $08 $80 $AC $22 $84
.db $FE $83 $80 $A6 $22 $89 $B0 $80
.db $80 $A0 $03 $03 $05 $02 $02 $E2
.db $20 $A9 $00 $8D $08 $0B $A2 $00
.db $00 $86 $50 $86 $52 $22 $1E $DD
.db $93 $22 $CB $A8 $81 $4C $9F $98
.db $C2 $20 $A9 $FF $FF $A0 $A0 $05
.db $A2 $00 $00 $9F $00 $38 $7F $E8
.db $88 $E8 $88 $D0 $F6 $A9 $7F $7F
.db $85 $15 $A2 $30 $44 $A0 $00 $38
.db $A9 $00 $04 $22 $8A $D9 $81 $A9
.db $7F $7F $85 $15 $A2 $30 $4C $A0
.db $A0 $3D $A9 $00 $02 $22 $8A $D9
.db $81 $E2 $20 $8B $A9 $81 $48 $AB
.db $22 $DF $9D $81 $B0 $59 $E2 $20
.db $AB $AD $B6 $0B $C9 $02 $D0 $0D
.db $A9 $02 $22 $F8 $D6 $81 $AD $DF
.db $0B $8D $F3 $07 $60 $A2 $00 $00
.db $86 $50 $86 $52 $22 $4E $95 $80
.db $22 $53 $D8 $81 $20 $C2 $D6 $22
.db $EA $87 $80 $20 $4F $A0 $BF $11
.db $38 $7F $85 $15 $BF $10 $38 $7F
.db $85 $17 $A9 $04 $A2 $00 $00 $22
.db $C9 $9E $87 $A2 $00 $00 $86 $50
.db $86 $52 $AD $17 $0C $8D $4A $07
.db $9C $1A $0C $9C $19 $0C $60 $E2
.db $20 $AB $A9 $01 $8D $10 $0C $A2
.db $00 $00 $86 $50 $86 $52 $22 $4E
.db $95 $80 $22 $53 $D8 $81 $9C $1A
.db $0C $A9 $FF $8D $11 $0C $A9 $02
.db $22 $F8 $D6 $81 $4C $3A $98 $08
.db $E2 $20 $9C $16 $0C $9C $14 $0C
.db $A9 $01 $8D $10 $0C $A2 $00 $00
.db $86 $50 $20 $57 $D9 $A2 $01 $01
.db $8E $1B $0C $A2 $1E $04 $8E $1D
.db $0C $A9 $00 $22 $5F $D3 $81 $22
.db $EE $D4 $81 $A2 $01 $05 $8E $1B
.db $0C $A2 $1E $16 $8E $1D $0C $22
.db $EE $D4 $81 $A2 $01 $06 $8E $B5
.db $0B $8E $B3 $0B $22 $C6 $D2 $81
.db $A2 $89 $31 $8E $08 $0C $A2 $03
.db $02 $8E $05 $0C $A9 $01 $8D $07
.db $0C $22 $7B $D7 $81 $A2 $87 $31
.db $8E $08 $0C $A2 $01 $06 $8E $05
.db $0C $A9 $0A $8D $07 $0C $22 $7B
.db $D7 $81 $A6 $50 $8E $C7 $0B $C2
.db $20 $A9 $01 $00 $8D $00 $0C $A2
.db $00 $00 $A0 $00 $00 $BF $00 $38
.db $7F $29 $FF $00 $C9 $FF $00 $F0
.db $09 $8A $18 $69 $20 $00 $AA $C8
.db $80 $EB $8E $DB $0B $A9 $0A $00
.db $22 $18 $D7 $81 $E2 $20 $C9 $00
.db $F0 $05 $C0 $00 $00 $F0 $01 $1A
.db $8D $FF $0B $E2 $20 $AD $F3 $07
.db $C9 $04 $90 $02 $A9 $00 $8D $DF
.db $0B $20 $C5 $A7 $A6 $50 $8E $C9
.db $0B $9C $0F $0C $20 $8A $A2 $9C
.db $10 $0C $20 $C2 $D6 $C2 $20 $22
.db $EA $87 $80 $F4 $B4 $9E $AD $0F
.db $0C $29 $FF $00 $C9 $02 $00 $F0
.db $17 $A9 $D0 $9E $4C $F2 $D7 $60
.db $48 $9F $89 $9F $EE $9E $10 $9F
.db $EF $A0 $6A $A0 $09 $A1 $CF $9E
.db $C2 $20 $AD $27 $01 $29 $40 $80
.db $D0 $01 $60 $4C $6A $A0 $E2 $20
.db $A9 $00 $22 $F8 $D6 $81 $AD $DF
.db $0B $F0 $05 $CE $DF $0B $80 $05
.db $A9 $03 $8D $DF $0B $AD $0F $0C
.db $D0 $28 $20 $8A $A2 $4C $C2 $D6
.db $E2 $20 $A9 $00 $22 $F8 $D6 $81
.db $AD $DF $0B $C9 $03 $F0 $05 $EE
.db $DF $0B $80 $03 $9C $DF $0B $AD
.db $0F $0C $D0 $06 $20 $8A $A2 $4C
.db $C2 $D6 $AD $B6 $0B $C9 $02 $D0
.db $06 $20 $8A $A2 $4C $C2 $D6 $20
.db $8A $A2 $20 $02 $A2 $4C $C2 $D6
.db $E2 $20 $AD $B6 $0B $C9 $06 $F0
.db $0E $C9 $02 $D0 $01 $60 $CE $B6
.db $0B $CE $B6 $0B $82 $84 $00 $AD
.db $00 $0C $C9 $01 $D0 $19 $A2 $E0
.db $06 $A0 $0F $00 $A9 $FF $9F $00
.db $30 $7E $E8 $E8 $88 $D0 $F7 $A2
.db $03 $02 $8E $B5 $0B $80 $64 $CE
.db $00 $0C $A9 $18 $8D $B6 $0B $80
.db $40 $E2 $20 $AD $B6 $0B $C9 $02
.db $F0 $1C $C9 $18 $F0 $20 $EE $B6
.db $0B $EE $B6 $0B $20 $4F $A0 $BF
.db $00 $38 $7F $C9 $FF $D0 $3C $CE
.db $B6 $0B $CE $B6 $0B $60 $A2 $01
.db $06 $8E $B5 $0B $80 $2D $AD $FF
.db $0B $CD $00 $0C $D0 $01 $60 $EE
.db $00 $0C $A9 $06 $8D $B6 $0B $80
.db $00 $E2 $20 $AE $C7 $0B $86 $50
.db $86 $52 $22 $4E $95 $80 $20 $C5
.db $A7 $A6 $50 $8E $C9 $0B $20 $8A
.db $A2 $80 $00 $E2 $20 $AD $12 $0C
.db $D0 $06 $A9 $00 $22 $F8 $D6 $81
.db $9C $12 $0C $AD $0F $0C $C9 $01
.db $F0 $0D $22 $C6 $D2 $81 $AE $B5
.db $0B $8E $B3 $0B $4C $C2 $D6 $E2
.db $20 $A2 $01 $01 $8E $1B $0C $A2
.db $1E $04 $8E $1D $0C $A9 $00 $22
.db $5F $D3 $81 $22 $EE $D4 $81 $A2
.db $01 $05 $8E $1B $0C $A2 $1E $16
.db $8E $1D $0C $22 $EE $D4 $81 $E2
.db $20 $A9 $FF $8D $0E $0C $20 $C5
.db $A7 $9C $0E $0C $20 $8A $A2 $9C
.db $0F $0C $AE $B5 $0B $8E $B3 $0B
.db $22 $C6 $D2 $81 $4C $20 $A1 $08
.db $C2 $20 $20 $A1 $A7 $AD $B6 $0B
.db $29 $FF $00 $38 $E9 $06 $00 $0A
.db $0A $0A $0A $18 $6D $D1 $0B $AA
.db $28 $60 $E2 $20 $A9 $01 $8D $12
.db $0C $AD $0F $0C $C9 $02 $F0 $0E
.db $C9 $01 $F0 $21 $A9 $02 $22 $F8
.db $D6 $81 $FA $28 $38 $6B $A9 $02
.db $22 $F8 $D6 $81 $A9 $FF $8D $11
.db $0C $A9 $01 $8D $0F $0C $22 $67
.db $DE $93 $4C $E3 $9F $AD $B6 $0B
.db $C9 $02 $F0 $D8 $A9 $02 $22 $F8
.db $D6 $81 $A9 $FF $8D $11 $0C $A2
.db $01 $01 $8E $1B $0C $A2 $1E $04
.db $8E $1D $0C $A9 $00 $22 $5F $D3
.db $81 $22 $EE $D4 $81 $A2 $01 $05
.db $8E $1B $0C $A2 $1E $16 $8E $1D
.db $0C $22 $EE $D4 $81 $9C $0F $0C
.db $C2 $20 $A2 $E0 $06 $A0 $0F $00
.db $A9 $FF $00 $9F $00 $30 $7E $E8
.db $E8 $88 $D0 $F7 $4C $C9 $9F $E2
.db $20 $AD $B6 $0B $C9 $02 $D0 $0D
.db $A9 $02 $22 $F8 $D6 $81 $AD $DF
.db $0B $8D $F3 $07 $60 $FA $28 $18
.db $6B $E2 $20 $AD $0F $0C $C9 $01
.db $F0 $08 $A9 $03 $22 $F8 $D6 $81
.db $80 $06 $A9 $05 $22 $F8 $D6 $81
.db $E2 $20 $AD $0F $0C $C9 $01 $F0
.db $1C $A9 $01 $8D $0F $0C $AD $B6
.db $0B $C9 $02 $D0 $03 $4C $C2 $D6
.db $AE $C9 $0B $86 $50 $86 $52 $20
.db $B2 $A1 $4C $C2 $D6 $E2 $20 $AD
.db $B6 $0B $C9 $02 $D0 $01 $60 $C2
.db $20 $22 $6B $E4 $81 $22 $DA $CD
.db $81 $22 $EA $87 $80 $A9 $00 $00
.db $AE $C9 $0B $22 $36 $DE $93 $A2
.db $00 $00 $AC $C9 $0B $22 $8D $A9
.db $87 $AE $C9 $0B $86 $50 $20 $45
.db $A2 $A2 $E0 $06 $A0 $0F $00 $A9
.db $FF $00 $9F $00 $30 $7E $E8 $E8
.db $88 $D0 $F7 $E2 $20 $A9 $02 $8D
.db $0F $0C $A9 $0B $8D $1C $0C $AD
.db $B6 $0B $C9 $10 $10 $05 $A9 $01
.db $8D $1C $0C $A9 $01 $8D $1B $0C
.db $20 $0E $CE $22 $75 $E4 $81 $4C
.db $C2 $D6 $08 $E2 $20 $22 $6B $E4
.db $81 $20 $4F $A0 $8E $D1 $0B $C2
.db $20 $8A $4A $4A $4A $4A $4A $22
.db $70 $A3 $81 $E2 $20 $A9 $01 $8D
.db $1C $0C $AD $B6 $0B $C9 $10 $10
.db $05 $A9 $11 $8D $1C $0C $E2 $20
.db $22 $EA $87 $80 $AF $17 $44 $7F
.db $A2 $00 $00 $22 $0F $D1 $81 $22
.db $AB $CD $81 $A9 $01 $8D $1B $0C
.db $22 $45 $CD $81 $22 $75 $E4 $81
.db $28 $60 $08 $E2 $20 $22 $6B $E4
.db $81 $20 $4F $A0 $8E $D1 $0B $C2
.db $20 $8A $4A $4A $4A $4A $4A $22
.db $70 $A3 $81 $E2 $20 $A9 $01 $8D
.db $1C $0C $AD $B6 $0B $C9 $10 $10
.db $05 $A9 $11 $8D $1C $0C $A9 $01
.db $8D $1B $0C $A9 $FF $8D $0E $0C
.db $22 $45 $CD $81 $9C $0E $0C $22
.db $75 $E4 $81 $28 $60 $08 $E2 $20
.db $20 $4F $A0 $8E $D1 $0B $C2 $20
.db $8A $4A $4A $4A $4A $4A $22 $70
.db $A3 $81 $E2 $20 $A9 $01 $8D $1C
.db $0C $AD $B6 $0B $C9 $10 $10 $05
.db $A9 $11 $8D $1C $0C $A9 $7F $85
.db $0E $A2 $20 $44 $86 $0C $64 $5C
.db $A2 $00 $00 $86 $5E $A9 $01 $8D
.db $1B $0C $A9 $00 $22 $A1 $CA $81
.db $28 $60 $08 $C2 $20 $A9 $0B $06
.db $8D $1B $0C $A9 $13 $14 $8D $1D
.db $0C $A9 $02 $00 $22 $5F $D3 $81
.db $22 $EE $D4 $81 $A2 $84 $00 $A0
.db $6A $B4 $A9 $00 $00 $22 $1F $E2
.db $81 $A2 $96 $00 $A0 $6A $B4 $AD
.db $DF $0B $29 $FF $00 $1A $22 $1F
.db $E2 $81 $E2 $20 $A9 $FF $8D $11
.db $0C $22 $C6 $D2 $81 $A9 $FF $8D
.db $11 $0C $C2 $20 $AE $B5 $0B $8E
.db $B3 $0B $A2 $96 $01 $8E $D5 $0B
.db $20 $A1 $A7 $AD $DF $0B $29 $FF
.db $00 $0A $AA $FC $59 $A3 $AD $D1
.db $0B $18 $69 $20 $00 $8D $D1 $0B
.db $AA $BF $00 $38 $7F $29 $FF $00
.db $C9 $FF $00 $F0 $0F $AD $D5 $0B
.db $18 $69 $80 $00 $8D $D5 $0B $C9
.db $96 $06 $D0 $CF $E2 $20 $AD $00
.db $0C $C9 $01 $F0 $03 $20 $2D $A3
.db $AD $00 $0C $CD $FF $0B $F0 $03
.db $20 $43 $A3 $28 $60 $08 $C2 $20
.db $A2 $BA $01 $A9 $FA $A4 $9F $00
.db $30 $7E $A9 $FE $24 $9F $40 $30
.db $7E $28 $60 $08 $C2 $20 $A2 $3A
.db $06 $A9 $FE $24 $9F $00 $30 $7E
.db $A9 $FA $24 $9F $40 $30 $7E $28
.db $60 $C7 $A3 $44 $A4 $C1 $A4 $1D
.db $A5 $08 $E2 $20 $C9 $15 $90 $02
.db $A9 $14 $22 $AC $D6 $81 $28 $60
.db $08 $E2 $20 $48 $EB $A9 $20 $C2
.db $20 $8F $02 $42 $00 $EA $EA $EA
.db $AF $16 $42 $00 $AA $A0 $00 $00
.db $E2 $20 $BF $00 $38 $7F $DA $BB
.db $9F $00 $44 $7F $FA $E8 $C8 $98
.db $C9 $20 $D0 $EE $68 $EB $A9 $10
.db $C2 $20 $8F $02 $42 $00 $EA $EA
.db $EA $AF $16 $42 $00 $AA $A0 $00
.db $00 $E2 $20 $BF $A0 $3D $7F $DA
.db $BB $9F $20 $44 $7F $FA $E8 $C8
.db $98 $C9 $10 $D0 $EE $28 $6B $08
.db $C2 $20 $AD $D1 $0B $4A $4A $4A
.db $4A $4A $22 $70 $A3 $81 $AF $01
.db $44 $7F $AE $D5 $0B $A0 $30 $DD
.db $22 $1F $E2 $81 $C2 $20 $AF $20
.db $44 $7F $29 $FF $00 $C9 $FF $00
.db $F0 $50 $AD $D5 $0B $18 $69 $10
.db $00 $AA $AF $20 $44 $7F $A0 $58
.db $DF $22 $1F $E2 $81 $AD $D5 $0B
.db $18 $69 $1E $00 $AA $A9 $2D $25
.db $9F $00 $30 $7E $A9 $3D $25 $9F
.db $40 $30 $7E $E8 $E8 $AF $24 $44
.db $7F $20 $5B $A5 $AF $20 $44 $7F
.db $22 $65 $EE $83 $90 $14 $AD $D5
.db $0B $18 $69 $10 $00 $AA $A0 $0A
.db $00 $A9 $01 $00 $85 $19 $22 $53
.db $C9 $81 $28 $60 $08 $E2 $20 $AE
.db $D5 $0B $E8 $E8 $DA $AE $D1 $0B
.db $BF $02 $38 $7F $FA $22 $AC $D6
.db $81 $E8 $E8 $DA $AE $D1 $0B $BF
.db $05 $38 $7F $FA $22 $AC $D6 $81
.db $E8 $E8 $DA $AE $D1 $0B $BF $0F
.db $38 $7F $FA $20 $61 $A3 $E8 $E8
.db $DA $AE $D1 $0B $BF $08 $38 $7F
.db $22 $69 $EF $81 $FA $22 $AC $D6
.db $81 $E8 $E8 $DA $AE $D1 $0B $BF
.db $04 $38 $7F $EB $BF $03 $38 $7F
.db $FA $20 $9B $C9 $AE $D1 $0B $BF
.db $05 $38 $7F $C9 $5A $90 $18 $C2
.db $20 $AD $D5 $0B $18 $69 $0C $00
.db $AA $A9 $51 $A5 $9F $00 $30 $7E
.db $A9 $41 $A5 $9F $40 $30 $7E $28
.db $60 $08 $C2 $20 $AE $D5 $0B $E8
.db $E8 $DA $AE $D1 $0B $BF $09 $38
.db $7F $FA $20 $61 $A3 $E8 $E8 $DA
.db $AE $D1 $0B $BF $0A $38 $7F $FA
.db $20 $61 $A3 $E8 $E8 $DA $AE $D1
.db $0B $BF $0B $38 $7F $FA $20 $61
.db $A3 $E8 $E8 $DA $AE $D1 $0B $BF
.db $0E $38 $7F $FA $20 $61 $A3 $E8
.db $E8 $DA $AE $D1 $0B $BF $0C $38
.db $7F $FA $20 $61 $A3 $E8 $E8 $DA
.db $AE $D1 $0B $BF $0D $38 $7F $FA
.db $20 $61 $A3 $28 $60 $08 $C2 $20
.db $AD $D1 $0B $4A $4A $4A $4A $4A
.db $22 $70 $A3 $81 $22 $B2 $A5 $81
.db $AE $D5 $0B $E8 $E8 $AD $69 $07
.db $20 $5B $A5 $AD $67 $07 $20 $5B
.db $A5 $AD $6B $07 $20 $5B $A5 $AD
.db $6D $07 $20 $5B $A5 $AD $85 $07
.db $20 $5B $A5 $AD $5D $07 $20 $5B
.db $A5 $28 $60

L81A55B:
	php
	rep #$20
	and #$00FF
	pha
	and #$0080
	beq L81A586
	pla
	lda #$20FE
	sta $7E3000,X
	sta $7E3002,X
	lda #$24F9
	sta $7E3040,X
	sta $7E3042,X
L81A57E:
	inx
	inx
	inx
	inx
	inx
	inx
	plp
	rts

L81A586:
	pla
	cmp #$0064
	bcs L81A594
	jsl $81D6AC
	inx
	inx
	plp
	rts

L81A594:
	lda #$25A2
	sta $7E3000,X
	lda #$25B2
	sta $7E3040,X
	lda #$25A3
	sta $7E3002,X
	lda #$25B3
	sta $7E3042,X
	bra L81A57E

L81A5B2:
	php
	sep #$20
	lda.l ActiveUnit.Weapons
	pha
	lda.l ActiveUnit.Strength
	pha
	cmp #$15
	bcc L81A5C5
	lda #$14
L81A5C5:
	sta.l ActiveUnit.Strength
	lda.l ActiveUnit.Skill
	pha
	cmp #$15
	bcc L81A5D4
	lda #$14
L81A5D4:
	sta.l ActiveUnit.Skill
	lda.l ActiveUnit.Speed
	pha
	cmp #$15
	bcc L81A5E3
	lda #$14
L81A5E3:
	sta.l ActiveUnit.Speed
	lda.l ActiveUnit.Luck
	pha
	cmp #$FF
	beq L81A5F8
	cmp #$15
	bcc L81A5FA
	lda #$14
	bra L81A5FA
L81A5F8:
	lda #$00
L81A5FA:
	sta.l ActiveUnit.Luck
	lda.l ActiveUnit.Weapons
	cmp #$FF
	beq L81A61F
	lda #$28
	sta $0C04
	lda.l ActiveUnit.Weapons
	jsl $819770
	bcs L81A61F
	lda.l ActiveUnit.Weapons
	jsl L83EE65
	bcc L81A688
L81A61F:
	lda.l ActiveUnit.ClassID
	cmp #$10
	beq L81A641
	cmp #$26
	beq L81A649
	cmp #$28
	beq L81A641
	cmp #$29
	beq L81A651
	cmp #$2A
	beq L81A651
	cmp #$2B
	beq L81A659
	cmp #$2C
	beq L81A641
	bra L81A668
L81A641:
	lda.w #$8F29
	jsr $7F44
	bra L81A688
L81A649:
	lda.w #$8F2A
	jsr $7F44
	bra L81A688
L81A651:
	lda.w #$8F2B
	jsr $7F44
	bra L81A688
L81A659:
	lda $07DF
	cmp.w #$9015
	sbc.w #$2CA9
	sta.l ActiveUnit.Weapons
	bra L81A688
L81A668:
	lda.l ActiveUnit.Speed
	sta $0785
	clc
	adc.l ActiveUnit.Luck
	sta $076B
	lda.w #$8DFF
	adc.w #$8D07
	adc [$07]
	sta $076D
	sta $075D
	brl L81A74A
L81A688:
	lda.l ActiveUnit.Weapons
	xba
	lda #$0E
	rep #$20
	sta.l WRMPYA
	nop
	nop
	nop
	lda.l RDMPYL
	sep #$20
	tax
	lda $88A6ED,X
	sta $15
	lda $88A6EE,X
	sta $17
	lda $88A6EC,X
	sta $19
	lda $88A6EF,X
	sta $1B
	rep #$20
	lda #$8800
	sta $01
	lda $88A6F6,X
	and #$00FF
	asl
	tax
	lda $88A633,X
	sta $00
	lda [$00]
L81A6CF:
	and #$00FF
	sta $1D
	sep #$20
	lda.l ActiveUnit.Weapons
	cmp #$09
	beq L81A6EB
	cmp #$38
	beq L81A6EF
	lda.l ActiveUnit.Strength
	clc
	adc $19
	bra L81A6F1
L81A6EB:
	lda $19
	bra L81A6F1
L81A6EF:
	lda #$FF
L81A6F1:
	sta $0769
	lda.l ActiveUnit.Skill
	asl
	clc
	adc $15
	sta $0767
	lda.l ActiveUnit.Skill
	clc
	adc $17
	sta $076D
	lda.l ActiveUnit.Speed
	sec
	sbc $1B
	bpl L81A714
	lda #$00
L81A714:
	sta $0785
	lda.l ActiveUnit.Speed
	clc
	adc.l ActiveUnit.Luck
	sta $076B
	lda $1D
	cmp #$FF
	beq L81A739
	lda $19
	jsl $87A9E8
	clc
	adc.l ActiveUnit.Strength
	sta $075D
	bra L81A73E
L81A739:
	lda #$FF
	sta $075D
L81A73E:
	lda $0767
	cmp #$64
	bcc L81A74A
	lda #$64
	sta $0767
L81A74A:
	pla
	sta.l ActiveUnit.Luck
	pla
	sta.l ActiveUnit.Speed
	pla
	sta.l ActiveUnit.Skill
	pla
	sta.l ActiveUnit.Strength
	pla
	sta.l ActiveUnit.Weapons
	plp
	rtl

L81A765:
	rep #$20

L81A767:
	php
	jsl $81A5B2
	rep #$20
	lda.l ActiveUnit.YPosition
	and #$00FF
	sta $15
	lda.l ActiveUnit.XPosition
	and #$00FF
	sta $17
	stz $19
	jsl L83D8F7
	ldx $19
	jsl L83F63C
	sep #$20
	xba
	lda.l ActiveUnit.ClassID
	xba
	jsl L83FCF7
	clc
	adc $076B
	sta $076B
	plp
	rtl

L81A7A1:
	php
	sep #$20
	lda $0c00
	dec A
	xba
	lda #$14
	rep #$20
	sta.l WRMPYA
	nop
	nop
	nop
	lda.l RDMPYL
	sep #$20
	rep #$20
	asl
	asl
	asl
	asl
	sta $0bd1
	plp
	rts

L81A7C5:
	php
	sep #$20
	ldx #$0603
	stx $0c1b
	ldx #$1407
	stx $0c1d
	lda #$02
	jsl $81d35f
	jsl $81d4ee
	jsr $a7a1
	lda $0c0e
	cmp #$ff
	bne L81A7EB
	jmp $a852
L81A7EB:
	ldx #$0603
	stx $0c05
	lda #$01
	sta $0c07
	ldx $0bd1
L81A7F9:
	sep #$20
	lda $7f3812,x
	lsr
	bcs L81A806
	lda #$38
	bra L81A808
L81A806:
	lda #$3a
L81A808:
	sta $0c09
	lda $7f3801,x
	asl
	sta $15
	lda $7f3801,x
	and #$f8
	asl
	clc
	adc #$40
	clc
	adc $15
	sta $0c08
	phx
	jsl $81d77b
	plx
	rep #$20
	txa
	clc
	adc #$0020
	tax
	cpx #$0400
	beq L81A852
	lda $7f3800,x
	and #$00ff
	cmp #$00ff
	beq L81A852
	inc $0c06
	inc $0c06
	lda $0c06
	and #$00ff
	cmp #$001a
	bne L81A7F9
L81A852:
	sep #$20
	ldx #$0605
	stx $0c1b
	jsl $81d5a8
	ldx $15
	stx $17
L81A862:
	rep #$20
	ldx $0bd1
	lda $7f3816,x
	ldy #$d662
	ldx $17
	jsl $81e21f
	lda $17
	sec
	sbc #$0080
	tax
	phx
	ldx $0bd1
	lda $7f3812,x
	and #$0001
	plx
	ldy #$0005
	jsr $c945
	lda $17
	sec
	sbc #$0084
	tax
	lda #$0000
	ldy #$a9bc
	jsl $81e21f
	lda $17
	clc
	adc #$0004
	sta $17
	lda $0bd1
	clc
	adc #$0020
	sta $0bd1
	tax
	cpx #$0400
	beq L81A8C9
	lda $7f3800,x
	and #$00ff
	cmp #$00ff
	beq L81A8C9
	lda $17
	cmp #$068a
	bne L81A862
L81A8C9:
	plp
	rts

.db $08 $E2 $20 $8B $A9
.db $81 $48 $AB $22 $6B $E4 $81 $C2
.db $20 $22 $1E $AC $87 $AD $DB $0B
.db $4A $A8 $A9 $14 $00 $22 $18 $D7
.db $81 $C0 $00 $00 $F0 $01 $1A $E2
.db $20 $8D $FF $0B $A9 $01 $8D $00
.db $0C $C2 $20 $A2 $42 $00 $A0 $EA
.db $9F $AD $08 $0B $29 $FF $00 $18
.db $69 $06 $00 $22 $1F $E2 $81 $A9
.db $01 $05 $8D $1B $0C $A9 $1E $16
.db $8D $1D $0C $A9 $00 $00 $22 $5F
.db $D3 $81 $22 $EE $D4 $81 $AD $08
.db $0B $29 $FF $00 $D0 $1B $AD $F1
.db $07 $F0 $07 $A2 $90 $00 $22 $E1
.db $D5 $81 $22 $1E $AC $87 $AD $DB
.db $0B $4A $A2 $A8 $00 $22 $99 $D6
.db $81 $E2 $20 $A9 $0A $8D $07 $0C
.db $A2 $01 $06 $8E $05 $0C $A2 $87
.db $31 $8E $08 $0C $22 $7B $D7 $81
.db $A2 $89 $31 $8E $08 $0C $A2 $0F
.db $06 $8E $05 $0C $22 $7B $D7 $81
.db $A9 $01 $8D $07 $0C $A2 $01 $02
.db $8E $05 $0C $A2 $87 $31 $8E $08
.db $0C $22 $7B $D7 $81 $C2 $20 $AD
.db $08 $0B $29 $FF $00 $F0 $28 $A9
.db $00 $7C $85 $27 $A0 $00 $00 $AD
.db $0B $0B $22 $F4 $D1 $81 $A2 $86
.db $00 $A0 $00 $00 $A9 $00 $00 $8D
.db $9E $0B $A9 $C0 $01 $8D $A1 $0B
.db $AD $0B $0B $22 $36 $C7 $81 $E2
.db $20 $A2 $00 $00 $BF $30 $50 $7F
.db $C9 $FF $D0 $32 $22 $75 $E4 $81
.db $A9 $01 $8D $00 $0C $8D $FF $0B
.db $20 $3E $AD $A2 $50 $03 $A0 $EA
.db $9F $A9 $05 $22 $1F $E2 $81 $20
.db $C2 $D6 $C2 $20 $22 $EA $87 $80
.db $AD $27 $01 $29 $00 $80 $D0 $02
.db $80 $F0 $5A $4C $80 $AB $A2 $01
.db $06 $8E $B5 $0B $8E $B3 $0B $A6
.db $50 $8E $C7 $0B $20 $34 $AC $C2
.db $20 $AD $08 $0B $29 $FF $00 $F0
.db $45 $A9 $08 $00 $A2 $0B $00 $A0
.db $00 $00 $22 $A3 $A9 $87 $A2 $CA
.db $02 $A0 $EA $9F $A9 $08 $00 $22
.db $1F $E2 $81 $20 $C2 $D6 $22 $EA
.db $87 $80 $AD $27 $01 $89 $00 $80
.db $D0 $0C $89 $80 $00 $D0 $07 $89
.db $40 $00 $D0 $02 $80 $E8 $A9 $08
.db $00 $A2 $0B $00 $A0 $01 $00 $22
.db $A3 $A9 $87 $20 $C2 $D6 $C2 $20
.db $22 $EA $87 $80 $F4 $55 $AA $A9
.db $66 $AA $4C $F2 $D7 $60 $76 $AA
.db $AE $AA $ED $AA $ED $AA $1B $AB
.db $80 $AB $91 $AB $65 $AA $E2 $20
.db $AD $B6 $0B $C9 $02 $D0 $01 $60
.db $C9 $06 $F0 $09 $CE $B6 $0B $CE
.db $B6 $0B $82 $26 $01 $AD $00 $0C
.db $C9 $01 $F0 $0B $CE $00 $0C $A9
.db $18 $8D $B6 $0B $82 $23 $01 $AD
.db $08 $0B $D0 $01 $60 $A2 $01 $02
.db $8E $B5 $0B $82 $05 $01 $E2 $20
.db $AD $B6 $0B $C9 $18 $F0 $22 $C9
.db $02 $F0 $0E $EE $B6 $0B $EE $B6
.db $0B $20 $D2 $AB $B0 $0C $82 $EA
.db $00 $A2 $01 $06 $8E $B5 $0B $82
.db $E1 $00 $CE $B6 $0B $CE $B6 $0B
.db $60 $AD $00 $0C $CD $FF $0B $90
.db $01 $60 $EE $00 $0C $A9 $06 $8D
.db $B6 $0B $82 $D5 $00 $E2 $20 $AD
.db $B6 $0B $C9 $02 $D0 $01 $60 $AD
.db $B5 $0B $C9 $01 $F0 $07 $A9 $01
.db $8D $B5 $0B $80 $07 $A9 $0F $8D
.db $B5 $0B $80 $00 $20 $D2 $AB $B0
.db $03 $82 $9F $00 $AE $B3 $0B $8E
.db $B5 $0B $60 $E2 $20 $AD $08 $0B
.db $D0 $02 $80 $6D $AD $B6 $0B $C9
.db $02 $D0 $0B $A2 $FF $FF $8E $09
.db $0B $AD $0B $0B $80 $06 $20 $D2
.db $AB $8E $09 $0B $48 $22 $2F $EE
.db $83 $90 $09 $68 $A9 $01 $22 $E6
.db $E3 $81 $80 $0C $68 $A6 $50 $8E
.db $CB $0B $22 $82 $B2 $81 $90 $01
.db $60 $22 $6B $E4 $81 $A2 $00 $00
.db $86 $50 $86 $52 $22 $4E $95 $80
.db $22 $53 $D8 $81 $20 $C2 $D6 $22
.db $75 $E4 $81 $22 $EA $87 $80 $A9
.db $FF $8D $0A $0C $7A $AB $28 $6B
.db $E2 $20 $AD $08 $0B $F0 $01 $60
.db $A9 $FF $8D $0A $0C $7A $AB $28
.db $6B $E2 $20 $AD $B6 $0B $C9 $02
.db $D0 $05 $AD $0B $0B $80 $03 $20
.db $D2 $AB $A2 $02 $0A $8E $30 $0B
.db $A2 $10 $0A $8E $32 $0B $22 $A6
.db $E6 $81 $60 $C2 $20 $22 $C6 $D2
.db $81 $AD $B5 $0B $8D $B3 $0B $4C
.db $C2 $D6 $E2 $20 $20 $D2 $AB $90
.db $05 $A9 $01 $8D $B5 $0B $20 $34
.db $AC $60 $08 $E2 $20 $AD $00 $0C
.db $3A $EB $A9 $28 $C2 $20 $8F $02
.db $42 $00 $EA $EA $EA $AF $16 $42
.db $00 $E2 $20 $C2 $20 $8D $D1 $0B
.db $AD $B6 $0B $29 $FF $00 $38 $E9
.db $06 $00 $0A $18 $6D $D1 $0B $8D
.db $D1 $0B $AD $B5 $0B $29 $FF $00
.db $C9 $01 $00 $F0 $06 $EE $D1 $0B
.db $EE $D1 $0B $AD $D1 $0B $C9 $00
.db $01 $B0 $16 $AE $D1 $0B $BF $30
.db $50 $7F $29 $FF $00 $C9 $FF $00
.db $F0 $07 $BF $30 $50 $7F $28 $18
.db $60 $28 $38 $60 $08 $C2 $20 $22
.db $6B $E4 $81 $AD $C7 $0B $85 $50
.db $85 $52 $A9 $01 $05 $8D $1B $0C
.db $A9 $1E $16 $8D $1D $0C $A9 $00
.db $00 $22 $5F $D3 $81 $22 $EE $D4
.db $81 $AD $00 $0C $29 $FF $00 $3A
.db $A0 $28 $00 $22 $33 $D7 $81 $8D
.db $D1 $0B $E2 $20 $A9 $00 $85 $02
.db $A2 $36 $0B $86 $00 $A0 $00 $00
.db $AE $D1 $0B $BF $30 $50 $7F $97
.db $00 $E8 $E8 $C8 $E0 $00 $01 $F0
.db $05 $C0 $14 $00 $D0 $ED $A9 $FE
.db $97 $00 $C2 $20 $9C $DD $0B $AD
.db $DD $0B $0A $AA $BD $16 $AD $8D
.db $1B $0C $22 $A8 $D5 $81 $A0 $00
.db $00 $AD $DD $0B $8D $9E $0B $A9
.db $40 $00 $8D $A1 $0B $AD $DD $0B
.db $0A $18 $6D $D1 $0B $AA $BF $30
.db $50 $7F $A6 $15 $22 $36 $C7 $81
.db $EE $DD $0B $AD $DD $0B $0A $18
.db $6D $D1 $0B $AA $BF $30 $50 $7F
.db $29 $FF $00 $C9 $FF $00 $F0 $0E
.db $AE $DD $0B $BD $36 $0B $29 $FF
.db $00 $C9 $FE $00 $D0 $A9 $E2 $20
.db $20 $3E $AD $A2 $BA $01 $8E $04
.db $0B $A2 $7A $06 $8E $06 $0B $22
.db $24 $E8 $81 $AE $B5 $0B $8E $B3
.db $0B $22 $C6 $D2 $81 $A0 $00 $64
.db $22 $3B $E6 $81 $28 $60 $03 $06
.db $11 $06 $03 $08 $11 $08 $03 $0A
.db $11 $0A $03 $0C $11 $0C $03 $0E
.db $11 $0E $03 $10 $11 $10 $03 $12
.db $11 $12 $03 $14 $11 $14 $03 $16
.db $11 $16 $03 $18 $11 $18 $08 $C2
.db $20 $A2 $AE $00 $AD $00 $0C $29
.db $FF $00 $22 $AC $D6 $81 $A2 $B2
.db $00 $AD $FF $0B $29 $FF $00 $22
.db $AC $D6 $81 $A2 $B2 $00 $A9 $2D
.db $25 $9F $00 $30 $7E $A9 $3D $25
.db $9F $40 $30 $7E $28 $60 $E2 $20
.db $C2 $20 $AD $1A $0C $29 $FF $00
.db $0A $AA $E2 $20 $FC $80 $AD $60
.db $86 $AD $99 $B3 $15 $B6 $E2 $20
.db $20 $DE $D6 $A9 $01 $8D $10 $0C
.db $9C $13 $0C $9C $15 $0C $22 $EA
.db $87 $80 $AF $17 $44 $7F $A2 $00
.db $00 $22 $0F $D1 $81 $A9 $00 $22
.db $B6 $D1 $81 $22 $EA $87 $80 $A9
.db $01 $A2 $00 $7F $86 $0D $A2 $28
.db $44 $86 $0C $22 $C0 $D1 $81 $22
.db $EA $87 $80 $A2 $01 $01 $8E $1B
.db $0C $22 $CF $CA $81 $A2 $10 $0B
.db $8E $1B $0C $A2 $0F $0A $8E $1D
.db $0C $A9 $00 $22 $5F $D3 $81 $22
.db $EE $D4 $81 $A2 $12 $0C $8E $1B
.db $0C $A2 $00 $7F $86 $0D $A2 $28
.db $44 $86 $0C $A9 $01 $22 $D6 $C7
.db $81 $A9 $03 $8D $0F $0C $A2 $10
.db $15 $8E $1B $0C $A2 $0F $06 $8E
.db $1D $0C $A9 $00 $22 $5F $D3 $81
.db $22 $EE $D4 $81 $20 $5F $AF $A2
.db $87 $31 $8E $08 $0C $A2 $01 $0D
.db $8E $05 $0C $A9 $06 $8D $07 $0C
.db $22 $7B $D7 $81 $A2 $10 $0C $8E
.db $05 $0C $A9 $04 $8D $07 $0C $22
.db $7B $D7 $81 $A2 $10 $16 $8E $05
.db $0C $A9 $02 $8D $07 $0C $22 $7B
.db $D7 $81 $A2 $89 $31 $8E $08 $0C
.db $A2 $17 $16 $8E $05 $0C $A9 $01
.db $8D $07 $0C $22 $7B $D7 $81 $A6
.db $50 $8E $CD $0B $A2 $01 $0B $8E
.db $1B $0C $A2 $0F $10 $8E $1D $0C
.db $22 $EE $D4 $81 $A2 $00 $00 $8E
.db $D1 $0B $A2 $03 $0D $8E $1B $0C
.db $A2 $06 $00 $8E $A1 $0B $22 $B2
.db $AE $81 $22 $B0 $AF $81 $A9 $FF
.db $8D $11 $0C $A2 $10 $16 $8E $B5
.db $0B $8E $B3 $0B $22 $C6 $D2 $81
.db $9C $11 $0C $9C $10 $0C $C2 $20
.db $A9 $2D $00 $22 $16 $AA $80 $4C
.db $C2 $D6 $08 $C2 $20 $22 $6B $E4
.db $81 $A9 $00 $00 $85 $01 $A9 $36
.db $0B $85 $00 $AE $D1 $0B $AD $A1
.db $0B $85 $15 $A0 $00 $00 $E2 $20
.db $A5 $15 $F0 $1A $E0 $00 $01 $F0
.db $15 $BF $30 $50 $7F $C9 $FF $F0
.db $0D $BF $30 $50 $7F $97 $00 $E8
.db $E8 $C8 $C6 $15 $80 $E2 $A9 $FE
.db $97 $00 $C2 $20 $A9 $00 $00 $8D
.db $DD $0B $AD $D1 $0B $8D $A4 $0B
.db $AE $DD $0B $BD $36 $0B $29 $FF
.db $00 $C9 $FE $00 $F0 $40 $22 $65
.db $EE $83 $90 $05 $A0 $01 $00 $80
.db $03 $A0 $00 $00 $5A $AE $A4 $0B
.db $BF $30 $50 $7F $48 $22 $A8 $D5
.db $81 $A6 $15 $A9 $40 $00 $8D $A1
.db $0B $AD $DD $0B $8D $9E $0B $68
.db $7A $22 $36 $C7 $81 $EE $DD $0B
.db $EE $A4 $0B $EE $A4 $0B $EE $1C
.db $0C $EE $1C $0C $80 $B2 $A5 $50
.db $85 $52 $22 $4E $95 $80 $A0 $00
.db $64 $22 $86 $E4 $81 $28 $6B $08
.db $E2 $20 $A2 $A4 $05 $A0 $BC $C4
.db $A9 $00 $22 $1F $E2 $81 $A2 $A4
.db $05 $A0 $0A $00 $A9 $01 $20 $45
.db $C9 $A2 $24 $06 $A0 $03 $00 $A9
.db $01 $20 $45 $C9 $AD $0F $0C $C9
.db $03 $F0 $23 $C9 $02 $F0 $14 $C9
.db $01 $F0 $08 $A2 $A4 $05 $A0 $04
.db $00 $80 $0E $A2 $B2 $05 $A0 $03
.db $00 $80 $06 $A2 $24 $06 $A0 $03
.db $00 $A9 $00 $20 $45 $C9 $28 $60
.db $08 $C2 $20 $AD $15 $0C $29 $FF
.db $00 $F0 $16 $A2 $24 $03 $86 $21
.db $A2 $64 $06 $86 $23 $A2 $2E $03
.db $86 $25 $A2 $6E $06 $86 $27 $80
.db $14 $A2 $06 $03 $86 $21 $A2 $46
.db $06 $86 $23 $A2 $10 $03 $86 $25
.db $A2 $50 $06 $86 $27 $A6 $21 $A9
.db $FE $20 $9F $00 $30 $7E $9F $02
.db $30 $7E $9F $04 $30 $7E $9F $06
.db $30 $7E $9F $08 $30 $7E $9F $0A
.db $30 $7E $9F $0C $30 $7E $9F $0E
.db $30 $7E $9F $10 $30 $7E $9F $12
.db $30 $7E $9F $14 $30 $7E $9F $16
.db $30 $7E $A6 $23 $9F $00 $30 $7E
.db $9F $02 $30 $7E $9F $04 $30 $7E
.db $9F $06 $30 $7E $9F $08 $30 $7E
.db $9F $0A $30 $7E $9F $0C $30 $7E
.db $9F $0E $30 $7E $9F $10 $30 $7E
.db $9F $12 $30 $7E $9F $14 $30 $7E
.db $9F $16 $30 $7E $AD $D1 $0B $C9
.db $00 $00 $F0 $09 $A6 $25 $A9 $FA
.db $A4 $9F $00 $30 $7E $AD $D1 $0B
.db $18 $69 $0A $00 $C9 $FE $00 $F0
.db $1D $C9 $06 $01 $F0 $18 $1A $1A
.db $AA $BF $30 $50 $7F $29 $FF $00
.db $C9 $FF $00 $F0 $09 $A6 $27 $A9
.db $FA $24 $9F $00 $30 $7E $28 $6B
.db $A6 $50 $8E $CF $0B $C2 $20 $AE
.db $CF $0B $86 $50 $86 $52 $22 $74
.db $93 $80 $F4 $8C $B0 $A9 $A4 $B0
.db $4C $F2 $D7 $60 $B4 $B0 $BB $B0
.db $A3 $B0 $A3 $B0 $11 $B1 $CF $B0
.db $DB $B0 $A3 $B0 $22 $84 $B1 $81
.db $90 $08 $60 $22 $AF $B1 $81 $90
.db $01 $60 $22 $C6 $D2 $81 $AE $B5
.db $0B $8E $B3 $0B $4C $C2 $D6 $C2
.db $20 $AE $CF $0B $86 $50 $86 $52
.db $68 $38 $60 $AD $B6 $0B $29 $FF
.db $00 $C9 $0C $00 $B0 $0C $38 $E9
.db $02 $00 $4A $AA $BF $20 $44 $7F
.db $80 $0A $38 $E9 $0C $00 $4A $AA
.db $BF $28 $44 $7F $A2 $04 $08 $8E
.db $30 $0B $8E $32 $0B $AE $CF $0B
.db $86 $50 $86 $52 $22 $A6 $E6 $81
.db $60 $E2 $20 $20 $5A $B1 $C9 $3D
.db $F0 $04 $C9 $3F $D0 $07 $A9 $08
.db $22 $E6 $E3 $81 $60 $AD $B6 $0B
.db $C9 $0C $B0 $16 $C2 $20 $29 $FF
.db $00 $3A $3A $4A $AA $7A $AD $CF
.db $0B $85 $50 $85 $52 $A9 $00 $00
.db $18 $60 $C2 $20 $29 $FF $00 $38
.db $E9 $0C $00 $4A $AA $7A $AD $CF
.db $0B $85 $50 $85 $52 $A9 $01 $00
.db $18 $60 $08 $E2 $20 $AD $B6 $0B
.db $C9 $0C $B0 $0F $C2 $20 $29 $FF
.db $00 $3A $3A $4A $AA $BF $20 $44
.db $7F $80 $0F $C2 $20 $29 $FF $00
.db $38 $E9 $0C $00 $4A $AA $BF $28
.db $44 $7F $28 $60 $08 $C2 $20 $AD
.db $B5 $0B $48 $CE $B6 $0B $CE $B6
.db $0B $AD $B6 $0B $29 $FF $00 $C9
.db $00 $00 $F0 $0C $22 $DA $B1 $81
.db $90 $02 $80 $E7 $68 $28 $18 $6B
.db $68 $8D $B5 $0B $28 $38 $6B $08
.db $C2 $20 $AD $B5 $0B $48 $EE $B6
.db $0B $EE $B6 $0B $AD $B6 $0B $29
.db $FF $00 $C9 $14 $00 $F0 $0C $22
.db $DA $B1 $81 $90 $02 $80 $E7 $68
.db $28 $18 $6B $68 $8D $B5 $0B $28
.db $38 $6B $08 $C2 $20 $AD $B5 $0B
.db $18 $69 $02 $00 $8D $1B $0C $22
.db $A8 $D5 $81 $A6 $15 $BF $00 $30
.db $7E $C9 $F1 $A0 $F0 $0B $29 $FF
.db $00 $C9 $FE $00 $F0 $03 $28 $18
.db $6B $28 $38 $6B $08 $E2 $20 $A9
.db $01 $8D $10 $0C $A6 $50 $DA $AD
.db $14 $0C $D0 $1D $AE $9F $0F $86
.db $50 $A2 $12 $02 $8E $1B $0C $A2
.db $00 $7F $86 $0D $A2 $20 $44 $86
.db $0C $A9 $00 $22 $D6 $C7 $81 $80
.db $23 $C2 $20 $AD $9F $0F $18 $69
.db $10 $00 $85 $50 $E2 $20 $A2 $12
.db $0C $8E $1B $0C $A2 $00 $7F $86
.db $0D $A2 $28 $44 $86 $0C $A9 $01
.db $22 $D6 $C7 $81 $20 $C2 $D6 $9C
.db $10 $0C $AD $14 $0C $D0 $08 $A9
.db $00 $22 $B6 $D1 $81 $80 $10 $A9
.db $01 $A2 $00 $7F $86 $0D $A2 $28
.db $44 $86 $0C $22 $C0 $D1 $81 $22
.db $EA $87 $80 $FA $86 $50 $86 $52
.db $28 $60 $08 $C2 $20 $48 $AD $B5
.db $0B $8D $BB $0B $A9 $08 $00 $A2
.db $0A $00 $A0 $00 $00 $22 $A3 $A9
.db $87 $A9 $0A $0A $8D $1B $0C $22
.db $A8 $D5 $81 $A6 $15 $A0 $BC $A9
.db $A9 $04 $00 $22 $1F $E2 $81 $AD
.db $1B $0C $18 $69 $01 $01 $8D $1B
.db $0C $22 $A8 $D5 $81 $A6 $15 $A0
.db $58 $DF $68 $22 $1F $E2 $81 $A0
.db $BC $A9 $A9 $03 $00 $22 $1F $E2
.db $81 $AD $1B $0C $18 $69 $07 $04
.db $8D $B5 $0B $8D $B3 $0B $22 $C6
.db $D2 $81 $A5 $50 $8D $CB $0B $E2
.db $20 $A9 $01 $8D $07 $0C $C2 $20
.db $AD $1B $0C $18 $69 $00 $04 $8D
.db $05 $0C $A9 $89 $31 $8D $08 $0C
.db $22 $7B $D7 $81 $AD $05 $0C $18
.db $69 $07 $00 $8D $05 $0C $22 $7B
.db $D7 $81 $20 $C2 $D6 $C2 $20 $22
.db $EA $87 $80 $F4 $14 $B3 $A9 $25
.db $B3 $4C $F2 $D7 $60 $24 $B3 $24
.db $B3 $35 $B3 $35 $B3 $53 $B3 $67
.db $B3 $24 $B3 $24 $B3 $E2 $20 $AD
.db $B5 $0B $18 $69 $07 $C9 $19 $D0
.db $02 $A9 $0B $8D $B5 $0B $22 $C6
.db $D2 $81 $AE $B5 $0B $8E $B3 $0B
.db $4C $C2 $D6 $C2 $20 $AD $B5 $0B
.db $29 $FF $00 $C9 $12 $00 $F0 $07
.db $20 $70 $B3 $68 $28 $18 $6B $C2
.db $20 $20 $70 $B3 $68 $28 $38 $6B
.db $AD $BB $0B $8D $B5 $0B $8D $B3
.db $0B $A9 $08 $00 $A2 $0A $00 $A0
.db $01 $00 $22 $A3 $A9 $87 $AD $CB
.db $0B $85 $50 $85 $52 $22 $4E $95
.db $80 $20 $C2 $D6 $22 $EA $87 $80
.db $60 $C2 $20 $A9 $A2 $B3 $4C $F2
.db $D7 $60 $C8 $B3 $D3 $B3 $BD $B3
.db $B2 $B3 $3E $B4 $03 $B4 $A1 $B3
.db $A1 $B3 $AD $B5 $0B $C9 $10 $16
.db $D0 $02 $80 $2A $60 $AD $B5 $0B
.db $C9 $17 $16 $D0 $02 $80 $17 $60
.db $AD $B5 $0B $C9 $10 $18 $D0 $02
.db $80 $0C $60 $AD $B5 $0B $C9 $10
.db $16 $D0 $02 $80 $11 $60 $A2 $10
.db $16 $8E $B5 $0B $80 $10 $A2 $17
.db $16 $8E $B5 $0B $80 $08 $A2 $10
.db $18 $8E $B5 $0B $80 $00 $22 $C6
.db $D2 $81 $AE $B5 $0B $8E $B3 $0B
.db $4C $C2 $D6 $E2 $20 $A9 $01 $8D
.db $10 $0C $AD $ED $08 $22 $69 $D9
.db $83 $A2 $00 $00 $86 $50 $86 $52
.db $8E $C1 $0B $22 $4E $95 $80 $22
.db $53 $D8 $81 $AD $17 $0C $8D $4A
.db $07 $9C $1A $0C $9C $19 $0C $9C
.db $10 $0C $C2 $20 $A9 $BE $00 $22
.db $16 $AA $80 $4C $C2 $D6 $A2 $74
.db $B4 $AD $B5 $0B $C9 $10 $16 $F0
.db $0B $A2 $C7 $B4 $C9 $17 $16 $F0
.db $03 $A2 $59 $B4 $86 $15 $6C $15
.db $00 $E2 $20 $A2 $00 $00 $BF $30
.db $50 $7F $C9 $FF $D0 $07 $A9 $02
.db $22 $E6 $E3 $81 $60 $A9 $02 $8D
.db $0F $0C $80 $34 $E2 $20 $A2 $00
.db $00 $BF $30 $50 $7F $C9 $FF $F0
.db $1D $A9 $00 $8D $14 $0C $22 $02
.db $B8 $81 $90 $19 $A9 $01 $8D $14
.db $0C $22 $02 $B8 $81 $90 $0E $A9
.db $06 $22 $E6 $E3 $81 $60 $A9 $02
.db $22 $E6 $E3 $81 $60 $9C $0F $0C
.db $EE $1A $0C $A2 $01 $0D $8E $B5
.db $0B $22 $C6 $D2 $81 $AE $B5 $0B
.db $8E $B3 $0B $20 $5F $AF $A9 $2E
.db $22 $16 $AA $80 $4C $C2 $D6 $E2
.db $20 $A2 $10 $02 $8E $B5 $0B $AF
.db $20 $44 $7F $C9 $FF $D0 $1B $A2
.db $10 $0C $8E $B5 $0B $AF $28 $44
.db $7F $C9 $FF $D0 $0D $A2 $17 $16
.db $8E $B5 $0B $A9 $03 $22 $E6 $E3
.db $81 $60 $22 $1E $AC $87 $90 $0D
.db $A2 $17 $16 $8E $B5 $0B $A9 $00
.db $22 $E6 $E3 $81 $60 $A9 $01 $8D
.db $0F $0C $20 $5F $AF $22 $C6 $D2
.db $81 $AE $B5 $0B $8E $B3 $0B $A9
.db $2E $22 $16 $AA $80 $20 $C2 $D6
.db $20 $88 $B0 $90 $26 $E2 $20 $A9
.db $03 $8D $0F $0C $20 $5F $AF $C2
.db $20 $A2 $17 $16 $8E $B5 $0B $22
.db $C6 $D2 $81 $AE $B5 $0B $8E $B3
.db $0B $A9 $BE $00 $22 $16 $AA $80
.db $4C $C2 $D6 $E2 $20 $DA $7A $C9
.db $00 $D0 $0C $A2 $00 $7F $86 $10
.db $A2 $20 $44 $86 $0F $80 $0A $A2
.db $00 $7F $86 $10 $A2 $28 $44 $86
.db $0F $E2 $20 $8D $14 $0C $B7 $0F
.db $85 $15 $C8 $C8 $C8 $C8 $B7 $0F
.db $85 $16 $A9 $FF $97 $0F $88 $88
.db $88 $88 $97 $0F $C2 $20 $A5 $15
.db $22 $D4 $AB $87 $22 $9B $97 $81
.db $E2 $20 $A9 $01 $8D $10 $0C $8D
.db $13 $0C $AE $CD $0B $86 $50 $A2
.db $03 $0D $8E $1B $0C $A2 $06 $00
.db $8E $A1 $0B $22 $B2 $AE $81 $22
.db $B0 $AF $81 $20 $04 $B2 $22 $1E
.db $AC $87 $90 $03 $4C $25 $B5 $AD
.db $14 $0C $D0 $39 $AF $20 $44 $7F
.db $C9 $FF $D0 $10 $AF $28 $44 $7F
.db $C9 $FF $F0 $E8 $A2 $10 $0C $8E
.db $B5 $0B $80 $11 $AD $B6 $0B $C9
.db $02 $F0 $0A $C9 $0C $F0 $06 $CE
.db $B6 $0B $CE $B6 $0B $22 $C6 $D2
.db $81 $AE $B5 $0B $8E $B3 $0B $20
.db $C2 $D6 $4C $20 $B5 $AF $28 $44
.db $7F $C9 $FF $D0 $D7 $AF $20 $44
.db $7F $C9 $FF $F0 $AF $A2 $10 $02
.db $8E $B5 $0B $80 $D8 $C2 $20 $A9
.db $1E $B6 $4C $F2 $D7 $60 $76 $B6
.db $96 $B6 $2E $B6 $43 $B6 $FC $B6
.db $C7 $B6 $F3 $B7 $1D $B6 $E2 $20
.db $AE $D1 $0B $E0 $00 $00 $D0 $01
.db $60 $A9 $0D $8D $B6 $0B $22 $FF
.db $B8 $81 $60 $E2 $20 $AD $B6 $0B
.db $48 $A9 $17 $8D $B6 $0B $22 $DE
.db $B8 $81 $E0 $FE $00 $F0 $1A $E0
.db $06 $01 $F0 $15 $E8 $E8 $BF $30
.db $50 $7F $C9 $FF $F0 $0B $68 $A9
.db $0D $8D $B6 $0B $22 $4B $B9 $81
.db $60 $68 $8D $B6 $0B $60 $E2 $20
.db $AD $B6 $0B $C9 $0D $D0 $0E $AE
.db $D1 $0B $E0 $00 $00 $D0 $01 $60
.db $22 $F6 $B8 $81 $60 $CE $B6 $0B
.db $CE $B6 $0B $4C $31 $B8 $C2 $20
.db $22 $DE $B8 $81 $E0 $FE $00 $F0
.db $25 $E8 $E8 $BF $30 $50 $7F $29
.db $FF $00 $C9 $FF $00 $F0 $17 $E2
.db $20 $AD $B6 $0B $C9 $17 $D0 $05
.db $22 $42 $B9 $81 $60 $EE $B6 $0B
.db $EE $B6 $0B $4C $31 $B8 $60 $C2
.db $20 $AD $0F $0C $29 $FF $00 $D0
.db $05 $A2 $10 $16 $80 $03 $A2 $10
.db $18 $E2 $20 $8E $B5 $0B $22 $C6
.db $D2 $81 $AE $B5 $0B $8E $B3 $0B
.db $A9 $03 $8D $0F $0C $20 $5F $AF
.db $A9 $BE $22 $16 $AA $80 $CE $1A
.db $0C $4C $C2 $D6 $C2 $20 $AD $0F
.db $0C $29 $FF $00 $D0 $03 $4C $66
.db $B7 $22 $DE $B8 $81 $29 $FF $00
.db $C9 $FF $00 $D0 $01 $60 $22 $2F
.db $EE $83 $90 $08 $A9 $01 $00 $22
.db $E6 $E3 $81 $60 $AD $B5 $0B $8D
.db $BB $0B $22 $DE $B8 $81 $DA $22
.db $82 $B2 $81 $90 $02 $FA $60 $FA
.db $A9 $FF $FF $9F $30 $50 $7F $22
.db $C6 $D9 $81 $E2 $20 $A9 $01 $8D
.db $10 $0C $8D $13 $0C $22 $3E $B8
.db $81 $A2 $00 $00 $BF $30 $50 $7F
.db $C9 $FF $D0 $03 $4C $C7 $B6 $20
.db $C2 $D6 $9C $10 $0C $60 $E2 $20
.db $22 $DE $B8 $81 $48 $A9 $28 $8D
.db $04 $0C $68 $22 $70 $97 $81 $B0
.db $04 $A9 $00 $80 $02 $A9 $01 $8D
.db $14 $0C $22 $02 $B8 $81 $90 $0B
.db $AD $14 $0C $18 $69 $04 $22 $E6
.db $E3 $81 $60 $C2 $20 $22 $DE $B8
.db $81 $DA $22 $BE $FB $83 $FA $A9
.db $FF $FF $9F $30 $50 $7F $22 $C6
.db $D9 $81 $E2 $20 $A9 $01 $8D $10
.db $0C $8D $13 $0C $AE $B5 $0B $8E
.db $B3 $0B $22 $C6 $D2 $81 $20 $04
.db $B2 $22 $3E $B8 $81 $A2 $00 $00
.db $BF $30 $50 $7F $C9 $FF $F0 $16
.db $A9 $00 $8D $14 $0C $22 $02 $B8
.db $81 $90 $11 $A9 $01 $8D $14 $0C
.db $22 $02 $B8 $81 $90 $06 $9C $10
.db $0C $4C $C7 $B6 $20 $C2 $D6 $9C
.db $10 $0C $60 $22 $DE $B8 $81 $A2
.db $10 $0B $8E $32 $0B $22 $A6 $E6
.db $81 $60 $08 $E2 $20 $A2 $00 $00
.db $AD $14 $0C $D0 $11 $BF $20 $44
.db $7F $C9 $FF $F0 $19 $E8 $E0 $04
.db $00 $D0 $F2 $28 $38 $6B $BF $28
.db $44 $7F $C9 $FF $F0 $08 $E8 $E0
.db $04 $00 $D0 $F2 $80 $ED $28 $18
.db $6B $22 $C6 $D2 $81 $AE $B5 $0B
.db $8E $B3 $0B $4C $C2 $D6 $08 $C2
.db $20 $22 $DE $B8 $81 $29 $FF $00
.db $C9 $FF $00 $D0 $55 $AD $B6 $0B
.db $29 $FF $00 $C9 $0D $00 $D0 $42
.db $AD $D1 $0B $C9 $00 $00 $F0 $42
.db $AD $D1 $0B $C9 $0C $00 $B0 $1D
.db $E2 $20 $A2 $00 $00 $8E $D1 $0B
.db $A9 $17 $8D $B6 $0B $22 $DE $B8
.db $81 $C9 $FF $D0 $25 $CE $B6 $0B
.db $CE $B6 $0B $80 $F0 $C2 $20 $AD
.db $D1 $0B $38 $E9 $0C $00 $8D $D1
.db $0B $E2 $20 $A9 $17 $8D $B6 $0B
.db $80 $08 $E2 $20 $CE $B6 $0B $CE
.db $B6 $0B $E2 $20 $A9 $FF $8D $11
.db $0C $22 $C6 $D2 $81 $AE $B5 $0B
.db $8E $B3 $0B $9C $11 $0C $20 $8E
.db $B9 $AD $15 $0C $F0 $05 $A2 $12
.db $0D $80 $03 $A2 $03 $0D $8E $1B
.db $0C $A2 $06 $00 $8E $A1 $0B $AE
.db $CD $0B $86 $50 $22 $B2 $AE $81
.db $22 $B0 $AF $81 $28 $6B $08 $C2
.db $20 $AD $B6 $0B $29 $FF $00 $38
.db $E9 $0D $00 $18 $6D $D1 $0B $AA
.db $BF $30 $50 $7F $28 $6B $08 $E2
.db $20 $A9 $17 $8D $B6 $0B $28 $08
.db $E2 $20 $20 $8E $B9 $AD $B5 $0B
.db $18 $69 $02 $8D $1B $0C $A9 $0D
.db $8D $1C $0C $AE $CD $0B $86 $50
.db $86 $52 $A2 $06 $00 $8E $A1 $0B
.db $C2 $20 $AD $D1 $0B $38 $E9 $0C
.db $00 $8D $D1 $0B $E2 $20 $22 $C6
.db $D2 $81 $AD $B6 $0B $8D $B4 $0B
.db $22 $B0 $AF $81 $22 $B2 $AE $81
.db $28 $6B $08 $E2 $20 $A9 $0D $8D
.db $B6 $0B $28 $08 $E2 $20 $20 $8E
.db $B9 $AD $B5 $0B $18 $69 $02 $8D
.db $1B $0C $A9 $0D $8D $1C $0C $AE
.db $CD $0B $86 $50 $86 $52 $A2 $06
.db $00 $8E $A1 $0B $C2 $20 $AD $D1
.db $0B $18 $69 $0C $00 $8D $D1 $0B
.db $E2 $20 $22 $C6 $D2 $81 $AD $B6
.db $0B $8D $B4 $0B $22 $B0 $AF $81
.db $22 $B2 $AE $81 $28 $6B $08 $E2
.db $20 $AD $B5 $0B $C9 $01 $F0 $08
.db $A2 $12 $0D $8E $1B $0C $80 $06
.db $A2 $03 $0D $8E $1B $0C $A2 $0C
.db $0C $8E $1D $0C $A9 $02 $22 $5F
.db $D3 $81 $22 $EE $D4 $81 $28 $60
.db $E2 $20 $C2 $20 $AD $1A $0C $29
.db $FF $00 $0A $AA $E2 $20 $FC $CA
.db $B9 $60 $CE $B9 $8A $BB $E2 $20
.db $20 $DE $D6 $A2 $00 $00 $8E $B0
.db $0B $AD $5E $08 $38 $ED $60 $08
.db $C9 $08 $B0 $0B $A2 $16 $02 $8E
.db $1B $0C $A2 $16 $03 $80 $09 $A2
.db $02 $02 $8E $1B $0C $A2 $02 $03
.db $8E $05 $0C $8E $B3 $0B $8E $B5
.db $0B $22 $A8 $D5 $81 $A6 $15 $A0
.db $E6 $AA $A9 $16 $22 $1F $E2 $81
.db $A9 $00 $85 $19 $AD $0B $0C $A2
.db $00 $00 $20 $7C $BA $A9 $08 $85
.db $19 $AD $0C $0C $20 $7C $BA $A9
.db $10 $85 $19 $AD $0D $0C $20 $7C
.db $BA $8A $8D $07 $0C $8D $C0 $0B
.db $0A $18 $69 $02 $8D $1E $0C $A9
.db $07 $8D $1D $0C $9C $0C $0C $A6
.db $17 $A0 $E6 $AA $A9 $17 $22 $1F
.db $E2 $81 $A2 $87 $31 $8E $08 $0C
.db $22 $7B $D7 $81 $AD $B0 $0B $8D
.db $D1 $0B $0A $18 $6D $B6 $0B $8D
.db $B6 $0B $8D $B4 $0B $6D $B4 $0B
.db $A9 $FF $8D $11 $0C $22 $C6 $D2
.db $81 $4C $C2 $D6 $E2 $20 $85 $1A
.db $A5 $1A $F0 $28 $4A $85 $1A $B0
.db $04 $E6 $19 $80 $F3 $A5 $19 $9D
.db $DF $0B $CD $03 $0B $D0 $03 $8E
.db $B0 $0B $E8 $DA $A6 $17 $A5 $19
.db $A0 $E6 $AA $22 $1F $E2 $81 $FA
.db $E6 $19 $80 $D4 $60 $E2 $20 $C2
.db $20 $AD $1A $0C $29 $FF $00 $0A
.db $AA $E2 $20 $FC $BF $BA $60 $C3
.db $BA $8A $BB $E2 $20 $20 $DE $D6
.db $A9 $02 $8D $1B $0C $8D $1C $0C
.db $8D $05 $0C $8D $B3 $0B $8D $B5
.db $0B $A9 $03 $8D $06 $0C $8D $B4
.db $0B $8D $B6 $0B $AD $5E $08 $38
.db $ED $60 $08 $C9 $08 $B0 $0E $A9
.db $16 $8D $1B $0C $8D $05 $0C $8D
.db $B3 $0B $8D $B5 $0B $22 $A8 $D5
.db $81 $C2 $20 $A6 $15 $A0 $C6 $AC
.db $A9 $04 $00 $22 $1F $E2 $81 $C2
.db $20 $A2 $00 $00 $E2 $20 $64 $19
.db $AD $0B $0C $F0 $2B $4A $8D $0B
.db $0C $B0 $04 $E6 $19 $80 $F4 $A5
.db $19 $9D $DF $0B $E8 $DA $C2 $20
.db $A6 $17 $A5 $19 $29 $FF $00 $A0
.db $C6 $AC $22 $1F $E2 $81 $FA $E2
.db $20 $E6 $19 $AD $0B $0C $80 $D3
.db $C2 $20 $8A $E2 $20 $8D $07 $0C
.db $8D $C0 $0B $0A $18 $69 $02 $8D
.db $1E $0C $A9 $07 $8D $1D $0C $C2
.db $20 $A6 $17 $A0 $C6 $AC $A9 $05
.db $00 $22 $1F $E2 $81 $A9 $87 $31
.db $8D $08 $0C $22 $7B $D7 $81 $E2
.db $20 $A9 $FF $8D $11 $0C $C2 $20
.db $22 $C6 $D2 $81 $9C $D1 $0B $4C
.db $C2 $D6 $C2 $20 $A9 $93 $BB $4C
.db $F2 $D7 $60 $FC $BB $22 $BC $92
.db $BB $92 $BB $A3 $BB $B6 $BB $92
.db $BB $92 $BB $C2 $20 $AD $D1 $0B
.db $29 $FF $00 $AA $E2 $20 $BD $DF
.db $0B $8D $0A $0C $80 $0F $E2 $20
.db $A9 $FF $8D $0A $0C $AD $0C $0C
.db $09 $7F $8D $0C $0C $AD $17 $0C
.db $8D $4A $07 $9C $1A $0C $9C $19
.db $0C $AD $0C $0C $0A $B0 $24 $A2
.db $01 $01 $8E $1B $0C $A2 $1E $1C
.db $8E $1D $0C $A9 $01 $22 $5F $D3
.db $81 $22 $EE $D4 $81 $20 $C2 $D6
.db $A2 $00 $00 $86 $50 $86 $52 $22
.db $4E $95 $80 $60 $E2 $20 $AD $D1
.db $0B $3A $C9 $FF $F0 $0B $8D $D1
.db $0B $AD $B4 $0B $38 $E9 $02 $80
.db $2D $AD $C0 $0B $3A $8D $D1 $0B
.db $AD $D1 $0B $0A $18 $6D $B6 $0B
.db $80 $1C $E2 $20 $AD $D1 $0B $1A
.db $CD $C0 $0B $10 $0B $8D $D1 $0B
.db $AD $B4 $0B $18 $69 $02 $80 $06
.db $9C $D1 $0B $AD $06 $0C $8D $B6
.db $0B $22 $C6 $D2 $81 $AD $B6 $0B
.db $8D $B4 $0B $4C $C2 $D6 $E2 $20
.db $C2 $20 $AD $1A $0C $29 $FF $00
.db $0A $AA $E2 $20 $FC $60 $BC $60
.db $64 $BC $C4 $BC $E2 $20 $20 $DE
.db $D6 $A9 $11 $8D $1C $0C $AD $5F
.db $08 $38 $ED $61 $08 $C9 $07 $90
.db $05 $A9 $01 $8D $1C $0C $E2 $20
.db $22 $EA $87 $80 $AF $17 $44 $7F
.db $A2 $00 $00 $22 $0F $D1 $81 $A9
.db $00 $22 $B6 $D1 $81 $22 $EA $87
.db $80 $A9 $01 $A2 $00 $7F $86 $0D
.db $A2 $28 $44 $86 $0C $22 $C0 $D1
.db $81 $A9 $01 $8D $1B $0C $AE $1B
.db $0C $8E $9E $0B $9C $0F $0C $22
.db $D9 $CC $81 $A9 $03 $22 $F8 $D6
.db $81 $4C $C2 $D6 $C2 $20 $A9 $CD
.db $BC $4C $F2 $D7 $60 $A5 $BD $A5
.db $BD $A5 $BD $A5 $BD $8A $BD $91
.db $BD $DD $BC $CC $BC $E2 $20 $AD
.db $0F $0C $D0 $5E $22 $6B $E4 $81
.db $A6 $50 $DA $A2 $00 $00 $86 $50
.db $AE $9E $0B $8E $1B $0C $22 $CF
.db $CA $81 $FA $86 $50 $86 $52 $C2
.db $20 $A2 $E0 $06 $A0 $0F $00 $A9
.db $FF $00 $9F $00 $30 $7E $E8 $E8
.db $88 $D0 $F7 $E2 $20 $A9 $01 $8D
.db $1C $0C $AD $5F $08 $38 $ED $61
.db $08 $C9 $07 $90 $05 $A9 $0B $8D
.db $1C $0C $A9 $01 $8D $1B $0C $8D
.db $0F $0C $20 $0E $CE $A9 $05 $22
.db $F8 $D6 $81 $22 $75 $E4 $81 $4C
.db $C2 $D6 $E2 $20 $22 $6B $E4 $81
.db $9C $0F $0C $A9 $01 $8D $1C $0C
.db $AD $5F $08 $38 $ED $61 $08 $C9
.db $07 $90 $05 $A9 $0B $8D $1C $0C
.db $AD $1C $0C $20 $F3 $BD $A6 $50
.db $DA $A2 $00 $00 $86 $50 $AE $9E
.db $0B $8E $1B $0C $22 $D9 $CC $81
.db $FA $86 $50 $86 $52 $A9 $02 $22
.db $F8 $D6 $81 $22 $75 $E4 $81 $4C
.db $C2 $D6 $E2 $20 $9C $0A $0C $80
.db $24 $E2 $20 $A9 $02 $22 $F8 $D6
.db $81 $AD $0F $0C $D0 $A4 $A9 $FF
.db $8D $0A $0C $80 $10 $E2 $20 $A9
.db $01 $8D $0A $0C $C2 $20 $A9 $2C
.db $00 $22 $16 $AA $80 $E2 $20 $AE
.db $C1 $0B $86 $50 $86 $52 $22 $4E
.db $95 $80 $22 $53 $D8 $81 $AD $17
.db $0C $8D $4A $07 $9C $1A $0C $9C
.db $19 $0C $4C $C2 $D6 $08 $C2 $20
.db $29 $FF $00 $AA $A0 $01 $00 $A9
.db $0A $00 $22 $A3 $A9 $87 $AD $33
.db $0C $85 $50 $85 $52 $22 $4E $95
.db $80 $28 $60 $08 $C2 $20 $29 $FF
.db $00 $AA $A0 $01 $00 $A9 $10 $00
.db $22 $A3 $A9 $87 $AD $35 $0C $85
.db $50 $85 $52 $22 $4E $95 $80 $28
.db $60 $E2 $20 $C2 $20 $AD $1A $0C
.db $29 $FF $00 $0A $AA $E2 $20 $FC
.db $23 $BE $60 $27 $BE $0B $C0 $E2
.db $20 $20 $DE $D6 $AD $ED $08 $22
.db $12 $D9 $83 $AD $00 $0B $D0 $04
.db $22 $ED $FE $83 $22 $01 $D9 $81
.db $AD $ED $08 $22 $12 $D9 $83 $AD
.db $00 $0B $D0 $04 $22 $ED $FE $83
.db $A2 $00 $7F $86 $0D $AD $0B $0C
.db $0A $90 $0C $A9 $01 $8D $14 $0C
.db $A2 $28 $44 $86 $0C $80 $0A $A9
.db $00 $8D $14 $0C $A2 $20 $44 $86
.db $0C $A9 $00 $22 $C0 $D1 $81 $AD
.db $0B $0C $29 $7F $8D $0B $0C $A9
.db $01 $8D $1B $0C $8D $1C $0C $AD
.db $5E $08 $38 $ED $60 $08 $C9 $08
.db $B0 $05 $A9 $10 $8D $1B $0C $22
.db $A8 $D5 $81 $C2 $20 $A6 $15 $A0
.db $94 $AE $A9 $00 $00 $22 $1F $E2
.db $81 $A5 $17 $18 $69 $04 $00 $AA
.db $9C $D5 $0B $9C $D1 $0B $E2 $20
.db $AD $0B $0C $4A $8D $0B $0C $B0
.db $0A $EE $D1 $0B $AD $0B $0C $F0
.db $73 $80 $EB $C2 $20 $8A $38 $E9
.db $04 $00 $AA $A0 $94 $AE $A9 $03
.db $00 $22 $1F $E2 $81 $A5 $17 $18
.db $69 $04 $00 $85 $17 $E2 $20 $AC
.db $D1 $0B $B7 $0C $C9 $FF $D0 $04
.db $A6 $17 $80 $28 $C2 $20 $A5 $17
.db $38 $E9 $80 $00 $AA $AD $D1 $0B
.db $85 $15 $20 $EF $C9 $8A $38 $E9
.db $68 $00 $AA $A0 $94 $AE $A9 $02
.db $00 $22 $1F $E2 $81 $A5 $17 $38
.db $E9 $18 $00 $AA $AD $D1 $0B $E2
.db $20 $DA $AE $D5 $0B $9D $DF $0B
.db $FA $C2 $20 $EE $D5 $0B $EE $D1
.db $0B $AD $D1 $0B $C9 $04 $00 $F0
.db $03 $4C $B6 $BE $E2 $20 $AD $D5
.db $0B $0A $18 $6D $1C $0C $1A $8D
.db $1C $0C $22 $A8 $D5 $81 $C2 $20
.db $A6 $15 $A0 $94 $AE $A9 $01 $00
.db $22 $1F $E2 $81 $AD $1B $0C $18
.db $69 $00 $01 $8D $A7 $0B $A9 $00
.db $00 $85 $10 $A9 $00 $7F $85 $0D
.db $AD $14 $0C $29 $FF $00 $D0 $0A
.db $A9 $8E $0B $85 $0F $A9 $20 $44
.db $80 $08 $A9 $96 $0B $85 $0F $A9
.db $28 $44 $85 $0C $AD $DF $0B $29
.db $FF $00 $A8 $B7 $0F $E2 $20 $87
.db $0C $22 $67 $A7 $81 $AD $69 $07
.db $8D $57 $0B $AD $67 $07 $8D $58
.db $0B $AD $6B $07 $8D $59 $0B $AD
.db $6D $07 $8D $5A $0B $AD $85 $07
.db $8D $5B $0B $AD $5D $07 $8D $5C
.db $0B $E2 $20 $AD $1B $0C $8D $05
.db $0C $A9 $02 $8D $06 $0C $AD $D5
.db $0B $8D $07 $0C $A2 $87 $31 $8E
.db $08 $0C $22 $7B $D7 $81 $AD $05
.db $0C $8D $B3 $0B $8D $B5 $0B $AD
.db $06 $0C $8D $B4 $0B $8D $B6 $0B
.db $A9 $FF $8D $11 $0C $22 $C6 $D2
.db $81 $AD $D5 $0B $8D $C0 $0B $9C
.db $D1 $0B $9C $D2 $0B $20 $0B $C1
.db $4C $C2 $D6 $C2 $20 $A9 $14 $C0
.db $4C $F2 $D7 $60 $7D $C0 $A3 $C0
.db $13 $C0 $13 $C0 $24 $C0 $37 $C0
.db $D2 $C0 $13 $C0 $C2 $20 $AD $D1
.db $0B $29 $FF $00 $AA $E2 $20 $BD
.db $DF $0B $8D $0A $0C $80 $0F $E2
.db $20 $A9 $FF $8D $0A $0C $AD $0C
.db $0C $09 $7F $8D $0C $0C $AD $17
.db $0C $8D $4A $07 $9C $1A $0C $9C
.db $19 $0C $AD $0C $0C $0A $B0 $24
.db $A2 $01 $01 $8E $1B $0C $A2 $1E
.db $1C $8E $1D $0C $A9 $01 $22 $5F
.db $D3 $81 $22 $EE $D4 $81 $20 $C2
.db $D6 $A2 $00 $00 $86 $50 $86 $52
.db $22 $4E $95 $80 $60 $E2 $20 $AD
.db $D1 $0B $3A $C9 $FF $F0 $0B $8D
.db $D1 $0B $AD $B4 $0B $38 $E9 $02
.db $80 $2D $AD $C0 $0B $3A $8D $D1
.db $0B $AD $D1 $0B $0A $18 $6D $B6
.db $0B $80 $1C $E2 $20 $AD $D1 $0B
.db $1A $CD $C0 $0B $10 $0B $8D $D1
.db $0B $AD $B4 $0B $18 $69 $02 $80
.db $06 $9C $D1 $0B $AD $06 $0C $8D
.db $B6 $0B $20 $0B $C1 $22 $C6 $D2
.db $81 $AD $B6 $0B $8D $B4 $0B $4C
.db $C2 $D6 $E2 $20 $AD $14 $0C $F0
.db $01 $60 $C2 $20 $AD $D1 $0B $29
.db $FF $00 $AA $BD $DF $0B $29 $FF
.db $00 $A8 $B7 $0F $48 $E2 $20 $A9
.db $0E $EB $AD $B5 $0B $C2 $20 $8D
.db $30 $0B $8D $32 $0B $68 $AE $A7
.db $0B $DA $22 $A6 $E6 $81 $FA $8E
.db $A7 $0B $60 $08 $C2 $20 $AD $D1
.db $0B $29 $FF $00 $AA $BD $DF $0B
.db $29 $FF $00 $A8 $B7 $0F $E2 $20
.db $87 $0C $AD $14 $0C $F0 $03 $4C
.db $C0 $C1 $22 $67 $A7 $81 $A9 $00
.db $22 $5F $D3 $81 $AE $A7 $0B $8E
.db $1B $0C $22 $48 $CE $81 $C2 $20
.db $AD $A7 $0B $18 $69 $06 $00 $8D
.db $1B $0C $22 $A8 $D5 $81 $A6 $15
.db $A0 $22 $B5 $A9 $0A $00 $22 $1F
.db $E2 $81 $AD $A7 $0B $18 $69 $06
.db $01 $8D $1B $0C $22 $A8 $D5 $81
.db $AD $57 $0B $AC $69 $07 $A6 $15
.db $20 $F0 $C1 $8A $18 $69 $80 $00
.db $AA $AD $58 $0B $AC $67 $07 $20
.db $F0 $C1 $8A $18 $69 $80 $00 $AA
.db $AD $59 $0B $AC $6B $07 $20 $F0
.db $C1 $8A $18 $69 $80 $00 $AA $AD
.db $5A $0B $AC $6D $07 $20 $F0 $C1
.db $8A $18 $69 $80 $00 $AA $AD $5B
.db $0B $AC $85 $07 $20 $F0 $C1 $8A
.db $18 $69 $80 $00 $AA $AD $5C $0B
.db $AC $5D $07 $20 $F0 $C1 $28 $60
.db $C2 $20 $AD $A7 $0B $8D $1B $0C
.db $A9 $0D $0C $8D $1D $0C $A9 $00
.db $00 $22 $5F $D3 $81 $22 $EE $D4
.db $81 $EE $1B $0C $EE $1C $0C $22
.db $A8 $D5 $81 $A7 $0C $A6 $15 $A0
.db $24 $E7 $22 $1F $E2 $81 $28 $60
.db $08 $C2 $20 $29 $FF $00 $C9 $FF
.db $00 $D0 $03 $A9 $00 $00 $85 $15
.db $98 $29 $FF $00 $C9 $FF $00 $D0
.db $03 $A9 $00 $00 $85 $17 $A5 $15
.db $C5 $17 $F0 $20 $B0 $10 $A9 $51
.db $A5 $9F $00 $30 $7E $A9 $41 $A5
.db $9F $40 $30 $7E $80 $0E $A9 $41
.db $25 $9F $00 $30 $7E $A9 $51 $25
.db $9F $40 $30 $7E $28 $60 $E2 $20
.db $C2 $20 $AD $1A $0C $29 $FF $00
.db $0A $AA $E2 $20 $FC $48 $C2 $60
.db $4C $C2 $02 $C3 $E2 $20 $22 $6B
.db $E4 $81 $20 $DE $D6 $A9 $00 $22
.db $5F $D3 $81 $A2 $00 $00 $86 $50
.db $86 $52 $8E $C1 $0B $22 $4E $95
.db $80 $C2 $20 $A2 $D0 $02 $A9 $F0
.db $60 $9F $00 $30 $7E $A9 $F0 $E0
.db $9F $40 $30 $7E $A9 $F0 $20 $9F
.db $02 $30 $7E $A9 $F0 $A0 $9F $42
.db $30 $7E $20 $C2 $D6 $22 $75 $E4
.db $81 $22 $EA $87 $80 $E2 $20 $A2
.db $08 $0B $8E $1B $0C $A2 $03 $03
.db $8E $1D $0C $AD $0A $0C $D0 $05
.db $A2 $11 $08 $80 $03 $A2 $10 $08
.db $8E $9E $0B $22 $EE $D4 $81 $20
.db $C2 $D6 $22 $EA $87 $80 $AD $1D
.db $0C $CD $9E $0B $F0 $03 $EE $1D
.db $0C $AD $1E $0C $CD $9F $0B $F0
.db $05 $EE $1E $0C $80 $DD $AE $1D
.db $0C $EC $9E $0B $D0 $D5 $A2 $0D
.db $0E $8E $1B $0C $22 $A8 $D5 $81
.db $AD $0A $0C $D0 $04 $A9 $00 $80
.db $02 $A9 $01 $A6 $15 $A0 $FA $D0
.db $22 $1F $E2 $81 $9C $0A $0C $4C
.db $C2 $D6 $E2 $20 $EE $0A $0C $AD
.db $0A $0C $C9 $40 $F0 $01 $60 $A9
.db $FF $8D $0A $0C $AD $17 $0C $8D
.db $4A $07 $9C $1A $0C $9C $19 $0C
.db $A2 $00 $00 $86 $50 $86 $52 $22
.db $4E $95 $80 $22 $53 $D8 $81 $4C
.db $C2 $D6 $E2 $20 $C2 $20 $AD $1A
.db $0C $29 $FF $00 $0A $AA $E2 $20
.db $FC $44 $C3 $60 $48 $C3 $99 $C3
.db $E2 $20 $20 $DE $D6 $22 $EA $87
.db $80 $AF $17 $44 $7F $A2 $00 $00
.db $22 $0F $D1 $81 $A9 $00 $22 $B6
.db $D1 $81 $22 $EA $87 $80 $A9 $01
.db $A2 $00 $7F $86 $0D $A2 $28 $44
.db $86 $0C $22 $C0 $D1 $81 $22 $EA
.db $87 $80 $A2 $01 $01 $8E $1B $0C
.db $9C $0F $0C $22 $CF $CA $81 $A2
.db $01 $0B $8E $1B $0C $20 $09 $CE
.db $A9 $03 $22 $F8 $D6 $81 $4C $C2
.db $D6 $C2 $20 $A9 $A2 $C3 $4C $F2
.db $D7 $60 $D1 $C3 $D1 $C3 $D1 $C3
.db $D1 $C3 $B2 $C3 $C2 $C3 $A1 $C3
.db $A1 $C3 $C2 $20 $A9 $2C $00 $22
.db $16 $AA $80 $E2 $20 $9C $0A $0C
.db $80 $1F $E2 $20 $A9 $02 $22 $F8
.db $D6 $81 $A9 $FF $8D $0A $0C $80
.db $10 $E2 $20 $A9 $01 $8D $0A $0C
.db $C2 $20 $A9 $BE $00 $22 $16 $AA
.db $80 $E2 $20 $AE $C1 $0B $86 $50
.db $86 $52 $22 $4E $95 $80 $22 $53
.db $D8 $81 $AD $17 $0C $8D $4A $07
.db $9C $1A $0C $9C $19 $0C $4C $C2
.db $D6 $E2 $20 $C2 $20 $AD $1A $0C
.db $29 $FF $00 $0A $AA $E2 $20 $FC
.db $13 $C4 $60 $15 $C4 $E2 $20 $AD
.db $5E $08 $38 $ED $60 $08 $C9 $08
.db $B0 $05 $A2 $11 $02 $80 $03 $A2
.db $02 $02 $8E $1B $0C $22 $A8 $D5
.db $81 $A6 $15 $A0 $10 $C0 $A9 $00
.db $22 $1F $E2 $81 $A9 $FF $8D $11
.db $0C $C2 $20 $A9 $2C $00 $22 $16
.db $AA $80 $E2 $20 $AD $1C $0C $18
.db $69 $04 $8D $1C $0C $AF $12 $44
.db $7F $29 $06 $4A $8D $61 $0B $A2
.db $01 $00 $A0 $10 $C0 $A9 $03 $22
.db $CC $E2 $81 $AD $62 $0B $C9 $FF
.db $D0 $2C $C2 $20 $A9 $BE $00 $22
.db $16 $AA $80 $E2 $20 $A2 $00 $00
.db $86 $50 $86 $52 $8E $C1 $0B $22
.db $4E $95 $80 $22 $53 $D8 $81 $AD
.db $17 $0C $8D $4A $07 $9C $1A $0C
.db $9C $19 $0C $4C $C2 $D6 $C2 $20
.db $A9 $2D $00 $22 $16 $AA $80 $E2
.db $20 $AF $12 $44 $7F $29 $F9 $8F
.db $12 $44 $7F $AD $62 $0B $0A $0F
.db $12 $44 $7F $8F $12 $44 $7F $80
.db $BC $E2 $20 $C2 $20 $AD $1A $0C
.db $29 $FF $00 $0A $AA $E2 $20 $FC
.db $D3 $C4 $60 $D5 $C4 $C2 $20 $20
.db $DE $D6 $A9 $FF $FF $A0 $70 $08
.db $A2 $00 $00 $9F $00 $38 $7F $E8
.db $88 $E8 $88 $D0 $F6 $A2 $00 $00
.db $BF $42 $53 $7F $29 $80 $00 $D0
.db $08 $8A $18 $69 $20 $00 $AA $80
.db $EF $86 $17 $A2 $00 $00 $BF $30
.db $53 $7F $29 $FF $00 $C9 $FF $00
.db $F0 $0B $8A $18 $69 $20 $00 $AA
.db $E0 $A0 $05 $D0 $E9 $86 $19 $A9
.db $7F $7F $85 $15 $A5 $17 $18 $69
.db $30 $53 $AA $A0 $00 $38 $A5 $19
.db $38 $E5 $17 $22 $8A $D9 $81 $E2
.db $20 $8B $A9 $81 $48 $AB $22 $DF
.db $9D $81 $B0 $14 $E2 $20 $20 $4F
.db $A0 $BF $00 $38 $7F $29 $FF $22
.db $23 $A9 $87 $8D $0A $0C $80 $07
.db $E2 $20 $A9 $FF $8D $0A $0C $AB
.db $A2 $00 $00 $86 $50 $86 $52 $22
.db $4E $95 $80 $22 $53 $D8 $81 $20
.db $C2 $D6 $22 $74 $93 $80 $AD $17
.db $0C $8D $4A $07 $9C $1A $0C $9C
.db $19 $0C $60 $E2 $20 $C2 $20 $AD
.db $1A $0C $29 $FF $00 $0A $AA $E2
.db $20 $FC $95 $C5 $60 $97 $C5 $E2
.db $20 $22 $53 $D8 $81 $AD $5E $08
.db $38 $ED $60 $08 $C9 $08 $B0 $05
.db $A2 $16 $01 $80 $03 $A2 $01 $01
.db $8E $1B $0C $22 $67 $A7 $81 $C2
.db $20 $22 $A8 $D5 $81 $A6 $15 $A0
.db $22 $B5 $A9 $09 $00 $22 $1F $E2
.db $81 $AD $1B $0C $18 $69 $01 $01
.db $8D $1B $0C $22 $A8 $D5 $81 $A6
.db $15 $A0 $62 $D6 $AF $16 $44 $7F
.db $22 $1F $E2 $81 $A6 $17 $A0 $30
.db $DD $AF $01 $44 $7F $22 $1F $E2
.db $81 $AF $20 $44 $7F $29 $FF $00
.db $C9 $FF $00 $F0 $0F $A6 $17 $A0
.db $58 $DF $AF $20 $44 $7F $22 $1F
.db $E2 $81 $80 $08 $A5 $17 $18 $69
.db $80 $00 $85 $17 $A5 $17 $18 $69
.db $08 $00 $AA $AF $03 $44 $7F $20
.db $5B $A5 $8A $18 $69 $7A $00 $AA
.db $AF $02 $44 $7F $20 $5B $A5 $8A
.db $18 $69 $7A $00 $AA $AD $69 $07
.db $20 $5B $A5 $8A $18 $69 $7A $00
.db $AA $AD $67 $07 $20 $5B $A5 $8A
.db $18 $69 $7A $00 $AA $AD $6B $07
.db $20 $5B $A5 $8A $18 $69 $7A $00
.db $AA $AD $6D $07 $20 $5B $A5 $8A
.db $18 $69 $7A $00 $AA $AD $85 $07
.db $20 $5B $A5 $8A $18 $69 $7A $00
.db $AA $AF $0C $44 $7F $20 $5B $A5
.db $8A $18 $69 $7A $00 $AA $AF $0D
.db $44 $7F $20 $5B $A5 $4C $C2 $D6
.db $08 $E2 $20 $22 $00 $DC $81 $28
.db $6B $08 $C2 $20 $84 $25 $85 $27
.db $A0 $58 $DF $22 $1F $E2 $81 $A5
.db $17 $38 $E9 $72 $00 $AA $A9 $2D
.db $25 $9F $00 $30 $7E $A9 $3D $25
.db $9F $40 $30 $7E $A5 $28 $E8 $E8
.db $20 $5B $A5 $CA $CA $AD $0E $0C
.db $29 $FF $00 $C9 $FF $00 $D0 $03
.db $DA $80 $47 $C2 $20 $DA $8A $A8
.db $E2 $20 $A9 $40 $22 $18 $D7 $81
.db $8D $06 $0C $98 $4A $8D $05 $0C
.db $A9 $01 $8D $07 $0C $A5 $25 $F0
.db $04 $A9 $3E $80 $02 $A9 $36 $8D
.db $09 $0C $A5 $27 $EB $A9 $0E $C2
.db $20 $8F $02 $42 $00 $EA $EA $EA
.db $AF $16 $42 $00 $E2 $20 $AA $BF
.db $EA $A6 $88 $8D $08 $0C $22 $7B
.db $D7 $81 $E2 $20 $FA $A0 $BC $A9
.db $A9 $00 $22 $1F $E2 $81 $C2 $20
.db $A5 $25 $F0 $10 $A5 $17 $38 $E9
.db $94 $00 $AA $A0 $0A $00 $A9 $01
.db $00 $20 $45 $C9 $28 $6B $08 $C2
.db $20 $84 $25 $85 $27 $A0 $58 $DF
.db $22 $1F $E2 $81 $A5 $17 $38 $E9
.db $72 $00 $AA $A9 $2D $25 $9F $00
.db $30 $7E $A9 $3D $25 $9F $40 $30
.db $7E $A5 $28 $E8 $E8 $20 $5B $A5
.db $CA $CA $AD $0E $0C $29 $FF $00
.db $C9 $FF $00 $D0 $03 $DA $80 $42
.db $C2 $20 $DA $8A $A8 $E2 $20 $A9
.db $40 $22 $18 $D7 $81 $8D $06 $0C
.db $98 $4A $8D $05 $0C $A9 $01 $8D
.db $07 $0C $A5 $25 $F0 $04 $A9 $3E
.db $80 $02 $A9 $36 $8D $09 $0C $AE
.db $9E $0B $BF $BB $E5 $81 $0A $8D
.db $08 $0C $C2 $20 $AD $08 $0C $18
.db $6D $A1 $0B $8D $08 $0C $22 $7B
.db $D7 $81 $E2 $20 $FA $A0 $BC $A9
.db $A9 $00 $22 $1F $E2 $81 $C2 $20
.db $A5 $25 $F0 $10 $A5 $17 $38 $E9
.db $94 $00 $AA $A0 $0A $00 $A9 $01
.db $00 $20 $45 $C9 $28 $6B $08 $E2
.db $20 $4A $B0 $04 $A9 $E0 $80 $02
.db $A9 $E8 $85 $1F $AD $1B $0C $18
.db $69 $09 $8D $1B $0C $A2 $03 $08
.db $8E $1D $0C $A9 $01 $22 $5F $D3
.db $81 $22 $EE $D4 $81 $AD $1B $0C
.db $38 $E9 $09 $8D $1B $0C $A2 $0A
.db $08 $8E $1D $0C $A9 $02 $22 $5F
.db $D3 $81 $22 $EE $D4 $81 $A0 $00
.db $00 $20 $42 $C8 $EE $1C $0C $EE
.db $1C $0C $A0 $01 $00 $20 $42 $C8
.db $EE $1C $0C $EE $1C $0C $A0 $02
.db $00 $20 $42 $C8 $EE $1C $0C $EE
.db $1C $0C $A0 $03 $00 $20 $42 $C8
.db $28 $6B $08 $C2 $20 $84 $23 $B7
.db $0C $85 $21 $98 $18 $69 $04 $00
.db $A8 $B7 $0C $E2 $20 $85 $22 $A5
.db $21 $C9 $FF $F0 $2D $C2 $20 $22
.db $A8 $D5 $81 $A6 $15 $A0 $58 $DF
.db $A5 $21 $22 $1F $E2 $81 $A5 $17
.db $38 $E9 $72 $00 $AA $A9 $2D $25
.db $9F $00 $30 $7E $A9 $3D $25 $9F
.db $40 $30 $7E $A5 $22 $E8 $E8 $20
.db $5B $A5 $E2 $20 $AD $1B $0C $18
.db $69 $0A $8D $05 $0C $AD $1C $0C
.db $8D $06 $0C $A9 $01 $8D $07 $0C
.db $A5 $23 $0A $18 $65 $1F $8D $08
.db $0C $A5 $21 $22 $65 $EE $83 $B0
.db $04 $A9 $37 $80 $02 $A9 $3F $8D
.db $09 $0C $22 $7B $D7 $81 $C2 $20
.db $22 $A8 $D5 $81 $A6 $15 $DA $A5
.db $21 $29 $FF $00 $22 $65 $EE $83
.db $B0 $05 $A9 $00 $00 $80 $03 $A9
.db $01 $00 $FA $A0 $0C $00 $20 $45
.db $C9 $28 $60 $08 $C2 $20 $48 $AD
.db $16 $0C $29 $FF $00 $D0 $07 $68
.db $22 $D6 $C7 $81 $28 $6B $EE $1C
.db $0C $AD $1B $0C $38 $E9 $02 $01
.db $8D $1B $0C $22 $A8 $D5 $81 $A6
.db $15 $A0 $22 $B5 $A9 $0F $00 $22
.db $1F $E2 $81 $AD $1B $0C $18 $69
.db $02 $01 $8D $1B $0C $80 $D0 $08
.db $C2 $20 $29 $FF $00 $85 $19 $AD
.db $1B $0C $48 $AD $B3 $0B $18 $69
.db $02 $00 $8D $1B $0C $22 $A8 $D5
.db $81 $A6 $15 $22 $53 $C9 $81 $68
.db $8D $1B $0C $28 $60 $08 $C2 $20
.db $29 $FF $00 $85 $19 $22 $53 $C9
.db $81 $28 $60 $08 $C2 $20 $A5 $19
.db $F0 $1E $BF $00 $30 $7E $29 $FF
.db $E3 $09 $00 $08 $9F $00 $30 $7E
.db $BF $40 $30 $7E $29 $FF $E3 $09
.db $00 $08 $9F $40 $30 $7E $80 $1C
.db $BF $00 $30 $7E $29 $FF $E3 $09
.db $00 $04 $9F $00 $30 $7E $BF $40
.db $30 $7E $29 $FF $E3 $09 $00 $04
.db $9F $40 $30 $7E $E8 $E8 $88 $D0
.db $BD $28 $6B $08 $C2 $20 $48 $22
.db $AC $D6 $81 $8A $18 $69 $02 $00
.db $AA $68 $EB $22 $AC $D6 $81 $8A
.db $38 $E9 $06 $00 $AA $A9 $2D $25
.db $9F $00 $30 $7E $8A $18 $69 $40
.db $00 $AA $A9 $3D $25 $9F $00 $30
.db $7E $28 $60 $08 $E2 $20 $C9 $FF
.db $D0 $0A $C2 $20 $A9 $89 $31 $8D
.db $08 $0C $28 $60 $E2 $20 $22 $65
.db $EE $83 $B0 $04 $A9 $37 $80 $02
.db $A9 $3F $8D $09 $0C $28 $60 $08
.db $C2 $20 $A4 $15 $B7 $0C $29 $FF
.db $00 $C9 $FF $00 $D0 $25 $8A $18
.db $69 $80 $00 $AA $DA $A9 $89 $31
.db $8D $08 $0C $E2 $20 $A9 $00 $8D
.db $05 $0C $A9 $1E $8D $06 $0C $A9
.db $01 $8D $07 $0C $22 $7B $D7 $81
.db $FA $28 $60 $C2 $20 $A0 $58 $DF
.db $22 $1F $E2 $81 $A5 $17 $38 $E9
.db $72 $00 $AA $A9 $2D $25 $9F $00
.db $30 $7E $A9 $3D $25 $9F $40 $30
.db $7E $E8 $E8 $A5 $15 $18 $69 $04
.db $00 $A8 $B7 $0C $20 $5B $A5 $CA
.db $CA $DA $8A $8D $04 $42 $E2 $20
.db $A9 $40 $8D $06 $42 $EA $EA $EA
.db $EA $EA $EA $EA $EA $AD $14 $42
.db $8D $06 $0C $AD $16 $42 $4A $8D
.db $05 $0C $A9 $01 $8D $07 $0C $A4
.db $15 $B7 $0C $20 $CB $C9 $A5 $15
.db $0A $18 $69 $E0 $8D $08 $0C $22
.db $7B $D7 $81 $C2 $20 $FA $A0 $BC
.db $A9 $A9 $00 $00 $22 $1F $E2 $81
.db $A5 $17 $38 $E9 $14 $00 $AA $28
.db $60 $08 $C2 $20 $48 $A9 $04 $00
.db $22 $5F $D3 $81 $68 $28 $80 $68
.db $08 $C2 $20 $AD $1C $0C $29 $FF
.db $00 $AA $A0 $00 $00 $A9 $0A $00
.db $22 $A3 $A9 $87 $A6 $50 $8E $33
.db $0C $E2 $20 $9C $16 $0C $28 $08
.db $E2 $20 $9C $16 $0C $A9 $7F $85
.db $0E $A2 $20 $44 $86 $0C $64 $5C
.db $A2 $00 $00 $86 $5E $C2 $20 $A9
.db $00 $00 $28 $08 $E2 $20 $48 $A2
.db $00 $7F $86 $0D $29 $FF $D0 $05
.db $A2 $20 $44 $80 $03 $A2 $28 $44
.db $86 $0C $64 $5C $A2 $00 $00 $86
.db $5E $68 $28 $08 $C2 $20 $48 $A9
.db $00 $00 $22 $5F $D3 $81 $68 $28
.db $08 $E2 $20 $48 $C2 $20 $AD $1B
.db $0C $18 $69 $0F $01 $8D $05 $0C
.db $A9 $1E $0A $8D $1D $0C $22 $EE
.db $D4 $81 $EE $1B $0C $EE $1C $0C
.db $22 $A8 $D5 $81 $A6 $15 $A0 $62
.db $D6 $AF $16 $44 $7F $22 $1F $E2
.db $81 $A6 $17 $A0 $30 $DD $AF $01
.db $44 $7F $22 $1F $E2 $81 $A6 $17
.db $A0 $32 $AD $A9 $00 $00 $22 $1F
.db $E2 $81 $A5 $17 $38 $E9 $FC $00
.db $AA $AF $02 $44 $7F $22 $AC $D6
.db $81 $8A $18 $69 $04 $00 $AA $AF
.db $05 $44 $7F $20 $5B $CC $8A $18
.db $69 $76 $00 $AA $E2 $20 $AF $04
.db $44 $7F $EB $AF $03 $44 $7F $20
.db $9B $C9 $AD $0E $0C $C9 $FF $D0
.db $03 $4C $0B $CC $C2 $20 $AF $17
.db $44 $7F $29 $FF $00 $AA $BF $1C
.db $8E $88 $29 $FF $00 $85 $5A $AD
.db $1C $0C $29 $FF $00 $09 $00 $08
.db $8F $02 $42 $00 $EA $EA $EA $AF
.db $16 $42 $00 $85 $58 $A9 $50 $00
.db $85 $56 $A9 $00 $83 $85 $63 $A9
.db $00 $80 $85 $62 $22 $A4 $93 $80
.db $E2 $20 $AE $05 $0C $DA $AD $16
.db $0C $F0 $0B $EE $06 $0C $A2 $CD
.db $31 $8E $08 $0C $80 $06 $A2 $89
.db $31 $8E $08 $0C $A9 $04 $8D $07
.db $0C $22 $7B $D7 $81 $FA $8E $05
.db $0C $AD $06 $0C $EB $A9 $05 $22
.db $A3 $CC $81 $A9 $0A $8D $1B $0C
.db $A2 $06 $08 $8E $1D $0C $A9 $01
.db $22 $5F $D3 $81 $22 $EE $D4 $81
.db $AF $16 $44 $7F $C9 $00 $D0 $20
.db $A9 $05 $8D $1B $0C $22 $A8 $D5
.db $81 $A6 $15 $C2 $20 $A9 $FF $00
.db $9F $00 $30 $7E $9F $40 $30 $7E
.db $9F $02 $30 $7E $9F $42 $30 $7E
.db $E2 $20 $A6 $50 $8E $9F $0F $A9
.db $12 $8D $1B $0C $68 $22 $E3 $C8
.db $81 $28 $6B $08 $C2 $20 $29 $FF
.db $00 $48 $DA $A9 $00 $04 $AA $AF
.db $00 $44 $7F $22 $F7 $A8 $87 $90
.db $0C $AF $02 $44 $7F $29 $FF $00
.db $C9 $14 $00 $F0 $08 $FA $68 $22
.db $AC $D6 $81 $28 $60 $FA $A9 $FE
.db $20 $9F $00 $30 $7E $9F $02 $30
.db $7E $A9 $F9 $24 $9F $40 $30 $7E
.db $9F $42 $30 $7E $E8 $E8 $E8 $E8
.db $68 $28 $60 $08 $C2 $20 $8D $05
.db $0C $E2 $20 $A9 $01 $8D $07 $0C
.db $AF $16 $44 $7F $C9 $00 $D0 $0B
.db $AD $F4 $07 $89 $04 $D0 $09 $89
.db $08 $D0 $0A $A2 $81 $31 $80 $08
.db $A2 $AA $37 $80 $03 $A2 $AC $37
.db $8E $08 $0C $22 $7B $D7 $81 $28
.db $6B $08 $E2 $20 $AD $14 $0C $48
.db $AD $16 $0C $48 $A9 $81 $85 $5C
.db $AF $01 $44 $7F $C9 $16 $F0 $04
.db $A9 $00 $80 $02 $A9 $01 $8D $16
.db $0C $8D $14 $0C $C2 $20 $AD $1B
.db $0C $48 $18 $69 $0F $0A $8D $1B
.db $0C $22 $A8 $D5 $81 $A6 $15 $A0
.db $0F $00 $A9 $FF $00 $9F $00 $30
.db $7E $E8 $E8 $88 $D0 $F7 $68 $8D
.db $1B $0C $A9 $00 $00 $85 $5E $22
.db $FF $96 $87 $AD $16 $0C $29 $FF
.db $00 $22 $0B $CB $81 $A6 $50 $86
.db $52 $E2 $20 $68 $8D $16 $0C $68
.db $8D $14 $0C $28 $6B $08 $E2 $20
.db $AD $14 $0C $48 $AD $16 $0C $48
.db $A9 $81 $85 $5C $AF $01 $44 $7F
.db $C9 $16 $F0 $04 $A9 $00 $80 $02
.db $A9 $01 $8D $16 $0C $8D $14 $0C
.db $C2 $20 $A9 $00 $00 $85 $5E $22
.db $FF $96 $87 $AD $16 $0C $29 $FF
.db $00 $22 $A1 $CA $81 $A6 $50 $86
.db $52 $AF $01 $44 $7F $29 $FF $00
.db $C9 $16 $00 $F0 $12 $A2 $E0 $06
.db $A0 $0F $00 $A9 $FF $00 $9F $00
.db $30 $7E $E8 $E8 $88 $D0 $F7 $E2
.db $20 $68 $8D $16 $0C $68 $8D $14
.db $0C $28 $6B $08 $C2 $20 $22 $EA
.db $87 $80 $AF $01 $44 $7F $29 $FF
.db $00 $C9 $16 $00 $F0 $09 $A9 $00
.db $00 $22 $B6 $D1 $81 $80 $11 $A9
.db $01 $00 $A2 $00 $7F $86 $0D $A2
.db $28 $44 $86 $0C $22 $C0 $D1 $81
.db $28 $6B $08 $C2 $20 $22 $EA $87
.db $80 $AF $01 $44 $7F $29 $FF $00
.db $C9 $16 $00 $F0 $13 $A9 $01 $00
.db $A2 $00 $7F $86 $0D $A2 $28 $44
.db $86 $0C $22 $C0 $D1 $81 $80 $07
.db $A9 $00 $00 $22 $B6 $D1 $81 $28
.db $6B $08 $C2 $20 $80 $19 $08 $C2
.db $20 $AD $1C $0C $29 $FF $00 $AA
.db $A0 $00 $00 $A9 $10 $00 $22 $A3
.db $A9 $87 $A6 $50 $8E $35 $0C $A9
.db $00 $00 $22 $5F $D3 $81 $22 $40
.db $CE $81 $22 $58 $CF $81 $22 $0E
.db $D0 $81 $22 $C4 $D0 $81 $28 $60
.db $08 $E2 $20 $22 $B2 $A5 $81 $28
.db $08 $E2 $20 $AE $1B $0C $DA $A2
.db $07 $10 $8E $1D $0C $22 $EE $D4
.db $81 $EE $1B $0C $EE $1C $0C $22
.db $A8 $D5 $81 $A6 $15 $A0 $32 $AD
.db $A9 $01 $22 $1F $E2 $81 $A6 $17
.db $DA $C2 $20 $AD $1B $0C $18 $69
.db $03 $00 $8D $1B $0C $22 $A8 $D5
.db $81 $A6 $15 $AD $69 $07 $20 $5B
.db $A5 $8A $18 $69 $7A $00 $AA $AD
.db $67 $07 $20 $5B $A5 $8A $18 $69
.db $7A $00 $AA $AD $6B $07 $20 $5B
.db $A5 $8A $18 $69 $7A $00 $AA $AD
.db $6D $07 $20 $5B $A5 $8A $18 $69
.db $7A $00 $AA $AD $85 $07 $20 $5B
.db $A5 $8A $18 $69 $7A $00 $AA $AD
.db $5D $07 $20 $5B $A5 $C2 $20 $AF
.db $20 $44 $7F $8D $B0 $0B $AF $22
.db $44 $7F $8D $AD $0B $22 $ED $FE
.db $83 $E2 $20 $A9 $28 $8D $04 $0C
.db $AF $20 $44 $7F $22 $70 $97 $81
.db $B0 $57 $AF $20 $44 $7F $C9 $FF
.db $F0 $4F $22 $65 $EE $83 $B0 $49
.db $A9 $88 $85 $02 $AF $20 $44 $7F
.db $EB $A9 $0E $C2 $20 $8F $02 $42
.db $00 $EA $EA $EA $AF $16 $42 $00
.db $E2 $20 $AA $BF $F6 $A6 $88 $C2
.db $20 $29 $FF $00 $0A $AA $BF $33
.db $A6 $88 $85 $00 $E2 $20 $A0 $00
.db $00 $B7 $00 $C9 $FF $F0 $03 $C8
.db $80 $F7 $C8 $B7 $00 $18 $69 $04
.db $FA $A0 $32 $AD $22 $1F $E2 $81
.db $DA $FA $FA $8E $1B $0C $C2 $20
.db $AD $AD $0B $8F $22 $44 $7F $AD
.db $B0 $0B $8F $20 $44 $7F $28 $6B
.db $08 $E2 $20 $AE $1B $0C $DA $A9
.db $08 $8D $1B $0C $A2 $09 $10 $8E
.db $1D $0C $22 $EE $D4 $81 $EE $1B
.db $0C $EE $1C $0C $22 $A8 $D5 $81
.db $A6 $15 $A0 $32 $AD $A9 $02 $22
.db $1F $E2 $81 $AD $1B $0C $18 $69
.db $04 $8D $1B $0C $C2 $20 $22 $A8
.db $D5 $81 $A6 $15 $AF $09 $44 $7F
.db $20 $EF $CF $8A $18 $69 $7A $00
.db $AA $AF $0A $44 $7F $20 $EF $CF
.db $8A $18 $69 $7A $00 $AA $AF $0B
.db $44 $7F $20 $EF $CF $8A $18 $69
.db $7A $00 $AA $AF $0E $44 $7F $20
.db $EF $CF $8A $18 $69 $7A $00 $AA
.db $AF $0F $44 $7F $20 $EF $CF $8A
.db $18 $69 $7A $00 $AA $AF $0C $44
.db $7F $20 $EF $CF $8A $18 $69 $7A
.db $00 $AA $AF $0D $44 $7F $20 $EF
.db $CF $FA $8E $1B $0C $28 $6B $08
.db $C2 $20 $29 $FF $00 $48 $29 $80
.db $00 $D0 $0D $68 $C9 $15 $00 $B0
.db $02 $80 $06 $A9 $14 $00 $80 $01
.db $68 $20 $5B $A5 $28 $60 $08 $C2
.db $20 $AE $1B $0C $DA $A2 $0F $06
.db $8E $1D $0C $AD $1C $0C $29 $FF
.db $00 $C9 $01 $00 $F0 $34 $A2 $B2
.db $05 $DA $A2 $10 $15 $8E $1B $0C
.db $22 $EE $D4 $81 $A2 $60 $05 $A9
.db $FC $20 $9F $00 $30 $7E $A9 $FE
.db $20 $9F $40 $30 $7E $9F $80 $30
.db $7E $9F $C0 $30 $7E $9F $00 $31
.db $7E $A9 $F1 $A0 $9F $40 $31 $7E
.db $80 $32 $A2 $B2 $00 $DA $A2 $10
.db $01 $8E $1B $0C $22 $EE $D4 $81
.db $A2 $60 $00 $A9 $F1 $20 $9F $00
.db $30 $7E $A9 $FE $20 $9F $40 $30
.db $7E $9F $80 $30 $7E $9F $C0 $30
.db $7E $9F $00 $31 $7E $A9 $FC $A0
.db $9F $40 $31 $7E $EE $1B $0C $EE
.db $1B $0C $EE $1C $0C $22 $A8 $D5
.db $81 $A6 $15 $A0 $32 $AD $A9 $03
.db $00 $22 $1F $E2 $81 $FA $AF $04
.db $44 $7F $20 $5B $A5 $8A $18 $69
.db $7A $00 $AA $AF $08 $44 $7F $22
.db $69 $EF $81 $20 $5B $A5 $FA $8E
.db $1B $0C $28 $6B $08 $C2 $20 $AE
.db $1B $0C $DA $AD $1C $0C $29 $FF
.db $00 $C9 $01 $00 $F0 $08 $A9 $11
.db $0B $8D $1B $0C $80 $06 $A9 $11
.db $07 $8D $1B $0C $A9 $0E $0A $8D
.db $1D $0C $22 $EE $D4 $81 $EE $1B
.db $0C $EE $1C $0C $A2 $00 $7F $86
.db $0D $A2 $28 $44 $86 $0C $A9 $01
.db $00 $22 $D6 $C7 $81 $A6 $50 $86
.db $52 $FA $8E $1B $0C $28 $6B $08
.db $C2 $20 $DA $E0 $00 $00 $D0 $05
.db $A0 $00 $60 $80 $03 $A0 $00 $64
.db $22 $2B $D1 $81 $7A $22 $4D $D1
.db $81 $28 $6B $08 $C2 $20 $48 $29
.db $FF $00 $22 $E8 $A9 $87 $AA $BF
.db $B0 $8E $88 $85 $00 $BF $B1 $8E
.db $88 $85 $01 $A2 $00 $08 $22 $20
.db $D9 $81 $68 $28 $6B $08 $C2 $20
.db $48 $5A $29 $FF $00 $0A $0A $0A
.db $0A $0A $AA $A9 $00 $7F $85 $01
.db $98 $D0 $05 $A9 $20 $01 $80 $03
.db $A9 $40 $01 $18 $69 $30 $51 $85
.db $00 $A0 $10 $00 $BF $00 $E8 $D7
.db $87 $00 $E6 $00 $E6 $00 $E8 $E8
.db $88 $D0 $F1 $7A $98 $D0 $10 $A9
.db $00 $81 $85 $01 $A9 $A8 $D1 $85
.db $00 $22 $AD $8E $80 $80 $0E $A9
.db $00 $81 $85 $01 $A9 $AF $D1 $85
.db $00 $22 $AD $8E $80 $68 $28 $6B
.db $01 $50 $52 $7F $20 $00 $90 $01
.db $70 $52 $7F $20 $00 $A0 $A2 $00
.db $7F $86 $0D $A2 $20 $44 $86 $0C
.db $08 $E2 $20 $A2 $00 $7E $4A $90
.db $03 $A2 $80 $7E $86 $27 $A0 $00
.db $00 $B7 $0C $22 $F4 $D1 $81 $A0
.db $01 $00 $B7 $0C $22 $F4 $D1 $81
.db $A0 $02 $00 $B7 $0C $22 $F4 $D1
.db $81 $A0 $03 $00 $B7 $0C $22 $F4
.db $D1 $81 $28 $6B $08 $E2 $20 $5A
.db $C9 $FF $D0 $0B $A9 $94 $85 $02
.db $A2 $20 $A8 $86 $00 $80 $2E $EB
.db $A9 $0E $C2 $20 $8F $02 $42 $00
.db $EA $EA $EA $AF $16 $42 $00 $E2
.db $20 $AA $C2 $20 $BF $EA $A6 $88
.db $29 $FF $00 $0A $0A $0A $0A $0A
.db $0A $18 $69 $00 $80 $85 $00 $E2
.db $20 $A9 $93 $85 $02 $C2 $20 $7A
.db $98 $0A $0A $0A $0A $0A $18 $65
.db $27 $A8 $5A $A2 $40 $00 $20 $89
.db $D2 $A5 $00 $18 $69 $00 $02 $85
.db $00 $68 $18 $69 $00 $01 $A8 $A2
.db $40 $00 $20 $89 $D2 $28 $6B $08
.db $C2 $20 $86 $00 $29 $FF $00 $0A
.db $18 $65 $00 $85 $00 $98 $E2 $20
.db $85 $02 $C2 $20 $A7 $00 $85 $00
.db $A7 $00 $AA $E6 $00 $E6 $00 $E2
.db $20 $A7 $00 $85 $02 $86 $00 $28
.db $60

L81D289:
	php
	rep #$20
	lda $00
	pha
	lda $01
	pha
	stx $0745
	sty $0748
	lda $00
	sta $0742
	sep #$20
	lda #$02
	sta $0741
	lda #$80
	sta $0747
	lda $02
	sta $0744
	rep #$20
	lda #$0000
	sta $01
	lda #$0741
	sta $00
	jsl L808EAD
	pla
	sta $01
	pla
	sta $00
	plp
	rts

L81D2C6:
	php
	rep #$20
	lda $0c1b
	pha
	lda $0bb5
	sta $0c1b
	jsl $81d5a8
	ldx $15
	lda $7e3000,x
	and #$dfff
	sta $7e3000,x
	lda $7e3002,x
	and #$dfff
	sta $7e3002,x
	lda $7e3040,x
	and #$dfff
	sta $7e3040,x
	lda $7e3042,x
	and #$dfff
	sta $7e3042,x
	lda $0bb5
	cmp $0bb3
	beq L81D345
	lda $0bb3
	sta $0c1b
	jsl $81d5a8
	ldx $15
	lda $7e3000,x
	ora #$2000
	sta $7e3000,x
	lda $7e3002,x
	ora #$2000
	sta $7e3002,x
	lda $7e3040,x
	ora #$2000
	sta $7e3040,x
	lda $7e3042,x
	ora #$2000
	sta $7e3042,x
L81D345:
	pla
	sta $0c1b
	sep #$20
	lda $0c11
	beq L81D357
	lda #$00
	sta $0c11
	bra L81D35D
L81D357:
	lda #$00
	jsl $81d6f8
L81D35D:
	plp
	rtl

L81D35F:
	php
	sep #$20
	cmp #$01
	beq L81D386
	cmp #$02
	beq L81D39A
	cmp #$03
	beq L81D3AE
	cmp #$04
	beq L81D3C2
	ldy #$0012
	ldx #$0000
L81D378:
	lda.l L81D3D6,x
	sta.l $000c1f,x
	inx
	dey
	bne L81D378
	plp
	rtl

L81D386:
	ldy #$0012
	ldx #$0000
L81D38C:
	lda.l L81D3E8,x
	sta.l $000c1f,x
	inx
	dey
	bne L81D38C
	plp
	rtl

L81D39A:
	ldy #$0012
	ldx #$0000
L81D3A0:
	lda.l L81D3FA,x
	sta.l $000c1f,x
	inx
	dey
	bne L81D3A0
	plp
	rtl

L81D3AE:
	ldy #$0012
	ldx #$0000
L81D3B4:
	lda.l L81D40C,x
	sta.l $000c1f,x
	inx
	dey
	bne L81D3B4
	plp
	rtl

L81D3C2:
	ldy #$0012
	ldx #$0000
L81D3C8:
	lda.l L81D41E,x
	sta.l $000c1f,x
	inx
	dey
	bne L81D3C8
	plp
	rtl

L81D3D6:
.db $F0 $60 $F1 $20 $F0 $20 $F2 $60
.db $FE $20 $F2 $20 $F0 $E0 $F1 $A0
.db $F0 $A0

L81D3E8:
.db $FF $00 $FF $00 $FF $00 $FF $00
.db $FF $00 $FF $00 $FF $00 $FF $00
.db $FF $00

L81D3FA:
.db $FE $20 $FE $20 $FE $20
.db $FE $20 $FE $20 $FE $20 $FE $20
.db $FE $20 $FE $20

L81D40C:
.db $FB $60 $F1 $20 $FB $20 $F2 $60
.db $FE $20 $F2 $20 $FB $E0 $F1 $A0
.db $FB $A0

L81D41E:
.db $DD $60 $CE $A0 $DD $20 $CD $60
.db $FE $20 $CD $20 $DD $E0 $CE $20
.db $DD $A0

L81D430:
	php
	sep #$20
	pha
	jsl $81e46b
	lda #$81
	sta $11
	pla
	rep #$20
	and #$00ff
	ldy #$000c
	jsl $81d733
	clc
	adc #$d4be
	sta $0f
	ldy #$0000
	lda [$0f],y
	sta $0c1b
	jsl $81d5a8
	ldy #$0002
	lda [$0f],y
	and #$00ff
	pha
	ldx $15
	ldy #$c0b8
	pla
	jsl $81e21f
	sep #$20
	ldy #$0005
	lda [$0f],y
	sta $5a
	iny
	lda [$0f],y
	sta $5c
	rep #$20
	ldy #$0003
	lda [$0f],y
	and #$00ff
	sta $56
	iny
	lda [$0f],y
	and #$00ff
	sta $58
	ldy #$0007
	lda [$0f],y
	sta $5e
	lda #$8300
	sta $63
	lda #$8000
	sta $62
	jsl L8093A4
	lda $50
	sta $52
	rep #$20
	ldy #$0009
	lda [$0f],y
	pha
	ldy #$000a
	lda [$0f],y
	tay
	pla
	jsl $87afd2
	plp
	rtl

.db $01 $01 $04 $10 $10 $0C $81 $00
.db $00 $00 $08 $02 $01 $01 $05 $C0
.db $10 $03 $81 $00 $00 $01 $16 $02
.db $01 $11 $04 $10 $90 $0C $82 $40
.db $00 $00 $08 $12 $01 $11 $05 $C0
.db $90 $03 $82 $40 $00 $01 $16 $12

L81D4EE:
	php
	lda $0c1d
	dec A
	sta $0c1d
	lda $0c1e
	dec A
	sta $0c1e
	jsl $81d5a8
	rep #$30
	ldx $15
	lda $0c1f
	sta $7e3000,x
	inx
	inx
	lda $0c1d
	and #$00ff
	dec A
	tay
L81D516:
	lda $0c21
	sta $7e3000,x
	inx
	inx
	dey
	bne L81D516
	lda $0c23
	sta $7e3000,x
	lda $15
	clc
	adc #$0040
	tax
	sta $25
	lda $0c1e
	and #$00ff
	dec A
	sta $27
L81D53B:
	lda $0c25
	sta $7e3000,x
	inx
	inx
	lda $0c1d
	and #$00ff
	dec A
	tay
L81D54C:
	lda $0c27
	sta $7e3000,x
	inx
	inx
	dey
	bne L81D54C
	lda $0c29
	sta $7e3000,x
	lda $25
	clc
	adc #$0040
	tax
	sta $25
	lda $27
	dec A
	sta $27
	cmp #$0000
	bne L81D53B
	lda $0c2b
	sta $7e3000,x
	inx
	inx
	lda $0c1d
	and #$00ff
	dec A
	tay
L81D583:
	lda $0c2d
	sta $7e3000,x
	inx
	inx
	dey
	bne L81D583
	lda $0c2f
	sta $7e3000,x
	sep #$20
	lda $0c1d
	inc A
	sta $0c1d
	lda $0c1e
	inc A
	sta $0c1e
	plp
	rtl

L81D5A8:
	php
	sep #$20
	lda $0c1c
	bne L81D5B6
	stz $15
	stz $16
	bra L81D5CE
L81D5B6:
	xba
	lda #$40
	rep #$20
	sta.l WRMPYA
	nop
	nop
	nop
	lda.l RDMPYL
	sep #$20
	rep #$20
	sta $15
	sep #$20
L81D5CE:
	lda $0c1b
	beq L81D5DF
	asl
	clc
	adc $15
	sta $15
	lda $16
	adc #$00
	sta $16
L81D5DF:
	plp
	rtl

.db $08 $C2 $20 $20 $33 $D6 $18
.db $AD $64 $0B $F0 $05 $20 $63 $D6
.db $80 $03 $20 $77 $D6 $B0 $05 $AD
.db $66 $0B $F0 $08 $AD $66 $0B $20
.db $63 $D6 $80 $03 $20 $77 $D6 $B0
.db $05 $AD $68 $0B $F0 $08 $AD $68
.db $0B $20 $63 $D6 $80 $03 $20 $77
.db $D6 $B0 $05 $AD $6A $0B $F0 $08
.db $AD $6A $0B $20 $63 $D6 $80 $03
.db $20 $77 $D6 $AD $6C $0B $20 $63
.db $D6 $28 $6B $A8 $A9 $0A $00 $22
.db $18 $D7 $81 $8C $6C $0B $A8 $A9
.db $0A $00 $22 $18 $D7 $81 $8C $6A
.db $0B $A8 $A9 $0A $00 $22 $18 $D7
.db $81 $8C $68 $0B $A8 $A9 $0A $00
.db $22 $18 $D7 $81 $8C $66 $0B $8D
.db $64 $0B $60 $18 $69 $00 $25 $9F
.db $00 $30 $7E $18 $69 $10 $00 $9F
.db $40 $30 $7E $E8 $E8 $38 $60 $A9
.db $FE $20 $9F $00 $30 $7E $9F $40
.db $30 $7E $E8 $E8 $18 $60 $08 $C2
.db $20 $20 $33 $D6 $AD $66 $0B $F0
.db $04 $38 $4C $F5 $D5 $18 $4C $F5
.db $D5 $08 $C2 $20 $20 $33 $D6 $AD
.db $68 $0B $F0 $04 $38 $4C $07 $D6
.db $18 $4C $07 $D6 $08 $C2 $20 $29
.db $FF $00 $20 $33 $D6 $AD $6A $0B
.db $F0 $04 $38 $4C $19 $D6 $18 $4C
.db $19 $D6

L81D6C2:
	php
	rep #$20
	lda #$8100
	sta $01
	lda #$D6D5
	sta $00
	jsl L808EAD
	plp
	rts

.db $02 $00 $30
.db $7E $00 $08 $80 $00 $48 $08 $E2
.db $20 $AD $4A $07 $8D $17 $0C $A9
.db $04 $8D $4A $07 $EE $1A $0C $C2
.db $20 $A9 $00 $00 $85 $50 $28 $60
.db $08 $C2 $20 $DA $29 $FF $00 $0A
.db $AA $BF $0C $D7 $81 $22 $67 $B4
.db $80 $FA $28 $6B $2C $00 $7C $00
.db $BE $00 $2A $00 $2B $00 $2D $00
.db $08 $E2 $20 $8C $04 $42 $8D $06
.db $42 $EA $EA $EA $EA $EA $EA $EA
.db $EA $C2 $20 $AD $14 $42 $AC $16
.db $42 $28 $6B $08 $C2 $20 $C9 $00
.db $01 $B0 $18 $C0 $00 $01 $B0 $13
.db $E2 $30 $8D $02 $42 $8C $03 $42
.db $EA $EA $EA $EA $C2 $30 $AD $16
.db $42 $28 $6B $C9 $00 $00 $F0 $05
.db $C0 $00 $00 $D0 $05 $A9 $00 $00
.db $28 $6B $84 $15 $C5 $15 $B0 $07
.db $84 $15 $A8 $A5 $15 $80 $02 $85
.db $15 $88 $F0 $05 $18 $65 $15 $80
.db $F8 $28 $6B $08 $E2 $20 $AD $0E
.db $0C $C9 $FF $D0 $02 $28 $6B $8B
.db $A9 $81 $48 $AB $C2 $20 $AD $07
.db $0C $48 $AD $05 $0C $48 $A6 $50
.db $AD $05 $0C $0A $0A $0A $9D $10
.db $02 $AD $08 $0C $9D $12 $02 $8A
.db $4A $4A $4A $4A $AA $A5 $50 $4A
.db $4A $29 $03 $00 $A8 $E2 $20 $BD
.db $10 $04 $19 $EE $D7 $9D $10 $04
.db $EE $06 $0C $EE $06 $0C $CE $07
.db $0C $F0 $0C $C2 $20 $A5 $50 $18
.db $69 $04 $00 $85 $50 $80 $BF $C2
.db $20 $A5 $50 $18 $69 $04 $00 $85
.db $50 $85 $52 $68 $8D $05 $0C $68
.db $8D $07 $0C $AB $28 $6B $02 $08
.db $20 $80 $C2 $20 $85 $15 $AD $29
.db $01 $A0 $00 $00 $89 $00 $08 $D0
.db $3C $A0 $02 $00 $89 $00 $04 $D0
.db $34 $A0 $04 $00 $89 $00 $02 $D0
.db $2C $A0 $06 $00 $89 $00 $01 $D0
.db $24 $AD $27 $01 $A0 $0C $00 $89
.db $40 $00 $D0 $19 $A0 $08 $00 $89
.db $80 $00 $D0 $11 $A0 $0A $00 $89
.db $00 $80 $D0 $09 $A0 $0E $00 $89
.db $00 $40 $D0 $01 $60 $B1 $15 $8D
.db $31 $0C $6C $31 $0C

L81D845:
	php
	rep #$20
	lda #$0202
	sta $0BB3
	sta $0BB5
	plp
	rtl

L81D853:
	php
	rep #$20
	lda #$0101
	sta $0C1B
	lda #$1B1E
	sta $0C1D
	lda #$0001
	jsl $81D35F
	jsl $81D4EE
	plp
	rtl

L81D86F:
	php
	rep #$20
	and #$00FF
	asl
	asl
	asl
	asl
	pha
	asl
	clc
	adc #$5330
	tax
	ldy #$4400
	lda #$7F7F
	sta $15
	lda #$0020
	jsl $81D98A
	pla
	clc
	adc #$58D0
	tax
	ldy #$4420
	lda #$0010
	jsl $81D98A
	plp
	rtl

L81D8A1:
	php
	rep #$20
	lda $0BD1
	lsr
	lsr
	lsr
	lsr
	lsr
	plp
	rts

L81D8AE:
	php
	rep #$20
	and #$00FF
	asl
	asl
	asl
	asl
	pha
	asl
	clc
	adc #$5330
	tay
	ldx #$4400
	lda #$7F7F
	sta $15
	lda #$0020
	jsl $81D98A
	pla
	clc
	adc #$58D0
	tay
	ldx #$4420
	lda #$0010
	jsl $81D98A
	plp
	rtl

L81D8E0:
	php
	ldx #$0000
	ldy #$0000
L81D8E7:
	sep #$20
	lda $7F4400
	cmp $7F5330,X
	beq L81D8FE
	rep #$20
	txa
	clc
	adc #$0020
	tax
	iny
	bra L81D8E7
L81D8FE:
	tya
	plp
	rts

L81D901:
	php
	rep #$20
	ldx #$0000
L81D907:
	lda $7F4400,X
	tay
	lda $0B6E,X
	sta $7F4400,X
	tya
	sta $0B6E,X
	inx
	inx
	cpx #$0030
	bne L81D907
	plp
	rtl

L81D920:
	php
	sep #$20
	phx
	phy
	lda $02
	sta.l $000073
	rep #$20
	lda $00
	sta.l $000071
	lda #$0000
	sta.l $000076
	lda #$0000
	sta.l $000077
	jsl DECOMPRESS_ASSET
	sep #$20
	lda #$7E
	sta $02
	ldx #$40FE
	stx $00
	ply
	plx
	jsr L81D289
	plp
	rtl

L81D957:
	php
	rep #$20
	lda #$9400
	sta $01
	lda #$B800
	sta $00
	ldx #$0C00
	ldy #$6400
	jsr L81D289
	jsl L8087EA
	lda #$9400
	sta $01
	lda #$C400
	sta $00
	ldx #$0C00
	ldy #$6A00
	jsr L81D289
	jsl L8087EA
	plp
	rts

L81D98A:
	php
	phb
	rep #$20
	pha
	lda #$0054
	sta $1FFC
	lda #$6000
	sta $1FFE
	lda $15
	sta $1FFD
	pla
	dec A
	jsr $1FFC
	plb
	plp
	rtl

.db $08 $C2 $20 $48 $DA $5A $A5 $00
.db $48 $A5 $01 $48 $20 $C2 $D6 $22
.db $EA $87 $80 $68 $85 $01 $68 $85
.db $00 $7A $FA $68 $28 $6B $08 $C2
.db $20 $A2 $00 $00 $BF $30 $50 $7F
.db $29 $FF $00 $C9 $FF $00 $F0 $09
.db $E8 $E8 $E0 $00 $01 $D0 $ED $80
.db $2A $BF $32 $50 $7F $9F $30 $50
.db $7F $E8 $E8 $E0 $00 $01 $D0 $F1
.db $A2 $FE $00 $A9 $FF $FF $9F $30
.db $50 $7F $E2 $20 $A2 $00 $00 $BF
.db $30 $50 $7F $C9 $FF $F0 $04 $E8
.db $E8 $80 $F4 $8E $DB $0B $28 $6B
.db $08 $C2 $20 $29 $FF $00 $48 $A9
.db $07 $09 $8D $1B $0C $A9 $12 $08
.db $8D $1D $0C $A9 $00 $00 $22 $5F
.db $D3 $81 $22 $EE $D4 $81 $A0 $01
.db $00 $68 $A2 $12 $03 $A0 $58 $DF
.db $22 $1F $E2 $81 $A9 $03 $00 $A2
.db $22 $03 $A0 $22 $B5 $22 $1F $E2
.db $81 $A9 $60 $00 $8D $9E $0B $A9
.db $00 $81 $85 $01 $A9 $D5 $D6 $85
.db $00 $22 $AD $8E $80 $22 $EA $87
.db $80 $CE $9E $0B $D0 $F7 $A9 $04
.db $09 $8D $1B $0C $A9 $18 $08 $8D
.db $1D $0C $A9 $01 $00 $22 $5F $D3
.db $81 $22 $EE $D4 $81 $A9 $00 $81
.db $85 $01 $A9 $D5 $D6 $85 $00 $22
.db $AD $8E $80 $22 $EA $87 $80 $28
.db $6B $08 $C2 $20 $8D $A7 $0B $8D
.db $A4 $0B $A9 $09 $0A $8D $A1 $0B
.db $20 $F8 $96 $A9 $01 $00 $8D $A7
.db $0B $20 $C2 $D6 $22 $74 $93 $80
.db $AD $29 $01 $29 $00 $03 $D0 $0F
.db $AD $27 $01 $89 $80 $00 $D0 $57
.db $89 $00 $80 $D0 $36 $80 $E5 $E2
.db $20 $AD $A7 $0B $D0 $0B $AD $B5
.db $0B $18 $69 $07 $8D $B5 $0B $80
.db $09 $AD $B5 $0B $38 $E9 $07 $8D
.db $B5 $0B $AD $A7 $0B $49 $01 $8D
.db $A7 $0B $22 $C6 $D2 $81 $AE $B5
.db $0B $8E $B3 $0B $20 $C2 $D6 $C2
.db $20 $80 $B1 $E2 $20 $A9 $00 $8D
.db $0A $0C $A2 $00 $00 $86 $50 $86
.db $52 $22 $4E $95 $80 $22 $53 $D8
.db $81 $22 $74 $93 $80 $28 $6B $E2
.db $20 $AD $A7 $0B $D0 $DD $AD $A1
.db $0B $8D $1B $0C $AD $A2 $0B $18
.db $69 $08 $8D $1C $0C $22 $A8 $D5
.db $81 $A6 $15 $A0 $BC $A9 $A9 $05
.db $22 $1F $E2 $81 $EE $1B $0C $EE
.db $1C $0C $22 $A8 $D5 $81 $A6 $15
.db $A0 $58 $DF $AD $A4 $0B $22 $1F
.db $E2 $81 $20 $C2 $D6 $C2 $20 $A9
.db $BE $00 $22 $16 $AA $80 $E2 $20
.db $22 $74 $93 $80 $A9 $20 $8D $9E
.db $0B $22 $74 $93 $80 $CE $9E $0B
.db $D0 $F7 $A9 $01 $8D $0A $0C $A2
.db $00 $00 $86 $50 $86 $52 $22 $4E
.db $95 $80 $22 $53 $D8 $81 $20 $C2
.db $D6 $22 $74 $93 $80 $28 $6B

L81DB8F:
	php
	sep #$20
	phb
	lda #$7F
	pha
	plb
	lda #$02
	sta $07DC
	rep #$20
	lda #$FFFF
	ldy #$0100
	ldx #$0000
L81DBA7:
	sta $7F5030,X
	inx
	dey
	inx
	dey
	bne L81DBA7
	lda.l $07DF
	and #$00FF
	cmp #$0015
	bcs L81DBC2
	lda #$0000
	bra L81DBC5
L81DBC2:
	lda #$03E8
L81DBC5:
	sta.l $0007F1
	plb
	plp
	rtl

.db $A2 $00 $00 $A0
.db $00 $00 $A9 $80 $00 $85 $17 $BF
.db $F1 $A6 $88 $29 $FF $00 $EB $85
.db $15 $98 $4A $29 $FF $00 $05 $15
.db $99 $30 $50 $8A $18 $69 $0E $00
.db $AA $C8 $C8 $C6 $17 $D0 $E0 $88
.db $88 $A9 $00 $01 $99 $30 $50 $60

L81DC00:
	php
	rep #$20
	stz $91
	stz $93
	jsl $81D853
	sep #$20
	lda $085E
	sec
	sbc $0860
	cmp #$08
	bcs L81DC1D
	ldx #$0116
	bra L81DC20
L81DC1D:
	ldx #$0101
L81DC20:
	stx $0C1B
	ldx #$0809
	stx $0C1D
	lda #$00
	jsl $81D35F
	jsl $81D4EE
	lda $085E
	sta $15
	lda $085F
	sta $17
	stz $16
	stz $18
	stz $19
	stz $1A
	jsl L83D8F7
	ldx $19
	jsl L83F63C
	pha
	inc $0C1B
	inc $0C1C
	jsl $81D5A8
	ldx $15
	ldy #$F48E
	pla
	jsl $81E21F
	rep #$20
	ldx $17
	lda $7E3000,X
	cmp #$20FE
	bne L81DC82
	lda $17
	sec
	sbc #$0002
	tax
	ldy #$B522
	lda #$0008
	jsl $81E21F
L81DC82:
	jsr L81D6C2
	plp
	rtl

.db $08
.db $E2 $20 $AD $F2 $08 $22 $12 $D9
.db $83 $22 $01 $D9 $81 $AD $ED $08
.db $22 $12 $D9 $83 $AD $F0 $08 $C9
.db $12 $F0 $04 $A9 $01 $80 $02 $A9
.db $00 $8D $14 $0C $A9 $00 $8D $1E
.db $0B $28 $08 $E2 $20 $9C $13 $0C
.db $A2 $00 $00 $86 $50 $86 $52 $22
.db $6B $E4 $81 $AD $14 $0C $29 $FF
.db $D0 $04 $A9 $20 $80 $02 $A9 $28
.db $8D $29 $0B $A0 $00 $60 $AF $17
.db $44 $7F $22 $2B $D1 $81 $A0 $00
.db $00 $22 $4D $D1 $81 $22 $EA $87
.db $80 $A0 $00 $64 $AD $85 $0B $22
.db $2B $D1 $81 $A0 $01 $00 $22 $4D
.db $D1 $81 $22 $EA $87 $80 $22 $53
.db $D8 $81 $E2 $20 $A9 $81 $85 $5C
.db $AD $14 $0C $8D $16 $0C $C2 $20
.db $A9 $00 $7F $85 $0D $A9 $00 $44
.db $18 $6D $29 $0B $85 $0C $A2 $01
.db $03 $8E $1B $0C $A9 $00 $00 $85
.db $5E $A9 $00 $00 $22 $0B $CB $81
.db $AE $9F $0F $8E $20 $0B $22 $01
.db $D9 $81 $E2 $20 $A9 $82 $85 $5C
.db $A2 $01 $0F $8E $1B $0C $A2 $40
.db $00 $86 $5E $A9 $01 $22 $0B $CB
.db $81 $AE $9F $0F $8E $22 $0B $22
.db $01 $D9 $81 $A6 $50 $86 $52 $8E
.db $27 $0B $20 $6F $DF $AD $1E $0B
.db $C9 $02 $F0 $0A $C9 $01 $F0 $03
.db $4C $1E $DE $4C $79 $DD $4C $CC
.db $DD $C2 $20 $AD $25 $0B $29 $FF
.db $00 $EB $0A $18 $69 $10 $10 $8D
.db $2D $0B $AD $14 $0C $29 $FF $00
.db $F0 $0A $AD $2D $0B $18 $69 $00
.db $01 $8D $2D $0B $E2 $20 $20 $F1
.db $E1 $20 $F8 $DF $90 $06 $20 $BF
.db $DF $4C $B2 $DD $20 $89 $DE $20
.db $BF $DF $20 $23 $E0 $90 $03 $82
.db $86 $00 $20 $F8 $DF $90 $05 $20
.db $BF $DF $80 $EE $20 $89 $DE $20
.db $BF $DF $80 $E6 $C2 $20 $AD $24
.db $0B $29 $FF $00 $EB $0A $18 $69
.db $10 $04 $8D $2B $0B $AD $14 $0C
.db $29 $FF $00 $F0 $0A $AD $2B $0B
.db $18 $69 $00 $01 $8D $2B $0B $E2
.db $20 $20 $DA $E1 $20 $23 $E0 $90
.db $06 $20 $BF $DF $4C $05 $DE $20
.db $89 $DE $20 $BF $DF $20 $F8 $DF
.db $90 $02 $80 $34 $20 $23 $E0 $90
.db $05 $20 $BF $DF $80 $EF $20 $89
.db $DE $20 $BF $DF $80 $E7 $A9 $00
.db $8D $24 $0B $8D $25 $0B $20 $23
.db $E0 $90 $03 $4C $40 $DE $20 $F8
.db $DF $90 $05 $20 $BF $DF $80 $EE
.db $20 $89 $DE $20 $BF $DF $80 $E6
.db $AD $1E $0B $C9 $02 $F0 $2A $C9
.db $01 $F0 $26 $AD $ED $08 $22 $69
.db $D9 $83 $22 $01 $D9 $81 $AD $F2
.db $08 $22 $69 $D9 $83 $22 $53 $D8
.db $81 $A2 $00 $00 $86 $50 $86 $52
.db $22 $4E $95 $80 $20 $C2 $D6 $28
.db $6B $20 $E0 $D8 $22 $AE $D8 $81
.db $22 $01 $D9 $81 $20 $E0 $D8 $22
.db $AE $D8 $81 $22 $01 $D9 $81 $28
.db $6B $08 $E2 $20 $A9 $01 $8D $13
.db $0C $22 $6B $E4 $81 $C2 $20 $A9
.db $00 $7F $85 $0D $AD $24 $0B $29
.db $FF $00 $18 $6D $29 $0B $18 $69
.db $00 $44 $85 $0C $A9 $00 $00 $85
.db $10 $AD $25 $0B $29 $FF $00 $18
.db $6D $29 $0B $18 $69 $6E $0B $85
.db $0F $E2 $20 $A0 $04 $00 $A7 $0C
.db $85 $15 $B7 $0C $85 $16 $A7 $0F
.db $87 $0C $B7 $0F $97 $0C $A5 $15
.db $87 $0F $A5 $16 $97 $0F $22 $9B
.db $97 $81 $22 $01 $D9 $81 $22 $9B
.db $97 $81 $22 $01 $D9 $81 $C2 $20
.db $A9 $00 $7F $85 $0D $A9 $00 $44
.db $18 $6D $29 $0B $85 $0C $A9 $12
.db $04 $8D $1B $0C $AD $20 $0B $85
.db $50 $85 $52 $A9 $00 $00 $22 $E3
.db $C8 $81 $22 $01 $D9 $81 $A9 $12
.db $10 $8D $1B $0C $AD $22 $0B $85
.db $50 $85 $52 $A9 $01 $00 $22 $E3
.db $C8 $81 $22 $01 $D9 $81 $E2 $20
.db $AE $B5 $0B $DA $AE $2B $0B $8E
.db $B5 $0B $8E $B3 $0B $A9 $FF $8D
.db $11 $0C $22 $C6 $D2 $81 $AE $2D
.db $0B $8E $B5 $0B $8E $B3 $0B $A9
.db $FF $8D $11 $0C $22 $C6 $D2 $81
.db $FA $8E $B5 $0B $8E $B3 $0B $20
.db $6F $DF $AE $27 $0B $86 $50 $86
.db $52 $22 $74 $93 $80 $28 $60 $08
.db $C2 $20 $A9 $00 $7F $85 $0D $A9
.db $00 $44 $18 $6D $29 $0B $85 $0C
.db $A9 $00 $00 $85 $10 $A9 $6E $0B
.db $18 $6D $29 $0B $85 $0F $E2 $20
.db $A0 $00 $00 $A2 $00 $00 $B7 $0C
.db $9D $36 $0B $C8 $E8 $E0 $04 $00
.db $D0 $F4 $A0 $00 $00 $B7 $0F $9D
.db $36 $0B $C8 $E8 $E0 $08 $00 $D0
.db $F4 $A9 $FE $9D $36 $0B $A0 $00
.db $7E $22 $86 $E4 $81 $28 $60 $08
.db $C2 $20 $AD $B5 $0B $48 $AD $B3
.db $0B $48 $A9 $10 $04 $8D $B3 $0B
.db $A9 $10 $06 $8D $B5 $0B $22 $C6
.db $D2 $81 $EE $B4 $0B $EE $B4 $0B
.db $EE $B6 $0B $EE $B6 $0B $AD $B5
.db $0B $C9 $10 $1C $D0 $E8 $68 $8D
.db $B3 $0B $68 $8D $B5 $0B $28 $60
.db $08 $C2 $20 $A9 $10 $04 $8D $5D
.db $0B $A9 $10 $0A $8D $5F $0B $AD
.db $24 $0B $29 $FF $00 $0A $EB $18
.db $69 $10 $04 $8D $B5 $0B $8D $B3
.db $0B $E2 $20 $A9 $00 $8D $1F $0B
.db $28 $80 $6E $08 $C2 $20 $A9 $10
.db $10 $8D $5D $0B $A9 $10 $16 $8D
.db $5F $0B $AD $25 $0B $29 $FF $00
.db $0A $EB $18 $69 $10 $10 $8D $B5
.db $0B $8D $B3 $0B $E2 $20 $A9 $01
.db $8D $1F $0B $28 $80 $43 $08 $C2
.db $20 $AD $14 $0C $29 $FF $00 $D0
.db $05 $A9 $20 $00 $80 $03 $A9 $28
.db $00 $8D $29 $0B $A9 $10 $02 $8D
.db $5D $0B $A9 $10 $08 $8D $5F $0B
.db $AD $26 $0B $29 $FF $00 $0A $EB
.db $18 $69 $10 $02 $8D $B5 $0B $8D
.db $B3 $0B $E2 $20 $A9 $02 $8D $1F
.db $0B $A6 $50 $8E $27 $0B $28 $80
.db $00 $08 $C2 $20 $AD $14 $0C $29
.db $FF $00 $F0 $0C $EE $5E $0B $EE
.db $60 $0B $EE $B6 $0B $EE $B4 $0B
.db $22 $C6 $D2 $81 $20 $C2 $D6 $C2
.db $20 $AE $27 $0B $86 $50 $86 $52
.db $22 $74 $93 $80 $AD $29 $01 $89
.db $00 $08 $D0 $19 $89 $00 $04 $D0
.db $2C $AD $27 $01 $89 $40 $00 $D0
.db $4B $89 $00 $80 $D0 $7A $89 $80
.db $00 $D0 $78 $80 $D2 $AD $B5 $0B
.db $CD $5D $0B $F0 $08 $CE $B6 $0B
.db $CE $B6 $0B $80 $20 $AD $5F $0B
.db $8D $B5 $0B $80 $18 $AD $B5 $0B
.db $CD $5F $0B $F0 $08 $EE $B6 $0B
.db $EE $B6 $0B $80 $08 $AD $5D $0B
.db $8D $B5 $0B $80 $00 $22 $C6 $D2
.db $81 $AD $B5 $0B $8D $B3 $0B $20
.db $C2 $D6 $80 $93 $E2 $20 $20 $91
.db $E1 $C9 $FF $F0 $28 $48 $AD $1F
.db $0B $C9 $02 $F0 $0E $C9 $01 $F0
.db $05 $A2 $02 $02 $80 $08 $A2 $02
.db $0E $80 $03 $A2 $02 $01 $8E $30
.db $0B $68 $AE $27 $0B $86 $50 $86
.db $52 $22 $A6 $E6 $81 $82 $5F $FF
.db $28 $38 $60 $E2 $20 $20 $91 $E1
.db $C9 $3D $F0 $04 $C9 $3F $D0 $09
.db $A9 $08 $22 $E6 $E3 $81 $82 $46
.db $FF $AD $1F $0B $29 $FF $C9 $02
.db $F0 $1C $C9 $01 $F0 $0C $98 $8D
.db $24 $0B $AE $B5 $0B $8E $2B $0B
.db $80 $0C $98 $8D $25 $0B $AE $B5
.db $0B $8E $2D $0B $80 $00 $28 $18
.db $60 $08 $C2 $20 $AD $1F $0B $29
.db $FF $00 $C9 $02 $00 $F0 $25 $C9
.db $01 $00 $F0 $10 $A9 $00 $7F $85
.db $0D $A9 $00 $44 $18 $6D $29 $0B
.db $85 $0C $80 $12 $A9 $00 $00 $85
.db $0D $A9 $6E $0B $18 $6D $29 $0B
.db $85 $0C $80 $02 $80 $DE $AD $B5
.db $0B $38 $ED $5D $0B $EB $29 $FF
.db $00 $4A $A8 $B7 $0C $29 $FF $00
.db $28 $60 $08 $C2 $20 $AD $24 $0B
.db $29 $FF $00 $0A $EB $18 $69 $10
.db $04 $8D $B5 $0B $8D $B3 $0B $80
.db $17 $08 $C2 $20 $AD $25 $0B $29
.db $FF $00 $0A $EB $18 $69 $10 $10
.db $8D $B5 $0B $8D $B3 $0B $80 $00
.db $AD $14 $0C $29 $FF $00 $F0 $06
.db $EE $B6 $0B $EE $B4 $0B $22 $C6
.db $D2 $81 $20 $C2 $D6 $28 $60 $08
.db $C2 $20 $48 $A9 $00 $8B $85 $01
.db $84 $00 $68 $29 $FF $00 $0A $18
.db $65 $00 $85 $00 $A7 $00 $85 $00
.db $86 $17 $A9 $00 $7E $85 $04 $A9
.db $00 $30 $18 $65 $17 $85 $03 $A0
.db $00 $00 $B7 $00 $C9 $FD $FF $F0
.db $2B $C9 $FE $FF $F0 $38 $C9 $FF
.db $FF $F0 $45 $5A $0A $0A $AA $BF
.db $F8 $9A $8B $87 $03 $BF $FA $9A
.db $8B $C9 $FF $FF $F0 $05 $A0 $40
.db $00 $97 $03 $7A $C8 $C8 $E6 $03
.db $E6 $03 $80 $CE $A5 $17 $18 $69
.db $80 $00 $85 $17 $18 $69 $00 $30
.db $85 $03 $C8 $C8 $80 $BC $A5 $17
.db $18 $69 $40 $00 $85 $17 $18 $69
.db $00 $30 $85 $03 $C8 $C8 $80 $AA
.db $A5 $03 $38 $E9 $00 $30 $48 $88
.db $88 $B7 $00 $0A $0A $AA $BF $FA
.db $9A $8B $C9 $FF $FF $D0 $0A $A5
.db $17 $18 $69 $40 $00 $85 $17 $80
.db $08 $A5 $17 $18 $69 $80 $00 $85
.db $17 $FA $28 $6B $08 $C2 $20 $29
.db $FF $00 $48 $DA $5A $22 $A8 $D5
.db $81 $A6 $15 $7A $68 $22 $1F $E2
.db $81 $E2 $20 $AD $1B $0C $8D $5D
.db $0B $8D $5F $0B $AD $1C $0C $1A
.db $8D $5E $0B $FA $DA $8A $3A $0A
.db $18 $6D $5E $0B $8D $60 $0B $AE
.db $5D $0B $8E $05 $0C $A2 $87 $31
.db $8E $08 $0C $FA $8A $8D $07 $0C
.db $22 $7B $D7 $81 $28 $4C $18 $E3
.db $08 $E2 $20 $9C $63 $0B $20 $30
.db $E3 $80 $2C $08 $E2 $20 $A9 $01
.db $8D $63 $0B $20 $30 $E3 $80 $1F
.db $AD $61 $0B $0A $18 $6D $5E $0B
.db $8D $B6 $0B $8D $B4 $0B $AD $5D
.db $0B $8D $B5 $0B $8D $B3 $0B $22
.db $C6 $D2 $81 $4C $C2 $D6 $08 $C2
.db $20 $22 $74 $93 $80 $AD $29 $01
.db $89 $00 $08 $D0 $28 $89 $00 $04
.db $D0 $3C $AD $27 $01 $89 $80 $00
.db $D0 $57 $89 $00 $80 $D0 $48 $89
.db $40 $00 $D0 $60 $80 $D9 $22 $C6
.db $D2 $81 $AE $B5 $0B $8E $B3 $0B
.db $20 $C2 $D6 $80 $CA $AD $B5 $0B
.db $CD $5D $0B $F0 $09 $38 $E9 $00
.db $02 $8D $B5 $0B $80 $E0 $AD $5F
.db $0B $8D $B5 $0B $80 $D8 $AD $B5
.db $0B $CD $5F $0B $F0 $09 $18 $69
.db $00 $02 $8D $B5 $0B $80 $C7 $AD
.db $5D $0B $8D $B5 $0B $80 $BF $E2
.db $20 $A9 $FF $8D $62 $0B $28 $18
.db $6B $E2 $20 $AD $B6 $0B $38 $ED
.db $5E $0B $4A $8D $62 $0B $8D $61
.db $0B $28 $18 $6B $E2 $20 $AD $63
.db $0B $D0 $03 $4C $4F $E3 $A9 $FF
.db $8D $62 $0B $28 $38 $6B $08 $C2
.db $20 $48 $A9 $0B $00 $8D $01 $0B
.db $68 $28 $80 $0E $08 $C2 $20 $48
.db $A9 $11 $00 $8D $01 $0B $68 $28
.db $80 $00 $08 $C2 $20 $29 $FF $00
.db $48 $A9 $06 $00 $AE $01 $0B $A0
.db $00 $00 $22 $A3 $A9 $87 $E2 $20
.db $AE $1B $0C $DA $A9 $07 $8D $1B
.db $0C $AD $01 $0B $8D $1C $0C $22
.db $A8 $D5 $81 $FA $8E $1B $0C $A6
.db $15 $C2 $20 $A0 $94 $AE $68 $18
.db $69 $04 $00 $22 $1F $E2 $81 $A9
.db $BE $00 $22 $16 $AA $80 $20 $C2
.db $D6 $22 $EA $87 $80 $AD $27 $01
.db $89 $00 $80 $F0 $F4 $A9 $06 $00
.db $AE $01 $0B $A0 $01 $00 $22 $A3
.db $A9 $87 $20 $C2 $D6 $22 $EA $87
.db $80 $28 $6B $08 $E2 $20 $A9 $01
.db $8D $10 $0C $28 $6B $08 $E2 $20
.db $9C $10 $0C $28 $6B $08 $E2 $20
.db $9C $56 $0B $28 $80 $09 $08 $E2
.db $20 $A9 $01 $8D $56 $0B $28 $08
.db $22 $6B $E4 $81 $8B $E2 $20 $A9
.db $81 $48 $AB $C2 $20 $5A $9C $34
.db $0B $AE $34 $0B $BD $36 $0B $29
.db $FF $00 $C9 $FE $00 $F0 $08 $20
.db $01 $E5 $EE $34 $0B $80 $EA $AC
.db $34 $0B $D0 $03 $A0 $01 $00 $A9
.db $08 $00 $22 $18 $D7 $81 $C0 $00
.db $00 $F0 $01 $1A $A0 $00 $04 $22
.db $33 $D7 $81 $48 $22 $EA $87 $80
.db $AD $56 $0B $29 $FF $00 $F0 $07
.db $20 $C2 $D6 $22 $75 $E4 $81 $A9
.db $00 $7E $85 $01 $A9 $FE $40 $85
.db $00 $FA $7A $20 $89 $D2 $22 $EA
.db $87 $80 $22 $75 $E4 $81 $AB $28
.db $6B $C9 $FF $00 $D0 $0C $A9 $00
.db $94 $85 $01 $A9 $20 $A8 $85 $00
.db $80 $22 $48 $A9 $00 $93 $85 $01
.db $68 $A0 $0E $00 $22 $33 $D7 $81
.db $AA $BF $EA $A6 $88 $29 $FF $00
.db $0A $0A $0A $0A $0A $0A $18 $69
.db $00 $80 $85 $00 $AC $34 $0B $B9
.db $BB $E5 $29 $FF $00 $0A $0A $0A
.db $0A $0A $0A $AA $A5 $00 $85 $15
.db $86 $17 $20 $5C $E5 $A5 $15 $18
.db $69 $00 $02 $85 $00 $A5 $17 $18
.db $69 $00 $02 $AA $A9 $04 $00 $8D
.db $DD $0B $A0 $00 $00 $B7 $00 $9F
.db $FE $40 $7E $C8 $C8 $E8 $E8 $B7
.db $00 $9F $FE $40 $7E $C8 $C8 $E8
.db $E8 $B7 $00 $9F $FE $40 $7E $C8
.db $C8 $E8 $E8 $B7 $00 $9F $FE $40
.db $7E $C8 $C8 $E8 $E8 $B7 $00 $9F
.db $FE $40 $7E $C8 $C8 $E8 $E8 $B7
.db $00 $9F $FE $40 $7E $C8 $C8 $E8
.db $E8 $B7 $00 $9F $FE $40 $7E $C8
.db $C8 $E8 $E8 $B7 $00 $9F $FE $40
.db $7E $C8 $C8 $E8 $E8 $CE $DD $0B
.db $D0 $AB $60 $00 $01 $02 $03 $04
.db $05 $06 $07 $10 $11 $12 $13 $14
.db $15 $16 $17 $20 $21 $22 $23 $24
.db $25 $26 $27 $30 $31 $32 $33 $34
.db $35 $36 $37 $40 $41 $42 $43 $44
.db $45 $46 $47 $50 $51 $52 $53 $54
.db $55 $56 $57 $60 $61 $62 $63 $64
.db $65 $66 $67 $70 $71 $72 $73 $74
.db $75 $76 $77 $80 $81 $82 $83 $84
.db $85 $86 $87 $90 $91 $92 $93 $94
.db $95 $96 $97 $A0 $A1 $A2 $A3 $A4
.db $A5 $A6 $A7 $B0 $B1 $B2 $B3 $B4
.db $B5 $B6 $B7 $C0 $C1 $C2 $C3 $C4
.db $C5 $C6 $C7 $D0 $D1 $D2 $D3 $D4
.db $D5 $D6 $D7 $E0 $E1 $E2 $E3 $E4
.db $E5 $E6 $E7 $F0 $F1 $F2 $F3 $F4
.db $F5 $F6 $F7 $08 $22 $6B $E4 $81
.db $E2 $20 $A9 $01 $8D $56 $0B $8B
.db $A9 $81 $48 $AB $C2 $20 $5A $9C
.db $34 $0B $AE $34 $0B $BD $36 $0B
.db $29 $FF $00 $C9 $FE $00 $F0 $08
.db $20 $01 $E5 $EE $34 $0B $80 $EA
.db $AC $34 $0B $D0 $03 $A0 $01 $00
.db $A9 $08 $00 $22 $18 $D7 $81 $C0
.db $00 $00 $F0 $01 $1A $A0 $00 $04
.db $22 $33 $D7 $81 $48 $20 $C2 $D6
.db $22 $EA $87 $80 $22 $75 $E4 $81
.db $A9 $00 $7E $85 $01 $A9 $FE $40
.db $85 $00 $FA $7A $20 $89 $D2 $22
.db $EA $87 $80 $AB $28 $6B $08 $E2
.db $20 $8D $2F $0B $C9 $FF $D0 $02
.db $28 $6B $AD $B5 $0B $C9 $0F $B0
.db $05 $AE $32 $0B $80 $03 $AE $30
.db $0B $8E $1B $0C $C2 $20 $AD $1C
.db $0C $29 $FF $00 $AA $A0 $00 $00
.db $A9 $0C $00 $22 $A3 $A9 $87 $22
.db $17 $E7 $81 $A9 $05 $00 $22 $F8
.db $D6 $81 $20 $C2 $D6 $22 $74 $93
.db $80 $AD $27 $01 $89 $00 $80 $D0
.db $05 $89 $40 $00 $F0 $EF $AD $1C
.db $0C $29 $FF $00 $AA $A0 $01 $00
.db $A9 $0C $00 $22 $A3 $A9 $87 $A9
.db $02 $00 $22 $F8 $D6 $81 $20 $C2
.db $D6 $22 $74 $93 $80 $28 $6B $08
.db $E2 $20 $AE $1B $0C $DA $AD $04
.db $0C $48 $A2 $0D $0C $8E $1D $0C
.db $A9 $04 $22 $5F $D3 $81 $22 $EE
.db $D4 $81 $A9 $28 $8D $04 $0C $AD
.db $2F $0B $22 $70 $97 $81 $90 $22
.db $EE $1B $0C $EE $1C $0C $22 $A8
.db $D5 $81 $A6 $15 $A0 $24 $E7 $AD
.db $2F $0B $22 $1F $E2 $81 $E2 $20
.db $68 $8D $04 $0C $FA $8E $1B $0C
.db $28 $6B $AD $2F $0B $EB $A9 $0E
.db $C2 $20 $8F $02 $42 $00 $EA $EA
.db $EA $AF $16 $42 $00 $E2 $20 $C2
.db $20 $8D $A7 $0B $EE $1B $0C $EE
.db $1C $0C $22 $A8 $D5 $81 $A6 $15
.db $A5 $15 $18 $69 $0C $00 $8D $A4
.db $0B $A0 $24 $E7 $A9 $00 $00 $22
.db $1F $E2 $81 $A9 $00 $00 $85 $15
.db $AE $A7 $0B $BF $EC $A6 $88 $20
.db $E9 $E7 $A9 $80 $00 $85 $15 $AE
.db $A7 $0B $BF $ED $A6 $88 $20 $E9
.db $E7 $A9 $00 $01 $85 $15 $AE $A7
.db $0B $BF $EF $A6 $88 $20 $E9 $E7
.db $A9 $80 $01 $85 $15 $AE $A7 $0B
.db $BF $EE $A6 $88 $20 $E9 $E7 $A9
.db $00 $02 $85 $15 $AE $A7 $0B $BF
.db $EB $A6 $88 $20 $E9 $E7 $4C $56
.db $E7 $C2 $20 $29 $FF $00 $48 $AD
.db $A4 $0B $18 $65 $15 $AA $68 $29
.db $FF $00 $89 $80 $00 $D0 $06 $22
.db $99 $D6 $81 $80 $1C $A9 $FE $20
.db $9F $02 $30 $7E $9F $04 $30 $7E
.db $A9 $F9 $24 $9F $42 $30 $7E $9F
.db $44 $30 $7E $E8 $E8 $E8 $E8 $E8
.db $E8 $E8 $E8 $60 $08 $E2 $20 $AD
.db $00 $0C $C9 $01 $F0 $1D $CD $FF
.db $0B $F0 $4F $C2 $20 $AE $04 $0B
.db $A9 $FA $A4 $9F $00 $30 $7E $AE
.db $06 $0B $A9 $FA $24 $9F $00 $30
.db $7E $80 $4D $E2 $20 $CD $FF $0B
.db $F0 $18 $C2 $20 $AE $04 $0B $A9
.db $FE $20 $9F $00 $30 $7E $AE $06
.db $0B $A9 $FA $24 $9F $00 $30 $7E
.db $80 $2E $C2 $20 $AE $04 $0B $A9
.db $FE $20 $9F $00 $30 $7E $AE $06
.db $0B $A9 $FE $20 $9F $00 $30 $7E
.db $80 $16 $C2 $20 $AE $04 $0B $A9
.db $FA $A4 $9F $00 $30 $7E $AE $06
.db $0B $A9 $FE $20 $9F $00 $30 $7E
.db $28 $6B $08 $E2 $20 $A2 $00 $00
.db $8E $9E $0B $AD $B5 $0B $C9 $02
.db $F0 $05 $A2 $0B $02 $80 $03 $A2
.db $09 $02 $8E $A1 $0B $C2 $20 $AD
.db $A1 $0B $18 $69 $01 $0F $8D $A4
.db $0B $18 $69 $05 $00 $8D $A7 $0B
.db $8D $B5 $0B $8D $B3 $0B $A9 $01
.db $00 $8D $B0 $0B $28 $80 $67 $08
.db $C2 $20 $A9 $01 $00 $8D $9E $0B
.db $A9 $0A $03 $8D $A1 $0B $18 $69
.db $01 $0D $8D $A4 $0B $18 $69 $05
.db $00 $8D $A7 $0B $AD $A4 $0B $8D
.db $B5 $0B $8D $B3 $0B $A9 $0B $00
.db $8D $B0 $0B $28 $80 $38 $08 $C2
.db $20 $AD $5D $08 $22 $C2 $CB $93
.db $90 $03 $4C $23 $EB $A9 $02 $00
.db $8D $9E $0B $A9 $09 $03 $8D $A1
.db $0B $18 $69 $01 $0F $8D $A4 $0B
.db $18 $69 $05 $00 $8D $A7 $0B $8D
.db $B5 $0B $8D $B3 $0B $A9 $0C $00
.db $8D $B0 $0B $28 $80 $00 $08 $C2
.db $20 $A9 $1A $00 $A2 $01 $00 $A0
.db $00 $00 $22 $A3 $A9 $87 $E2 $20
.db $A2 $00 $00 $8E $AD $0B $A6 $50
.db $DA $22 $6B $E4 $81 $22 $EA $87
.db $80 $A9 $71 $8F $17 $44 $7F $A2
.db $00 $00 $22 $0F $D1 $81 $22 $EA
.db $87 $80 $AE $A1 $0B $8E $1B $0C
.db $22 $A8 $D5 $81 $A6 $15 $A0 $EA
.db $9F $AD $B0 $0B $22 $1F $E2 $81
.db $C2 $20 $22 $C6 $D2 $81 $AD $A1
.db $0B $18 $69 $03 $01 $8D $1B $0C
.db $29 $FF $00 $09 $00 $08 $8F $02
.db $42 $00 $EA $EA $EA $AF $16 $42
.db $00 $85 $56 $AD $1C $0C $29 $FF
.db $00 $09 $00 $08 $8F $02 $42 $00
.db $EA $EA $EA $AF $16 $42 $00 $85
.db $58 $A9 $03 $00 $85 $5A $64 $5C
.db $A9 $00 $83 $85 $63 $A9 $00 $80
.db $85 $62 $22 $A2 $93 $80 $A6 $50
.db $8E $AA $0B $AD $07 $0C $29 $00
.db $FF $09 $01 $00 $8D $07 $0C $AD
.db $A4 $0B $8D $05 $0C $A9 $89 $31
.db $8D $08 $0C $22 $7B $D7 $81 $AD
.db $A7 $0B $8D $05 $0C $A9 $89 $31
.db $8D $08 $0C $22 $7B $D7 $81 $22
.db $75 $E4 $81 $20 $C2 $D6 $22 $EA
.db $87 $80 $AD $29 $01 $29 $00 $03
.db $D0 $0F $AD $27 $01 $89 $80 $00
.db $D0 $60 $89 $00 $80 $D0 $27 $80
.db $E5 $AD $B5 $0B $CD $A4 $0B $F0
.db $08 $AD $A4 $0B $8D $B5 $0B $80
.db $06 $AD $A7 $0B $8D $B5 $0B $22
.db $C6 $D2 $81 $AD $B5 $0B $8D $B3
.db $0B $20 $C2 $D6 $80 $C0 $68 $85
.db $50 $85 $52 $22 $6B $E4 $81 $A9
.db $1A $00 $A2 $01 $00 $A0 $01 $00
.db $22 $A3 $A9 $87 $22 $4E $95 $80
.db $22 $75 $E4 $81 $20 $C2 $D6 $AD
.db $9E $0B $F0 $07 $A9 $BE $00 $22
.db $16 $AA $80 $22 $EA $87 $80 $28
.db $38 $6B $AD $B5 $0B $CD $A7 $0B
.db $F0 $C4 $AD $9E $0B $29 $FF $00
.db $0A $AA $BF $9B $EA $81 $85 $15
.db $6C $15 $00 $A1 $EA $FB $EA $FB
.db $EA $22 $34 $C6 $93 $AD $A1 $0B
.db $C9 $0B $02 $D0 $01 $3A $18 $69
.db $00 $0A $8D $1B $0C $22 $A8 $D5
.db $81 $A6 $15 $A0 $EA $9F $A9 $0A
.db $00 $22 $1F $E2 $81 $A9 $2D $00
.db $22 $16 $AA $80 $20 $C2 $D6 $22
.db $EA $87 $80 $AD $27 $01 $29 $00
.db $10 $D0 $02 $80 $F2 $22 $EA $8C
.db $80 $A9 $F9 $00 $22 $E3 $B4 $80
.db $22 $EA $87 $80 $A9 $E0 $00 $22
.db $30 $B5 $80 $22 $EA $87 $80 $5C
.db $F4 $A3 $80 $C2 $20 $68 $85 $50
.db $85 $52 $22 $6B $E4 $81 $22 $4E
.db $95 $80 $22 $53 $D8 $81 $22 $75
.db $E4 $81 $20 $C2 $D6 $A9 $2D $00
.db $22 $16 $AA $80 $22 $EA $87 $80
.db $28 $18 $6B $C2 $20 $A5 $50 $48
.db $22 $6B $E4 $81 $22 $EA $87 $80
.db $A9 $71 $00 $8F $17 $44 $7F $A2
.db $00 $00 $22 $0F $D1 $81 $22 $EA
.db $87 $80 $A2 $06 $03 $8E $1B $0C
.db $22 $A8 $D5 $81 $A6 $15 $A0 $EA
.db $9F $A9 $0D $00 $22 $1F $E2 $81
.db $A9 $0C $04 $8D $1B $0C $29 $FF
.db $00 $09 $00 $08 $8F $02 $42 $00
.db $EA $EA $EA $AF $16 $42 $00 $85
.db $56 $AD $1C $0C $29 $FF $00 $09
.db $00 $08 $8F $02 $42 $00 $EA $EA
.db $EA $AF $16 $42 $00 $85 $58 $A9
.db $03 $00 $85 $5A $64 $5C $A9 $00
.db $83 $85 $63 $A9 $00 $80 $85 $62
.db $22 $A2 $93 $80 $A5 $50 $85 $52
.db $22 $4E $95 $80 $22 $75 $E4 $81
.db $20 $C2 $D6 $22 $EA $87 $80 $AD
.db $27 $01 $89 $80 $00 $D0 $0C $89
.db $00 $80 $D0 $07 $89 $40 $00 $D0
.db $02 $80 $E8 $68 $85 $50 $85 $52
.db $22 $6B $E4 $81 $22 $4E $95 $80
.db $22 $53 $D8 $81 $22 $75 $E4 $81
.db $20 $C2 $D6 $22 $EA $87 $80 $28
.db $38 $6B $08 $E2 $20 $8D $B0 $0B
.db $EB $8D $B1 $0B $22 $6B $E4 $81
.db $AD $B0 $0B $8D $36 $0B $A9 $FE
.db $8D $37 $0B $A0 $00 $64 $22 $7D
.db $E4 $81 $22 $6B $E4 $81 $A9 $01
.db $8D $07 $0C $AD $B0 $0B $C9 $3D
.db $F0 $08 $C2 $20 $A9 $B2 $80 $8D
.db $76 $08 $E2 $20 $AD $B0 $0B $C9
.db $3D $F0 $6B $C9 $6B $F0 $04 $C9
.db $5C $B0 $30 $20 $87 $ED $AD $B1
.db $0B $29 $80 $D0 $10 $22 $75 $E4
.db $81 $A2 $10 $0C $20 $C7 $ED $22
.db $BD $96 $81 $28 $6B $A2 $08 $0C
.db $20 $3E $ED $22 $75 $E4 $81 $A2
.db $10 $10 $20 $C7 $ED $22 $BD $96
.db $81 $28 $6B $20 $87 $ED $20 $C5
.db $EC $AD $B1 $0B $29 $80 $D0 $10
.db $22 $75 $E4 $81 $A2 $10 $0E $20
.db $C7 $ED $22 $BD $96 $81 $28 $6B
.db $A2 $08 $0E $20 $3E $ED $22 $75
.db $E4 $81 $A2 $10 $12 $20 $C7 $ED
.db $22 $BD $96 $81 $28 $6B $E2 $20
.db $A2 $04 $09 $8E $1B $0C $22 $A8
.db $D5 $81 $A6 $15 $A0 $3A $D1 $A9
.db $0D $22 $1F $E2 $81 $A2 $05 $0A
.db $8E $05 $0C $A2 $40 $36 $8E $08
.db $0C $22 $7B $D7 $81 $22 $75 $E4
.db $81 $A2 $11 $0C $20 $C7 $ED $22
.db $BD $96 $81 $28 $6B $08 $E2 $20
.db $AD $B1 $0B $29 $7F $F0 $44 $A2
.db $08 $0C $8E $1B $0C $22 $A8 $D5
.db $81 $A6 $15 $A0 $3A $D1 $AD $B0
.db $0B $29 $FF $38 $E9 $59 $22 $1F
.db $E2 $81 $C2 $20 $AD $B0 $0B $29
.db $FF $00 $38 $E9 $5C $00 $0A $AA
.db $BF $2A $ED $81 $8D $1B $0C $22
.db $A8 $D5 $81 $A6 $15 $AD $B1 $0B
.db $29 $7F $00 $22 $AC $D6 $81 $E2
.db $20 $80 $15 $A2 $08 $0C $8E $1B
.db $0C $22 $A8 $D5 $81 $A6 $15 $A0
.db $3A $D1 $A9 $02 $22 $1F $E2 $81
.db $28 $60 $0D $0C $10 $0C $0C $0C
.db $0E $0C $11 $0C $10 $0C $0F $0C
.db $0F $0C $10 $0C $11 $0C $08 $C2
.db $20 $8E $1B $0C $8E $AD $0B $22
.db $A8 $D5 $81 $A6 $15 $A0 $3A $D1
.db $A9 $01 $00 $22 $1F $E2 $81 $AD
.db $AD $0B $18 $69 $03 $00 $8D $1B
.db $0C $22 $A8 $D5 $81 $A6 $15 $A0
.db $58 $DF $AD $B0 $0B $22 $1F $E2
.db $81 $AD $AD $0B $18 $69 $01 $00
.db $8D $05 $0C $A2 $40 $36 $8E $08
.db $0C $22 $7B $D7 $81 $28 $60 $08
.db $E2 $20 $A2 $08 $09 $8E $1B $0C
.db $22 $A8 $D5 $81 $A6 $15 $A0 $3A
.db $D1 $A9 $00 $22 $1F $E2 $81 $A2
.db $0B $0A $8E $1B $0C $22 $A8 $D5
.db $81 $A6 $15 $A0 $58 $DF $AD $B0
.db $0B $22 $1F $E2 $81 $A2 $09 $0A
.db $8E $05 $0C $A2 $40 $36 $8E $08
.db $0C $22 $7B $D7 $81 $28 $60 $08
.db $E2 $20 $8E $91 $0F $A2 $8B $31
.db $8E $8C $0F $A2 $F1 $A0 $8E $8A
.db $0F $A2 $00 $01 $A9 $07 $22 $7B
.db $AC $87 $28 $60 $08 $C2 $20 $A9
.db $0A $0B $8D $9E $0B $22 $0F $EE
.db $81 $90 $0E $A9 $BE $00 $22 $16
.db $AA $80 $22 $EA $87 $80 $28 $38
.db $6B $A9 $2D $00 $22 $16 $AA $80
.db $22 $EA $87 $80 $28 $18 $6B $08
.db $C2 $20 $22 $6B $E4 $81 $AD $9E
.db $0B $18 $69 $01 $03 $8D $A1 $0B
.db $18 $69 $05 $00 $8D $A4 $0B $AD
.db $9E $0B $8D $1B $0C $22 $A8 $D5
.db $81 $A6 $15 $A0 $22 $B5 $A9 $02
.db $00 $22 $1F $E2 $81 $AD $07 $0C
.db $29 $00 $FF $09 $01 $00 $8D $07
.db $0C $AD $A1 $0B $8D $05 $0C $A9
.db $89 $31 $8D $08 $0C $22 $7B $D7
.db $81 $AD $A4 $0B $8D $05 $0C $22
.db $7B $D7 $81 $AD $A1 $0B $8D $B5
.db $0B $8D $B3 $0B $22 $C6 $D2 $81
.db $22 $75 $E4 $81 $20 $C2 $D6 $22
.db $EA $87 $80 $AD $29 $01 $29 $00
.db $03 $D0 $0F $AD $27 $01 $89 $80
.db $00 $D0 $2C $89 $00 $80 $D0 $24
.db $80 $E5 $AD $B5 $0B $CD $A1 $0B
.db $F0 $05 $AD $A1 $0B $80 $03 $AD
.db $A4 $0B $8D $B5 $0B $22 $C6 $D2
.db $81 $AD $B5 $0B $8D $B3 $0B $20
.db $C2 $D6 $80 $C3 $28 $38 $6B $AD
.db $B5 $0B $CD $A4 $0B $F0 $F5 $28
.db $18 $6B $08 $C2 $20 $DA $A8 $A9
.db $10 $00 $22 $18 $D7 $81 $8C $6C
.db $0B $A8 $A9 $10 $00 $22 $18 $D7
.db $81 $8C $6A $0B $A8 $A9 $10 $00
.db $22 $18 $D7 $81 $8C $68 $0B $A8
.db $8D $66 $0B $AD $6C $0B $0A $AA
.db $BF $49 $EF $81 $8D $6C $0B $AD
.db $6A $0B $0A $AA $BF $49 $EF $81
.db $8D $6A $0B $AD $68 $0B $0A $AA
.db $BF $49 $EF $81 $8D $68 $0B $AD
.db $66 $0B $0A $AA $BF $49 $EF $81
.db $8D $66 $0B $FA $AD $66 $0B $20
.db $3C $EF $E8 $E8 $AD $68 $0B $20
.db $3C $EF $E8 $E8 $AD $6A $0B $20
.db $3C $EF $E8 $E8 $AD $6C $0B $20
.db $3C $EF $28 $6B $9F $00 $30 $7E
.db $18 $69 $10 $00 $9F $40 $30 $7E
.db $60 $00 $25 $01 $25 $02 $25 $03
.db $25 $04 $25 $05 $25 $06 $25 $07
.db $25 $08 $25 $09 $25 $49 $25 $C8
.db $25 $C9 $25 $2E $25 $47 $25 $CA
.db $25 $08 $C2 $20 $29 $FF $00 $C9
.db $0D $00 $90 $03 $A9 $0C $00 $28
.db $6B

.ENDS
