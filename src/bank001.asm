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
	jsr (L818010,X)
	plp
	rtl

L818010:
.dw L81802C
.dw L81810D
.dw L8181E0
.dw L819806
.dw L81AD6E
.dw L81B9B8
.dw L81BAAD
.dw L81BC4E
.dw L81BE11
.dw L81C236
.dw L81C332
.dw L81C401
.dw L81C4C1
.dw L81C583

L81802C:
	sep #$20
	rep #$20
	lda $0c1a
	and #$00ff
	asl
	tax
	sep #$20
	jsr (L81803E,X)
	rts

L81803E:
.dw L818042
.dw L818093

L818042:
	sep #$20
	jsr L81D6DE
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
	jsl L81D5A8
	ldx $15
	ldy #$9f64
	lda #$0000
	jsl L81E21F
	sep #$20
	ldx #$3187
	stx $0c08
	lda #$04
	sta $0c07
	jsl L81D77B
	jsl L81D2C6
	jmp L81D6C2

L818093:
	rep #$20
	lda #L81809C
	jmp L81D7F2

L81809B:
	rts

L81809C:
.dw L8180AC
.dw L8180C2
.dw L81809B
.dw L81809B
.dw L8180E3
.dw L81809B
.dw L81809B
.dw L81809B

L8180AC:
	sep #$20
	dec $0bb6
	dec $0bb6
	lda $0bb6
	cmp #$02
	bne L8180D6

L8180BB:
	lda #$0a
	sta $0bb6
	bra L8180D6

L8180C2:
	sep #$20
	inc $0bb6
	inc $0bb6
	lda $0bb6
	cmp #$0c
	bne L8180D6
	lda #$04
	sta $0bb6
L8180D6:
	jsl L81D2C6
	lda $0bb6
	sta $0bb4
	jmp L81D6C2

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
	jmp L81D6C2

L81810D:
	sep #$20
	rep #$20
	lda $0c1a
	and #$00ff
	asl
	tax
	sep #$20
	jsr (L81811F,X)
	rts

L81811F:
.dw L818123
.dw L818160

L818123:
	sep #$20
	jsr L81D6DE
	ldx #$0494
	lda #$03
	sta $0C1B
	sta $0C1C
	lda #$04
	sta $0C1D
	lda #$04
	sta $0C1E
	stz $0C0A
	lda #$00
	jsl L81D35F
	jsl L81D4EE
	rep #$20
	lda $15
	clc
	adc #$0042
	sta $0BD5
	tax
	lda $0C0A
	jsl L81D6AC
	jmp L81D6C2

L818160:
	rep #$20
	lda #L818169
	jmp L81D7F2

L818168:
	rts

L818169:
.dw L8181AD
.dw L8181CC
.dw L818168
.dw L818168
.dw L818180
.dw L818179
.dw L818168
.dw L818168

L818179:
	sep #$20
	lda #$ff
	sta $0c0a
L818180:
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
	jsl L81D35F
	jsl L81D4EE
	jmp L81D6C2

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
	jsl L81D6AC
	jmp L81D6C2

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
	jsr (L8181F2,X)
	rts

L8181F2:
.dw L8181F4

L8181F4:
	sep #$20
	phb
	lda #$81
	pha
	plb
	jsl L81E475
	ldx #$0000
	stx $50
	stx $52
	jsl L8087EA
	jsr L81D957
	lda $0c0a
	cmp #$01
	beq L818217
	jmp L81821A
L818217:
	jmp L818A15

L81821A:
	sep #$20
	jsr L818325
	lda #$00
	sta $0b0e
	ldx #$0602
	stx $0b10
	jsr L8183A3
L81822D:
	jsr L81868B
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
	jsl L81E46B
	jsr L8184DE
	cmp #$00
	bne L818251
	bra L81822D
L818251:
	lda $7f5345,X
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
	lda $7f5345,X
	ldy #$0005
	jsr L81C91F
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
	jsr L81849A
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
	lda [$00],Y
	eor #$02
	sta [$00],Y
	jsr L818458
	jsl L81E475
	jsr L81D6C2
	rep #$20
	lda #$006f
	jsl L80B467
	jsl L8087EA
	sep #$20
	brl L81822D

L8182EB:
	sep #$20
	jsl L81E46B
	ldx #$0000
	stx $50
	stx $52
	stx $0bc1
	jsl L80954E
	lda #$03
	sta $0c17
	sta $074a
	stz $0c1a
	jsr L818910
	jsl L81D853
	jsl L81E475
	jsr L81D6C2
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
	sta $7f5345,X
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
	lda $7f5342,X
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
	jsl L81D718
	cpy #$0000
	beq L818380
	inc A
L818380:
	ora #$0100
	xba
	sta $0c01
	lda #bank100(L89C45C)
	sta $01
	lda $07ce
	and #$00ff
	asl
	tax
	lda.l L89C45C,X
	sta $00
	lda [$00]
	sep #$20
	sta $0c03
	plp
	rts

L8183A3:
	php
	rep #$20
	jsl L81E46B
	stz $50
	stz $52
	lda #$0000
	jsl L81D35F
	lda #$0501
	sta $0c1b
	lda #$0c1e
	sta $0c1d
	jsl L81D4EE
	jsr L818458
	ldx $0b10
	stx $0bb5
	stx $0bb3
	jsr L81849A
	jsl L81D86F
	jsl L8087EA
	lda.l ActiveUnit.PortraitID
	ldx #$0000
	jsl L81D10F
	jsl L81CDAB
	jsl L8087EA
	ldx #$1101
	stx $0c1b
	jsl L81CCD9
	lda $50
	sta $0bc3
	sep #$20
	ldx #$0602
	stx $0c05
	ldx #$3189
	stx $0c08
	lda #$05
	sta $0c07
	jsl L81D77B
	ldx #$060b
	stx $0c05
	jsl L81D77B
	ldx #$0614
	stx $0c05
	jsl L81D77B
	ldx #$3187
	stx $0c08
	ldx #$0201
	stx $0c05
	lda #$01
	sta $0c07
	jsl L81D77B
	ldx $50
	stx $0bc5
	jsr L8184F6
	ldx $50
	stx $0bc7
	jsl L81E475
	jsr L81D6C2
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
	jsl L81E21F
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
	jsl L81D6AC
	bra L81846E
L818482:
	ldx #$00a6
	ldy #$c638
	lda #$00
	jsl L81E21F
	ldx #$00a6
	lda $0c03
	jsl L81D6AC
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
	jsl L87A9E8
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
	jsl L81D718
	clc
	adc $17
	plp
	rts

L8184DE:
	php
	rep #$20
	jsr L81849A
	asl
	asl
	asl
	asl
	asl
	tax
	stx $0bd1
	lda $7f5346,X
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
	jsl L81D35F
	jsl L81D4EE
	ldx #$0606
	stx $0c1b
L81853D:
	sep #$20
	jsr L818606
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
	lda $7f5342,X
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
	jsr (L8185A2,X)
	jsl L81D2C6
	ldx $0bb5
	stx $0bb3
	ldx $50
	stx $0bc7
	plp
	rts

L8185A2:
.dw L8185A8
.dw L8185C6
.dw L8185F4

L8185A8:
	lda $0c02
	and #$00ff
	cmp #$0002
	bcs L8185B4
	rts

L8185B4:
	ldx #$03ba
	lda #$24fe
	sta $7e3000,X
	lda #$24fa
	sta $7e3040,X
	rts

L8185C6:
	ldx #$01ba
	lda #$a4fa
	sta $7e3000,X
	lda #$24fe
	sta $7e3040,X
	lda $0c02
	and #$00ff
	cmp #$0003
	bcs L8185E3
	rts

L8185E3:
	ldx #$03ba
	lda #$24fe
	sta $7e3000,X
	lda #$24fa
	sta $7e3040,X
L8185F4:
	ldx #$01ba
	lda #$a4fa
	sta $7e3000,X
	lda #$24fe
	sta $7e3040,X
	rts

L818606:
	sep #$20
	ldx $0bd1
	lda $7f5346,X
	pha
	jsl L81D5A8
	ldx $15
	ldy #$d662
	pla
	jsl L81E21F
	rep #$20
	lda $17
	sec
	sbc #$0084
	tax
	lda #$00ff
	sta $7e3000,X
	sta $7e3040,X
	sta $7e3002,X
	sta $7e3042,X
	lda $0c1b
	sec
	sbc #$0002
	sta $0bb3
	ldx $0bd1
	lda $7f5345,X
	ldy #$0005
	jsr L81C91F
	sep #$20
	ldx $0bb3
	stx $0c05
	lda #$01
	sta $0c07
	ldx $0bd1
	lda $7f5345,X
	asl
	sta $27
	lda #$38
	ora $27
	sta $0c09
	lda $7f5331,X
	asl
	sta $27
	lda $7f5331,X
	and #$f8
	asl
	clc
	adc #$40
	clc
	adc $27
	sta $0c08
	jsl L81D77B
	rts

L81868B:
	php
	rep #$20
	jsl L8087EA
	pea $868b
	lda $0127
	and #$1000
	bne L8186A4
	lda #L8186A7
	jmp L81D7F2

L8186A3:
	rts

L8186A4:
	jmp L8187B5

L8186A7:
.dw L8186B7
.dw L8186ED
.dw L81873B
.dw L818773
.dw L8187C4
.dw L8187B1
.dw L8187C8
.dw L8186A3

L8186B7:
	sep #$20
	lda $0bb6
	cmp #$02
	bne L8186C1
	rts

L8186C1:
	lda $0bb6
	cmp #$06
	beq L8186D1
	dec $0bb6
	dec $0bb6
	jmp L8188AF
L8186D1:
	lda $0c01
	cmp #$01
	beq L8186EA
	dec $0c01
	lda #$0e
	sta $0bb6
	jsl L81E46B
	jsr L8184F6
	jmp L8188AF
L8186EA:
	brl L8187A0

L8186ED:
	sep #$20
	lda $0bb6
	cmp #$02
	bne L8186FF
	ldx #$0602
	stx $0bb5
	jmp L8188AF
L8186FF:
	lda $0bb6
	cmp #$0e
	beq L81871A
	inc $0bb6
	inc $0bb6
	jsr L8184DE
	lda $7f5342,X
	and #$80
	bne L818734
	jmp L8188AF
L81871A:
	lda $0c01
	cmp $0c02
	beq L81873A
	inc $0c01
	lda #$06
	sta $0bb6
	jsl L81E46B
	jsr L8184F6
	jmp L818758
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
	jmp L8188AF
L818753:
	lda #$14
	sta $0bb5
L818758:
	jsr L8184DE
	lda $7f5342,X
	and #$80
	beq L818770
	lda $0bb5
	sec
	sbc #$09
	sta $0bb5
	cmp #$02
	bne L818758
L818770:
	jmp L8188AF
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
	jsr L8184DE
	lda $7f5342,X
	and #$80
	bne L818798
	jmp L8188AF
L818798:
	lda #$02
	sta $0bb5
	jmp L8188AF

L8187A0:
	sep #$20
	lda $0b0e
	beq L8187A8
	rts

L8187A8:
	ldx #$0201
	stx $0bb5
	jmp L8188AF

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

L8187C4:
	ply
	plp
	clc
	rts

L8187C8:
	rep #$20
	jsl L81E46B
	lda #$0000
	jsl L81D1B6
	jsl L8087EA
	lda #$0001
	ldx #$7F00
	stx $0D
	ldx #$4428
	stx $0C
	jsl L81D1C0
	jsl L8087EA
	lda #$0000
	ldx $0BC7
	jsl L93DE36
	ldx $0BC3
	ldy $0BC7
	jsl L87A98D
	lda $0BC7
	sta $50
	sta $52
	ldx #$7F00
	stx $0D
	ldx #$4428
	stx $0C
	lda #$0001
	jsl L81D1C0
	ldx #$0101
	stx $0C1B
	jsr L81CE0E
	lda $50
	pha
	stz $50
	stz $52
	lda #$1101
	sta $0C1B
	jsl L81CACF
	pla
	sta $50
	sta $52
	lda #$1B10
	sta $0C1B
	jsl L81D5A8
	ldx $15
	ldy #$000F
	lda #$00FF
L81884B:
	sta $7E3000,X
	inx
	inx
	dey
	bne L81884B
	lda #$0003
	jsl L81D6F8
	jsl L81E475
	jsr L81D6C2
L818862:
	jsl L8087EA
	lda $0127
	and #$8040
	bne L818870
	bra L818862
L818870:
	jsl L81E46B
	lda #$0010
	ldx #$0001
	ldy #$0001
	jsl L87A9A3
	jsl L93DE67
	lda #$0000
	sta $50
	sta $52
	ldx #$1101
	stx $0C1B
	jsl L81CCD9
	lda $0BC7
	sta $50
	sta $52
	jsl L80954E
	jsl L81E475
	lda #$0002
	jsl L81D6F8
	jmp L81D6C2

L8188AF:
	rep #$20
	jsl L81E46B
	lda $0BB5
	cmp #$0201
	bne L8188D3
	jsl L81D2C6
	lda $0BB5
	sta $0BB3
	jsl L81E475
	jsr L81D6C2
	jsl L8087EA
	rts

L8188D3:
	jsr L81849A
	jsl L81D86F
	jsl L81D2C6
	lda $0bb5
	sta $0bb3
	lda #$0000
	sta $50
	sta $52
	ldx #$1101
	stx $0c1b
	jsl L81CCD9
	jsl L8087EA
	jsl L81E475
	ldx #$0000
	lda.l ActiveUnit.PortraitID
	jsl L81D10F
	jsl L81CDAB
	jsr L81D6C2
	rts

L818910:
	php
	rep #$20
	lda #$7f00
	sta $01
	lda #$3800
	sta $00
	lda #$7e00
	sta $04
	lda #$40fe
	sta $03
	ldx #$0000
L81892A:
	cpx #$05a0
	beq L818983
	lda $7f5345,X
	and #$00ff
	beq L818940
	txa
	clc
	adc #$0020
	tax
	bra L81892A
L818940:
	ldy #$0000
L818943:
	lda $7f5330,X
	sta [$00],Y
	iny
	iny
	inx
	inx
	cpy #$0020
	bne L818943
	lda $00
	clc
	adc #$0020
	sta $00
	ldy #$0000
	txa
	sec
	sbc #$0020
	lsr
	tax
L818964:
	lda $7f58d0,X
	sta [$03],Y
	iny
	iny
	inx
	inx
	cpy #$0010
	bne L818964
	lda $03
	clc
	adc #$0010
	sta $03
	ldy #$0000
	txa
	asl
	tax
	bra L81892A
L818983:
	ldx #$0000
L818986:
	cpx #$05a0
	beq L8189DF
	lda $7f5345,X
	and #$00ff
	bne L81899C
	txa
	clc
	adc #$0020
	tax
	bra L818986
L81899C:
	ldy #$0000
L81899F:
	lda $7f5330,X
	sta [$00],Y
	iny
	iny
	inx
	inx
	cpy #$0020
	bne L81899F
	lda $00
	clc
	adc #$0020
	sta $00
	ldy #$0000
	txa
	sec
	sbc #$0020
	lsr
	tax
L8189C0:
	lda $7f58d0,X
	sta [$03],Y
	iny
	iny
	inx
	inx
	cpy #$0010
	bne L8189C0
	lda $03
	clc
	adc #$0010
	sta $03
	ldy #$0000
	txa
	asl
	tax
	bra L818986
L8189DF:
	ldx #$0000
	ldy #$0000
	lda #$3800
	sta $00
L8189EA:
	lda [$00],Y
	sta $7f5330,X
	iny
	iny
	inx
	inx
	cpx #$05a0
	bne L8189EA
	ldx #$0000
	ldy #$0000
	lda #$40fe
	sta $03
L818A04:
	lda [$03],Y
	sta $7f58d0,X
	iny
	iny
	inx
	inx
	cpx #$02d0
	bne L818A04
	plp
	rts

L818A15:
	sep #$20
	jsr L818325
	lda #$01
	sta $0b0e
	ldx #$0602
	stx $0B10
	jsr L8183A3
L818A28:
	jsr L81868B
	bcc L818A30
	brl L8182EB
L818A30:
	sep #$20
	lda $0c01
	sta $0b0d
	ldx $0bb5
	stx $0b10
	ldx #$0c03
	stx $0b12
	jsr L8195BB
L818A47:
	jsr L81968D
	bcc L818A5F
	jsl L8087EA
	jsr L81D957
	jsr L81D8E0
	jsl L81D8AE
	jsr L8183A3
	bra L818A28
L818A5F:
	rep #$20
	lda $0b62
	and #$00ff
	asl
	tax
	lda.l L818A72,X
	sta $15
	jmp ($0015)

L818A72:
.dw L818A7E
.dw L818C93
.dw L818D4D
.dw L818D44
.dw L818A7C

L818A7C:
	bra L818A47

L818A7E:
	sep #$20
	ldx $0BB5
	stx $0B12
	stz $0B61
	jsr L818EDA
	bcc L818A99
	ldx $0B12
	stx $0BB5
	stx $0BB3
	bra L818A47
L818A99:
	lda #$01
	sta $0C00
	ldx #$0E01
	stx $0B18
L818AA4:
	jsr L819104
L818AA7:
	jsr L81939B
	bcc L818AC7
L818AAC:
	lda $7F4400
	jsl L87A923
	jsl L81D8AE
	ldx #$0B12
	stx $0BB5
	stx $0BB3
	jsr L8195BB
	brl L818A47
L818AC7:
	sep #$20
	ldx $0BB5
	stx $0B18
	jsr L819366
	lda $7F3802,X
	cmp #$FF
	beq L818AA4
	cmp #$0C
	bne L818AE1
	brl L818B76
L818AE1:
	rep #$20
	jsl L81D901
	jsr L819366
	lda $7F3803,X
	and #$00FF
	asl A
	asl A
	asl A
	asl A
	asl A
	tax
	lda $7F5330,X
	and #$00FF
	jsl L87A923
	jsl L81D86F
	jsl L81D901
	jsr L819366
	lda $7F3802,X
	sep #$20
	sta $0B25
	lda $0C14
	beq L818B24
	lda $0B25
	sec
	sbc #$08
	sta $0B25
L818B24:
	jsl L8796FF
	ldy #$0000
L818B2B:
	lda [$0C],Y
	cmp #$FF
	beq L818B38
	iny
	cpy #$0004
	bne L818B2B
	dey
L818B38:
	tya
	sta $0B24
	lda #$01
	sta $0B1E
	jsl L8196BD
	jsl L81DCB2
	jsl L8196BD
	jsl L8087EA
	lda #$00
	jsl L81D1B6
	jsl L8087EA
	lda #$01
	ldx #$7F00
	stx $0D
	ldx #$4428
	stx $0C
	jsl L81D1C0
	jsr L818F99
	jsr L818C49
	rep #$20
	brl L818C37
L818B76:
	sep #$20
	ldx $0BB5
	stx $0B18
	jsl L8796FF
	ldy #$0000
L818B85:
	lda [$0C],Y
	cmp #$FF
	beq L818B92
	iny
	cpy #$0004
	bne L818B85
	dey
L818B92:
	tya
	sta $0B26
	lda #$04
	ldx #$000A
	ldy #$0001
	jsl L87A9A3
	jsr L81E04E
	bcc L818BC2
	rep #$20
	ldx $0B18
	stx $0BB5
	jsl L81D2C6
	lda $0BB5
	sta $0BB3
	jsr L8191B8
	jsr L81D6C2
	brl L818AA7
L818BC2:
	rep #$20
	lda $0C
	pha
	lda $0D
	pha
	phy
	ldx $0B18
	stx $0BB5
	jsr L819366
	lda $7F3803,X
	and #$00FF
	tax
	lda $7F5030,X
	sta $15
	ply
	pla
	sta $0D
	pla
	sta $0C
	sep #$20
	lda [$0C],Y
	sta $7F5030,X
	iny
	iny
	iny
	iny
	lda [$0C],Y
	sta $7F5031,X
	lda $16
	sta [$0C],Y
	dey
	dey
	dey
	dey
	lda $15
	sta [$0C],Y
	rep #$20
	jsl L81979B
	jsl L81D9C6
	jsr L818F99
	jsr L818C49
	jsl L8087EA
	lda #$0000
	jsl L81D1B6
	jsl L8087EA
	lda #$0001
	ldx #$7F00
	stx $0D
	ldx #$4428
	stx $0C
	jsl L81D1C0
L818C37:
	lda $7F3800
	and #$00FF
	cmp #$00FF
	bne L818C46
	brl L818AAC
L818C46:
	brl L818AA4

L818C49:
	php
	sep #$20
	lda $0BFF
	clc
	adc #$01
	sta $15
	lda $0C00
	cmp $15
	bcc L818C6A
	dec $0C00
	ldx #$180F
	stx $0BB5
	stx $0BB3
	stx $0B18
L818C6A:
	ldx $0B18
	stx $0BB5
	jsr L819366
	bcs L818C7D
	ldx $0BB5
	stx $0B18
	plp
	rts
L818C7D:
	rep #$20
	lda $0BD9
	sec
	sbc $0BD5
	lsr A
	lsr A
	dec A
	asl A
	tax
	lda $92F9,X
	sta $0b18
	plp
	rts

L818C93:
	sep #$20
	lda #$02
	sta $0B0F
	sta $0B1E
	brl L818D54

L818CA0:
	sep #$20
	tya
	sta $0B24
	lda #$01
	sta $0C01
	lda #$02
	sta $0B0E
	ldx $0B10
	stx $0B16
	ldx #$0602
	stx $0B10
	jsl L81D901
	jsl L8196BD
	jsr L81D957
	jsr L8183A3
L818CCA:
	jsr L81868B
	bcc L818D0C
L818CCF:
	jsl L8196BD
	lda $0B0D
	sta $0C01
	ldx $0B16
	stx $0B10
	stx $0BB5
	stx $0BB3
	jsr L81849A
	jsl L81D86F
	jsl L8087EA
	lda $7F4417
	ldx #$0000
	jsl L81D10F
	lda #$00
	jsl L81D1B6
	lda #$01
	sta $0B0E
	jsr L8195BB
	jmp L818A47
L818D0C:
	jsr L8184DE
	cmp $0B84
	bne L818D17
	jmp L818CCA
L818D17:
	jsr L81849A
	jsl L81D86F
	jsl L8796FF
	ldy #$0000
L818D25:
	lda [$0C],Y
	cmp #$FF
	beq L818D32
	iny
	cpy #$0004
	bne L818D25
	dey
L818D32:
	tya
	sta $0B25
	jsl L81D901
	jsl L8196BD
	jsl L81DCB2
	bra L818CCF

L818D44:
	sep #$20
	lda #$01
	sta $0B0F
	bra L818D54

L818D4D:
	sep #$20
	lda #$00
	sta $0B0F
L818D54:
	sep #$20
	ldx #$0210
	stx $0BB5
	lda $7F4420
	cmp #$FF
	bne L818D8A
	ldx #$0C10
	stx $0BB5
	lda $7F4428
	cmp #$FF
	bne L818D8A
	lda $0B0F
	beq L818D7B
	lda #$07
	bra L818D7D
L818D7B:
	lda #$03
L818D7D:
	jsl L81E3E6
	ldx $0B12
	stx $0BB5
	brl L818A47
L818D8A:
	lda $0B0F
	bne L818DA4
	jsl L87AC1E
	bcc L818DA4
	lda #$00
	jsl L81E3E6
	ldx $0B12
	stx $0BB5
	brl L818A47
L818DA4:
	ldx $0BB5
	stx $0BB3
	jsl L81D2C6
	ldx $0BB5
	stx $0BB3
	jsr L81D6C2
L818DB7:
	jsr L81B088
	bcc L818DE7
L818DBC:
	rep #$20
	lda $7F4400
	jsl L87A923
	jsl L81D8AE
	ldx $0B12
	stx $0BB5
	jsl L81D2C6
	ldx $0BB5
	stx $0BB3
	lda #$00BE
	jsl L80AA16
	jsr L81D6C2
	brl L818A47
L818DE7:
	sep #$20
	phx
	ply
	cmp #$00
	bne L818DFB
	ldx #$7F00
	stx $10
	ldx #$4420
	stx $0F
	bra L818E05
L818DFB:
	ldx #$7F00
	stx $10
	ldx #$4428
	stx $0F
L818E05:
	sep #$20
	sta $0C14
	lda $0B0F
	beq L818E19
	cmp #$01
	beq L818E16
	jmp L818CA0

L818E16:
	jmp L818E9F

L818E19:
	lda [$0F],Y
	sta $15
	iny
	iny
	iny
	iny
	lda [$0F],Y
	sta $16
	lda #$FF
	sta [$0F],Y
	dey
	dey
	dey
	dey
	sta [$0F],Y
	rep #$20
	lda $15
	jsl L87ABD4
	jsl L81979B
	sep #$20
	jsr L819508
	jsl L87AC1E
	bcc L818E49
L818E46:
	jmp L818DBC
L818E49:
	lda $0C14
	bne L818E87
	lda $7F4420
	cmp #$FF
	bne L818E66
	lda $7F4428
	cmp #$FF
	beq L818E46
	ldx #$0C10
	stx $0BB5
	bra L818E77
L818E66:
	lda $0BB6
	cmp #$02
	beq L818E77
	cmp #$0C
	beq L818E77
	dec $0BB6
	dec $0BB6
L818E77:
	jsl L81D2C6
	ldx $0BB5
	stx $0BB3
	jsr L81D6C2
	jmp L818DB7
L818E87:
	lda $7F4428
	cmp #$FF
	bne L818E66
	lda $7F4420
	cmp #$FF
	beq L818E46
	ldx #$0210
	stx $0BB5
	bra L818E77

L818E9F:
	rep #$20
	phy
	lda [$0F],Y
	jsl L83EE2F
	bcc L818EB5
	ply
	lda #$0001
	jsl L81E3E6
	jmp L818DB7
L818EB5:
	sep #$20
	ply
	phy
	jsl L81B282
	bcc L818EC3
	ply
	jmp L818DB7
L818EC3:
	ply
	lda #$FF
	sta [$0F],Y
	iny
	iny
	iny
	iny
	sta [$0F],Y
	jsl L81979B
	sep #$20
	jsr L819508
	brl L818E49

L818EDA:
	php
	rep #$20
	jsl L81E46B
	lda $50
	pha
	ldx #$000B
	ldy #$0000
	lda #$0006
	jsl L87A9A3
	ldx #$0B0D
	stx $0C1B
	jsl L81D5A8
	ldx $15
	ldy #$C638
	lda #$0005
	jsl L81E21F
	lda #$0C0D
	sta $0C05
	lda #$31CD
	sta $0C08
	sep #$20
	lda #$02
	sta $0C07
	jsl L81D77B
	stz $0B63
	rep #$20
	lda #$0C0D
	sta $0BB5
	sta $0BB3
	jsl L81D2C6
	ldx #$0C0D
	stx $0B5D
	ldx #$0E0D
	stx $0B5F
	jsr L81D6C2
	jsl L81E475
L818F43:
	jsl L81E34E
	lda $0B62
	and #$00FF
	cmp #$00FF
	bne L818F7C
	rep #$20
	jsl L81E46B
	pla
	sta $50
	sta $52
	jsl L80954E
	ldx #$000B
	ldy #$0001
	lda #$0006
	jsl L87A9A3
	jsr L81D6C2
	jsl L81E475
	jsl L8087EA
	plp
	sec
	rts
L818F7C:
	sep #$20
	sta $0C14
	rep #$20
	jsr L818F99
	ldx #$0000
	lda $7F3800,X
	and #$00FF
	cmp #$00FF
	beq L818F43
	pla
	plp
	clc
	rts

L818F99:
	php
	sep #$20
	lda #$D7
	sta $0C04
	lda $0C14
	beq L818FAB
	lda #$28
	sta $0C04
L818FAB:
	rep #$20
	jsl L93DD1E
	lda #$7F00
	sta $01
	lda #$3800
	sta $00
	lda #$7F00
	sta $04
	lda #$58D0
	sta $03
	jsr L818FE6
	ldx $0B9E
	jsr L81902B
	lda $0B9E
	lsr A
	lsr A
	jsl L93DD8A
	lda $0BD9
	sec
	sbc #$3800
	sta $0BD9
	jsr L8190EA
	plp
	rts

L818FE6:
	php
	rep #$20
	ldx #$0000
	ldy #$0000
L818FEF:
	lda $7F5030,X
	and #$00FF
	cmp #$00FF
	beq L819020
	jsl L819770
	bcs L819005
	inx
	inx
	bra L81901B
L819005:
	lda $7F5030,X
	sta [$00],Y
	txa
	xba
	and #$FF00
	ora #$000C
	iny
	iny
	sta [$00],Y
	iny
	iny
	inx
	inx
L81901B:
	cpx #$0100
	bne L818FEF
L819020:
	sty $0B9E
	tya
	clc
	adc $00
	sta $00
	plp
	rts

L81902B:
	php
	rep #$20
L81902E:
	lda $03
	sec
	sbc #$58D0
	asl A
	cmp #$05A0
	bcs L819065
	tax
	lda $7F5342,X
	and #$0080
	bne L819065
	lda $7F4400
	and #$00FF
	sta $15
	lda $7F5330,X
	and #$00FF
	cmp $15
	beq L81905B
	jsr L819075
L81905B:
	lda $03
	clc
	adc #$0010
	sta $03
	bra L81902E
L819065:
	lda $00
	sta $0BD9
	lda #$FFFF
	sta [$00]
	inc $00
	sta [$00]
	plp
	rts

L819075:
	php
	rep #$20
	lda #$0000
	sta $0BA1
	lda #$0004
	sta $0BA4
	jsr L819098
	lda #$0008
	sta $0BA1
	lda #$000C
	sta $0BA4
	jsr L819098
	plp
	rts

L819098:
	ldy $0BA1
L81909B:
	lda [$03],Y
	and #$00FF
	cmp #$00FF
	beq L8190AB
	jsl L819770
	bcs L8190B2
L8190AB:
	iny
	cpy $0BA4
	bne L81909B
	rts

L8190B2:
	lda [$03],Y
	and #$00FF
	sta $15
	iny
	iny
	iny
	iny
	lda [$03],Y
	xba
	and #$FF00
	ora $15
	sta [$00]
	dey
	dey
	dey
	dey
	tya
	and #$00FF
	sta $15
	lda $03
	sec
	sbc #$58D0
	lsr A
	lsr A
	lsr A
	lsr A
	xba
	ora $15
	inc $00
	inc $00
	sta [$00]
	inc $00
	inc $00
	bra L8190AB

L8190EA:
	php
	rep #$20
	ldy $0BD9
	lda #$0030
	jsl L81D718
	cpy #$0000
	beq L8190FD
	inc A
L8190FD:
	sep #$20
	sta $0BFF
	plp
	rts

L819104:
	php
	rep #$20
	jsl L81E46B
	jsl L81D853
	stz $50
	stz $52
	lda $0C14
	and #$00FF
	bne L819120
	lda #$0020
	bra L819123
L819120:
	lda #$0028
L819123:
	sta $15
	sep #$20
	lda #$81
	sta $5C
	lda $0C14
	sta $0C16
	rep #$20
	lda #$7F00
	sta $0D
	lda #$4400
	clc
	adc $15
	sta $0C
	ldx #$0101
	stx $0C1B
	lda #$0000
	sta $5E
	lda #$0000
	lda $0C14
	and #$00FF
	jsl L81CB0B
	sep #$20
	ldx #$3187
	stx $0C08
	ldx #$0E01
	stx $0C05
	lda #$06
	sta $0C07
	jsl L81D77B
	ldx #$3189
	stx $0C08
	ldx #$0E0F
	stx $0C05
	lda #$06
	sta $0C07
	jsl L81D77B
	rep #$20
	ldx $50
	stx $0BC9
	jsr L819279
	lda #$0004
	ldx #$000A
	ldy #$0000
	jsl L87A9A3
	ldx $0B18
	stx $0BB5
	stx $0BB3
	jsl L81D2C6
	jsr L8191B8
	lda $50
	sta $52
	jsl L80954E
	jsr L819313
	plp
	rts

L8191B8:
	php
	sep #$20
	lda #$04
	ldx #$000A
	ldy #$0001
	jsl L87A9A3
	jsr L819366
	lda $7F3802,X
	cmp #$FF
	bne L8191D4
	plp
	rts

L8191D4:
	ldx #$0A02
	lda $0BB5
	cmp #$01
	bne L8191E1
	ldx #$0A10
L8191E1:
	stx $0C1B
	stx $1F
	ldx #$040B
	stx $0C1D
	lda #$04
	jsl L81D35F
	jsl L81D4EE
	rep #$20
	jsr L819366
	lda $7F3802,X
	and #$00FF
	cmp #$000C
	beq L81925E
	cmp #$0004
	bpl L819210
	inc A
	pha
	bra L819215
L819210:
	sec
	sbc #$0007
	pha
L819215:
	lda $7F3803,X
	and #$00FF
	asl A
	asl A
	asl A
	asl A
	asl A
	tax
	lda $7F5346,X
	and #$00FF
	pha
	lda $1F
	clc
	adc #$0101
	sta $0C1B
	jsl L81D5A8
	ldx $15
	ldy #$D662
	pla
	jsl L81E21F
	txa
	clc
	adc #$0004
	tax
	pla
	jsl L81D6AC
	txa
	sec
	sbc #$0008
	tax
	ldy #$A9BC
	lda #$0001
	jsl L81E21F
	bra L819277
L81925E:
	lda $1F
	clc
	adc #$0101
	sta $0C1B
	jsl L81D5A8
	ldx $15
	ldy #$A9BC
	lda #$0002
	jsl L81E21F
L819277:
	plp
	rts

L819279:
	php
	rep #$20
	ldx #$0D01
	stx $0C1B
	ldx #$0E1E
	stx $0C1D
	lda #$0000
	jsl L81D35F
	jsl L81D4EE
	stz $0BA4
L819296:
	ldx $0BA4
	lda $92F9,X
	cmp #$FFFF
	beq L8192E7
	sta $0BB5
	jsr L819366
	bcs L8192E7
	pha
	jsl L83EE65
	bcs L8192B5
	ldy #$0000
	bra L8192B8
L8192B5:
	ldy #$0001
L8192B8:
	phy
	ldx $0BA4
	lda.w L8192F9,X
	clc
	adc #$0002
	sta $0C1B
	jsl L81D5A8
	ldx $15
	ply
	lda $0BA4
	lsr A
	sta $0B9E
	lda #$0040
	sta $0BA1
	pla
	jsl L81C736
	inc $0BA4
	inc $0BA4
	bra L819296
L8192E7:
	ldx #$03BA
	stx $0B04
	ldx #$067A
	stx $0B06
	jsl L81E824
	plp
	rts

L8192F9:
.db $01 $0E $0F $0E $01 $10 $0F $10
.db $01 $12 $0F $12 $01 $14 $0F $14
.db $01 $16 $0F $16 $01 $18 $0F $18
.db $FF $FF

L819313:
	php
	rep #$20
	jsr L819342
	sep #$20
	ldy #$0000
	ldx #$0000
L819321:
	lda [$00],Y
	cmp #$FF
	beq L819334
	sta $0B36,X
	iny
	iny
	iny
	iny
	inx
	cpx #$000C
	bne L819321
L819334:
	lda #$FE
	sta $0B36,X
	ldy #$6400
	jsl L81E486
	plp
	rts

L819342:
	php
	rep #$20
	lda $0C00
	and #$00FF
	dec A
	ldy #$0030
	jsl L81D733
	sta $0BD5
	lda #$7F00
	sta $01
	lda #$3800
	clc
	adc $0BD5
	sta $00
	plp
	rts

L819366:
	php
	rep #$20
	jsr L819342
	lda $0BB6
	and #$00FF
	sec
	sbc #$000E
	asl A
	asl A
	clc
	adc $0BD5
	tax
	lda $0BB5
	and #$00FF
	cmp #$0001
	beq L81938C
	inx
	inx
	inx
	inx
L81938C:
	cpx $0BD9
	bcs L819398
	lda $7F3800,X
	plp
	clc
	rts
L819398:
	plp
	sec
	rts
L81939B:
	rep #$20
	jsl L8087EA
	lda $0129
	bit #$0800
	bne L8193CC
	bit #$0400
	bne L8193CF
	bit #$0200
	bne L8193D2
	bit #$0100
	bne L8193D2
	lda $0127
	bit #$0080
	bne L8193D8
	bit #$8000
	bne L8193DB
	bit #$0040
	bne L8193DE
	bra L81939B
L8193CC:
	jmp L8193E1
L8193CF:
	jmp L819414
L8193D2:
	jmp L819454
	jmp L819454
L8193D8:
	jmp L819479
L8193DB:
	jmp L819497
L8193DE:
	jmp L81949B

L8193E1:
	lda $0BB6
	and #$00FF
	cmp #$000E
	beq L8193F5
	dec $0BB6
	dec $0BB6
	brl L8194F3

L8193F5:
	lda $0C00
	and #$00FF
	cmp #$0001
	bne L819402
	bra L81939B

L819402:
	dec $0C00
	lda $0BB5
	and #$00FF
	ora #$1800
	sta $0BB5
	brl L8194B2

L819414:
	lda $0BB6
	and #$00FF
	cmp #$0018
	beq L819436
	inc $0BB6
	inc $0BB6
	jsr L819366
	bcc L819433
	dec $0BB6
	dec $0BB6
L819430:
	brl L81939B
L819433:
	brl L8194F3
L819436:
	sep #$20
	lda $0C00
	cmp $0BFF
	bcs L819430
	inc $0C00
	lda #$0E
	sta $0BB6
	jsr L819366
	bcc L819452
	lda #$01
	sta $0BB5
L819452:
	bra L8194B2

L819454:
	sep #$20
	lda $0BB5
	cmp #$01
	beq L819465
	lda #$01
	sta $0BB5
	brl L8194F3

L819465:
	lda #$0F
	sta $0BB5
	jsr L819366
	bcc L819477
	lda #$01
	sta $0BB5
	brl L81939B

L819477:
	bra L8194F3

L819479:
	rep #$20
	jsr L819366
	and #$00FF
	cmp #$003D
	beq L81948D
	cmp #$003F
	beq L81948D
	clc
	rts

L81948D:
	lda #$0008
	jsl L81E3F4
	brl L81939B

L819497:
	rep #$20
	sec
	rts

L81949B:
	rep #$20
	ldx #$0E02
	stx $0B30
	ldx #$0E10
	stx $0B32
	jsr L819366
	jsl L81E6A6
	bra L8194F3
L8194B2:
	rep #$20
	jsl L81E46B
	ldx $0BB5
	stx $0B18
	ldx $0BC9
	stx $50
	stx $52
	jsr L819279
	lda #$0004
	ldx #$000A
	ldy #$0001
	jsl L87A9A3
	ldx $0B18
	stx $0BB5
	stx $0BB3
	jsl L81D2C6
	jsr L8191B8
	lda $50
	sta $52
	jsl L80954E
	jsr L819313
	brl L81939B
L8194F3:
	rep #$20
	jsl L81D2C6
	lda $0BB5
	sta $0BB3
	jsr L8191B8
	jsr L81D6C2
	brl L81939B

L819508:
	php
	sep #$20
	jsl L81E46B
	ldx $50
	phx
	lda $0C14
	bne L819564
	ldx $0B1A
	stx $50
	ldx #$0212
	stx $0C1B
	ldx #$080C
	stx $0C1D
	lda #$00
	jsl L81D35F
	jsl L81D4EE
	ldx #$0212
	stx $0C1B
	ldx #$7F00
	stx $0D
	ldx #$4420
	stx $0C
	lda #$00
	jsl L81C7D6
	jsl L8087EA
	jsr L81D6C2
	jsl L81E475
	lda #$00
	jsl L81D1B6
	jsl L8087EA
	plx
	stx $50
	stx $52
	plp
	rts

L819564:
	ldx $0B1C
	stx $50
	ldx #$0C12
	stx $0C1B
	ldx #$080C
	stx $0C1D
	lda #$00
	jsl L81D35F
	jsl L81D4EE
	ldx #$0C12
	stx $0C1B
	ldx #$7F00
	stx $0D
	ldx #$4428
	stx $0C
	lda #$01
	jsl L81C7D6
	jsl L8087EA
	jsr L81D6C2
	jsl L81E475
	lda #$01
	ldx #$7F00
	stx $0D
	ldx #$4428
	stx $0C
	jsl L81D1C0
	jsl L8087EA
	plx
	stx $50
	stx $52
	plp
	rts

L8195BB:
	php
	sep #$20
	jsl L8087EA
	jsl L81E46B
	ldx #$0000
	stx $50
	stx $52
	jsl L81D853
	ldx $0B10
	stx $0BB5
	stx $0BB3
	jsr L81849A
	jsl L81D86F
	ldx #$0101
	stx $0C1B
	jsl L81CACF
	ldx $0F9F
	stx $0B1A
	ldx $50
	stx $0B1C
	ldx #$0B10
	stx $0C1B
	ldx #$0A0F
	stx $0C1D
	lda #$00
	jsl L81D35F
	jsl L81D4EE
	ldx #$0C12
	stx $0C1B
	ldx #$7F00
	stx $0D
	ldx #$4428
	stx $0C
	lda #$01
	jsl L81C7D6
	ldx #$02C6
	ldy #$C638
	lda #$04
	jsl L81E21F
	ldx #$3187
	stx $0C08
	ldx #$0C10
	stx $0C05
	lda #$04
	sta $0C07
	jsl L81D77B
	ldx #$0C03
	stx $0C05
	jsl L81D77B
	ldx $0B12
	stx $0BB5
	stx $0BB3
	jsl L81D2C6
	jsl L8087EA
	lda #$00
	jsl L81D1B6
	jsl L8087EA
	lda #$01
	ldx #$7F00
	stx $0D
	ldx #$4428
	stx $0C
	jsl L81D1C0
	ldx $50
	stx $52
	jsl L80954E
	jsr L81D6C2
	jsl L81E475
	jsl L8087EA
	plp
	rts

L81968D:
	php
	sep #$20
	ldx #$0C03
	stx $0B5D
	ldx #$1203
	stx $0B5F
	lda $0B13
	sec
	sbc #$0C
	lsr A
	sta $0B61
	jsl L81E34E
	lda $0B62
	cmp #$FF
	bne L8196B4
	plp
	sec
	rts

L8196B4:
	ldx $0BB5
	stx $0B12
	plp
	clc
	rts

L8196BD:
	php
	jsl L81E46B
	ldx #$0000
	stx $50
	stx $52
	jsl L80954E
	jsl L81D853
	jsr L81D6C2
	jsl L81E475
	jsl L8087EA
	plp
	rtl

L8196DE:
	php
	rep #$20
	sta $0BA7
	lda $0BB6
	and #$00FF
	cmp #$0012
	bmi L8196F4
	lda #$0A09
	bra L8196F7
L8196F4:
	lda #$1209
L8196F7:
	plp
L8196F8:
	php
	rep #$20
	sta $0C1B
	jsl L81D5A8
	ldx $15
	ldy #$A9BC
	lda #$0004
	jsl L81E21F
	lda $0C1B
	clc
	adc #$0101
	sta $0C1B
	jsl L81D5A8
	ldx $15
	ldy #$DF58
	lda $0BA7
	jsl L81E21F
	ldy #$A9BC
	lda #$0003
	jsl L81E21F
	lda $0C1B
	clc
	adc #$0407
	sta $0BB5
	sta $0BB3
	jsl L81D2C6
	sep #$20
	lda #$01
	sta $0C07
	rep #$20
	lda $0C1B
	clc
	adc #$0400
	sta $0C05
	lda #$3189
	sta $0C08
	jsl L81D77B
	lda $0C05
	clc
	adc #$0007
	sta $0C05
	jsl L81D77B
	plp
	rts

L819770:
	php
	phx
	phy
	sep #$20
	xba
	lda #$0E
	rep #$20
	sta.l $004202
	nop
	nop
	nop
	lda.l $004216
	sep #$20
	tax
	lda $88A6E9,X
	and $0C04
	bne L819796
	ply
	plx
	plp
	clc
	rtl

L819796:
	ply
	plx
	plp
	sec
	rtl

L81979B:
	php
	sep #$30
	jsr L8197A6
	jsr L8197D6
	plp
	rtl

L8197A6:
	ldy #$03
L8197A8:
	ldx #$00
L8197AA:
	lda $7F4420,X
	cmp #$FF
	bne L8197CC
	lda $7F4421,X
	sta $7F4420,X
	lda $7F4425,X
	sta $7F4424,X
	lda #$FF
	sta $7F4421,X
	sta $7F4425,X
L8197CC:
	inx
	txa
	cmp #$03
	bne L8197AA
	dey
	bpl L8197A8
	rts

L8197D6:
	ldy #$03
L8197D8:
	ldx #$00
L8197DA:
	lda $7F4428,X
	cmp #$FF
	bne L8197FC
	lda $7F4429,X
	sta $7F4428,X
	lda $7F442D,X
	sta $7F442C,X
	lda #$FF
	sta $7F4429,X
	sta $7F442D,X
L8197FC:
	inx
	txa
	cmp #$03
	bne L8197DA
	dey
	bpl L8197D8
	rts

L819806:
	sep #$20
	rep #$20
	lda $0C1A
	and #$00FF
	asl A
	tax
	sep #$20
	jsr (L819818,X)
	rts

L819818:
.dw L81981A

L81981A:
	sep #$20
	jsl L80954E
	jsl L8087EA
	jsr L81D6DE
	lda #$FF
	sta $0C11
	lda #$04
	jsl L81D6F8
	lda #$01
	sta $0C10
	stz $0B61
L81983A:
	sep #$20
	lda $085E
	sec
	sbc $0860
	cmp #$08
	bcs L81984C
.INDEX 16 ; unsure why I need that
	ldx #$0217
	bra L81984F
L81984C:
	ldx #$0202
L81984F:
	stx $0C1B
	ldy #$9FEA
	ldx #$0000
	lda #$06
	stz $0C10
	jsl L81E2CC
	lda $0B62
	cmp #$FF
	bne L8198C6
	lda #$FF
	sta $0C0A
	lda #$02
	jsl L81D6F8
L819873:
	lda #$01
	sta $0C10
	stz $0B61
	ldx #$0000
	stx $50
	stx $52
	stx $0BC1
	jsl L80954E
	jsl L81D853
	lda $0C17
	sta $074A
	stz $0C1A
	stz $0C19
	stz $0C10
	jmp L81D6C2

L81989F:
	sep #$20
	lda #$01
	sta $0C10
	ldx #$0000
	stx $50
	stx $52
	jsl L80954E
	jsl L81D853
	stz $0C1A
	lda #$FF
	sta $0C11
	lda #$02
	jsl L81D6F8
	jmp L81983A
L8198C6:
	sep #$20
	lda #$FF
	sta $0C11
	lda #$05
	jsl L81D6F8
	lda $0BB5
	sta $0BB7
	rep #$20
	lda $0B62
	and #$00FF
	asl A
	tax
	lda.l L8198EC,X
	sta $15
	jmp ($0015)

L8198EC:
.dw L819D18
.dw L819CFF
.dw L819911
.dw L819908
.dw L819C15
.dw L8198F8

L8198F8:
	sep #$20
	lda $0B62
	sta $0C0A
	lda #$12
	sta $08DF
	jmp L819873

L819908:
	sep #$20
	jsl L81E89A
	jmp L81989F

L819911:
	sep #$20
	ldx $50
	stx $0BCF
	lda #$71
	sta $0B36
	lda #$78
	sta $0B37
	lda #$72
	sta $0B38
	lda #$74
	sta $0B39
	lda #$76
	sta $0B3A
	lda #$79
	sta $0B3B
	lda #$73
	sta $0B3C
	lda #$75
	sta $0B3D
	lda #$6E
	sta $0B3E
	lda #$70
	sta $0B3F
	lda #$77
	sta $0B40
	lda #$6F
	sta $0B41
	lda #$7D
	sta $0B42
	lda #$6C
	sta $0B43
	lda #$7E
	sta $0B44
	lda #$3E
	sta $0B45
	lda #$3C
	sta $0B46
	lda #$FE
	sta $0B47
	ldy #$6400
	jsl L81E47D
	lda $0BB7
	cmp #$02
	beq L819985
	ldx #$0201
	bra L819988
L819985:
	ldx #$0209
L819988:
	stx $0BB0
L81998B:
	rep #$20
	jsr L8199CF
	jsr L81D6C2
L819993:
	jsl L8087EA
	lda $0127
	bit #$8000
	bne L8199A6
	bit #$0080
	bne L8199A9
	bra L819993
L8199A6:
	jmp L81989F
L8199A9:
	lda $07DF
	and #$00FF
	cmp #$0015
	bcc L819993
	ldx $0BCF
	stx $50
	stx $52
	jsr L819ADB
	jsr L81D6C2
L8199C1:
	jsl L8087EA
	lda $0127
	bit #$8080
	beq L8199C1
	bra L81998B

L8199CF:
	php
	sep #$20
	ldx $0BB0
	stx $0C1B
	stx $0B9E
	ldx #$1816
	stx $0C1D
	lda #$00
	jsl L81D35F
	jsl L81D4EE
	rep #$20
	inc $0C1B
	inc $0C1C
	jsl L81D5A8
	ldx $15
	ldy #$9FEA
	lda #$0003
	jsl L81E21F
	jsl L81D5A8
	ldx $15
	ldy #$C94E
	lda $07DF
	jsl L81E21F
	lda $07F1
	beq L819A2F
	lda $0B9E
	clc
	adc #$0508
	sta $0C1B
	jsl L81D5A8
	ldx $15
	lda $07F1
	jsl L81D5E1
L819A2F:
	lda $07DF
	and #$00FF
	cmp #$002A
	bcc L819A60
	lda $7F6535
	and #$00FF
	sta $15
	lda $7F6536
	and #$00FF
	sta $17
	lda $7F6537
	and #$00FF
	clc
	adc $15
	clc
	adc $17
	clc
	adc $0856
	pha
	bra L819A64
L819A60:
	lda $0856
	pha
L819A64:
	lda $0B9E
	clc
	adc #$0706
	sta $0C1B
	jsl L81D5A8
	ldx $15
	pla
	jsl L81D699
	jsl L83DBE5
	bcs L819A81
	bra L819A84
L819A81:
	lda #$0020
L819A84:
	pha
	lda $0B9E
	clc
	adc #$0D09
	sta $0C1B
	jsl L81D5A8
	ldx $15
	pla
	jsl L81D6AC
	jsl L83DBED
	bcs L819AA2
	bra L819AA5
L819AA2:
	lda #$0040
L819AA5:
	sec
	sbc #$0020
	pha
	lda $0B9E
	clc
	adc #$0D12
	sta $0C1B
	jsl L81D5A8
	ldx $15
	pla
	jsl L81D6AC
	lda $0B9E
	clc
	adc #$1302
	sta $0C1B
	jsl L81D5A8
	ldx $15
	ldy #$D036
	lda $07DF
	jsl L81E21F
	plp
	rts

L819ADB:
	php
	rep #$20
	jsl L81E46B
	ldx $0BB0
	stx $0C1B
	ldx #$1816
	stx $0C1D
	lda #$0000
	jsl L81D35F
	jsl L81D4EE
	lda $0BB0
	clc
	adc #$0102
	sta $0C1B
	jsl L81D5A8
	ldx $15
	ldy #$B522
	lda #$0013
	jsl L81E21F
	lda #$0000
	sta $0BD1
L819B19:
	ldx $0BD1
	lda $819BCF,X
	cmp #$FFFF
	bne L819B2B
	jsl L81E475
	plp
	rts
L819B2B:
	sep #$20
	lda #$01
	sta $0AB9
	lda $819BD2,X
	jsl L93DB8F
	lda #$01
	sta $0C07
	ldx $0BD1
	lda $819BD1,X
	sta $0C08
	lda $0ABA
	bne L819B52
	lda #$3E
	bra L819B54
L819B52:
	lda #$36
L819B54:
	sta $0C09
	rep #$20
	lda $819BCF,X
	clc
	adc $0BB0
	sta $0C05
	jsl L81D77B
	lda $0C05
	sta $0C1B
	jsl L81D5A8
	ldx $15
	ldy #$A9BC
	lda #$0000
	jsl L81E21F
	lda $0C05
	clc
	adc #$0002
	sta $0C1B
	jsl L81D5A8
	ldx $0BD1
	lda $819BD2,X
	ldx $15
	ldy #$DF58
	jsl L81E21F
	lda $0C05
	clc
	adc #$0002
	sta $0C1B
	jsl L81D5A8
	ldx $15
	ldy #$0007
	lda $0ABA
	and #$00FF
	bne L819BBC
	lda #$0001
	bra L819BBF
L819BBC:
	lda #$0000
L819BBF:
	jsr L81C945
	lda $0BD1
	clc
	adc #$0004
	sta $0BD1
	brl L819B19
	ora ($03,X)
	rti

L819BD2:
.db $71 $0C $03 $42 $78 $01 $05 $44
.db $72 $0C $05 $46 $74 $01 $07 $48
.db $76 $0C $07 $4A $79 $01 $09 $4C
.db $73 $0C $09 $4E $75 $01 $0B $60
.db $6E $0C $0B $62 $70 $01 $0D $64
.db $77 $0C $0D $66 $6F $01 $11 $68
.db $7D $0C $11 $6A $6C $01 $13 $6C
.db $7E $0C $13 $6E $3E $01 $15 $80
.db $3C $FF $FF

L819C15:
	sep #$20
	lda $0B61
	sta $0BA4
	stz $0B61
	ldx $50
	stx $0BC7
L819C25:
	lda $0BB5
	cmp #$02
	beq L819C31
	ldx #$020D
	bra L819C34
L819C31:
	ldx #$0209
L819C34:
	stx $0C1B
	lda #$05
	ldy #$BDD6
	ldx #$0000
	jsl L81E2CC
	lda $0B62
	cmp #$FF
	bne L819C59
	ldx #$0000
	stx $0BC1
	lda $0BA4
	sta $0B61
	jmp L81989F
L819C59:
	lda $0B61
	sta $0BA5
	ldx $50
	stx $0BC1
	lda #$FF
	sta $0C11
	lda #$05
	jsl L81D6F8
	lda #$00
	xba
	lda $0B62
	tax
	lda $07DA,X
	sta $0B61
	lda $819CFA,X
	pha
	lda $0B62
	inc A
	tax
	lda #$0E
	sta $0C1C
	ldy #$BDD6
	pla
	jsl L81E2CC
	lda $0B62
	cmp #$FF
	bne L819CD4
L819C9A:
	lda #$FF
	sta $0C11
	lda #$02
	jsl L81D6F8
	lda #$0C
	sta $0C1C
	ldx #$0E0A
	stx $0C1D
	lda #$01
	jsl L81D35F
	jsl L81D4EE
	lda $0BA5
	sta $0B61
	ldx $0BC7
	stx $50
	stx $52
	jsl L80954E
	ldx $0BB7
	stx $0BB5
	brl L819C25
L819CD4:
	lda #$00
	xba
	lda $0BA5
	tax
	lda $0B62
	sta $07DA,X
	lda $0BA5
	cmp #$00
	beq L819CEE
	cmp #$01
	beq L819CF4
	bra L819C9A
L819CEE:
	jsl L83FE84
	bra L819C9A
L819CF4:
	jsl L80B089
	bra L819C9A

L819CFA:
.db $03 $03 $05 $02 $02

L819CFF:
	sep #$20
	lda #$00
	sta $0B08
	ldx #$0000
	stx $50
	stx $52
	jsl L93DD1E
	jsl L81A8CB
	jmp L81989F

L819D18:
	rep #$20
	lda #$FFFF
	ldy #$05A0
	ldx #$0000
L819D23:
	sta $7F3800,X
	inx
	dey
	inx
	dey
	bne L819D23
	lda #$7F7F
	sta $15
	ldx #$4430
	ldy #$3800
	lda #$0400
	jsl L81D98A
	lda #$7F7F
	sta $15
	ldx #$4C30
	ldy #$3DA0
	lda #$0200
	jsl L81D98A
	sep #$20
	phb
	lda #$81
	pha
	plb
	jsl L819DDF
	bcs L819DB7
	sep #$20
	plb
	lda $0BB6
	cmp #$02
	bne L819D75
	lda #$02
	jsl L81D6F8
	lda $0BDF
	sta $07F3
	rts
L819D75:
	ldx #$0000
	stx $50
	stx $52
	jsl L80954E
	jsl L81D853
	jsr L81D6C2
	jsl L8087EA
	jsr L81A04F
	lda $7F3811,X
	sta $15
	lda $7F3810,X
	sta $17
	lda #$04
	ldx #$0000
	jsl L879EC9
	ldx #$0000
	stx $50
	stx $52
	lda $0C17
	sta $074A
	stz $0C1A
	stz $0C19
	rts
L819DB7:
	sep #$20
	plb
	lda #$01
	sta $0C10
	ldx #$0000
	stx $50
	stx $52
	jsl L80954E
	jsl L81D853
	stz $0C1A
	lda #$FF
	sta $0C11
	lda #$02
	jsl L81D6F8
	jmp L81983A

L819DDF:
	php
	sep #$20
	stz $0C16
	stz $0C14
	lda #$01
	sta $0C10
	ldx #$0000
	stx $50
	jsr L81D957
	ldx #$0101
	stx $0C1B
	ldx #$041E
	stx $0C1D
	lda #$00
	jsl L81D35F
	jsl L81D4EE
	ldx #$0501
	stx $0C1B
	ldx #$161E
	stx $0C1D
	jsl L81D4EE
	ldx #$0601
	stx $0BB5
	stx $0BB3
	jsl L81D2C6
	ldx #$3189
	stx $0C08
	ldx #$0203
	stx $0C05
	lda #$01
	sta $0C07
	jsl L81D77B
	ldx #$3187
	stx $0C08
	ldx #$0601
	stx $0C05
	lda #$0A
	sta $0C07
	jsl L81D77B
	ldx $50
	stx $0BC7
	rep #$20
	lda #$0001
	sta $0C00
	ldx #$0000
	ldy #$0000
L819E65:
	lda $7F3800,X
	and #$00FF
	cmp #$00FF
	beq L819E7A
	txa
	clc
	adc #$0020
	tax
	iny
	bra L819E65
L819E7A:
	stx $0BDB
	lda #$000A
	jsl L81D718
	sep #$20
	cmp #$00
	beq L819E8F
	cpy #$0000
	beq L819E90
L819E8F:
	inc A
L819E90:
	sta $0BFF
	sep #$20
	lda $07F3
	cmp #$04
	bcc L819E9E
	lda #$00
L819E9E:
	sta $0BDF
	jsr L81A7C5
	ldx $50
	stx $0BC9
	stz $0C0F
	jsr L81A28A
	stz $0C10
	jsr L81D6C2
	rep #$20
	jsl L8087EA
	pea $9EB4
	lda $0C0F
	and #$00FF
	cmp #$0002
	beq L819EE0
	lda #$9ED0
	jmp L81D7F2

L819ECF:
	rts

L819ED0:
.dw L819F48
.dw L819F89
.dw L819EEE
.dw L819F10
.dw L81A0EF
.dw L81A06A
.dw L81A109
.dw L819ECF

L819EE0:
	rep #$20
	lda $0127
	and #$8040
	bne L819EEB
	rts

L819EEB:
	jmp L81A06A

L819EEE:
	sep #$20
	lda #$00
	jsl L81D6F8
	lda $0BDF
	beq L819F00
	dec $0BDF
	bra L819F05
L819F00:
	lda #$03
	sta $0BDF
L819F05:
	lda $0C0F
	bne L819F32
	jsr L81A28A
	jmp L81D6C2

L819F10:
	sep #$20
	lda #$00
	jsl L81D6F8
	lda $0BDF
	cmp #$03
	beq L819F24
	inc $0BDF
	bra L819F27
L819F24:
	stz $0BDF
L819F27:
	lda $0C0F
	bne L819F32
	jsr L81A28A
	jmp L81D6C2
L819F32:
	lda $0BB6
	cmp #$02
	bne L819F3F
	jsr L81A28A
	jmp L81D6C2
L819F3F:
	jsr L81A28A
	jsr L81A202
	jmp L81D6C2

L819F48:
	sep #$20
	lda $0BB6
	cmp #$06
	beq L819F5F
	cmp #$02
	bne L819F56
	rts
L819F56:
	dec $0BB6
	dec $0BB6
	brl L819FE3
L819F5F:
	lda $0C00
	cmp #$01
	bne L819F7F
	ldx #$06E0
	ldy #$000F
	lda #$FF
L819F6E:
	sta $7E3000,X
	inx
	inx
	dey
	bne L819F6E
	ldx #$0203
	stx $0BB5
	bra L819FE3
L819F7F:
	dec $0C00
	lda #$18
	sta $0BB6
	bra L819FC9

L819F89:
	sep #$20
	lda $0BB6
	cmp #$02
	beq L819FAE
	cmp #$18
	beq L819FB6
	inc $0BB6
	inc $0BB6
	jsr L81A04F
	lda $7F3800,X
	cmp #$FF
	bne L819FE3
	dec $0BB6
	dec $0BB6
	rts
L819FAE:
	ldx #$0601
	stx $0BB5
	bra L819FE3
L819FB6:
	lda $0BFF
	cmp $0C00
	bne L819FBF
	rts
L819FBF:
	inc $0C00
	lda #$06
	sta $0BB6
	bra L819FC9
L819FC9:
	sep #$20
	ldx $0BC7
	stx $50
	stx $52
	jsl L80954E
	jsr L81A7C5
	ldx $50
	stx $0BC9
	jsr L81A28A
	bra L819FE3
L819FE3:
	sep #$20
	lda $0C12
	bne L819FF0
	lda #$00
	jsl L81D6F8
L819FF0:
	stz $0C12
	lda $0C0F
	cmp #$01
	beq L81A007
	jsl L81D2C6
	ldx $0BB5
	stx $0BB3
	jmp L81D6C2
L81A007:
	sep #$20
	ldx #$0101
	stx $0C1B
	ldx #$041E
	stx $0C1D
	lda #$00
	jsl L81D35F
	jsl L81D4EE
	ldx #$0501
	stx $0C1B
	ldx #$161E
	stx $0C1D
	jsl L81D4EE
	sep #$20
	lda #$FF
	sta $0C0E
	jsr L81A7C5
	stz $0C0E
	jsr L81A28A
	stz $0C0F
	ldx $0BB5
	stx $0BB3
	jsl L81D2C6
	jmp L81A120

L81A04F:
	php
	rep #$20
	jsr L81A7A1
	lda $0BB6
	and #$00FF
	sec
	sbc #$0006
	asl A
	asl A
	asl A
	asl A
	clc
	adc $0BD1
	tax
	plp
	rts

L81A06A:
	sep #$20
	lda #$01
	sta $0C12
	lda $0C0F
	cmp #$02
	beq L81A086
	cmp #$01
	beq L81A09D
L81A07C:
	lda #$02
	jsl L81D6F8
	plx
	plp
	sec
	rtl

L81A086:
	lda #$02
	jsl L81D6F8
	lda #$FF
	sta $0C11
	lda #$01
	sta $0C0F
	jsl L93DE67
	jmp L819FE3

L81A09D:
	lda $0BB6
	cmp #$02
	beq L81A07C
	lda #$02
	jsl L81D6F8
	lda #$FF
	sta $0C11
	ldx #$0101
	stx $0C1B
	ldx #$041E
	stx $0C1D
	lda #$00
	jsl L81D35F
	jsl L81D4EE
	ldx #$0501
	stx $0C1B
	ldx #$161E
	stx $0C1D
	jsl L81D4EE
	stz $0C0F
	rep #$20
	ldx #$06E0
	ldy #$000F
	lda #$00FF
L81A0E3:
	sta $7E3000,X
	inx
	inx
	dey
	bne L81A0E3
	jmp L819FC9

L81A0EF:
	sep #$20
	lda $0BB6
	cmp #$02
	bne L81A105
	lda #$02
	jsl L81D6F8
	lda $0BDF
	sta $07F3
	rts

L81A105:
	plx
	plp
	clc
	rtl

L81A109:
	sep #$20
	lda $0C0F
	cmp #$01
	beq L81A11A
	lda #$03
	jsl L81D6F8
	bra L81A120
L81A11A:
	lda #$05
	jsl L81D6F8
L81A120:
	sep #$20
	lda $0C0F
	cmp #$01
	beq L81A145
	lda #$01
	sta $0C0F
	lda $0BB6
	cmp #$02
	bne L81A138
	jmp L81D6C2
L81A138:
	ldx $0BC9
	stx $50
	stx $52
	jsr L81A1B2
	jmp L81D6C2
L81A145:
	sep #$20
	lda $0BB6
	cmp #$02
	bne L81A14F
	rts
L81A14F:
	rep #$20
	jsl L81E46B
	jsl L81CDDA
	jsl L8087EA
	lda #$0000
	ldx $0BC9
	jsl L93DE36
	ldx #$0000
	ldy $0BC9
	jsl L87A98D
	ldx $0BC9
	stx $50
	jsr L81A245
	ldx #$06E0
	ldy #$000F
	lda #$00FF
L81A182:
	sta $7E3000,X
	inx
	inx
	dey
	bne L81A182
	sep #$20
	lda #$02
	sta $0C0F
	lda #$0B
	sta $0C1C
	lda $0BB6
	cmp #$10
	bpl L81A1A3
	lda #$01
	sta $0C1C
L81A1A3:
	lda #$01
	sta $0C1B
	jsr L81CE0E
	jsl L81E475
	jmp L81D6C2

L81A1B2:
	php
	sep #$20
	jsl L81E46B
	jsr L81A04F
	stx $0BD1
	rep #$20
	txa
	lsr A
	lsr A
	lsr A
	lsr A
	lsr A
	jsl L81A370
	sep #$20
	lda #$01
	sta $0C1C
	lda $0BB6
	cmp #$10
	bpl L81A1DE
	lda #$11
	sta $0C1C
L81A1DE:
	sep #$20
	jsl L8087EA
	lda $7F4417
	ldx #$0000
	jsl L81D10F
	jsl L81CDAB
	lda #$01
	sta $0C1B
	jsl L81CD45
	jsl L81E475
	plp
	rts

L81A202:
	php
	sep #$20
	jsl L81E46B
	jsr L81A04F
	stx $0BD1
	rep #$20
	txa
	lsr A
	lsr A
	lsr A
	lsr A
	lsr A
	jsl L81A370
	sep #$20
	lda #$01
	sta $0C1C
	lda $0BB6
	cmp #$10
	bpl L81A22E
	lda #$11
	sta $0C1C
L81A22E:
	lda #$01
	sta $0C1B
	lda #$FF
	sta $0C0E
	jsl L81CD45
	stz $0C0E
	jsl L81E475
	plp
	rts

L81A245:
	php
	sep #$20
	jsr L81A04F
	stx $0BD1
	rep #$20
	txa
	lsr A
	lsr A
	lsr A
	lsr A
	lsr A
	jsl L81A370
	sep #$20
	lda #$01
	sta $0C1C
	lda $0BB6
	cmp #$10
	bpl L81A26D
	lda #$11
	sta $0C1C
L81A26D:
	lda #$7F
	sta $0E
	ldx #$4420
	stx $0C
	stz $5C
	ldx #$0000
	stx $5E
	lda #$01
	sta $0C1B
	lda #$00
	jsl L81CAA1
	plp
	rts

L81A28A:
	php
	rep #$20
	lda #$060B
	sta $0C1B
	lda #$1413
	sta $0C1D
	lda #$0002
	jsl L81D35F
	jsl L81D4EE
	ldx #$0084
	ldy #$B46A
	lda #$0000
	jsl L81E21F
	ldx #$0096
	ldy #$B46A
	lda $0BDF
	and #$00FF
	inc A
	jsl L81E21F
	sep #$20
	lda #$FF
	sta $0C11
	jsl L81D2C6
	lda #$FF
	sta $0C11
	rep #$20
	ldx $0BB5
	stx $0BB3
	ldx #$0196
	stx $0BD5
	jsr L81A7A1
L81A2E3:
	lda $0BDF
	and #$00FF
	asl A
	tax
	jsr (L81A359,X)
	lda $0BD1
	clc
	adc #$0020
	sta $0BD1
	tax
	lda $7F3800,X
	and #$00FF
	cmp #$00FF
	beq L81A314
	lda $0BD5
	clc
	adc #$0080
	sta $0BD5
	cmp #$0696
	bne L81A2E3
L81A314:
	sep #$20
	lda $0C00
	cmp #$01
	beq L81A320
	jsr L81A32D
L81A320:
	lda $0C00
	cmp $0BFF
	beq L81A32B
	jsr L81A343
L81A32B:
	plp
	rts

L81A32D:
	php
	rep #$20
	ldx #$01BA
	lda #$A4FA
	sta $7E3000,X
	lda #$24FE
	sta $7E3040,X
	plp
	rts

L81A343:
	php
	rep #$20
	ldx #$063A
	lda #$24FE
	sta $7E3000,X
	lda #$24FA
	sta $7E3040,X
	plp
	rts

L81A359:
.dw L81A3C7
.dw L81A444
.dw L81A4C1
.dw L81A51D

L81A361:
	php
	sep #$20
	cmp #$15
	bcc L81A36A
	lda #$14
L81A36A:
	jsl L81D6AC
	plp
	rts

L81A370:
	php
	sep #$20
	pha
	xba
	lda #$20
	rep #$20
	sta.l $004202
	nop
	nop
	nop
	lda.l $004216
	tax
	ldy #$0000
	sep #$20
L81A38A:
	lda $7F3800,X
	phx
	tyx
	sta $7F4400,X
	plx
	inx
	iny
	tya
	cmp #$20
	bne L81A38A
	pla
	xba
	lda #$10
	rep #$20
	sta.l $004202
	nop
	nop
	nop
	lda.l $004216
	tax
	ldy #$0000
	sep #$20
L81A3B3:
	lda $7F3DA0,X
	phx
	tyx
	sta $7F4420,X
	plx
	inx
	iny
	tya
	cmp #$10
	bne L81A3B3
	plp
	rtl

L81A3C7:
	php
	rep #$20
	lda $0BD1
	lsr A
	lsr A
	lsr A
	lsr A
	lsr A
	jsl L81A370
	lda $7F4401
	ldx $0BD5
	ldy #$DD30
	jsl L81E21F
	rep #$20
	lda $7F4420
	and #$00FF
	cmp #$00FF
	beq L81A442
	lda $0BD5
	clc
	adc #$0010
	tax
	lda $7F4420
	ldy #$DF58
	jsl L81E21F
	lda $0BD5
	clc
	adc #$001E
	tax
	lda #$252D
	sta $7E3000,X
	lda #$253D
	sta $7E3040,X
	inx
	inx
	lda $7F4424
	jsr L81A55B
	lda $7F4420
	jsl L83EE65
	bcc L81A442
	lda $0BD5
	clc
	adc #$0010
	tax
	ldy #$000A
	lda #$0001
	sta $19
	jsl L81C953
L81A442:
	plp
	rts

L81A444:
	php
	sep #$20
	ldx $0BD5
	inx
	inx
	phx
	ldx $0BD1
	lda $7F3802,X
	plx
	jsl L81D6AC
	inx
	inx
	phx
	ldx $0BD1
	lda $7F3805,X
	plx
	jsl L81D6AC
	inx
	inx
	phx
	ldx $0BD1
	lda $7F380F,X
	plx
	jsr L81A361
	inx
	inx
	phx
	ldx $0BD1
	lda $7F3808,X
	jsl L81EF69
	plx
	jsl L81D6AC
	inx
	inx
	phx
	ldx $0BD1
	lda $7F3804,X
	xba
	lda $7F3803,X
	plx
	jsr L81C99B
	ldx $0BD1
	lda $7F3805,X
	cmp #$5A
	bcc L81A4BF
	rep #$20
	lda $0BD5
	clc
	adc #$000C
	tax
	lda #$A551
	sta $7E3000,X
	lda #$A541
	sta $7E3040,X
L81A4BF:
	plp
	rts

L81A4C1:
	php
	rep #$20
	ldx $0BD5
	inx
	inx
	phx
	ldx $0BD1
	lda $7F3809,X
	plx
	jsr L81A361
	inx
	inx
	phx
	ldx $0BD1
	lda $7F380A,X
	plx
	jsr L81A361
	inx
	inx
	phx
	ldx $0BD1
	lda $7F380B,X
	plx
	jsr L81A361
	inx
	inx
	phx
	ldx $0BD1
	lda $7F380E,X
	plx
	jsr L81A361
	inx
	inx
	phx
	ldx $0BD1
	lda $7F380C,X
	plx
	jsr L81A361
	inx
	inx
	phx
	ldx $0BD1
	lda $7F380D,X
	plx
	jsr L81A361
	plp
	rts

L81A51D:
	php
	rep #$20
	lda $0BD1
	lsr A
	lsr A
	lsr A
	lsr A
	lsr A
	jsl L81A370
	jsl L81A5B2
	ldx $0BD5
	inx
	inx
	lda $0769
	jsr L81A55B
	lda $0767
	jsr L81A55B
	lda $076B
	jsr L81A55B
	lda $076D
	jsr L81A55B
	lda $0785
	jsr L81A55B
	lda $075D
	jsr L81A55B
	plp
	rts

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
	jsl L81D6AC
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
	jsl L819770
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
	lda #$29
	sta $7F4420
	bra L81A688
L81A649:
	lda #$2A
	sta $7F4420
	bra L81A688
L81A651:
	lda #$2B
	sta $7F4420
	bra L81A688

L81A659:
	lda $07DF
	cmp #$15
	bcc L81A649
	lda #$2C
	sta $7F4420
	bra L81A688

L81A668:
	lda $7F440B
	sta $0785
	clc
	adc $7F440E
	sta $076B
	lda #$FF
	sta $0769
	sta $0767
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
	lda.l (ITEMS_DATA + 4),X
	sta $15
	lda.l (ITEMS_DATA + 5),X
	sta $17
	lda.l (ITEMS_DATA + 3),X
	sta $19
	lda.l (ITEMS_DATA + 6),X
	sta $1B
	rep #$20
	lda #bank100(ITEMS_DATA)
	sta $01
	lda.l (ITEMS_DATA + 13),X
	and #$00FF
	asl
	tax
	lda.l L88A633,X
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
	jsl L87A9E8
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
	jsl L81A5B2
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
	jsl L81D35F
	jsl L81D4EE
	jsr L81A7A1
	lda $0c0e
	cmp #$ff
	bne L81A7EB
	jmp L81A852
L81A7EB:
	ldx #$0603
	stx $0c05
	lda #$01
	sta $0c07
	ldx $0bd1
L81A7F9:
	sep #$20
	lda $7f3812,X
	lsr
	bcs L81A806
	lda #$38
	bra L81A808
L81A806:
	lda #$3a
L81A808:
	sta $0c09
	lda $7f3801,X
	asl
	sta $15
	lda $7f3801,X
	and #$f8
	asl
	clc
	adc #$40
	clc
	adc $15
	sta $0c08
	phx
	jsl L81D77B
	plx
	rep #$20
	txa
	clc
	adc #$0020
	tax
	cpx #$0400
	beq L81A852
	lda $7f3800,X
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
	jsl L81D5A8
	ldx $15
	stx $17
L81A862:
	rep #$20
	ldx $0bd1
	lda $7f3816,X
	ldy #$d662
	ldx $17
	jsl L81E21F
	lda $17
	sec
	sbc #$0080
	tax
	phx
	ldx $0bd1
	lda $7f3812,X
	and #$0001
	plx
	ldy #$0005
	jsr L81C945
	lda $17
	sec
	sbc #$0084
	tax
	lda #$0000
	ldy #$a9bc
	jsl L81E21F
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
	lda $7f3800,X
	and #$00ff
	cmp #$00ff
	beq L81A8C9
	lda $17
	cmp #$068a
	bne L81A862
L81A8C9:
	plp
	rts

L81A8CB:
	php
	sep #$20
	phb
	lda #$81
	pha
	plb
	jsl L81E46B
	rep #$20
	jsl L87AC1E
	lda $0BDB
	lsr A
	tay
	lda #$0014
	jsl L81D718
	cpy #$0000
	beq L81A8EF
	inc A
L81A8EF:
	sep #$20
	sta $0BFF
	lda #$01
	sta $0C00
	rep #$20
	ldx #$0042
	ldy #$9FEA
	lda $0B08
	and #$00FF
	clc
	adc #$0006
	jsl L81E21F
	lda #$0501
	sta $0C1B
	lda #$161E
	sta $0C1D
	lda #$0000
	jsl L81D35F
	jsl L81D4EE
	lda $0B08
	and #$00FF
	bne L81A949
	lda $07F1
	beq L81A93A
	ldx #$0090
	jsl L81D5E1
L81A93A:
	jsl L87AC1E
	lda $0BDB
	lsr A
	ldx #$00A8
	jsl L81D699
L81A949:
	sep #$20
	lda #$0A
	sta $0C07
	ldx #$0601
	stx $0C05
	ldx #$3187
	stx $0C08
	jsl L81D77B
	ldx #$3189
	stx $0C08
	ldx #$060F
	stx $0C05
	jsl L81D77B
	lda #$01
	sta $0C07
	ldx #$0201
	stx $0C05
	ldx #$3187
	stx $0C08
	jsl L81D77B
	rep #$20
	lda $0B08
	and #$00FF
	beq L81A9B7
	lda #$7C00
	sta $27
	ldy #$0000
	lda $0B0B
	jsl L81D1F4
	ldx #$0086
	ldy #$0000
	lda #$0000
	sta $0B9E
	lda #$01C0
	sta $0BA1
	lda $0B0B
	jsl L81C736
L81A9B7:
	sep #$20
	ldx #$0000
	lda $7F5030,X
	cmp #$FF
	bne L81A9F6
	jsl L81E475
	lda #$01
	sta $0C00
	sta $0BFF
	jsr L81AD3E
	ldx #$0350
	ldy #$9FEA
	lda #$05
	jsl L81E21F
	jsr L81D6C2
L81A9E2:
	rep #$20
	jsl L8087EA
	lda $0127
	and #$8000
	bne L81A9F2
	bra L81A9E2
L81A9F2:
	phy
	jmp L81AB80
L81A9F6:
	ldx #$0601
	stx $0BB5
	stx $0BB3
	ldx $50
	stx $0BC7
	jsr L81AC34
	rep #$20
	lda $0B08
	and #$00FF
	beq L81AA56
	lda #$0008
	ldx #$000B
	ldy #$0000
	jsl L87A9A3
	ldx #$02CA
	ldy #$9FEA
	lda #$0008
	jsl L81E21F
	jsr L81D6C2
L81AA2E:
	jsl L8087EA
	lda $0127
	bit #$8000
	bne L81AA46
	bit #$0080
	bne L81AA46
	bit #$0040
	bne L81AA46
	bra L81AA2E
L81AA46:
	lda #$0008
	ldx #$000B
	ldy #$0001
	jsl L87A9A3
	jsr L81D6C2
L81AA56:
	rep #$20
	jsl L8087EA
	pea $AA55
	lda #$AA66
	jmp L81D7F2

L81AA65:
	rts

L81AA66:
.dw L81AA76
.dw L81AAAE
.dw L81AAED
.dw L81AAED
.dw L81AB1B
.dw L81AB80
.dw L81AB91
.dw L81AA65

L81AA76:
	sep #$20
	lda $0BB6
	cmp #$02
	bne L81AA80
	rts

L81AA80:
	cmp #$06
	beq L81AA8D
	dec $0BB6
	dec $0BB6
	brl L81ABB3

L81AA8D:
	lda $0C00
	cmp #$01
	beq L81AA9F
	dec $0C00
	lda #$18
	sta $0BB6
	brl L81ABC2

L81AA9F:
	lda $0B08
	bne L81AAA5
	rts

L81AAA5:
	ldx #$0201
	stx $0BB5
	brl L81ABB3

L81AAAE:
	sep #$20
	lda $0BB6
	cmp #$18
	beq L81AAD9
	cmp #$02
	beq L81AAC9
	inc $0BB6
	inc $0BB6
	jsr L81ABD2
	bcs L81AAD2
	brl L81ABB3

L81AAC9:
	ldx #$0601
	stx $0BB5
	brl L81ABB3

L81AAD2:
	dec $0BB6
	dec $0BB6
	rts

L81AAD9:
	lda $0C00
	cmp $0BFF
	bcc L81AAE2
	rts

L81AAE2:
	inc $0C00
	lda #$06
	sta $0BB6
	brl L81ABC2

L81AAED:
	sep #$20
	lda $0BB6
	cmp #$02
	bne L81AAF7
	rts

L81AAF7:
	lda $0BB5
	cmp #$01
	beq L81AB05
	lda #$01
	sta $0BB5
	bra L81AB0C

L81AB05:
	lda #$0F
	sta $0BB5
	bra L81AB0C

L81AB0C:
	jsr L81ABD2
	bcs L81AB14
	brl L81ABB3

L81AB14:
	ldx $0BB3
	stx $0BB5
	rts

L81AB1B:
	sep #$20
	lda $0B08
	bne L81AB24
	bra L81AB91

L81AB24:
	lda $0BB6
	cmp #$02
	bne L81AB36
	ldx #$FFFF
	stx $0B09
	lda $0B0B
	bra L81AB3C

L81AB36:
	jsr L81ABD2
	stx $0B09
L81AB3C:
	pha
	jsl L83EE2F
	bcc L81AB4C
	pla
	lda #$01
	jsl L81E3E6
	bra L81AB58
L81AB4C:
	pla
	ldx $50
	stx $0BCB
	jsl L81B282
	bcc L81AB59
L81AB58:
	rts

L81AB59:
	jsl L81E46B
	ldx #$0000
	stx $50
	stx $52
	jsl L80954E
	jsl L81D853
	jsr L81D6C2
	jsl L81E475
	jsl L8087EA
	lda #$FF
	sta $0C0A
	ply
	plb
	plp
	rtl

L81AB80:
	sep #$20
	lda $0B08
	beq L81AB88
	rts
L81AB88:
	lda #$FF
	sta $0C0A
	ply
	plb
	plp
	rtl
L81AB91:
	sep #$20
	lda $0BB6
	cmp #$02
	bne L81AB9F
	lda $0B0B
	bra L81ABA2
L81AB9F:
	jsr L81ABD2
L81ABA2:
	ldx #$0A02
	stx $0B30
	ldx #$0A10
	stx $0B32
	jsl L81E6A6
	rts
L81ABB3:
	rep #$20
	jsl L81D2C6
	lda $0BB5
	sta $0BB3
	jmp L81D6C2
L81ABC2:
	sep #$20
	jsr L81ABD2
	bcc L81ABCE
	lda #$01
	sta $0BB5
L81ABCE:
	jsr L81AC34
	rts

L81ABD2:
	php
	sep #$20
	lda $0C00
	dec A
	xba
	lda #$28
	rep #$20
	sta.l $004202
	nop
	nop
	nop
	lda.l $004216
	sep #$20
	rep #$20
	sta $0BD1
	lda $0BB6
	and #$00FF
	sec
	sbc #$0006
	asl A
	clc
	adc $0BD1
	sta $0BD1
	lda $0BB5
	and #$00FF
	cmp #$0001
	beq L81AC13
	inc $0BD1
	inc $0BD1
L81AC13:
	lda $0BD1
	cmp #$0100
	bcs L81AC31
	ldx $0BD1
	lda $7F5030,X
	and #$00FF
	cmp #$00FF
	beq L81AC31
	lda $7F5030,X
	plp
	clc
	rts
L81AC31:
	plp
	sec
	rts

L81AC34:
	php
	rep #$20
	jsl L81E46B
	lda $0BC7
	sta $50
	sta $52
	lda #$0501
	sta $0C1B
	lda #$161E
	sta $0C1D
	lda #$0000
	jsl L81D35F
	jsl L81D4EE
	lda $0C00
	and #$00FF
	dec A
	ldy #$0028
	jsl L81D733
	sta $0BD1
	sep #$20
	lda #$00
	sta $02
	ldx #$0B36
	stx $00
	ldy #$0000
	ldx $0BD1
L81AC7B:
	lda $7F5030,X
	sta [$00],Y
	inx
	inx
	iny
	cpx #$0100
	beq L81AC8E
	cpy #$0014
	bne L81AC7B
L81AC8E:
	lda #$FE
	sta [$00],Y
	rep #$20
	stz $0BDD
L81AC97:
	lda $0BDD
	asl A
	tax
	lda $AD16,X
	sta $0C1B
	jsl L81D5A8
	ldy #$0000
	lda $0BDD
	sta $0B9E
	lda #$0040
	sta $0BA1
	lda $0BDD
	asl A
	clc
	adc $0BD1
	tax
	lda $7F5030,X
	ldx $15
	jsl L81C736
	inc $0BDD
	lda $0BDD
	asl A
	clc
	adc $0BD1
	tax
	lda $7F5030,X
	and #$00FF
	cmp #$00FF
	beq L81ACEE
	ldx $0BDD
	lda $0B36,X
	and #$00FF
	cmp #$00FE
	bne L81AC97
L81ACEE:
	sep #$20
	jsr L81AD3E
	ldx #$01BA
	stx $0B04
	ldx #$067A
	stx $0B06
	jsl L81E824
	ldx $0BB5
	stx $0BB3
	jsl L81D2C6
	ldy #$6400
	jsl L81E63B
	plp
	rts

L81AD16:
.db $03 $06 $11 $06 $03 $08 $11 $08
.db $03 $0A $11 $0A $03 $0C $11 $0C
.db $03 $0E $11 $0E $03 $10 $11 $10
.db $03 $12 $11 $12 $03 $14 $11 $14
.db $03 $16 $11 $16 $03 $18 $11 $18

L81AD3E:
	php
	rep #$20
	ldx #$00AE
	lda $0C00
	and #$00FF
	jsl L81D6AC
	ldx #$00B2
	lda $0BFF
	and #$00FF
	jsl L81D6AC
	ldx #$00B2
	lda #$252D
	sta $7E3000,X
	lda #$253D
	sta $7E3040,X
	plp
	rts

L81AD6E:
	sep #$20
	rep #$20
	lda $0c1a
	and #$00ff
	asl
	tax
	sep #$20
	jsr (L81AD80,x)
	rts

L81AD80:
.dw L81AD86
.dw L81B399
.dw L81B615

L81AD86:
	sep #$20
	jsr L81D6DE
	lda #$01
	sta $0C10
	stz $0C13
	stz $0C15
	jsl L8087EA
	lda $7F4417
	ldx #$0000
	jsl L81D10F
	lda #$00
	jsl L81D1B6
	jsl L8087EA
	lda #$01
	ldx #$7F00
	stx $0D
	ldx #$4428
	stx $0C
	jsl L81D1C0
	jsl L8087EA
	ldx #$0101
	stx $0C1B
	jsl L81CACF
	ldx #$0B10
	stx $0C1B
	ldx #$0A0F
	stx $0C1D
	lda #$00
	jsl L81D35F
	jsl L81D4EE
	ldx #$0C12
	stx $0C1B
	ldx #$7F00
	stx $0D
	ldx #$4428
	stx $0C
	lda #$01
	jsl L81C7D6
	lda #$03
	sta $0C0F
	ldx #$1510
	stx $0C1B
	ldx #$060F
	stx $0C1D
	lda #$00
	jsl L81D35F
	jsl L81D4EE
	jsr L81AF5F
	ldx #$3187
	stx $0C08
	ldx #$0D01
	stx $0C05
	lda #$06
	sta $0C07
	jsl L81D77B
	ldx #$0C10
	stx $0C05
	lda #$04
	sta $0C07
	jsl L81D77B
	ldx #$1610
	stx $0C05
	lda #$02
	sta $0C07
	jsl L81D77B
	ldx #$3189
	stx $0C08
	ldx #$1617
	stx $0C05
	lda #$01
	sta $0C07
	jsl L81D77B
	ldx $50
	stx $0BCD
	ldx #$0B01
	stx $0C1B
	ldx #$100F
	stx $0C1D
	jsl L81D4EE
	ldx #$0000
	stx $0BD1
	ldx #$0D03
	stx $0C1B
	ldx #$0006
	stx $0BA1
	jsl L81AEB2
	jsl L81AFB0
	lda #$FF
	sta $0C11
	ldx #$1610
	stx $0BB5
	stx $0BB3
	jsl L81D2C6
	stz $0C11
	stz $0C10
	rep #$20
	lda #$002D
	jsl L80AA16
	jmp L81D6C2

L81AEB2:
	php
	rep #$20
	jsl L81E46B
	lda #$0000
	sta $01
	lda #$0B36
	sta $00
	ldx $0BD1
	lda $0BA1
	sta $15
	ldy #$0000
	sep #$20
L81AED0:
	lda $15
	beq L81AEEE
	cpx #$0100
	beq L81AEEE
	lda $7F5030,X
	cmp #$FF
	beq L81AEEE
	lda $7F5030,X
	sta [$00],Y
	inx
	inx
	iny
	dec $15
	bra L81AED0
L81AEEE:
	lda #$FE
	sta [$00],Y
	rep #$20
	lda #$0000
	sta $0BDD
	lda $0BD1
	sta $0BA4
L81AF00:
	ldx $0BDD
	lda $0B36,X
	and #$00FF
	cmp #$00FE
	beq L81AF4E
	jsl L83EE65
	bcc L81AF19
	ldy #$0001
	bra L81AF1C
L81AF19:
	ldy #$0000
L81AF1C:
	phy
	ldx $0BA4
	lda $7F5030,X
	pha
	jsl L81D5A8
	ldx $15
	lda #$0040
	sta $0BA1
	lda $0BDD
	sta $0B9E
	pla
	ply
	jsl L81C736
	inc $0BDD
	inc $0BA4
	inc $0BA4
	inc $0C1C
	inc $0C1C
	bra L81AF00
L81AF4E:
	lda $50
	sta $52
	jsl L80954E
	ldy #$6400
	jsl L81E486
	plp
	rtl

L81AF5F:
	php
	sep #$20
	ldx #$05A4
	ldy #$C4BC
	lda #$00
	jsl L81E21F
	ldx #$05A4
	ldy #$000A
	lda #$01
	jsr L81C945
	ldx #$0624
	ldy #$0003
	lda #$01
	jsr L81C945
	lda $0C0F
	cmp #$03
	beq L81AFAE
	cmp #$02
	beq L81AFA3
	cmp #$01
	beq L81AF9B
	ldx #$05A4
	ldy #$0004
	bra L81AFA9
L81AF9B:
	ldx #$05B2
	ldy #$0003
	bra L81AFA9
L81AFA3:
	ldx #$0624
	ldy #$0003
L81AFA9:
	lda #$00
	jsr L81C945
L81AFAE:
	plp
	rts

L81AFB0:
	php
	rep #$20
	lda $0C15
	and #$00FF
	beq L81AFD1
	ldx #$0324
	stx $21
	ldx #$0664
	stx $23
	ldx #$032E
	stx $25
	ldx #$066E
	stx $27
	bra L81AFE5
L81AFD1:
	ldx #$0306
	stx $21
	ldx #$0646
	stx $23
	ldx #$0310
	stx $25
	ldx #$0650
	stx $27
L81AFE5:
	ldx $21
	lda #$20FE
	sta $7E3000,X
	sta $7E3002,X
	sta $7E3004,X
	sta $7E3006,X
	sta $7E3008,X
	sta $7E300A,X
	sta $7E300C,X
	sta $7E300E,X
	sta $7E3010,X
	sta $7E3012,X
	sta $7E3014,X
	sta $7E3016,X
	ldx $23
	sta $7E3000,X
	sta $7E3002,X
	sta $7E3004,X
	sta $7E3006,X
	sta $7E3008,X
	sta $7E300A,X
	sta $7E300C,X
	sta $7E300E,X
	sta $7E3010,X
	sta $7E3012,X
	sta $7E3014,X
	sta $7E3016,X
	lda $0BD1
	cmp #$0000
	beq L81B05D
	ldx $25
	lda #$A4FA
	sta $7E3000,X
L81B05D:
	lda $0BD1
	clc
	adc #$000A
	cmp #$00FE
	beq L81B086
	cmp #$0106
	beq L81B086
	inc A
	inc A
	tax
	lda $7F5030,X
	and #$00FF
	cmp #$00FF
	beq L81B086
	ldx $27
	lda #$24FA
	sta $7E3000,X
L81B086:
	plp
	rtl

L81B088:
	ldx $50
	stx $0BCF
	rep #$20
	ldx $0BCF
	stx $50
	stx $52
	jsl L809374
	pea $B08C
	lda #$B0A4
	jmp L81D7F2

L81B0A3:
	rts

L81B0A4:
.dw L81B0B4
.dw L81B0BB
.dw L81B0A3
.dw L81B0A3
.dw L81B111
.dw L81B0CF
.dw L81B0DB
.dw L81B0A3

L81B0B4:
	jsl L81B184
	bcc L81B0C2
	rts

L81B0BB:
	jsl L81B1AF
	bcc L81B0C2
	rts
L81B0C2:
	jsl L81D2C6
	ldx $0BB5
	stx $0BB3
	jmp L81D6C2

L81B0CF:
	rep #$20
	ldx $0BCF
	stx $50
	stx $52
	pla
	sec
	rts

L81B0DB:
	lda $0BB6
	and #$00FF
	cmp #$000C
	bcs L81B0F2
	sec
	sbc #$0002
	lsr A
	tax
	lda $7F4420,X
	bra L81B0FC
L81B0F2:
	sec
	sbc #$000C
	lsr A
	tax
	lda $7F4428,X
L81B0FC:
	ldx #$0804
	stx $0B30
	stx $0B32
	ldx $0BCF
	stx $50
	stx $52
	jsl L81E6A6
	rts

L81B111:
	sep #$20
	jsr L81B15A
	cmp #$3D
	beq L81B11E
	cmp #$3F
	bne L81B125
L81B11E:
	lda #$08
	jsl L81E3E6
	rts
L81B125:
	lda $0BB6
	cmp #$0C
	bcs L81B142
	rep #$20
	and #$00FF
	dec A
	dec A
	lsr A
	tax
	ply
	lda $0BCF
	sta $50
	sta $52
	lda #$0000
	clc
	rts

L81B142:
	rep #$20
	and #$00FF
	sec
	sbc #$000C
	lsr A
	tax
	ply
	lda $0BCF
	sta $50
	sta $52
	lda #$0001
	clc
	rts

L81B15A:
	php
	sep #$20
	lda $0BB6
	cmp #$0C
	bcs L81B173
	rep #$20
	and #$00FF
	dec A
	dec A
	lsr A
	tax
	lda $7F4420,X
	bra L81B182
L81B173:
	rep #$20
	and #$00FF
	sec
	sbc #$000C
	lsr A
	tax
	lda $7F4428,X
L81B182:
	plp
	rts

L81B184:
	php
	rep #$20
	lda $0BB5
	pha
L81B18B:
	dec $0BB6
	dec $0BB6
	lda $0BB6
	and #$00FF
	cmp #$0000
	beq L81B1A8
	jsl L81B1DA
	bcc L81B1A4
	bra L81B18B
L81B1A4:
	pla
	plp
	clc
	rtl

L81B1A8:
	pla
	sta $0BB5
	plp
	sec
	rtl

L81B1AF:
	php
	rep #$20
	lda $0BB5
	pha
L81B1B6:
	inc $0BB6
	inc $0BB6
	lda $0BB6
	and #$00FF
	cmp #$0014
	beq L81B1D3
	jsl L81B1DA
	bcc L81B1CF
	bra L81B1B6

L81B1CF:
	pla
	plp
	clc
	rtl

L81B1D3:
	pla
	sta $0BB5
	plp
	sec
	rtl

L81B1DA:
	php
	rep #$20
	lda $0BB5
	clc
	adc #$0002
	sta $0C1B
	jsl L81D5A8
	ldx $15
	lda $7E3000,X
	cmp #$A0F1
	beq L81B201
	and #$00FF
	cmp #$00FE
	beq L81B201
	plp
	clc
	rtl

L81B201:
	plp
	sec
	rtl

L81B204:
	php
	sep #$20
	lda #$01
	sta $0C10
	ldx $50
	phx
	lda $0C14
	bne L81B231
	ldx $0F9F
	stx $50
	ldx #$0212
	stx $0C1B
	ldx #$7F00
	stx $0D
	ldx #$4420
	stx $0C
	lda #$00
	jsl L81C7D6
	bra L81B254
L81B231:
	rep #$20
	lda $0F9F
	clc
	adc #$0010
	sta $50
	sep #$20
	ldx #$0C12
	stx $0C1B
	ldx #$7F00
	stx $0D
	ldx #$4428
	stx $0C
	lda #$01
	jsl L81C7D6
L81B254:
	jsr L81D6C2
	stz $0C10
	lda $0C14
	bne L81B267
	lda #$00
	jsl L81D1B6
	bra L81B277
L81B267:
	lda #$01
	ldx #$7F00
	stx $0D
	ldx #$4428
	stx $0C
	jsl L81D1C0
L81B277:
	jsl L8087EA
	plx
	stx $50
	stx $52
	plp
	rts

L81B282:
	php
	rep #$20
	pha
	lda $0BB5
	sta $0BBB
	lda #$0008
	ldx #$000A
	ldy #$0000
	jsl L87A9A3
	lda #$0A0A
	sta $0C1B
	jsl L81D5A8
	ldx $15
	ldy #$A9BC
	lda #$0004
	jsl L81E21F
	lda $0C1B
	clc
	adc #$0101
	sta $0C1B
	jsl L81D5A8
	ldx $15
	ldy #$DF58
	pla
	jsl L81E21F
	ldy #$A9BC
	lda #$0003
	jsl L81E21F
	lda $0C1B
	clc
	adc #$0407
	sta $0BB5
	sta $0BB3
	jsl L81D2C6
	lda $50
	sta $0BCB
	sep #$20
	lda #$01
	sta $0C07
	rep #$20
	lda $0C1B
	clc
	adc #$0400
	sta $0C05
	lda #$3189
	sta $0C08
	jsl L81D77B
	lda $0C05
	clc
	adc #$0007
	sta $0C05
	jsl L81D77B
	jsr L81D6C2
	rep #$20
	jsl L8087EA
	pea $B314
	lda #$B325
	jmp L81D7F2

L81B324:
	rts

L81B325:
.dw L81B324
.dw L81B324
.dw L81B335
.dw L81B335
.dw L81B353
.dw L81B367
.dw L81B324
.dw L81B324

L81B335:
	sep #$20
	lda $0BB5
	clc
	adc #$07
	cmp #$19
	bne L81B343
	lda #$0B
L81B343:
	sta $0BB5
	jsl L81D2C6
	ldx $0BB5
	stx $0BB3
	jmp L81D6C2

L81B353:
	rep #$20
	lda $0BB5
	and #$00FF
	cmp #$0012
	beq L81B367
	jsr L81B370
	pla
	plp
	clc
	rtl
L81B367:
	rep #$20
	jsr L81B370
	pla
	plp
	sec
	rtl

L81B370:
	lda $0BBB
	sta $0BB5
	sta $0BB3
	lda #$0008
	ldx #$000A
	ldy #$0001
	jsl L87A9A3
	lda $0BCB
	sta $50
	sta $52
	jsl L80954E
	jsr L81D6C2
	jsl L8087EA
	rts

L81B399:
	rep #$20
	lda #$B3A2
	jmp L81D7F2

L81B3A1:
	rts

L81B3A2:
.dw L81B3C8
.dw L81B3D3
.dw L81B3BD
.dw L81B3B2
.dw L81B43E
.dw L81B403
.dw L81B3A1
.dw L81B3A1

L81B3B2:
	lda $0BB5
	cmp #$1610
	bne L81B3BC
	bra L81B3E6
L81B3BC:
	rts

L81B3BD:
	lda $0BB5
	cmp #$1617
	bne L81B3C7
	bra L81B3DE
L81B3C7:
	rts

L81B3C8:
	lda $0BB5
	cmp #$1810
	bne L81B3D2
	bra L81B3DE
L81B3D2:
	rts

L81B3D3:
	lda $0BB5
	cmp #$1610
	bne L81B3DD
	bra L81B3EE
L81B3DD:
	rts

L81B3DE:
	ldx #$1610
	stx $0BB5
	bra L81B3F6
L81B3E6:
	ldx #$1617
	stx $0BB5
	bra L81B3F6
L81B3EE:
	ldx #$1810
	stx $0BB5
	bra L81B3F6
L81B3F6:
	jsl L81D2C6
	ldx $0BB5
	stx $0BB3
	jmp L81D6C2

L81B403:
	sep #$20
	lda #$01
	sta $0C10
	lda $08ED
	jsl L83D969
	ldx #$0000
	stx $50
	stx $52
	stx $0BC1
	jsl L80954E
	jsl L81D853
	lda $0C17
	sta $074A
	stz $0C1A
	stz $0C19
	stz $0C10
	rep #$20
	lda #$00BE
	jsl L80AA16
	jmp L81D6C2

L81B43E:
	ldx #$B474
	lda $0BB5
	cmp #$1610
	beq L81B454
	ldx #$B4C7
	cmp #$1617
	beq L81B454
	ldx #$B459
L81B454:
	stx $15
	jmp ($0015)
	sep #$20
	ldx #$0000
	lda $7F5030,X
	cmp #$FF
	bne L81B46D
	lda #$02
	jsl L81E3E6
	rts
L81B46D:
	lda #$02
	sta $0C0F
	bra L81B4A8
	sep #$20
	ldx #$0000
	lda $7F5030,X
	cmp #$FF
	beq L81B49E
	lda #$00
	sta $0C14
	jsl L81B802
	bcc L81B4A5
	lda #$01
	sta $0C14
	jsl L81B802
	bcc L81B4A5
	lda #$06
	jsl L81E3E6
	rts
L81B49E:
	lda #$02
	jsl L81E3E6
	rts
L81B4A5:
	stz $0C0F
L81B4A8:
	inc $0C1A
	ldx #$0D01
	stx $0BB5
	jsl L81D2C6
	ldx $0BB5
	stx $0BB3
	jsr L81AF5F
	lda #$2E
	jsl L80AA16
	jmp L81D6C2
	sep #$20
	ldx #$0210
	stx $0BB5
	lda $7F4420
	cmp #$FF
	bne L81B4F2
	ldx #$0C10
	stx $0BB5
	lda $7F4428
	cmp #$FF
	bne L81B4F2
	ldx #$1617
	stx $0BB5
	lda #$03
	jsl L81E3E6
	rts

L81B4F2:
	jsl L87AC1E
	bcc L81B505
	ldx #$1617
	stx $0BB5
	lda #$00
	jsl L81E3E6
	rts

L81B505:
	lda #$01
	sta $0C0F
	jsr L81AF5F
	jsl L81D2C6
	ldx $0BB5
	stx $0BB3
	lda #$2E
	jsl L80AA16
	jsr L81D6C2
L81B520:
	jsr L81B088
	bcc L81B54B
L81B525:
	sep #$20
	lda #$03
	sta $0C0F
	jsr L81AF5F
	rep #$20
	ldx #$1617
	stx $0BB5
	jsl L81D2C6
	ldx $0BB5
	stx $0BB3
	lda #$00BE
	jsl L80AA16
	jmp L81D6C2
L81B54B:
	sep #$20
	phx
	ply
	cmp #$00
	bne L81B55F
	ldx #$7F00
	stx $10
	ldx #$4420
	stx $0F
	bra L81B569
L81B55F:
	ldx #$7F00
	stx $10
	ldx #$4428
	stx $0F
L81B569:
	sep #$20
	sta $0C14
	lda [$0F],Y
	sta $15
	iny
	iny
	iny
	iny
	lda [$0F],Y
	sta $16
	lda #$FF
	sta [$0F],Y
	dey
	dey
	dey
	dey
	sta [$0F],Y
	rep #$20
	lda $15
	jsl L87ABD4
	jsl L81979B
	sep #$20
	lda #$01
	sta $0C10
	sta $0C13
	ldx $0BCD
	stx $50
	ldx #$0D03
	stx $0C1B
	ldx #$0006
	stx $0BA1
	jsl L81AEB2
	jsl L81AFB0
	jsr L81B204
	jsl L87AC1E
	bcc L81B5BF
L81B5BC:
	jmp L81B525
L81B5BF:
	lda $0C14
	bne L81B5FD
	lda $7F4420
	cmp #$FF
	bne L81B5DC
	lda $7F4428
	cmp #$FF
	beq L81B5BC
	ldx #$0C10
	stx $0BB5
	bra L81B5ED
L81B5DC:
	lda $0BB6
	cmp #$02
	beq L81B5ED
	cmp #$0C
	beq L81B5ED
	dec $0BB6
	dec $0BB6
L81B5ED:
	jsl L81D2C6
	ldx $0BB5
	stx $0BB3
	jsr L81D6C2
	jmp L81B520
L81B5FD:
	lda $7F4428
	cmp #$FF
	bne L81B5DC
	lda $7F4420
	cmp #$FF
	beq L81B5BC
	ldx #$0210
	stx $0BB5
	bra L81B5ED

L81B615:
	rep #$20
	lda #$B61E
	jmp L81D7F2

L81B61D:
	rts

L81B61E:
.dw L81B676
.dw L81B696
.dw L81B62E
.dw L81B643
.dw L81B6FC
.dw L81B6C7
.dw L81B7F3
.dw L81B61D

L81B62E:
	sep #$20
	ldx $0bd1
	cpx #$0000
	bne L81B639
	rts

L81B639:
	lda #$0D
	sta $0BB6
	jsl L81B8FF
	rts

L81B643:
	sep #$20
	lda $0BB6
	pha
	lda #$17
	sta $0BB6
	jsl L81B8DE
	cpx #$00FE
	beq L81B671
	cpx #$0106
	beq L81B671
	inx
	inx
	lda $7F5030,X
	cmp #$FF
	beq L81B671
	pla
	lda #$0D
	sta $0BB6
	jsl L81B94B
	rts
L81B671:
	pla
	sta $0BB6
	rts

L81B676:
	sep #$20
	lda $0BB6
	cmp #$0D
	bne L81B68D
	ldx $0BD1
	cpx #$0000
	bne L81B688
	rts

L81B688:
	jsl L81B8F6
	rts

L81B68D:
	dec $0BB6
	dec $0BB6
	jmp L81B831

L81B696:
	rep #$20
	jsl L81B8DE
	cpx #$00FE
	beq L81B6C6
	inx
	inx
	lda $7F5030,X
	and #$00FF
	cmp #$00FF
	beq L81B6C6
	sep #$20
	lda $0BB6
	cmp #$17
	bne L81B6BD
	jsl L81B942
	rts
L81B6BD:
	inc $0BB6
	inc $0BB6
	jmp L81B831

L81B6C6:
	rts

L81B6C7:
	rep #$20
	lda $0C0F
	and #$00FF
	bne L81B6D6
	ldx #$1610
	bra L81B6D9

L81B6D6:
	ldx #$1810
L81B6D9:
	sep #$20
	stx $0BB5
	jsl L81D2C6
	ldx $0BB5
	stx $0BB3
	lda #$03
	sta $0C0F
	jsr L81AF5F
	lda #$BE
	jsl L80AA16
	dec $0C1A
	jmp L81D6C2

L81B6FC:
	rep #$20
	lda $0C0F
	and #$00FF
	bne L81B709
	jmp L81B766

L81B709:
	jsl L81B8DE
	and #$00FF
	cmp #$00FF
	bne L81B716
	rts

L81B716:
	jsl L83EE2F
	bcc L81B724
	lda #$0001
	jsl L81E3E6
	rts

L81B724:
	lda $0BB5
	sta $0BBB
	jsl L81B8DE
	phx
	jsl L81B282
	bcc L81B737
	plx
	rts

L81B737:
	plx
	lda #$FFFF
	sta $7F5030,X
	jsl L81D9C6
	sep #$20
	lda #$01
	sta $0C10
	sta $0C13
	jsl L81B83E
	ldx #$0000
	lda $7F5030,X
	cmp #$FF
	bne L81B75F
	jmp L81B6C7

L81B75F:
	jsr L81D6C2
	stz $0C10
	rts

L81B766:
	sep #$20
	jsl L81B8DE
	pha
	lda #$28
	sta $0C04
	pla
	jsl L819770
	bcs L81B77D
	lda #$00
	bra L81B77F

L81B77D:
	lda #$01
L81B77F:
	sta $0C14
	jsl L81B802
	bcc L81B793
	lda $0C14
	clc
	adc #$04
	jsl L81E3E6
	rts

L81B793:
	rep #$20
	jsl L81B8DE
	phx
	jsl L83FBBE
	plx
	lda #$FFFF
	sta $7F5030,X
	jsl L81D9C6
	sep #$20
	lda #$01
	sta $0C10
	sta $0C13
	ldx $0BB5
	stx $0BB3
	jsl L81D2C6
	jsr L81B204
	jsl L81B83E
	ldx #$0000
	lda $7F5030,X
	cmp #$FF
	beq L81B7E6
	lda #$00
	sta $0C14
	jsl L81B802
	bcc L81B7EC
	lda #$01
	sta $0C14
	jsl L81B802
	bcc L81B7EC
L81B7E6:
	stz $0C10
	jmp L81B6C7
L81B7EC:
	jsr L81D6C2
	stz $0C10
	rts

L81B7F3:
	jsl L81B8DE
	ldx #$0B10
	stx $0B32
	jsl L81E6A6
	rts

L81B802:
	php
	sep #$20
	ldx #$0000
	lda $0C14
	bne L81B81E
L81B80D:
	lda $7F4420,X
	cmp #$FF
	beq L81B82E
	inx
	cpx #$0004
	bne L81B80D
L81B81B:
	plp
	sec
	rtl

L81B81E:
	lda $7F4428,X
	cmp #$FF
	beq L81B82E
	inx
	cpx #$0004
	bne L81B81E
	bra L81B81B
L81B82E:
	plp
	clc
	rtl

L81B831:
	jsl L81D2C6
	ldx $0BB5
	stx $0BB3
	jmp L81D6C2

L81B83E:
	php
	rep #$20
	jsl L81B8DE
	and #$00FF
	cmp #$00FF
	bne L81B8A2
	lda $0BB6
	and #$00FF
	cmp #$000D
	bne L81B89A
	lda $0BD1
	cmp #$0000
	beq L81B8A2
	lda $0BD1
	cmp #$000C
	bcs L81B885
	sep #$20
	ldx #$0000
	stx $0BD1
	lda #$17
	sta $0BB6
L81B875:
	jsl L81B8DE
	cmp #$FF
	bne L81B8A2
	dec $0BB6
	dec $0BB6
	bra L81B875
L81B885:
	rep #$20
	lda $0BD1
	sec
	sbc #$000C
	sta $0BD1
	sep #$20
	lda #$17
	sta $0BB6
	bra L81B8A2
L81B89A:
	sep #$20
	dec $0BB6
	dec $0BB6
L81B8A2:
	sep #$20
	lda #$FF
	sta $0C11
	jsl L81D2C6
	ldx $0BB5
	stx $0BB3
	stz $0C11
	jsr L81B98E
	lda $0C15
	beq L81B8C3
	ldx #$0D12
	bra L81B8C6
L81B8C3:
	ldx #$0D03
L81B8C6:
	stx $0C1B
	ldx #$0006
	stx $0BA1
	ldx $0BCD
	stx $50
	jsl L81AEB2
	jsl L81AFB0
	plp
	rtl

L81B8DE:
	php
	rep #$20
	lda $0BB6
	and #$00FF
	sec
	sbc #$000D
	clc
	adc $0BD1
	tax
	lda $7F5030,X
	plp
	rtl

L81B8F6:
	php
	sep #$20
	lda #$17
	sta $0BB6
	plp
L81B8FF:
	php
	sep #$20
	jsr L81B98E
	lda $0BB5
	clc
	adc #$02
	sta $0C1B
	lda #$0D
	sta $0C1C
	ldx $0BCD
	stx $50
	stx $52
	ldx #$0006
	stx $0BA1
	rep #$20
	lda $0BD1
	sec
	sbc #$000C
	sta $0BD1
	sep #$20
	jsl L81D2C6
	lda $0BB6
	sta $0BB4
	jsl L81AFB0
	jsl L81AEB2
	plp
	rtl

L81B942:
	php
	sep #$20
	lda #$0D
	sta $0BB6
	plp
L81B94B:
	php
	sep #$20
	jsr L81B98E
	lda $0BB5
	clc
	adc #$02
	sta $0C1B
	lda #$0D
	sta $0C1C
	ldx $0BCD
	stx $50
	stx $52
	ldx #$0006
	stx $0BA1
	rep #$20
	lda $0BD1
	clc
	adc #$000C
	sta $0BD1
	sep #$20
	jsl L81D2C6
	lda $0BB6
	sta $0BB4
	jsl L81AFB0
	jsl L81AEB2
	plp
	rtl

L81B98E:
	php
	sep #$20
	lda $0BB5
	cmp #$01
	beq L81B9A0
	ldx #$0D12
	stx $0C1B
	bra L81B9A6
L81B9A0:
	ldx #$0D03
	stx $0C1B
L81B9A6:
	ldx #$0C0C
	stx $0C1D
	lda #$02
	jsl L81D35F
	jsl L81D4EE
	plp
	rts

L81B9B8:
	sep #$20
	rep #$20
	lda $0c1a
	and #$00ff
	asl
	tax
	sep #$20
	jsr (L81B9CA,x)
	rts

L81B9CA:
.dw L81B9CE
.dw L81BB8A

L81B9CE:
	sep #$20
	jsr L81D6DE
	ldx #$0000
	stx $0bb0
	lda $085e
	sec
	sbc $0860
	cmp #$08
	bcs L81B9EF
	ldx #$0216
	stx $0c1b
	ldx #$0316
	bra L81B9F8
L81B9EF:
	ldx #$0202
	stx $0c1b
	ldx #$0302
L81B9F8:
	stx $0c05
	stx $0bb3
	stx $0bb5
	jsl L81D5A8
	ldx $15
	ldy #$aae6
	lda #$16
	jsl L81E21F
	lda #$00
	sta $19
	lda $0c0b
	ldx #$0000
	jsr L81BA7C
	lda #$08
	sta $19
	lda $0c0c
	jsr L81BA7C
	lda #$10
	sta $19
	lda $0c0d
	jsr L81BA7C
	txa
	sta $0c07
	sta $0bc0
	asl
	clc
	adc #$02
	sta $0c1e
	lda #$07
	sta $0c1d
	stz $0c0c
	ldx $17
	ldy #$aae6
	lda #$17
	jsl L81E21F
	ldx #$3187
	stx $0c08
	jsl L81D77B
	lda $0bb0
	sta $0bd1
	asl
	clc
	adc $0bb6
	sta $0bb6
	sta $0bb4
	adc $0bb4
	lda #$ff
	sta $0c11
	jsl L81D2C6
	jmp L81D6C2

L81BA7C:
	sep #$20
	sta $1A
L81BA80:
	lda $1A
	beq L81BAAC
	lsr A
	sta $1A
	bcs L81BA8D
	inc $19
	bra L81BA80
L81BA8D:
	lda $19
	sta $0BDF,X
	cmp $0B03
	bne L81BA9A
	stx $0BB0
L81BA9A:
	inx
	phx
	ldx $17
	lda $19
	ldy #$AAE6
	jsl L81E21F
	plx
	inc $19
	bra L81BA80
L81BAAC:
	rts

L81BAAD:
	sep #$20
	rep #$20
	lda $0C1A
	and #$00FF
	asl A
	tax
	sep #$20
	jsr (L81BABF,X)
	rts

L81BABF:
.dw L81BAC3
.dw L81BB8A

L81BAC3:
	sep #$20
	jsr L81D6DE
	lda #$02
	sta $0C1B
	sta $0C1C
	sta $0C05
	sta $0BB3
	sta $0BB5
	lda #$03
	sta $0C06
	sta $0BB4
	sta $0BB6
	lda $085E
	sec
	sbc $0860
	cmp #$08
	bcs L81BAFD
	lda #$16
	sta $0C1B
	sta $0C05
	sta $0BB3
	sta $0BB5
L81BAFD:
	jsl L81D5A8
	rep #$20
	ldx $15
	ldy #$ACC6
	lda #$0004
	jsl L81E21F
	rep #$20
	ldx #$0000
	sep #$20
	stz $19
	lda $0C0B
L81BB1B:
	beq L81BB48
	lsr A
	sta $0C0B
	bcs L81BB27
	inc $19
	bra L81BB1B
L81BB27:
	lda $19
	sta $0BDF,X
	inx
	phx
	rep #$20
	ldx $17
	lda $19
	and #$00FF
	ldy #$ACC6
	jsl L81E21F
	plx
	sep #$20
	inc $19
	lda $0C0B
	bra L81BB1B
L81BB48:
	rep #$20
	txa
	sep #$20
	sta $0C07
	sta $0BC0
	asl A
	clc
	adc #$02
	sta $0C1E
	lda #$07
	sta $0C1D
	rep #$20
	ldx $17
	ldy #$ACC6
	lda #$0005
	jsl L81E21F
	lda #$3187
	sta $0C08
	jsl L81D77B
	sep #$20
	lda #$FF
	sta $0C11
	rep #$20
	jsl L81D2C6
	stz $0BD1
	jmp L81D6C2

L81BB8A:
	rep #$20
	lda #$bb93
	jmp L81D7F2

L81BB92:
	rts

L81BB93:
.dw L81BBFC
.dw L81BC22
.dw L81BB92
.dw L81BB92
.dw L81BBA3
.dw L81BBB6
.dw L81BB92
.dw L81BB92

L81BBA3:
	rep #$20
	lda $0BD1
	and #$00FF
	tax
	sep #$20
	lda $0BDF,X
	sta $0C0A
	bra L81BBC5

L81BBB6:
	sep #$20
	lda #$FF
	sta $0C0A
	lda $0C0C
	ora #$7F
	sta $0C0C
L81BBC5:
	lda $0C17
	sta $074A
	stz $0C1A
	stz $0C19
	lda $0C0C
	asl A
	bcs L81BBFB
	ldx #$0101
	stx $0C1B
	ldx #$1C1E
	stx $0C1D
	lda #$01
	jsl L81D35F
	jsl L81D4EE
	jsr L81D6C2
	ldx #$0000
	stx $50
	stx $52
	jsl L80954E
L81BBFB:
	rts

L81BBFC:
	sep #$20
	lda $0BD1
	dec A
	cmp #$FF
	beq L81BC11
	sta $0BD1
	lda $0BB4
	sec
	sbc #$02
	bra L81BC3E
L81BC11:
	lda $0BC0
	dec A
	sta $0BD1
	lda $0BD1
	asl A
	clc
	adc $0BB6
	bra L81BC3E

L81BC22:
	sep #$20
	lda $0BD1
	inc A
	cmp $0BC0
	bpl L81BC38
	sta $0BD1
	lda $0BB4
	clc
	adc #$02
	bra L81BC3E
L81BC38:
	stz $0BD1
	lda $0C06
L81BC3E:
	sta $0BB6
	jsl L81D2C6
	lda $0BB6
	sta $0BB4
	jmp L81D6C2

L81BC4E:
	sep #$20
	rep #$20
	lda $0C1A
	and #$00FF
	asl A
	tax
	sep #$20
	jsr (L81BC60,X)
	rts

L81BC60:
.dw L81BC64
.dw L81BCC4

L81BC64:
	sep #$20
	jsr L81D6DE
	lda #$11
	sta $0C1C
	lda $085F
	sec
	sbc $0861
	cmp #$07
	bcc L81BC7E
	lda #$01
	sta $0C1C
L81BC7E:
	sep #$20
	jsl L8087EA
	lda $7F4417
	ldx #$0000
	jsl L81D10F
	lda #$00
	jsl L81D1B6
	jsl L8087EA
	lda #$01
	ldx #$7F00
	stx $0D
	ldx #$4428
	stx $0C
	jsl L81D1C0
	lda #$01
	sta $0C1B
	ldx $0C1B
	stx $0B9E
	stz $0C0F
	jsl L81CCD9
	lda #$03
	jsl L81D6F8
	jmp L81D6C2

L81BCC4:
	rep #$20
	lda #$BCCD
	jmp L81D7F2

L81BCCC:
	rts

L81BCCD:
.dw L81BDA5
.dw L81BDA5
.dw L81BDA5
.dw L81BDA5
.dw L81BD8A
.dw L81BD91
.dw L81BCDD
.dw L81BCCC

L81BCDD:
	sep #$20
	lda $0C0F
	bne L81BD42
	jsl L81E46B
	ldx $50
	phx
	ldx #$0000
	stx $50
	ldx $0B9E
	stx $0C1B
	jsl L81CACF
	plx
	stx $50
	stx $52
	rep #$20
	ldx #$06E0
	ldy #$000F
	lda #$00FF
L81BD0A:
	sta $7E3000,X
	inx
	inx
	dey
	bne L81BD0A
	sep #$20
	lda #$01
	sta $0C1C
	lda $085F
	sec
	sbc $0861
	cmp #$07
	bcc L81BD2A
	lda #$0B
	sta $0C1C
L81BD2A:
	lda #$01
	sta $0C1B
	sta $0C0F
	jsr L81CE0E
	lda #$05
	jsl L81D6F8
	jsl L81E475
	jmp L81D6C2
L81BD42:
	sep #$20
	jsl L81E46B
	stz $0C0F
	lda #$01
	sta $0C1C
	lda $085F
	sec
	sbc $0861
	cmp #$07
	bcc L81BD60
	lda #$0B
	sta $0C1C
L81BD60:
	lda $0C1C
	jsr L81BDF3
	ldx $50
	phx
	ldx #$0000
	stx $50
	ldx $0B9E
	stx $0C1B
	jsl L81CCD9
	plx
	stx $50
	stx $52
	lda #$02
	jsl L81D6F8
	jsl L81E475
	jmp L81D6C2

L81BD8A:
	sep #$20
	stz $0C0A
	bra L81BDB5

L81BD91:
	sep #$20
	lda #$02
	jsl L81D6F8
	lda $0C0F
	bne L81BD42
	lda #$FF
	sta $0C0A
	bra L81BDB5

L81BDA5:
	sep #$20
	lda #$01
	sta $0C0A
	rep #$20
	lda #$002C
	jsl L80AA16
L81BDB5:
	sep #$20
	ldx $0BC1
	stx $50
	stx $52
	jsl L80954E
	jsl L81D853
	lda $0C17
	sta $074A
	stz $0C1A
	stz $0C19
	jmp L81D6C2

L81BDD5:
	php
	rep #$20
	and #$00FF
	tax
	ldy #$0001
	lda #$000A
	jsl L87A9A3
	lda $0C33
	sta $50
	sta $52
	jsl L80954E
	plp
	rts

L81BDF3:
	php
	rep #$20
	and #$00FF
	tax
	ldy #$0001
	lda #$0010
	jsl L87A9A3
	lda $0C35
	sta $50
	sta $52
	jsl L80954E
	plp
	rts

L81BE11:
	sep #$20
	rep #$20
	lda $0C1A
	and #$00FF
	asl A
	tax
	sep #$20
	jsr (L81BE23,X)
	rts

L81BE23:
.dw L81BE27
.dw L81C00B

L81BE27:
	sep #$20
	jsr L81D6DE
	lda $08ED
	jsl L83D912
	lda $0B00
	bne L81BE3C
	jsl L83FEED
L81BE3C:
	jsl L81D901
	lda $08ED
	jsl L83D912
	lda $0B00
	bne L81BE50
	jsl L83FEED
L81BE50:
	ldx #$7F00
	stx $0D
	lda $0C0B
	asl A
	bcc L81BE67
	lda #$01
	sta $0C14
	ldx #$4428
	stx $0C
	bra L81BE71
L81BE67:
	lda #$00
	sta $0C14
	ldx #$4420
	stx $0C
L81BE71:
	lda #$00
	jsl L81D1C0
	lda $0C0B
	and #$7F
	sta $0C0B
	lda #$01
	sta $0C1B
	sta $0C1C
	lda $085E
	sec
	sbc $0860
	cmp #$08
	bcs L81BE97
	lda #$10
	sta $0C1B
L81BE97:
	jsl L81D5A8
	rep #$20
	ldx $15
	ldy #$AE94
	lda #$0000
	jsl L81E21F
	lda $17
	clc
	adc #$0004
	tax
	stz $0BD5
	stz $0BD1
L81BEB6:
	sep #$20
	lda $0C0B
	lsr A
	sta $0C0B
	bcs L81BECB
	inc $0BD1
	lda $0C0B
	beq L81BF3C
	bra L81BEB6
L81BECB:
	rep #$20
	txa
	sec
	sbc #$0004
	tax
	ldy #$AE94
	lda #$0003
	jsl L81E21F
	lda $17
	clc
	adc #$0004
	sta $17
	sep #$20
	ldy $0BD1
	lda [$0C],Y
	cmp #$FF
	bne L81BEF4
	ldx $17
	bra L81BF1C
L81BEF4:
	rep #$20
	lda $17
	sec
	sbc #$0080
	tax
	lda $0BD1
	sta $15
	jsr L81C9EF
	txa
	sec
	sbc #$0068
	tax
	ldy #$AE94
	lda #$0002
	jsl L81E21F
	lda $17
	sec
	sbc #$0018
	tax
L81BF1C:
	lda $0BD1
	sep #$20
	phx
	ldx $0BD5
	sta $0BDF,X
	plx
	rep #$20
	inc $0BD5
	inc $0BD1
	lda $0BD1
	cmp #$0004
	beq L81BF3C
	jmp L81BEB6
L81BF3C:
	sep #$20
	lda $0BD5
	asl A
	clc
	adc $0C1C
	inc A
	sta $0C1C
	jsl L81D5A8
	rep #$20
	ldx $15
	ldy #$AE94
	lda #$0001
	jsl L81E21F
	lda $0C1B
	clc
	adc #$0100
	sta $0BA7
	lda #$0000
	sta $10
	lda #$7F00
	sta $0D
	lda $0C14
	and #$00FF
	bne L81BF82
	lda #$0B8E
	sta $0F
	lda #$4420
	bra L81BF8A
L81BF82:
	lda #$0B96
	sta $0F
	lda #$4428
L81BF8A:
	sta $0C
	lda $0BDF
	and #$00FF
	tay
	lda [$0F],Y
	sep #$20
	sta [$0C]
	jsl L81A767
	lda $0769
	sta $0B57
	lda $0767
	sta $0B58
	lda $076B
	sta $0B59
	lda $076D
	sta $0B5A
	lda $0785
	sta $0B5B
	lda $075D
	sta $0B5C
	sep #$20
	lda $0C1B
	sta $0C05
	lda #$02
	sta $0C06
	lda $0BD5
	sta $0C07
	ldx #$3187
	stx $0C08
	jsl L81D77B
	lda $0C05
	sta $0BB3
	sta $0BB5
	lda $0C06
	sta $0BB4
	sta $0BB6
	lda #$FF
	sta $0C11
	jsl L81D2C6
	lda $0BD5
	sta $0BC0
	stz $0BD1
	stz $0BD2
	jsr L81C10B
	jmp L81D6C2

L81C00B:
	rep #$20
	lda #$C014
	jmp L81D7F2

L81C013:
	rts

L81C014:
.dw L81C07D
.dw L81C0A3
.dw L81C013
.dw L81C013
.dw L81C024
.dw L81C037
.dw L81C0D2
.dw L81C013

L81C024:
	rep #$20
	lda $0BD1
	and #$00FF
	tax
	sep #$20
	lda $0BDF,X
	sta $0C0A
	bra L81C046

L81C037:
	sep #$20
	lda #$FF
	sta $0C0A
	lda $0C0C
	ora #$7F
	sta $0C0C
L81C046:
	lda $0C17
	sta $074A
	stz $0C1A
	stz $0C19
	lda $0C0C
	asl A
	bcs L81C07C
	ldx #$0101
	stx $0C1B
	ldx #$1C1E
	stx $0C1D
	lda #$01
	jsl L81D35F
	jsl L81D4EE
	jsr L81D6C2
	ldx #$0000
	stx $50
	stx $52
	jsl L80954E
L81C07C:
	rts

L81C07D:
	sep #$20
	lda $0BD1
	dec A
	cmp #$FF
	beq L81C092
	sta $0BD1
	lda $0BB4
	sec
	sbc #$02
	bra L81C0BF
L81C092:
	lda $0BC0
	dec A
	sta $0BD1
	lda $0BD1
	asl A
	clc
	adc $0BB6
	bra L81C0BF

L81C0A3:
	sep #$20
	lda $0BD1
	inc A
	cmp $0BC0
	bpl L81C0B9
	sta $0BD1
	lda $0BB4
	clc
	adc #$02
	bra L81C0BF
L81C0B9:
	stz $0BD1
	lda $0C06
L81C0BF:
	sta $0BB6
	jsr L81C10B
	jsl L81D2C6
	lda $0BB6
	sta $0BB4
	jmp L81D6C2

L81C0D2:
	sep #$20
	lda $0C14
	beq L81C0DA
	rts

L81C0DA:
	rep #$20
	lda $0BD1
	and #$00FF
	tax
	lda $0BDF,X
	and #$00FF
	tay
	lda [$0F],Y
	pha
	sep #$20
	lda #$0E
	xba
	lda $0BB5
	rep #$20
	sta $0B30
	sta $0B32
	pla
	ldx $0BA7
	phx
	jsl L81E6A6
	plx
	stx $0BA7
	rts

L81C10B:
	php
	rep #$20
	lda $0BD1
	and #$00FF
	tax
	lda $0BDF,X
	and #$00FF
	tay
	lda [$0F],Y
	sep #$20
	sta [$0C]
	lda $0C14
	beq L81C12A
	jmp L81C1C0
L81C12A:
	jsl L81A767
	lda #$00
	jsl L81D35F
	ldx $0BA7
	stx $0C1B
	jsl L81CE48
	rep #$20
	lda $0BA7
	clc
	adc #$0006
	sta $0C1B
	jsl L81D5A8
	ldx $15
	ldy #$B522
	lda #$000A
	jsl L81E21F
	lda $0BA7
	clc
	adc #$0106
	sta $0C1B
	jsl L81D5A8
	lda $0B57
	ldy $0769
	ldx $15
	jsr L81C1F0
	txa
	clc
	adc #$0080
	tax
	lda $0B58
	ldy $0767
	jsr L81C1F0
	txa
	clc
	adc #$0080
	tax
	lda $0B59
	ldy $076B
	jsr L81C1F0
	txa
	clc
	adc #$0080
	tax
	lda $0B5A
	ldy $076D
	jsr L81C1F0
	txa
	clc
	adc #$0080
	tax
	lda $0B5B
	ldy $0785
	jsr L81C1F0
	txa
	clc
	adc #$0080
	tax
	lda $0B5C
	ldy $075D
	jsr L81C1F0
	plp
	rts

L81C1C0:
	rep #$20
	lda $0BA7
	sta $0C1B
	lda #$0C0D
	sta $0C1D
	lda #$0000
	jsl L81D35F
	jsl L81D4EE
	inc $0C1B
	inc $0C1C
	jsl L81D5A8
	lda [$0C]
	ldx $15
	ldy #$E724
	jsl L81E21F
	plp
	rts

L81C1F0:
	php
	rep #$20
	and #$00FF
	cmp #$00FF
	bne L81C1FE
	lda #$0000
L81C1FE:
	sta $15
	tya
	and #$00FF
	cmp #$00FF
	bne L81C20C
	lda #$0000
L81C20C:
	sta $17
	lda $15
	cmp $17
	beq L81C234
	bcs L81C226
	lda #$A551
	sta $7E3000,X
	lda #$A541
	sta $7E3040,X
	bra L81C234
L81C226:
	lda #$2541
	sta $7E3000,X
	lda #$2551
	sta $7E3040,X
L81C234:
	plp
	rts

L81C236:
	sep #$20
	rep #$20
	lda $0C1A
	and #$00FF
	asl A
	tax
	sep #$20
	jsr (L81C248,X)
	rts

L81C248:
.dw L81C24C
.dw L81C302

L81C24C:
	sep #$20
	jsl L81E46B
	jsr L81D6DE
	lda #$00
	jsl L81D35F
	ldx #$0000
	stx $50
	stx $52
	stx $0BC1
	jsl L80954E
	rep #$20
	ldx #$02D0
	lda #$60F0
	sta $7E3000,X
	lda #$E0F0
	sta $7E3040,X
	lda #$20F0
	sta $7E3002,X
	lda #$A0F0
	sta $7E3042,X
	jsr L81D6C2
	jsl L81E475
	jsl L8087EA
	sep #$20
	ldx #$0B08
	stx $0C1B
	ldx #$0303
	stx $0C1D
	lda $0C0A
	bne L81C2AD
	ldx #$0811
	bra L81C2B0
L81C2AD:
	ldx #$0810
L81C2B0:
	stx $0B9E
L81C2B3:
	jsl L81D4EE
	jsr L81D6C2
	jsl L8087EA
	lda $0C1D
	cmp $0B9E
	beq L81C2C9
	inc $0C1D
L81C2C9:
	lda $0C1E
	cmp $0B9F
	beq L81C2D6
	inc $0C1E
	bra L81C2B3
L81C2D6:
	ldx $0C1D
	cpx $0B9E
	bne L81C2B3
	ldx #$0E0D
	stx $0C1B
	jsl L81D5A8
	lda $0C0A
	bne L81C2F1
	lda #$00
	bra L81C2F3
L81C2F1:
	lda #$01
L81C2F3:
	ldx $15
	ldy #$D0FA
	jsl L81E21F
	stz $0C0A
	jmp L81D6C2

L81C302:
	sep #$20
	inc $0C0A
	lda $0C0A
	cmp #$40
	beq L81C30F
	rts
L81C30F:
	lda #$FF
	sta $0C0A
	lda $0C17
	sta $074A
	stz $0C1A
	stz $0C19
	ldx #$0000
	stx $50
	stx $52
	jsl L80954E
	jsl L81D853
	jmp L81D6C2

L81C332:
	sep #$20
	rep #$20
	lda $0C1A
	and #$00FF
	asl A
	tax
	sep #$20
	jsr (L81C344,X)
	rts

L81C344:
.dw L81C348
.dw L81C399

L81C348:
	sep #$20
	jsr L81D6DE
	jsl L8087EA
	lda $7F4417
	ldx #$0000
	jsl L81D10F
	lda #$00
	jsl L81D1B6
	jsl L8087EA
	lda #$01
	ldx #$7F00
	stx $0D
	ldx #$4428
	stx $0C
	jsl L81D1C0
	jsl L8087EA
	ldx #$0101
	stx $0C1B
	stz $0C0F
	jsl L81CACF
	ldx #$0B01
	stx $0C1B
	jsr L81CE09
	lda #$03
	jsl L81D6F8
	jmp L81D6C2

L81C399:
	rep #$20
	lda #$C3A2
	jmp L81D7F2

L81C3A1:
	rts

L81C3A2:
.dw L81C3D1
.dw L81C3D1
.dw L81C3D1
.dw L81C3D1
.dw L81C3B2
.dw L81C3C2
.dw L81C3A1
.dw L81C3A1

L81C3B2:
	rep #$20
	lda #$002C
	jsl L80AA16
	sep #$20
	stz $0C0A
	bra L81C3E1

L81C3C2:
	sep #$20
	lda #$02
	jsl L81D6F8
	lda #$FF
	sta $0C0A
	bra L81C3E1

L81C3D1:
	sep #$20
	lda #$01
	sta $0C0A
	rep #$20
	lda #$00BE
	jsl L80AA16
L81C3E1:
	sep #$20
	ldx $0BC1
	stx $50
	stx $52
	jsl L80954E
	jsl L81D853
	lda $0C17
	sta $074A
	stz $0C1A
	stz $0C19
	jmp L81D6C2

L81C401:
	sep #$20
	rep #$20
	lda $0C1A
	and #$00FF
	asl A
	tax
	sep #$20
	jsr (L81C413,X)
	rts

L81C413:
.dw L81C415

L81C415:
	sep #$20
	lda $085E
	sec
	sbc $0860
	cmp #$08
	bcs L81C427
	ldx #$0211
	bra L81C42A
L81C427:
	ldx #$0202
L81C42A:
	stx $0C1B
	jsl L81D5A8
	ldx $15
	ldy #$C010
	lda #$00
	jsl L81E21F
	lda #$FF
	sta $0C11
	rep #$20
	lda #$002C
	jsl L80AA16
	sep #$20
	lda $0C1C
	clc
	adc #$04
	sta $0C1C
	lda $7F4412
	and #$06
	lsr A
	sta $0B61
	ldx #$0001
	ldy #$C010
	lda #$03
	jsl L81E2CC
	lda $0B62
	cmp #$FF
	bne L81C49E
	rep #$20
	lda #$00BE
	jsl L80AA16
	sep #$20
L81C47D:
	ldx #$0000
	stx $50
	stx $52
	stx $0BC1
	jsl L80954E
	jsl L81D853
	lda $0C17
	sta $074A
	stz $0C1A
	stz $0C19
	jmp L81D6C2
L81C49E:
	rep #$20
	lda #$002D
	jsl L80AA16
	sep #$20
	lda $7F4412
	and #$F9
	sta $7F4412
	lda $0B62
	asl A
	ora $7F4412
	sta $7F4412
	bra L81C47D

L81C4C1:
	sep #$20
	rep #$20
	lda $0C1A
	and #$00FF
	asl A
	tax
	sep #$20
	jsr (L81C4D3,X)
	rts

L81C4D3:
.dw L81C4D5

L81C4D5:
	rep #$20
	jsr L81D6DE
	lda #$FFFF
	ldy #$0870
	ldx #$0000
L81C4E3:
	sta $7F3800,X
	inx
	dey
	inx
	dey
	bne L81C4E3
	ldx #$0000
L81C4F0:
	lda $7F5342,X
	and #$0080
	bne L81C501
	txa
	clc
	adc #$0020
	tax
	bra L81C4F0
L81C501:
	stx $17
	ldx #$0000
L81C506:
	lda $7F5330,X
	and #$00FF
	cmp #$00FF
	beq L81C51D
	txa
	clc
	adc #$0020
	tax
	cpx #$05A0
	bne L81C506
L81C51D:
	stx $19
	lda #$7F7F
	sta $15
	lda $17
	clc
	adc #$5330
	tax
	ldy #$3800
	lda $19
	sec
	sbc $17
	jsl L81D98A
	sep #$20
	phb
	lda #$81
	pha
	plb
	jsl L819DDF
	bcs L81C558
	sep #$20
	jsr L81A04F
	lda $7F3800,X
	and #$FF
	jsl L87A923
	sta $0C0A
	bra L81C55F
L81C558:
	sep #$20
	lda #$FF
	sta $0C0A
L81C55F:
	plb
	ldx #$0000
	stx $50
	stx $52
	jsl L80954E
	jsl L81D853
	jsr L81D6C2
	jsl L809374
	lda $0C17
	sta $074A
	stz $0C1A
	stz $0C19
	rts

L81C583:
	sep #$20
	rep #$20
	lda $0C1A
	and #$00FF
	asl A
	tax
	sep #$20
	jsr (L81C595,X)
	rts

L81C595:
.dw L81C597

L81C597:
	sep #$20
	jsl L81D853
	lda $085E
	sec
	sbc $0860
	cmp #$08
	bcs L81C5AD
	ldx #$0116
	bra L81C5B0
L81C5AD:
	ldx #$0101
L81C5B0:
	stx $0C1B
	jsl L81A767
	rep #$20
	jsl L81D5A8
	ldx $15
	ldy #$B522
	lda #$0009
	jsl L81E21F
	lda $0C1B
	clc
	adc #$0101
	sta $0C1B
	jsl L81D5A8
	ldx $15
	ldy #$D662
	lda $7F4416
	jsl L81E21F
	ldx $17
	ldy #$DD30
	lda $7F4401
	jsl L81E21F
	lda $7F4420
	and #$00FF
	cmp #$00FF
	beq L81C60C
	ldx $17
	ldy #$DF58
	lda $7F4420
	jsl L81E21F
	bra L81C614

L81C60C:
	lda $17
	clc
	adc #$0080
	sta $17
L81C614:
	lda $17
	clc
	adc #$0008
	tax
	lda $7F4403
	jsr L81A55B
	txa
	clc
	adc #$007A
	tax
	lda $7F4402
	jsr L81A55B
	txa
	clc
	adc #$007A
	tax
	lda $0769
	jsr L81A55B
	txa
	clc
	adc #$007A
	tax
	lda $0767
	jsr L81A55B
	txa
	clc
	adc #$007A
	tax
	lda $076B
	jsr L81A55B
	txa
	clc
	adc #$007A
	tax
	lda $076D
	jsr L81A55B
	txa
	clc
	adc #$007A
	tax
	lda $0785
	jsr L81A55B
	txa
	clc
	adc #$007A
	tax
	lda $7F440C
	jsr L81A55B
	txa
	clc
	adc #$007A
	tax
	lda $7F440D
	jsr L81A55B
	jmp L81D6C2
	php
	sep #$20
	jsl L81DC00
	plp
	rtl

L81C691:
	php
	rep #$20
	sty $25
	sta $27
	ldy #$DF58
	jsl L81E21F
	lda $17
	sec
	sbc #$0072
	tax
	lda #$252D
	sta $7E3000,X
	lda #$253D
	sta $7E3040,X
	lda $28
	inx
	inx
	jsr L81A55B
	dex
	dex
	lda $0C0E
	and #$00FF
	cmp #$00FF
	bne L81C6CB
	phx
	bra L81C712
L81C6CB:
	rep #$20
	phx
	txa
	tay
	sep #$20
	lda #$40
	jsl L81D718
	sta $0C06
	tya
	lsr A
	sta $0C05
	lda #$01
	sta $0C07
	lda $25
	beq L81C6ED
	lda #$3E
	bra L81C6EF
L81C6ED:
	lda #$36
L81C6EF:
	sta $0C09
	lda $27
	xba
	lda #$0E
	rep #$20
	sta.l $004202
	nop
	nop
	nop
	lda.l $004216
	sep #$20
	tax
	lda $88A6EA,X
	sta $0C08
	jsl L81D77B
L81C712:
	sep #$20
	plx
	ldy #$A9BC
	lda #$00
	jsl L81E21F
	rep #$20
	lda $25
	beq L81C734
	lda $17
	sec
	sbc #$0094
	tax
	ldy #$000A
	lda #$0001
	jsr L81C945
L81C734:
	plp
	rtl

L81C736:
	php
	rep #$20
	sty $25
	sta $27
	ldy #$DF58
	jsl L81E21F
	lda $17
	sec
	sbc #$0072
	tax
	lda #$252D
	sta $7E3000,X
	lda #$253D
	sta $7E3040,X
	lda $28
	inx
	inx
	jsr L81A55B
	dex
	dex
	lda $0C0E
	and #$00FF
	cmp #$00FF
	bne L81C770
	phx
	bra L81C7B2
L81C770:
	rep #$20
	phx
	txa
	tay
	sep #$20
	lda #$40
	jsl L81D718
	sta $0C06
	tya
	lsr A
	sta $0C05
	lda #$01
	sta $0C07
	lda $25
	beq L81C792
	lda #$3E
	bra L81C794
L81C792:
	lda #$36
L81C794:
	sta $0C09
	ldx $0B9E
	lda $81E5BB,X
	asl A
	sta $0C08
	rep #$20
	lda $0C08
	clc
	adc $0BA1
	sta $0C08
	jsl L81D77B
L81C7B2:
	sep #$20
	plx
	ldy #$A9BC
	lda #$00
	jsl L81E21F
	rep #$20
	lda $25
	beq L81C7D4
	lda $17
	sec
	sbc #$0094
	tax
	ldy #$000A
	lda #$0001
	jsr L81C945
L81C7D4:
	plp
	rtl

L81C7D6:
	php
	sep #$20
	lsr A
	bcs L81C7E0
	lda #$E0
	bra L81C7E2
L81C7E0:
	lda #$E8
L81C7E2:
	sta $1F
	lda $0C1B
	clc
	adc #$09
	sta $0C1B
	ldx #$0803
	stx $0C1D
	lda #$01
	jsl L81D35F
	jsl L81D4EE
	lda $0C1B
	sec
	sbc #$09
	sta $0C1B
	ldx #$080A
	stx $0C1D
	lda #$02
	jsl L81D35F
	jsl L81D4EE
	ldy #$0000
	jsr L81C842
	inc $0C1C
	inc $0C1C
	ldy #$0001
	jsr L81C842
	inc $0C1C
	inc $0C1C
	ldy #$0002
	jsr L81C842
	inc $0C1C
	inc $0C1C
	ldy #$0003
	jsr L81C842
	plp
	rtl

L81C842:
	php
	rep #$20
	sty $23
	lda [$0C],Y
	sta $21
	tya
	clc
	adc #$0004
	tay
	lda [$0C],Y
	sep #$20
	sta $22
	lda $21
	cmp #$FF
	beq L81C88A
	rep #$20
	jsl L81D5A8
	ldx $15
	ldy #$DF58
	lda $21
	jsl L81E21F
	lda $17
	sec
	sbc #$0072
	tax
	lda #$252D
	sta $7E3000,X
	lda #$253D
	sta $7E3040,X
	lda $22
	inx
	inx
	jsr L81A55B
L81C88A:
	sep #$20
	lda $0C1B
	clc
	adc #$0A
	sta $0C05
	lda $0C1C
	sta $0C06
	lda #$01
	sta $0C07
	lda $23
	asl A
	clc
	adc $1F
	sta $0C08
	lda $21
	jsl L83EE65
	bcs L81C8B5
	lda #$37
	bra L81C8B7
L81C8B5:
	lda #$3F
L81C8B7:
	sta $0C09
	jsl L81D77B
	rep #$20
	jsl L81D5A8
	ldx $15
	phx
	lda $21
	and #$00FF
	jsl L83EE65
	bcs L81C8D7
	lda #$0000
	bra L81C8DA
L81C8D7:
	lda #$0001
L81C8DA:
	plx
	ldy #$000C
	jsr L81C945
	plp
	rts

L81C8E3:
	php
	rep #$20
	pha
	lda $0C16
	and #$00FF
	bne L81C8F6
L81C8EF:
	pla
	jsl L81C7D6
	plp
	rtl
L81C8F6:
	inc $0C1C
	lda $0C1B
	sec
	sbc #$0102
	sta $0C1B
	jsl L81D5A8
	ldx $15
	ldy #$B522
	lda #$000F
	jsl L81E21F
	lda $0C1B
	clc
	adc #$0102
	sta $0C1B
	bra L81C8EF

L81C91F:
	php
	rep #$20
	and #$00FF
	sta $19
	lda $0C1B
	pha
	lda $0BB3
	clc
	adc #$0002
	sta $0C1B
	jsl L81D5A8
	ldx $15
	jsl L81C953
	pla
	sta $0C1B
	plp
	rts

L81C945:
	php
	rep #$20
	and #$00FF
	sta $19
	jsl L81C953
	plp
	rts

L81C953:
	php
	rep #$20
L81C956:
	lda $19
	beq L81C978
	lda $7E3000,X
	and #$E3FF
	ora #$0800
	sta $7E3000,X
	lda $7E3040,X
	and #$E3FF
	ora #$0800
	sta $7E3040,X
	bra L81C994
L81C978:
	lda $7E3000,X
	and #$E3FF
	ora #$0400
	sta $7E3000,X
	lda $7E3040,X
	and #$E3FF
	ora #$0400
	sta $7E3040,X
L81C994:
	inx
	inx
	dey
	bne L81C956
	plp
	rtl

L81C99B:
	php
	rep #$20
	pha
	jsl L81D6AC
	txa
	clc
	adc #$0002
	tax
	pla
	xba
	jsl L81D6AC
	txa
	sec
	sbc #$0006
	tax
	lda #$252D
	sta $7E3000,X
	txa
	clc
	adc #$0040
	tax
	lda #$253D
	sta $7E3000,X
	plp
	rts

L81C9CB:
	php
	sep #$20
	cmp #$FF
	bne L81C9DC
	rep #$20
	lda #$3189
	sta $0C08
	plp
	rts
L81C9DC:
	sep #$20
	jsl L83EE65
	bcs L81C9E8
	lda #$37
	bra L81C9EA
L81C9E8:
	lda #$3F
L81C9EA:
	sta $0C09
	plp
	rts

L81C9EF:
	php
	rep #$20
	ldy $15
	lda [$0C],Y
	and #$00FF
	cmp #$00FF
	bne L81CA23
	txa
	clc
	adc #$0080
	tax
	phx
	lda #$3189
	sta $0C08
	sep #$20
	lda #$00
	sta $0C05
	lda #$1E
	sta $0C06
	lda #$01
	sta $0C07
	jsl L81D77B
	plx
	plp
	rts
L81CA23:
	rep #$20
	ldy #$DF58
	jsl L81E21F
	lda $17
	sec
	sbc #$0072
	tax
	lda #$252D
	sta $7E3000,X
	lda #$253D
	sta $7E3040,X
	inx
	inx
	lda $15
	clc
	adc #$0004
	tay
	lda [$0C],Y
	jsr L81A55B
	dex
	dex
	phx
	txa
	sta $4204
	sep #$20
	lda #$40
	sta $4206
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	lda $4214
	sta $0C06
	lda $4216
	lsr A
	sta $0C05
	lda #$01
	sta $0C07
	ldy $15
	lda [$0C],Y
	jsr L81C9CB
	lda $15
	asl A
	clc
	adc #$E0
	sta $0C08
	jsl L81D77B
	rep #$20
	plx
	ldy #$A9BC
	lda #$0000
	jsl L81E21F
	lda $17
	sec
	sbc #$0014
	tax
	plp
	rts

L81CAA1:
	php
	rep #$20
	pha
	lda #$0004
	jsl L81D35F
	pla
	plp
	bra L81CB18
	php
	rep #$20
	lda $0C1C
	and #$00FF
	tax
	ldy #$0000
	lda #$000A
	jsl L87A9A3
	ldx $50
	stx $0C33
	sep #$20
	stz $0C16
	plp
L81CACF:
	php
	sep #$20
	stz $0C16
	lda #$7F
	sta $0E
	ldx #$4420
	stx $0C
	stz $5C
	ldx #$0000
	stx $5E
	rep #$20
	lda #$0000
	plp
	php
	sep #$20
	pha
	ldx #$7F00
	stx $0D
	and #$FF
	bne L81CAFD
	ldx #$4420
	bra L81CB00
L81CAFD:
	ldx #$4428
L81CB00:
	stx $0C
	stz $5C
	ldx #$0000
	stx $5E
	pla
	plp
L81CB0B:
	php
	rep #$20
	pha
	lda #$0000
	jsl L81D35F
	pla
	plp
L81CB18:
	php
	sep #$20
	pha
	rep #$20
	lda $0C1B
	clc
	adc #$010F
	sta $0C05
	lda #$0A1E
	sta $0C1D
	jsl L81D4EE
	inc $0C1B
	inc $0C1C
	jsl L81D5A8
	ldx $15
	ldy #$D662
	lda $7F4416
	jsl L81E21F
	ldx $17
	ldy #$DD30
	lda $7F4401
	jsl L81E21F
	ldx $17
	ldy #$AD32
	lda #$0000
	jsl L81E21F
	lda $17
	sec
	sbc #$00FC
	tax
	lda $7F4402
	jsl L81D6AC
	txa
	clc
	adc #$0004
	tax
	lda $7F4405
	jsr L81CC5B
	txa
	clc
	adc #$0076
	tax
	sep #$20
	lda $7F4404
	xba
	lda $7F4403
	jsr L81C99B
	lda $0C0E
	cmp #$FF
	bne L81CB9C
	jmp L81CC0B
L81CB9C:
	rep #$20
	lda $7F4417
	and #$00FF
	tax
	lda $888E1C,X
	and #$00FF
	sta $5A
	lda $0C1C
	and #$00FF
	ora #$0800
	sta.l $004202
	nop
	nop
	nop
	lda.l $004216
	sta $58
	lda #$0050
	sta $56
	lda #bank100(L838000)
	sta $63
	lda #L838000
	sta $62
	jsl L8093A4
	sep #$20
	ldx $0C05
	phx
	lda $0C16
	beq L81CBEE
	inc $0C06
	ldx #$31CD
	stx $0C08
	bra L81CBF4
L81CBEE:
	ldx #$3189
	stx $0C08
L81CBF4:
	lda #$04
	sta $0C07
	jsl L81D77B
	plx
	stx $0C05
	lda $0C06
	xba
	lda #$05
	jsl L81CCA3
L81CC0B:
	lda #$0A
	sta $0C1B
	ldx #$0806
	stx $0C1D
	lda #$01
	jsl L81D35F
	jsl L81D4EE
	lda $7F4416
	cmp #$00
	bne L81CC48
	lda #$05
	sta $0C1B
	jsl L81D5A8
	ldx $15
	rep #$20
	lda #$00FF
	sta $7E3000,X
	sta $7E3040,X
	sta $7E3002,X
	sta $7E3042,X
L81CC48:
	sep #$20
	ldx $50
	stx $0F9F
	lda #$12
	sta $0C1B
	pla
	jsl L81C8E3
	plp
	rtl

L81CC5B:
	php
	rep #$20
	and #$00FF
	pha
	phx
	lda #$0400
	tax
	lda $7F4400
	jsl L87A8F7
	bcc L81CC7D
	lda $7F4402
	and #$00FF
	cmp #$0014
	beq L81CC85
L81CC7D:
	plx
	pla
	jsl L81D6AC
	plp
	rts
L81CC85:
	plx
	lda #$20FE
	sta $7E3000,X
	sta $7E3002,X
	lda #$24F9
	sta $7E3040,X
	sta $7E3042,X
	inx
	inx
	inx
	inx
	pla
	plp
	rts

L81CCA3:
	php
	rep #$20
	sta $0C05
	sep #$20
	lda #$01
	sta $0C07
	lda $7F4416
	cmp #$00
	bne L81CCC3
	lda $07F4
	bit #$04
	bne L81CCC8
	bit #$08
	bne L81CCCD
L81CCC3:
	ldx #$3181
	bra L81CCD0
L81CCC8:
	ldx #$37AA
	bra L81CCD0
L81CCCD:
	ldx #$37AC
L81CCD0:
	stx $0C08
	jsl L81D77B
	plp
	rtl

L81CCD9:
	php
	sep #$20
	lda $0C14
	pha
	lda $0C16
	pha
	lda #$81
	sta $5C
	lda $7F4401
	cmp #$16
	beq L81CCF4
	lda #$00
	bra L81CCF6
L81CCF4:
	lda #$01
L81CCF6:
	sta $0C16
	sta $0C14
	rep #$20
	lda $0C1B
	pha
	clc
	adc #$0A0F
	sta $0C1B
	jsl L81D5A8
	ldx $15
	ldy #$000F
	lda #$00FF
L81CD15:
	sta $7E3000,X
	inx
	inx
	dey
	bne L81CD15
	pla
	sta $0C1B
	lda #$0000
	sta $5E
	jsl L8796FF
	lda $0C16
	and #$00FF
	jsl L81CB0B
	ldx $50
	stx $52
	sep #$20
	pla
	sta $0C16
	pla
	sta $0C14
	plp
	rtl

L81CD45:
	php
	sep #$20
	lda $0C14
	pha
	lda $0C16
	pha
	lda #$81
	sta $5C
	lda $7F4401
	cmp #$16
	beq L81CD60
	lda #$00
	bra L81CD62
L81CD60:
	lda #$01
L81CD62:
	sta $0C16
	sta $0C14
	rep #$20
	lda #$0000
	sta $5E
	jsl L8796FF
	lda $0C16
	and #$00FF
	jsl L81CAA1
	ldx $50
	stx $52
	lda $7F4401
	and #$00FF
	cmp #$0016
	beq L81CD9F
	ldx #$06E0
	ldy #$000F
	lda #$00FF
L81CD96:
	sta $7E3000,X
	inx
	inx
	dey
	bne L81CD96
L81CD9F:
	sep #$20
	pla
	sta $0C16
	pla
	sta $0C14
	plp
	rtl

L81CDAB:
	php
	rep #$20
	jsl L8087EA
	lda $7F4401
	and #$00FF
	cmp #$0016
	beq L81CDC7
	lda #$0000
	jsl L81D1B6
	bra L81CDD8
L81CDC7:
	lda #$0001
	ldx #$7F00
	stx $0D
	ldx #$4428
	stx $0C
	jsl L81D1C0
L81CDD8:
	plp
	rtl

L81CDDA:
	php
	rep #$20
	jsl L8087EA
	lda $7F4401
	and #$00FF
	cmp #$0016
	beq L81CE00
	lda #$0001
	ldx #$7F00
	stx $0D
	ldx #$4428
	stx $0C
	jsl L81D1C0
	bra L81CE07
L81CE00:
	lda #$0000
	jsl L81D1B6
L81CE07:
	plp
	rtl

L81CE09:
	php
	rep #$20
	bra L81CE27

L81CE0E:
	php
	rep #$20
	lda $0C1C
	and #$00FF
	tax
	ldy #$0000
	lda #$0010
	jsl L87A9A3
	ldx $50
	stx $0C35
L81CE27:
	lda #$0000
	jsl L81D35F
	jsl L81CE40
	jsl L81CF58
	jsl L81D00E
	jsl L81D0C4
	plp
	rts

L81CE40:
	php
	sep #$20
	jsl L81A5B2
	plp
L81CE48:
	php
	sep #$20
	ldx $0C1B
	phx
	ldx #$1007
	stx $0C1D
	jsl L81D4EE
	inc $0C1B
	inc $0C1C
	jsl L81D5A8
	ldx $15
	ldy #$AD32
	lda #$01
	jsl L81E21F
	ldx $17
	phx
	rep #$20
	lda $0C1B
	clc
	adc #$0003
	sta $0C1B
	jsl L81D5A8
	ldx $15
	lda $0769
	jsr L81A55B
	txa
	clc
	adc #$007A
	tax
	lda $0767
	jsr L81A55B
	txa
	clc
	adc #$007A
	tax
	lda $076B
	jsr L81A55B
	txa
	clc
	adc #$007A
	tax
	lda $076D
	jsr L81A55B
	txa
	clc
	adc #$007A
	tax
	lda $0785
	jsr L81A55B
	txa
	clc
	adc #$007A
	tax
	lda $075D
	jsr L81A55B
	rep #$20
	lda $7F4420
	sta $0BB0
	lda $7F4422
	sta $0BAD
	jsl L83FEED
	sep #$20
	lda #$28
	sta $0C04
	lda $7F4420
	jsl L819770
	bcs L81CF41
	lda $7F4420
	cmp #$FF
	beq L81CF41
	jsl L83EE65
	bcs L81CF41
	lda #$88
	sta $02
	lda $7F4420
	xba
	lda #$0E
	rep #$20
	sta.l $004202
	nop
	nop
	nop
	lda.l $004216
	sep #$20
	tax
	lda $88A6F6,X
	rep #$20
	and #$00FF
	asl A
	tax
	lda $88A633,X
	sta $00
	sep #$20
	ldy #$0000
L81CF29:
	lda [$00],Y
	cmp #$FF
	beq L81CF32
	iny
	bra L81CF29
L81CF32:
	iny
	lda [$00],Y
	clc
	adc #$04
	plx
	ldy #$AD32
	jsl L81E21F
	phx
L81CF41:
	plx
	plx
	stx $0C1B
	rep #$20
	lda $0BAD
	sta $7F4422
	lda $0BB0
	sta $7F4420
	plp
	rtl

L81CF58:
	php
	sep #$20
	ldx $0C1B
	phx
	lda #$08
	sta $0C1B
	ldx #$1009
	stx $0C1D
	jsl L81D4EE
	inc $0C1B
	inc $0C1C
	jsl L81D5A8
	ldx $15
	ldy #$AD32
	lda #$02
	jsl L81E21F
	lda $0C1B
	clc
	adc #$04
	sta $0C1B
	rep #$20
	jsl L81D5A8
	ldx $15
	lda $7F4409
	jsr L81CFEF
	txa
	clc
	adc #$007A
	tax
	lda $7F440A
	jsr L81CFEF
	txa
	clc
	adc #$007A
	tax
	lda $7F440B
	jsr L81CFEF
	txa
	clc
	adc #$007A
	tax
	lda $7F440E
	jsr L81CFEF
	txa
	clc
	adc #$007A
	tax
	lda $7F440F
	jsr L81CFEF
	txa
	clc
	adc #$007A
	tax
	lda $7F440C
	jsr L81CFEF
	txa
	clc
	adc #$007A
	tax
	lda $7F440D
	jsr L81CFEF
	plx
	stx $0C1B
	plp
	rtl

L81CFEF:
	php
	rep #$20
	and #$00FF
	pha
	and #$0080
	bne L81D008
	pla
	cmp #$0015
	bcs L81D003
	bra L81D009
L81D003:
	lda #$0014
	bra L81D009
L81D008:
	pla
L81D009:
	jsr L81A55B
	plp
	rts

L81D00E:
	php
	rep #$20
	ldx $0C1B
	phx
	ldx #$060F
	stx $0C1D
	lda $0C1C
	and #$00FF
	cmp #$0001
	beq L81D05A
	ldx #$05B2
	phx
	ldx #$1510
	stx $0C1B
	jsl L81D4EE
	ldx #$0560
	lda #$20FC
	sta $7E3000,X
	lda #$20FE
	sta $7E3040,X
	sta $7E3080,X
	sta $7E30C0,X
	sta $7E3100,X
	lda #$A0F1
	sta $7E3140,X
	bra L81D08C
L81D05A:
	ldx #$00B2
	phx
	ldx #$0110
	stx $0C1B
	jsl L81D4EE
	ldx #$0060
	lda #$20F1
	sta $7E3000,X
	lda #$20FE
	sta $7E3040,X
	sta $7E3080,X
	sta $7E30C0,X
	sta $7E3100,X
	lda #$A0FC
	sta $7E3140,X
L81D08C:
	inc $0C1B
	inc $0C1B
	inc $0C1C
	jsl L81D5A8
	ldx $15
	ldy #$AD32
	lda #$0003
	jsl L81E21F
	plx
	lda $7F4404
	jsr L81A55B
	txa
	clc
	adc #$007A
	tax
	lda $7F4408
	jsl L81EF69
	jsr L81A55B
	plx
	stx $0C1B
	plp
	rtl

L81D0C4:
	php
	rep #$20
	ldx $0C1B
	phx
	lda $0C1C
	and #$00FF
	cmp #$0001
	beq L81D0DE
	lda #$0B11
	sta $0C1B
	bra L81D0E4
L81D0DE:
	lda #$0711
	sta $0C1B
L81D0E4:
	lda #$0A0E
	sta $0C1D
	jsl L81D4EE
	inc $0C1B
	inc $0C1C
	ldx #$7F00
	stx $0D
	ldx #$4428
	stx $0C
	lda #$0001
	jsl L81C7D6
	ldx $50
	stx $52
	plx
	stx $0C1B
	plp
	rtl

L81D10F:
	php
	rep #$20
	phx
	cpx #$0000
	bne L81D11D
	ldy #$6000
	bra L81D120
L81D11D:
	ldy #$6400
L81D120:
	jsl L81D12B
	ply
	jsl L81D14D
	plp
	rtl

L81D12B:
	php
	rep #$20
	pha
	and #$00FF
	jsl L87A9E8
	tax
	lda $888EB0,X
	sta $00
	lda $888EB1,X
	sta $01
	ldx #$0800
	jsl L81D920
	pla
	plp
	rtl

L81D14D:
	php
	rep #$20
	pha
	phy
	and #$00FF
	asl A
	asl A
	asl A
	asl A
	asl A
	tax
	lda #$7F00
	sta $01
	tya
	bne L81D168
	lda #$0120
	bra L81D16B
L81D168:
	lda #$0140
L81D16B:
	clc
	adc #$5130
	sta $00
	ldy #$0010
L81D174:
	lda $D7E800,X
	sta [$00]
	inc $00
	inc $00
	inx
	inx
	dey
	bne L81D174
	ply
	tya
	bne L81D197
	lda #bank100(L81D1A8)
	sta $01
	lda #L81D1A8
	sta $00
	jsl L808EAD
	bra L81D1A5
L81D197:
	lda #bank100(L81D1AF)
	sta $01
	lda #L81D1AF
	sta $00
	jsl L808EAD
L81D1A5:
	pla
	plp
	rtl

L81D1A8:
.db $01 $50 $52 $7F $20 $00 $90

L81D1AF:
.db $01 $70 $52 $7F $20 $00 $A0

L81D1B6:
	ldx #$7F00
	stx $0D
	ldx #$4420
	stx $0C
L81D1C0:
	php
	sep #$20
	ldx #$7E00
	lsr A
	bcc L81D1CC
	ldx #$7E80
L81D1CC:
	stx $27
	ldy #$0000
	lda [$0C],Y
	jsl L81D1F4
	ldy #$0001
	lda [$0C],Y
	jsl L81D1F4
	ldy #$0002
	lda [$0C],Y
	jsl L81D1F4
	ldy #$0003
	lda [$0C],Y
	jsl L81D1F4
	plp
	rtl

L81D1F4:
	php
	sep #$20
	phy
	cmp #$FF
	bne L81D207
	lda #$94
	sta $02
	ldx #$A820
	stx $00
	bra L81D235
L81D207:
	xba
	lda #$0E
	rep #$20
	sta.l $004202
	nop
	nop
	nop
	lda.l $004216
	sep #$20
	tax
	rep #$20
	lda $88A6EA,X
	and #$00FF
	asl A
	asl A
	asl A
	asl A
	asl A
	asl A
	clc
	adc #$8000
	sta $00
	sep #$20
	lda #$93
	sta $02
L81D235:
	rep #$20
	ply
	tya
	asl A
	asl A
	asl A
	asl A
	asl A
	clc
	adc $27
	tay
	phy
	ldx #$0040
	jsr L81D289
	lda $00
	clc
	adc #$0200
	sta $00
	pla
	clc
	adc #$0100
	tay
	ldx #$0040
	jsr L81D289
	plp
	rtl

L81D25F:
	php
	rep #$20
	stx $00
	and #$00FF
	asl A
	clc
	adc $00
	sta $00
	tya
	sep #$20
	sta $02
	rep #$20
	lda [$00]
	sta $00
	lda [$00]
	tax
	inc $00
	inc $00
	sep #$20
	lda [$00]
	sta $02
	stx $00
	plp
	rts

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
	jsl L81D5A8
	ldx $15
	lda $7e3000,X
	and #$dfff
	sta $7e3000,X
	lda $7e3002,X
	and #$dfff
	sta $7e3002,X
	lda $7e3040,X
	and #$dfff
	sta $7e3040,X
	lda $7e3042,X
	and #$dfff
	sta $7e3042,X
	lda $0bb5
	cmp $0bb3
	beq L81D345
	lda $0bb3
	sta $0c1b
	jsl L81D5A8
	ldx $15
	lda $7e3000,X
	ora #$2000
	sta $7e3000,X
	lda $7e3002,X
	ora #$2000
	sta $7e3002,X
	lda $7e3040,X
	ora #$2000
	sta $7e3040,X
	lda $7e3042,X
	ora #$2000
	sta $7e3042,X
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
	jsl L81D6F8
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
	lda.l L81D3D6,X
	sta.l $000c1f,X
	inx
	dey
	bne L81D378
	plp
	rtl

L81D386:
	ldy #$0012
	ldx #$0000
L81D38C:
	lda.l L81D3E8,X
	sta.l $000c1f,X
	inx
	dey
	bne L81D38C
	plp
	rtl

L81D39A:
	ldy #$0012
	ldx #$0000
L81D3A0:
	lda.l L81D3FA,X
	sta.l $000c1f,X
	inx
	dey
	bne L81D3A0
	plp
	rtl

L81D3AE:
	ldy #$0012
	ldx #$0000
L81D3B4:
	lda.l L81D40C,X
	sta.l $000c1f,X
	inx
	dey
	bne L81D3B4
	plp
	rtl

L81D3C2:
	ldy #$0012
	ldx #$0000
L81D3C8:
	lda.l L81D41E,X
	sta.l $000c1f,X
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
.db $FE $20 $FE $20 $FE $20 $FE $20
.db $FE $20 $FE $20 $FE $20 $FE $20
.db $FE $20

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
	jsl L81E46B
	lda #$81
	sta $11
	pla
	rep #$20
	and #$00ff
	ldy #$000c
	jsl L81D733
	clc
	adc #$d4be
	sta $0f
	ldy #$0000
	lda [$0f],Y
	sta $0c1b
	jsl L81D5A8
	ldy #$0002
	lda [$0f],Y
	and #$00ff
	pha
	ldx $15
	ldy #$c0b8
	pla
	jsl L81E21F
	sep #$20
	ldy #$0005
	lda [$0f],Y
	sta $5a
	iny
	lda [$0f],Y
	sta $5c
	rep #$20
	ldy #$0003
	lda [$0f],Y
	and #$00ff
	sta $56
	iny
	lda [$0f],Y
	and #$00ff
	sta $58
	ldy #$0007
	lda [$0f],Y
	sta $5e
	lda #bank100(L838000)
	sta $63
	lda #L838000
	sta $62
	jsl L8093A4
	lda $50
	sta $52
	rep #$20
	ldy #$0009
	lda [$0f],Y
	pha
	ldy #$000a
	lda [$0f],Y
	tay
	pla
	jsl L87AFD2
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
	jsl L81D5A8
	rep #$30
	ldx $15
	lda $0c1f
	sta $7e3000,X
	inx
	inx
	lda $0c1d
	and #$00ff
	dec A
	tay
L81D516:
	lda $0c21
	sta $7e3000,X
	inx
	inx
	dey
	bne L81D516
	lda $0c23
	sta $7e3000,X
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
	sta $7e3000,X
	inx
	inx
	lda $0c1d
	and #$00ff
	dec A
	tay
L81D54C:
	lda $0c27
	sta $7e3000,X
	inx
	inx
	dey
	bne L81D54C
	lda $0c29
	sta $7e3000,X
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
	sta $7e3000,X
	inx
	inx
	lda $0c1d
	and #$00ff
	dec A
	tay
L81D583:
	lda $0c2d
	sta $7e3000,X
	inx
	inx
	dey
	bne L81D583
	lda $0c2f
	sta $7e3000,X
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

L81D5E1:
	php
	rep #$20
	jsr L81D633
	clc
	lda $0b64
	beq L81D5F2
	jsr L81D663
	bra L81D5F5
L81D5F2:
	jsr L81D677
L81D5F5:
	bcs L81D5FC
	lda $0b66
	beq L81D604
L81D5FC:
	lda $0b66
	jsr L81D663
	bra L81D607
L81D604:
	jsr L81D677
L81D607:
	bcs L81D60E
	lda $0b68
	beq L81D616
L81D60E:
	lda $0b68
	jsr L81D663
	bra L81D619
L81D616:
	jsr L81D677
L81D619:
	bcs L81D620
	lda $0b6a
	beq L81D628
L81D620:
	lda $0b6a
	jsr L81D663
	bra L81D62B
L81D628:
	jsr L81D677
L81D62B:
	lda $0b6c
	jsr L81D663
	plp
	rtl

L81D633:
	tay
	lda #$000a
	jsl L81D718
	sty $0b6c
	tay
	lda #$000a
	jsl L81D718
	sty $0b6a
	tay
	lda #$000a
	jsl L81D718
	sty $0b68
	tay
	lda #$000a
	jsl L81D718
	sty $0b66
	sta $0b64
	rts

L81D663:
	clc
	adc #$2500
	sta $7e3000,X
	clc
	adc #$0010
	sta $7e3040,X
	inx
	inx
	sec
	rts

L81D677:
	lda #$20fe
	sta $7e3000,X
	sta $7e3040,X
	inx
	inx
	clc
	rts

L81D686:
	php
	rep #$20
	jsr L81D633
	lda $0b66
	beq L81D695
	sec
	jmp L81D5F5
L81D695:
	clc
	jmp L81D5F5

L81D699:
	php
	rep #$20
	jsr L81D633
	lda $0b68
	beq L81D6A8
	sec
	jmp L81D607
L81D6A8:
	clc
	jmp L81D607

L81D6AC:
	php
	rep #$20
	and #$00ff
	jsr L81D633
	lda $0b6a
	beq L81D6BE
	sec
	jmp L81D619
L81D6BE:
	clc
	jmp L81D619

L81D6C2:
	php
	rep #$20
	lda #bank100(L81D6D5)
	sta $01
	lda #L81D6D5
	sta $00
	jsl L808EAD
	plp
	rts

L81D6D5:
.db $02 $00 $30 $7E $00 $08 $80 $00
.db $48

L81D6DE:
	php
	sep #$20
	lda $074a
	sta $0c17
	lda #$04
	sta $074a
	inc $0c1a
	rep #$20
	lda #$0000
	sta $50
	plp
	rts

L81D6F8:
	php
	rep #$20
	phx
	and #$00ff
	asl
	tax
	lda.l L81D70C,X
	jsl L80B467
	plx
	plp
	rtl

L81D70C:
.dw $002C
.dw $007C
.dw $00BE
.dw $002A
.dw $002B
.dw $002D

L81D718:
	php
	sep #$20
	sty $4204
	sta $4206
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	rep #$20
	lda $4214
	ldy $4216
	plp
	rtl

L81D733:
	php
	rep #$20
	cmp #$0100
	bcs L81D753
	cpy #$0100
	bcs L81D753
	sep #$30
	sta $4202
	sty $4203
	nop
	nop
	nop
	nop
	rep #$30
	lda $4216
	plp
	rtl

L81D753:
	cmp #$0000
	beq L81D75D
	cpy #$0000
	bne L81D762
L81D75D:
	lda #$0000
	plp
	rtl

L81D762:
	sty $15
	cmp $15
	bcs L81D76F
	sty $15
	tay
	lda $15
	bra L81D771
L81D76F:
	sta $15
L81D771:
	dey
	beq L81D779
	clc
	adc $15
	bra L81D771
L81D779:
	plp
	rtl

L81D77B:
	php
	sep #$20
	lda $0c0e
	cmp #$ff
	bne L81D787
	plp
	rtl

L81D787:
	phb
	lda #$81
	pha
	plb
	rep #$20
	lda $0c07
	pha
	lda $0c05
	pha
L81D796:
	ldx $50
	lda $0c05
	asl
	asl
	asl
	sta $0210,X
	lda $0c08
	sta $0212,X
	txa
	lsr
	lsr
	lsr
	lsr
	tax
	lda $50
	lsr
	lsr
	and #$0003
	tay
	sep #$20
	lda $0410,X
	ora L81D7EE,Y
	sta $0410,X
	inc $0c06
	inc $0c06
	dec $0c07
	beq L81D7D7
	rep #$20
	lda $50
	clc
	adc #$0004
	sta $50
	bra L81D796
L81D7D7:
	rep #$20
	lda $50
	clc
	adc #$0004
	sta $50
	sta $52
	pla
	sta $0c05
	pla
	sta $0c07
	plb
	plp
	rtl

L81D7EE:
.db $02 $08 $20 $80

L81D7F2:
	rep #$20
	sta $15
	lda $0129
	ldy #$0000
	bit #$0800
	bne L81D83D
	ldy #$0002
	bit #$0400
	bne L81D83D
	ldy #$0004
	bit #$0200
	bne L81D83D
	ldy #$0006
	bit #$0100
	bne L81D83D
	lda $0127
	ldy #$000c
	bit #$0040
	bne L81D83D
	ldy #$0008
	bit #$0080
	bne L81D83D
	ldy #$000a
	bit #$8000
	bne L81D83D
	ldy #$000e
	bit #$4000
	bne L81D83D
	rts

L81D83D:
	lda ($15),Y
	sta $0c31
	jmp ($0c31)

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
	jsl L81D35F
	jsl L81D4EE
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
	jsl L81D98A
	pla
	clc
	adc #$58D0
	tax
	ldy #$4420
	lda #$0010
	jsl L81D98A
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
	jsl L81D98A
	pla
	clc
	adc #$58D0
	tay
	ldx #$4420
	lda #$0010
	jsl L81D98A
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
	lda #bank100(L94B800)
	sta $01
	lda #L94B800
	sta $00
	ldx #$0C00
	ldy #$6400
	jsr L81D289
	jsl L8087EA
	lda #bank100(L94C400)
	sta $01
	lda #L94C400
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

L81D9A8:
	php
	rep #$20
	pha
	phx
	phy
	lda $00
	pha
	lda $01
	pha
	jsr L81D6C2
	jsl L8087EA
	pla
	sta $01
	pla
	sta $00
	ply
	plx
	pla
	plp
	rtl

L81D9C6:
	php
	rep #$20
	ldx #$0000
L81D9CC:
	lda $7F5030,X
	and #$00FF
	cmp #$00FF
	beq L81D9E1
	inx
	inx
	cpx #$0100
	bne L81D9CC
	bra L81DA0B
L81D9E1:
	lda $7F5032,X
	sta $7F5030,X
	inx
	inx
	cpx #$0100
	bne L81D9E1
	ldx #$00FE
	lda #$FFFF
	sta $7F5030,X
	sep #$20
	ldx #$0000
L81D9FF:
	lda $7F5030,X
	cmp #$FF
	beq L81DA0B
	inx
	inx
	bra L81D9FF
L81DA0B:
	stx $0BDB
	plp
	rtl

L81DA10:
	php
	rep #$20
	and #$00FF
	pha
	lda #$0907
	sta $0C1B
	lda #$0812
	sta $0C1D
	lda #$0000
	jsl L81D35F
	jsl L81D4EE
	ldy #$0001
	pla
	ldx #$0312
	ldy #$DF58
	jsl L81E21F
	lda #$0003
	ldx #$0322
	ldy #$B522
	jsl L81E21F
	lda #$0060
	sta $0B9E
	lda #bank100(L81D6D5)
	sta $01
	lda #L81D6D5
	sta $00
	jsl L808EAD
L81DA5D:
	jsl L8087EA
	dec $0B9E
	bne L81DA5D
	lda #$0904
	sta $0C1B
	lda #$0818
	sta $0C1D
	lda #$0001
	jsl L81D35F
	jsl L81D4EE
	lda #bank100(L81D6D5)
	sta $01
	lda #L81D6D5
	sta $00
	jsl L808EAD
	jsl L8087EA
	plp
	rtl

L81DA91:
	php
	rep #$20
	sta $0BA7
	sta $0BA4
	lda #$0A09
	sta $0BA1
	jsr L8196F8
	lda #$0001
	sta $0BA7
	jsr L81D6C2
L81DAAC:
	jsl L809374
	lda $0129
	and #$0300
	bne L81DAC7
	lda $0127
	bit #$0080
	bne L81DB17
	bit #$8000
	bne L81DAFB
	bra L81DAAC
L81DAC7:
	sep #$20
	lda $0BA7
	bne L81DAD9
	lda $0BB5
	clc
	adc #$07
	sta $0BB5
	bra L81DAE2
L81DAD9:
	lda $0BB5
	sec
	sbc #$07
	sta $0BB5
L81DAE2:
	lda $0BA7
	eor #$01
	sta $0BA7
	jsl L81D2C6
	ldx $0BB5
	stx $0BB3
	jsr L81D6C2
	rep #$20
	bra L81DAAC
L81DAFB:
	sep #$20
	lda #$00
	sta $0C0A
	ldx #$0000
	stx $50
	stx $52
	jsl L80954E
	jsl L81D853
	jsl L809374
	plp
	rtl
L81DB17:
	sep #$20
	lda $0BA7
	bne L81DAFB
	lda $0BA1
	sta $0C1B
	lda $0BA2
	clc
	adc #$08
	sta $0C1C
	jsl L81D5A8
	ldx $15
	ldy #$A9BC
	lda #$05
	jsl L81E21F
	inc $0C1B
	inc $0C1C
	jsl L81D5A8
	ldx $15
	ldy #$DF58
	lda $0BA4
	jsl L81E21F
	jsr L81D6C2
	rep #$20
	lda #$00BE
	jsl L80AA16
	sep #$20
	jsl L809374
	lda #$20
	sta $0B9E
L81DB69:
	jsl L809374
	dec $0B9E
	bne L81DB69
	lda #$01
	sta $0C0A
	ldx #$0000
	stx $50
	stx $52
	jsl L80954E
	jsl L81D853
	jsr L81D6C2
	jsl L809374
	plp
	rtl

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

L81DBCC:
	ldx #$0000
	ldy #$0000
	lda #$0080
	sta $17
L81DBD7:
	lda $88a6f1,X
	and #$00ff
	xba
	sta $15
	tya
	lsr
	and #$00ff
	ora $15
	sta $5030,Y
	txa
	clc
	adc #$000e
	tax
	iny
	iny
	dec $17
	bne L81DBD7
	dey
	dey
	lda #$0100
	sta $5030,Y
	rts

L81DC00:
	php
	rep #$20
	stz $91
	stz $93
	jsl L81D853
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
	jsl L81D35F
	jsl L81D4EE
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
	jsl L81D5A8
	ldx $15
	ldy #$F48E
	pla
	jsl L81E21F
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
	jsl L81E21F
L81DC82:
	jsr L81D6C2
	plp
	rtl

L81DC87:
	php
	sep #$20
	lda $08F2
	jsl L83D912
	jsl L81D901
	lda $08ED
	jsl L83D912
	lda $08F0
	cmp #$12
	beq L81DCA7
	lda #$01
	bra L81DCA9
L81DCA7:
	lda #$00
L81DCA9:
	sta $0C14
	lda #$00
	sta $0B1E
	plp
L81DCB2:
	php
	sep #$20
	stz $0C13
	ldx #$0000
	stx $50
	stx $52
	jsl L81E46B
	lda $0C14
	and #$FF
	bne L81DCCE
	lda #$20
	bra L81DCD0
L81DCCE:
	lda #$28
L81DCD0:
	sta $0B29
	ldy #$6000
	lda $7F4417
	jsl L81D12B
	ldy #$0000
	jsl L81D14D
	jsl L8087EA
	ldy #$6400
	lda $0B85
	jsl L81D12B
	ldy #$0001
	jsl L81D14D
	jsl L8087EA
	jsl L81D853
	sep #$20
	lda #$81
	sta $5C
	lda $0C14
	sta $0C16
	rep #$20
	lda #$7F00
	sta $0D
	lda #$4400
	clc
	adc $0B29
	sta $0C
	ldx #$0301
	stx $0C1B
	lda #$0000
	sta $5E
	lda #$0000
	jsl L81CB0B
	ldx $0F9F
	stx $0B20
	jsl L81D901
	sep #$20
	lda #$82
	sta $5C
	ldx #$0F01
	stx $0C1B
	ldx #$0040
	stx $5E
	lda #$01
	jsl L81CB0B
	ldx $0F9F
	stx $0B22
	jsl L81D901
	ldx $50
	stx $52
	stx $0B27
	jsr L81DF6F
	lda $0B1E
	cmp #$02
	beq L81DD76
	cmp #$01
	beq L81DD73
	jmp L81DE1E

L81DD73:
	jmp L81DD79

L81DD76:
	jmp L81DDCC

L81DD79:
	rep #$20
	lda $0B25
	and #$00FF
	xba
	asl A
	clc
	adc #$1010
	sta $0B2D
	lda $0C14
	and #$00FF
	beq L81DD9C
	lda $0B2D
	clc
	adc #$0100
	sta $0B2D
L81DD9C:
	sep #$20
	jsr L81E1F1
	jsr L81DFF8
	bcc L81DDAC
	jsr L81DFBF
	jmp L81DDB2
L81DDAC:
	jsr L81DE89
	jsr L81DFBF
L81DDB2:
	jsr L81E023
	bcc L81DDBA
	brl L81DE40
L81DDBA:
	jsr L81DFF8
	bcc L81DDC4
	jsr L81DFBF
	bra L81DDB2
L81DDC4:
	jsr L81DE89
	jsr L81DFBF
	bra L81DDB2

L81DDCC:
	rep #$20
	lda $0B24
	and #$00FF
	xba
	asl A
	clc
	adc #$0410
	sta $0B2B
	lda $0C14
	and #$00FF
	beq L81DDEF
	lda $0B2B
	clc
	adc #$0100
	sta $0B2B
L81DDEF:
	sep #$20
	jsr L81E1DA
	jsr L81E023
	bcc L81DDFF
	jsr L81DFBF
	jmp L81DE05
L81DDFF:
	jsr L81DE89
	jsr L81DFBF
L81DE05:
	jsr L81DFF8
	bcc L81DE0C
	bra L81DE40
L81DE0C:
	jsr L81E023
	bcc L81DE16
	jsr L81DFBF
	bra L81DE05

L81DE16:
	jsr L81DE89
	jsr L81DFBF
	bra L81DE05

L81DE1E:
	lda #$00
	sta $0B24
	sta $0B25
L81DE26:
	jsr L81E023
	bcc L81DE2E
	jmp L81DE40
L81DE2E:
	jsr L81DFF8
	bcc L81DE38
	jsr L81DFBF
	bra L81DE26
L81DE38:
	jsr L81DE89
	jsr L81DFBF
	bra L81DE26
L81DE40:
	lda $0B1E
	cmp #$02
	beq L81DE71
	cmp #$01
	beq L81DE71
	lda $08ED
	jsl L83D969
	jsl L81D901
	lda $08F2
	jsl L83D969
	jsl L81D853
	ldx #$0000
	stx $50
	stx $52
	jsl L80954E
	jsr L81D6C2
	plp
	rtl
L81DE71:
	jsr L81D8E0
	jsl L81D8AE
	jsl L81D901
	jsr L81D8E0
	jsl L81D8AE
	jsl L81D901
	plp
	rtl

L81DE89:
	php
	sep #$20
	lda #$01
	sta $0C13
	jsl L81E46B
	rep #$20
	lda #$7F00
	sta $0D
	lda $0B24
	and #$00FF
	clc
	adc $0B29
	clc
	adc #$4400
	sta $0C
	lda #$0000
	sta $10
	lda $0B25
	and #$00FF
	clc
	adc $0B29
	clc
	adc #$0B6E
	sta $0F
	sep #$20
	ldy #$0004
	lda [$0C]
	sta $15
	lda [$0C],Y
	sta $16
	lda [$0F]
	sta [$0C]
	lda [$0F],Y
	sta [$0C],Y
	lda $15
	sta [$0F]
	lda $16
	sta [$0F],Y
	jsl L81979B
	jsl L81D901
	jsl L81979B
	jsl L81D901
	rep #$20
	lda #$7F00
	sta $0D
	lda #$4400
	clc
	adc $0B29
	sta $0C
	lda #$0412
	sta $0C1B
	lda $0B20
	sta $50
	sta $52
	lda #$0000
	jsl L81C8E3
	jsl L81D901
	lda #$1012
	sta $0C1B
	lda $0B22
	sta $50
	sta $52
	lda #$0001
	jsl L81C8E3
	jsl L81D901
	sep #$20
	ldx $0BB5
	phx
	ldx $0B2B
	stx $0BB5
	stx $0BB3
	lda #$FF
	sta $0C11
	jsl L81D2C6
	ldx $0B2D
	stx $0BB5
	stx $0BB3
	lda #$FF
	sta $0C11
	jsl L81D2C6
	plx
	stx $0BB5
	stx $0BB3
	jsr L81DF6F
	ldx $0B27
	stx $50
	stx $52
	jsl L809374
	plp
	rts

L81DF6F:
	php
	rep #$20
	lda #$7F00
	sta $0D
	lda #$4400
	clc
	adc $0B29
	sta $0C
	lda #$0000
	sta $10
	lda #$0B6E
	clc
	adc $0B29
	sta $0F
	sep #$20
	ldy #$0000
	ldx #$0000
L81DF96:
	lda [$0C],Y
	sta $0B36,X
	iny
	inx
	cpx #$0004
	bne L81DF96
	ldy #$0000
L81DFA5:
	lda [$0F],Y
	sta $0B36,X
	iny
	inx
	cpx #$0008
	bne L81DFA5
	lda #$FE
	sta $0B36,X
	ldy #$7E00
	jsl L81E486
	plp
	rts

L81DFBF:
	php
	rep #$20
	lda $0BB5
	pha
	lda $0BB3
	pha
	lda #$0410
	sta $0BB3
	lda #$0610
	sta $0BB5
L81DFD6:
	jsl L81D2C6
	inc $0BB4
	inc $0BB4
	inc $0BB6
	inc $0BB6
	lda $0BB5
	cmp #$1C10
	bne L81DFD6
	pla
	sta $0BB3
	pla
	sta $0BB5
	plp
	rts

L81DFF8:
	php
	rep #$20
	lda #$0410
	sta $0B5D
	lda #$0A10
	sta $0B5F
	lda $0B24
	and #$00FF
	asl A
	xba
	clc
	adc #$0410
	sta $0BB5
	sta $0BB3
	sep #$20
	lda #$00
	sta $0B1F
	plp
	bra L81E091

L81E023:
	php
	rep #$20
	lda #$1010
	sta $0B5D
	lda #$1610
	sta $0B5F
	lda $0B25
	and #$00FF
	asl A
	xba
	clc
	adc #$1010
	sta $0BB5
	sta $0BB3
	sep #$20
	lda #$01
	sta $0B1F
	plp
	bra L81E091

L81E04E:
	php
	rep #$20
	lda $0C14
	and #$00FF
	bne L81E05E
	lda #$0020
	bra L81E061
L81E05E:
	lda #$0028
L81E061:
	sta $0B29
	lda #$0210
	sta $0B5D
	lda #$0810
	sta $0B5F
	lda $0B26
	and #$00FF
	asl A
	xba
	clc
	adc #$0210
	sta $0BB5
	sta $0BB3
	sep #$20
	lda #$02
	sta $0B1F
	ldx $50
	stx $0B27
	plp
	bra L81E091
L81E091:
	php
	rep #$20
	lda $0C14
	and #$00FF
	beq L81E0A8
	inc $0B5E
	inc $0B60
	inc $0BB6
	inc $0BB4
L81E0A8:
	jsl L81D2C6
	jsr L81D6C2
L81E0AF:
	rep #$20
	ldx $0B27
	stx $50
	stx $52
	jsl L809374
	lda $0129
	bit #$0800
	bne L81E0DD
	bit #$0400
	bne L81E0F5
	lda $0127
	bit #$0040
	bne L81E11C
	bit #$8000
	bne L81E150
	bit #$0080
	bne L81E153
	bra L81E0AF
L81E0DD:
	lda $0BB5
	cmp $0B5D
	beq L81E0ED
	dec $0BB6
	dec $0BB6
	bra L81E10D
L81E0ED:
	lda $0B5F
	sta $0BB5
	bra L81E10D
L81E0F5:
	lda $0BB5
	cmp $0B5F
	beq L81E105
	inc $0BB6
	inc $0BB6
	bra L81E10D
L81E105:
	lda $0B5D
	sta $0BB5
	bra L81E10D
L81E10D:
	jsl L81D2C6
	lda $0BB5
	sta $0BB3
	jsr L81D6C2
	bra L81E0AF
L81E11C:
	sep #$20
	jsr L81E191
	cmp #$FF
	beq L81E14D
	pha
	lda $0B1F
	cmp #$02
	beq L81E13B
	cmp #$01
	beq L81E136
	ldx #$0202
	bra L81E13E
L81E136:
	ldx #$0E02
	bra L81E13E
L81E13B:
	ldx #$0102
L81E13E:
	stx $0B30
	pla
	ldx $0B27
	stx $50
	stx $52
	jsl L81E6A6
L81E14D:
	brl L81E0AF
L81E150:
	plp
	sec
	rts
L81E153:
	sep #$20
	jsr L81E191
	cmp #$3D
	beq L81E160
	cmp #$3F
	bne L81E169
L81E160:
	lda #$08
	jsl L81E3E6
	brl L81E0AF
L81E169:
	lda $0B1F
	and #$FF
	cmp #$02
	beq L81E18E
	cmp #$01
	beq L81E182
	tya
	sta $0B24
	ldx $0BB5
	stx $0B2B
	bra L81E18E
L81E182:
	tya
	sta $0B25
	ldx $0BB5
	stx $0B2D
	bra L81E18E
L81E18E:
	plp
	clc
	rts

L81E191:
	php
	rep #$20
	lda $0B1F
	and #$00FF
	cmp #$0002
	beq L81E1C4
	cmp #$0001
	beq L81E1B4
L81E1A4:
	lda #$7F00
	sta $0D
	lda #$4400
	clc
	adc $0B29
	sta $0C
	bra L81E1C6
L81E1B4:
	lda #$0000
	sta $0D
	lda #$0B6E
	clc
	adc $0B29
	sta $0C
	bra L81E1C6
L81E1C4:
	bra L81E1A4
L81E1C6:
	lda $0BB5
	sec
	sbc $0B5D
	xba
	and #$00FF
	lsr A
	tay
	lda [$0C],Y
	and #$00FF
	plp
	rts

L81E1DA:
	php
	rep #$20
	lda $0B24
	and #$00FF
	asl A
	xba
	clc
	adc #$0410
	sta $0BB5
	sta $0BB3
	bra L81E208

L81E1F1:
	php
	rep #$20
	lda $0B25
	and #$00FF
	asl A
	xba
	clc
	adc #$1010
	sta $0BB5
	sta $0BB3
	bra L81E208
L81E208:
	lda $0C14
	and #$00FF
	beq L81E216
	inc $0BB6
	inc $0BB4
L81E216:
	jsl L81D2C6
	jsr L81D6C2
	plp
	rts

L81E21F:
	php
	rep #$20
	pha
	lda #$8B00
	sta $01
	sty $00
	pla
	and #$00FF
	asl A
	clc
	adc $00
	sta $00
	lda [$00]
	sta $00
	stx $17
	lda #$7E00
	sta $04
	lda #$3000
	clc
	adc $17
	sta $03
	ldy #$0000
L81E24A:
	lda [$00],Y
	cmp #$FFFD
	beq L81E27C
	cmp #$FFFE
	beq L81E28E
	cmp #$FFFF
	beq L81E2A0
	phy
	asl A
	asl A
	tax
	lda $8B9AF8,X
	sta [$03]
	lda $8B9AFA,X
	cmp #$FFFF
	beq L81E273
	ldy #$0040
	sta [$03],Y
L81E273:
	ply
	iny
	iny
	inc $03
	inc $03
	bra L81E24A
L81E27C:
	lda $17
	clc
	adc #$0080
	sta $17
	clc
	adc #$3000
	sta $03
	iny
	iny
	bra L81E24A
L81E28E:
	lda $17
	clc
	adc #$0040
	sta $17
	clc
	adc #$3000
	sta $03
	iny
	iny
	bra L81E24A
L81E2A0:
	lda $03
	sec
	sbc #$3000
	pha
	dey
	dey
	lda [$00],Y
	asl A
	asl A
	tax
	lda $8B9AFA,X
	cmp #$FFFF
	bne L81E2C1
	lda $17
	clc
	adc #$0040
	sta $17
	bra L81E2C9
L81E2C1:
	lda $17
	clc
	adc #$0080
	sta $17
L81E2C9:
	plx
	plp
	rtl

L81E2CC:
	php
	rep #$20
	and #$00FF
	pha
	phx
	phy
	jsl L81D5A8
	ldx $15
	ply
	pla
	jsl L81E21F
	sep #$20
	lda $0C1B
	sta $0B5D
	sta $0B5F
	lda $0C1C
	inc A
	sta $0B5E
	plx
	phx
	txa
	dec A
	asl A
	clc
	adc $0B5E
	sta $0B60
	ldx $0B5D
	stx $0C05
	ldx #$3187
	stx $0C08
	plx
	txa
	sta $0C07
	jsl L81D77B
	plp
	jmp L81E318

L81E318:
	php
	sep #$20
	stz $0B63
	jsr L81E330
	bra L81E34F

L81E323:
	php
	sep #$20
	lda #$01
	sta $0B63
	jsr L81E330
	bra L81E34F

L81E330:
	lda $0B61
	asl A
	clc
	adc $0B5E
	sta $0BB6
	sta $0BB4
	lda $0B5D
	sta $0BB5
	sta $0BB3
	jsl L81D2C6
	jmp L81D6C2
L81E34E:
	php
L81E34F:
	rep #$20
	jsl L809374
	lda $0129
	bit #$0800
	bne L81E385
	bit #$0400
	bne L81E39E
	lda $0127
	bit #$0080
	bne L81E3C1
	bit #$8000
	bne L81E3B7
	bit #$0040
	bne L81E3D4
	bra L81E34F
L81E376:
	jsl L81D2C6
	ldx $0BB5
	stx $0BB3
	jsr L81D6C2
	bra L81E34F
L81E385:
	lda $0BB5
	cmp $0B5D
	beq L81E396
	sec
	sbc #$0200
	sta $0BB5
	bra L81E376
L81E396:
	lda $0B5F
	sta $0BB5
	bra L81E376
L81E39E:
	lda $0BB5
	cmp $0B5F
	beq L81E3AF
	clc
	adc #$0200
	sta $0BB5
	bra L81E376
L81E3AF:
	lda $0B5D
	sta $0BB5
	bra L81E376
L81E3B7:
	sep #$20
	lda #$FF
	sta $0B62
	plp
	clc
	rtl
L81E3C1:
	sep #$20
	lda $0BB6
	sec
	sbc $0B5E
	lsr A
	sta $0B62
	sta $0B61
	plp
	clc
	rtl
L81E3D4:
	sep #$20
	lda $0B63
	bne L81E3DE
	jmp L81E34F
L81E3DE:
	lda #$FF
	sta $0B62
	plp
	sec
	rtl

L81E3E6:
	php
	rep #$20
	pha
	lda #$000B
	sta $0B01
	pla
	plp
	bra L81E402

L81E3F4:
	php
	rep #$20
	pha
	lda #$0011
	sta $0B01
	pla
	plp
	bra L81E402

L81E402:
	php
	rep #$20
	and #$00FF
	pha
	lda #$0006
	ldx $0B01
	ldy #$0000
	jsl L87A9A3
	sep #$20
	ldx $0C1B
	phx
	lda #$07
	sta $0C1B
	lda $0B01
	sta $0C1C
	jsl L81D5A8
	plx
	stx $0C1B
	ldx $15
	rep #$20
	ldy #$AE94
	pla
	clc
	adc #$0004
	jsl L81E21F
	lda #$00BE
	jsl L80AA16
	jsr L81D6C2
L81E449:
	jsl L8087EA
	lda $0127
	bit #$8000
	beq L81E449
	lda #$0006
	ldx $0B01
	ldy #$0001
	jsl L87A9A3
	jsr L81D6C2
	jsl L8087EA
	plp
	rtl

L81E46B:
	php
	sep #$20
	lda #$01
	sta $0C10
	plp
	rtl

L81E475:
	php
	sep #$20
	stz $0C10
	plp
	rtl

L81E47D:
	php
	sep #$20
	stz $0B56
	plp
	bra L81E48F

L81E486:
	php
	sep #$20
	lda #$01
	sta $0B56
	plp
L81E48F:
	php
	jsl L81E46B
	phb
	sep #$20
	lda #$81
	pha
	plb
	rep #$20
	phy
	stz $0B34
L81E4A1:
	ldx $0B34
	lda $0B36,X
	and #$00FF
	cmp #$00FE
	beq L81E4B7
	jsr L81E501
	inc $0B34
	bra L81E4A1
L81E4B7:
	ldy $0B34
	bne L81E4BF
	ldy #$0001
L81E4BF:
	lda #$0008
	jsl L81D718
	cpy #$0000
	beq L81E4CC
	inc A
L81E4CC:
	ldy #$0400
	jsl L81D733
	pha
	jsl L8087EA
	lda $0B56
	and #$00FF
	beq L81E4E7
	jsr L81D6C2
	jsl L81E475
L81E4E7:
	lda #$7E00
	sta $01
	lda #$40FE
	sta $00
	plx
	ply
	jsr L81D289
	jsl L8087EA
	jsl L81E475
	plb
	plp
	rtl

L81E501:
	cmp #$00FF
	bne L81E512
	lda #bank100(L94A820)
	sta $01
	lda #L94A820
	sta $00
	bra L81E534
L81E512:
	pha
	lda #$9300
	sta $01
	pla
	ldy #$000E
	jsl L81D733
	tax
	lda.l (ITEMS_DATA + 1),X
	and #$00FF
	asl A
	asl A
	asl A
	asl A
	asl A
	asl A
	clc
	adc #$8000
	sta $00
L81E534:
	ldy $0B34
	lda $E5BB,Y
	and #$00FF
	asl A
	asl A
	asl A
	asl A
	asl A
	asl A
	tax
	lda $00
	sta $15
	stx $17
	jsr L81E55C
	lda $15
	clc
	adc #$0200
	sta $00
	lda $17
	clc
	adc #$0200
	tax
L81E55C:
	lda #$0004
	sta $0BDD
	ldy #$0000
L81E565:
	lda [$00],Y
	sta $7E40FE,X
	iny
	iny
	inx
	inx
	lda [$00],Y
	sta $7E40FE,X
	iny
	iny
	inx
	inx
	lda [$00],Y
	sta $7E40FE,X
	iny
	iny
	inx
	inx
	lda [$00],Y
	sta $7E40FE,X
	iny
	iny
	inx
	inx
	lda [$00],Y
	sta $7E40FE,X
	iny
	iny
	inx
	inx
	lda [$00],Y
	sta $7E40FE,X
	iny
	iny
	inx
	inx
	lda [$00],Y
	sta $7E40FE,X
	iny
	iny
	inx
	inx
	lda [$00],Y
	sta $7E40FE,X
	iny
	iny
	inx
	inx
	dec $0BDD
	bne L81E565
	rts

L81E5BB:
.db $00 $01 $02 $03 $04 $05 $06 $07
.db $10 $11 $12 $13 $14 $15 $16 $17
.db $20 $21 $22 $23 $24 $25 $26 $27
.db $30 $31 $32 $33 $34 $35 $36 $37
.db $40 $41 $42 $43 $44 $45 $46 $47
.db $50 $51 $52 $53 $54 $55 $56 $57
.db $60 $61 $62 $63 $64 $65 $66 $67
.db $70 $71 $72 $73 $74 $75 $76 $77
.db $80 $81 $82 $83 $84 $85 $86 $87
.db $90 $91 $92 $93 $94 $95 $96 $97
.db $A0 $A1 $A2 $A3 $A4 $A5 $A6 $A7
.db $B0 $B1 $B2 $B3 $B4 $B5 $B6 $B7
.db $C0 $C1 $C2 $C3 $C4 $C5 $C6 $C7
.db $D0 $D1 $D2 $D3 $D4 $D5 $D6 $D7
.db $E0 $E1 $E2 $E3 $E4 $E5 $E6 $E7
.db $F0 $F1 $F2 $F3 $F4 $F5 $F6 $F7

L81E63B:
	php
	jsl L81E46B
	sep #$20
	lda #$01
	sta $0B56
	phb
	lda #$81
	pha
	plb
	rep #$20
	phy
	stz $0B34
L81E652:
	ldx $0B34
	lda $0B36,X
	and #$00FF
	cmp #$00FE
	beq L81E668
	jsr L81E501
	inc $0B34
	bra L81E652
L81E668:
	ldy $0B34
	bne L81E670
	ldy #$0001
L81E670:
	lda #$0008
	jsl L81D718
	cpy #$0000
	beq L81E67D
	inc A
L81E67D:
	ldy #$0400
	jsl L81D733
	pha
	jsr L81D6C2
	jsl L8087EA
	jsl L81E475
	lda #$7E00
	sta $01
	lda #$40FE
	sta $00
	plx
	ply
	jsr L81D289
	jsl L8087EA
	plb
	plp
	rtl

L81E6A6:
	php
	sep #$20
	sta $0B2F
	cmp #$FF
	bne L81E6B2
	plp
	rtl

L81E6B2:
	lda $0BB5
	cmp #$0F
	bcs L81E6BE
	ldx $0B32
	bra L81E6C1
L81E6BE:
	ldx $0B30
L81E6C1:
	stx $0C1B
	rep #$20
	lda $0C1C
	and #$00FF
	tax
	ldy #$0000
	lda #$000C
	jsl L87A9A3
	jsl L81E717
	lda #$0005
	jsl L81D6F8
	jsr L81D6C2
L81E6E5:
	jsl L809374
	lda $0127
	bit #$8000
	bne L81E6F6
	bit #$0040
	beq L81E6E5
L81E6F6:
	lda $0C1C
	and #$00FF
	tax
	ldy #$0001
	lda #$000C
	jsl L87A9A3
	lda #$0002
	jsl L81D6F8
	jsr L81D6C2
	jsl L809374
	plp
	rtl

L81E717:
	php
	sep #$20
	ldx $0C1B
	phx
	lda $0C04
	pha
	ldx #$0C0D
	stx $0C1D
	lda #$04
	jsl L81D35F
	jsl L81D4EE
	lda #$28
	sta $0C04
	lda $0B2F
	jsl L819770
	bcc L81E762
	inc $0C1B
	inc $0C1C
	jsl L81D5A8
	ldx $15
	ldy #$E724
	lda $0B2F
	jsl L81E21F
L81E756:
	sep #$20
	pla
	sta $0C04
	plx
	stx $0C1B
	plp
	rtl

L81E762:
	lda $0B2F
	xba
	lda #$0E
	rep #$20
	sta.l $004202
	nop
	nop
	nop
	lda.l $004216
	sep #$20
	rep #$20
	sta $0BA7
	inc $0C1B
	inc $0C1C
	jsl L81D5A8
	ldx $15
	lda $15
	clc
	adc #$000C
	sta $0BA4
	ldy #$E724
	lda #$0000
	jsl L81E21F
	lda #$0000
	sta $15
	ldx $0BA7
	lda $88A6EC,X
	jsr L81E7E9
	lda #$0080
	sta $15
	ldx $0BA7
	lda $88A6ED,X
	jsr L81E7E9
	lda #$0100
	sta $15
	ldx $0BA7
	lda $88A6EF,X
	jsr L81E7E9
	lda #$0180
	sta $15
	ldx $0BA7
	lda $88A6EE,X
	jsr L81E7E9
	lda #$0200
	sta $15
	ldx $0BA7
	lda $88A6EB,X
	jsr L81E7E9
	jmp L81E756

L81E7E9:
	rep #$20
	and #$00FF
	pha
	lda $0BA4
	clc
	adc $15
	tax
	pla
	and #$00FF
	bit #$0080
	bne L81E805
	jsl L81D699
	bra L81E821
L81E805:
	lda #$20FE
	sta $7E3002,X
	sta $7E3004,X
	lda #$24F9
	sta $7E3042,X
	sta $7E3044,X
	inx
	inx
	inx
	inx
	inx
	inx
L81E821:
	inx
	inx
	rts

L81E824:
	php
	sep #$20
	lda $0C00
	cmp #$01
	beq L81E84B
	cmp $0BFF
	beq L81E882
	rep #$20
	ldx $0B04
	lda #$A4FA
	sta $7E3000,X
	ldx $0B06
	lda #$24FA
	sta $7E3000,X
	bra L81E898
L81E84B:
	sep #$20
	cmp $0BFF
	beq L81E86A
	rep #$20
	ldx $0B04
	lda #$20FE
	sta $7E3000,X
	ldx $0B06
	lda #$24FA
	sta $7E3000,X
	bra L81E898
L81E86A:
	rep #$20
	ldx $0B04
	lda #$20FE
	sta $7E3000,X
	ldx $0B06
	lda #$20FE
	sta $7E3000,X
	bra L81E898
L81E882:
	rep #$20
	ldx $0B04
	lda #$A4FA
	sta $7E3000,X
	ldx $0B06
	lda #$20FE
	sta $7E3000,X
L81E898:
	plp
	rtl

L81E89A:
	php
	sep #$20
	ldx #$0000
	stx $0B9E
	lda $0BB5
	cmp #$02
	beq L81E8AF
	ldx #$020B
	bra L81E8B2
L81E8AF:
	ldx #$0209
L81E8B2:
	stx $0BA1
	rep #$20
	lda $0BA1
	clc
	adc #$0F01
	sta $0BA4
	clc
	adc #$0005
	sta $0BA7
	sta $0BB5
	sta $0BB3
	lda #$0001
	sta $0BB0
	plp
	bra L81E93E

L81E8D7:
	php
	rep #$20
	lda #$0001
	sta $0B9E
	lda #$030A
	sta $0BA1
	clc
	adc #$0D01
	sta $0BA4
	clc
	adc #$0005
	sta $0BA7
	lda $0BA4
	sta $0BB5
	sta $0BB3
	lda #$000B
	sta $0BB0
	plp
	bra L81E93E

L81E906:
	php
	rep #$20
	lda $085D
	jsl L93CBC2
	bcc L81E915
	jmp L81EB23
L81E915:
	lda #$0002
	sta $0B9E
	lda #$0309
	sta $0BA1
	clc
	adc #$0F01
	sta $0BA4
	clc
	adc #$0005
	sta $0BA7
	sta $0BB5
	sta $0BB3
	lda #$000C
	sta $0BB0
	plp
	bra L81E93E
L81E93E:
	php
	rep #$20
	lda #$001A
	ldx #$0001
	ldy #$0000
	jsl L87A9A3
	sep #$20
	ldx #$0000
	stx $0BAD
	ldx $50
	phx
	jsl L81E46B
	jsl L8087EA
	lda #$71
	sta $7F4417
	ldx #$0000
	jsl L81D10F
	jsl L8087EA
	ldx $0BA1
	stx $0C1B
	jsl L81D5A8
	ldx $15
	ldy #$9FEA
	lda $0BB0
	jsl L81E21F
	rep #$20
	jsl L81D2C6
	lda $0BA1
	clc
	adc #$0103
	sta $0C1B
	and #$00FF
	ora #$0800
	sta.l $004202
	nop
	nop
	nop
	lda.l $004216
	sta $56
	lda $0C1C
	and #$00FF
	ora #$0800
	sta.l $004202
	nop
	nop
	nop
	lda.l $004216
	sta $58
	lda #$0003
	sta $5A
	stz $5C
	lda #bank100(L838000)
	sta $63
	lda #L838000
	sta $62
	jsl L8093A2
	ldx $50
	stx $0BAA
	lda $0C07
	and #$FF00
	ora #$0001
	sta $0C07
	lda $0BA4
	sta $0C05
	lda #$3189
	sta $0C08
	jsl L81D77B
	lda $0BA7
	sta $0C05
	lda #$3189
	sta $0C08
	jsl L81D77B
	jsl L81E475
	jsr L81D6C2
L81EA0E:
	jsl L8087EA
	lda $0129
	and #$0300
	bne L81EA29
	lda $0127
	bit #$0080
	bne L81EA82
	bit #$8000
	bne L81EA4E
	bra L81EA0E
L81EA29:
	lda $0BB5
	cmp $0BA4
	beq L81EA39
	lda $0BA4
	sta $0BB5
	bra L81EA3F
L81EA39:
	lda $0BA7
	sta $0BB5
L81EA3F:
	jsl L81D2C6
	lda $0BB5
	sta $0BB3
	jsr L81D6C2
	bra L81EA0E
L81EA4E:
	pla
	sta $50
	sta $52
	jsl L81E46B
	lda #$001A
	ldx #$0001
	ldy #$0001
	jsl L87A9A3
	jsl L80954E
	jsl L81E475
	jsr L81D6C2
	lda $0B9E
	beq L81EA7B
	lda #$00BE
	jsl L80AA16
L81EA7B:
	jsl L8087EA
	plp
	sec
	rtl
L81EA82:
	lda $0BB5
	cmp $0BA7
	beq L81EA4E
	lda $0B9E
	and #$00FF
	asl A
	tax
	lda.l L81EA9B,X
	sta $15
	jmp ($0015)

L81EA9B:
.dw L81EAA1
.dw L81EAFB
.dw L81EAFB

L81EAA1:
	jsl L93C634
	lda $0BA1
	cmp #$020B
	bne L81EAAE
	dec A
L81EAAE:
	clc
	adc #$0A00
	sta $0C1B
	jsl L81D5A8
	ldx $15
	ldy #$9FEA
	lda #$000A
	jsl L81E21F
	lda #$002D
	jsl L80AA16
	jsr L81D6C2
L81EACF:
	jsl L8087EA
	lda $0127
	and #$1000
	bne L81EADD
	bra L81EACF

L81EADD:
	jsl L808CEA
	lda #$00F9
	jsl L80B4E3
	jsl L8087EA
	lda #$00E0
	jsl L80B530
	jsl L8087EA
	jml L80A3F4

L81EAFB:
	rep #$20
	pla
	sta $50
	sta $52
	jsl L81E46B
	jsl L80954E
	jsl L81D853
	jsl L81E475
	jsr L81D6C2
	lda #$002D
	jsl L80AA16
	jsl L8087EA
	plp
	clc
	rtl

L81EB23:
	rep #$20
	lda $50
	pha
	jsl L81E46B
	jsl L8087EA
	lda #$0071
	sta $7F4417
	ldx #$0000
	jsl L81D10F
	jsl L8087EA
	ldx #$0306
	stx $0C1B
	jsl L81D5A8
	ldx $15
	ldy #$9FEA
	lda #$000D
	jsl L81E21F
	lda #$040C
	sta $0C1B
	and #$00FF
	ora #$0800
	sta.l $004202
	nop
	nop
	nop
	lda.l $004216
	sta $56
	lda $0C1C
	and #$00FF
	ora #$0800
	sta.l $004202
	nop
	nop
	nop
	lda.l $004216
	sta $58
	lda #$0003
	sta $5A
	stz $5C
	lda #bank100(L838000)
	sta $63
	lda #L838000
	sta $62
	jsl L8093A2
	lda $50
	sta $52
	jsl L80954E
	jsl L81E475
	jsr L81D6C2
L81EBAB:
	jsl L8087EA
	lda $0127
	bit #$0080
	bne L81EBC3
	bit #$8000
	bne L81EBC3
	bit #$0040
	bne L81EBC3
	bra L81EBAB

L81EBC3:
	pla
	sta $50
	sta $52
	jsl L81E46B
	jsl L80954E
	jsl L81D853
	jsl L81E475
	jsr L81D6C2
	jsl L8087EA
	plp
	sec
	rtl

L81EBE2:
	php
	sep #$20
	sta $0BB0
	xba
	sta $0BB1
	jsl L81E46B
	lda $0BB0
	sta $0B36
	lda #$FE
	sta $0B37
	ldy #$6400
	jsl L81E47D
	jsl L81E46B
	lda #$01
	sta $0C07
	lda $0BB0
	cmp #$3D
	beq L81EC1A
	rep #$20
	lda #$80B2
	sta $0876
L81EC1A:
	sep #$20
	lda $0BB0
	cmp #$3D
	beq L81EC8E
	cmp #$6B
	beq L81EC2B
	cmp #$5C
	bcs L81EC5B
L81EC2B:
	jsr L81ED87
	lda $0BB1
	and #$80
	bne L81EC45
	jsl L81E475
	ldx #$0C10
	jsr L81EDC7
	jsl L8196BD
	plp
	rtl
L81EC45:
	ldx #$0C08
	jsr L81ED3E
	jsl L81E475
	ldx #$1010
	jsr L81EDC7
	jsl L8196BD
	plp
	rtl

L81EC5B:
	jsr L81ED87
	jsr L81ECC5
	lda $0BB1
	and #$80
	bne L81EC78
	jsl L81E475
	ldx #$0E10
	jsr L81EDC7
	jsl L8196BD
	plp
	rtl
L81EC78:
	ldx #$0E08
	jsr L81ED3E
	jsl L81E475
	ldx #$1210
	jsr L81EDC7
	jsl L8196BD
	plp
	rtl

L81EC8E:
	sep #$20
	ldx #$0904
	stx $0C1B
	jsl L81D5A8
	ldx $15
	ldy #$D13A
	lda #$0D
	jsl L81E21F
	ldx #$0A05
	stx $0C05
	ldx #$3640
	stx $0C08
	jsl L81D77B
	jsl L81E475
	ldx #$0C11
	jsr L81EDC7
	jsl L8196BD
	plp
	rtl

L81ECC5:
	php
	sep #$20
	lda $0BB1
	and #$7F
	beq L81ED13
	ldx #$0C08
	stx $0C1B
	jsl L81D5A8
	ldx $15
	ldy #$D13A
	lda $0BB0
	and #$FF
	sec
	sbc #$59
	jsl L81E21F
	rep #$20
	lda $0BB0
	and #$00FF
	sec
	sbc #$005C
	asl A
	tax
	lda.l L81ED2A,X
	sta $0C1B
	jsl L81D5A8
	ldx $15
	lda $0BB1
	and #$007F
	jsl L81D6AC
	sep #$20
	bra L81ED28
L81ED13:
	ldx #$0C08
	stx $0C1B
	jsl L81D5A8
	ldx $15
	ldy #$D13A
	lda #$02
	jsl L81E21F
L81ED28:
	plp
	rts

L81ED2A:
.db $0D $0C $10 $0C $0C $0C $0E $0C
.db $11 $0C $10 $0C $0F $0C $0F $0C
.db $10 $0C $11 $0C

L81ED3E:
	php
	rep #$20
	stx $0C1B
	stx $0BAD
	jsl L81D5A8
	ldx $15
	ldy #$D13A
	lda #$0001
	jsl L81E21F
	lda $0BAD
	clc
	adc #$0003
	sta $0C1B
	jsl L81D5A8
	ldx $15
	ldy #$DF58
	lda $0BB0
	jsl L81E21F
	lda $0BAD
	clc
	adc #$0001
	sta $0C05
	ldx #$3640
	stx $0C08
	jsl L81D77B
	plp
	rts

L81ED87:
	php
	sep #$20
	ldx #$0908
	stx $0C1B
	jsl L81D5A8
	ldx $15
	ldy #$D13A
	lda #$00
	jsl L81E21F
	ldx #$0A0B
	stx $0C1B
	jsl L81D5A8
	ldx $15
	ldy #$DF58
	lda $0BB0
	jsl L81E21F
	ldx #$0A09
	stx $0C05
	ldx #$3640
	stx $0C08
	jsl L81D77B
	plp
	rts

L81EDC7:
	php
	sep #$20
	stx $0F91
	ldx #$318B
	stx $0F8C
	ldx #$A0F1
	stx $0F8A
	ldx #$0100
	lda #$07
	jsl L87AC7B
	plp
	rts

L81EDE4:
	php
	rep #$20
	lda #$0B0A
	sta $0B9E
	jsl L81EE0F
	bcc L81EE01
	lda #$00BE
	jsl L80AA16
	jsl L8087EA
	plp
	sec
	rtl

L81EE01:
	lda #$002D
	jsl L80AA16
	jsl L8087EA
	plp
	clc
	rtl

L81EE0F:
	php
	rep #$20
	jsl L81E46B
	lda $0B9E
	clc
	adc #$0301
	sta $0BA1
	clc
	adc #$0005
	sta $0BA4
	lda $0B9E
	sta $0C1B
	jsl L81D5A8
	ldx $15
	ldy #$B522
	lda #$0002
	jsl L81E21F
	lda $0C07
	and #$FF00
	ora #$0001
	sta $0C07
	lda $0BA1
	sta $0C05
	lda #$3189
	sta $0C08
	jsl L81D77B
	lda $0BA4
	sta $0C05
	jsl L81D77B
	lda $0BA1
	sta $0BB5
	sta $0BB3
	jsl L81D2C6
	jsl L81E475
	jsr L81D6C2
L81EE77:
	jsl L8087EA
	lda $0129
	and #$0300
	bne L81EE92
	lda $0127
	bit #$0080
	bne L81EEB7
	bit #$8000
	bne L81EEB4
	bra L81EE77
L81EE92:
	lda $0BB5
	cmp $0BA1
	beq L81EE9F
	lda $0BA1
	bra L81EEA2
L81EE9F:
	lda $0BA4
L81EEA2:
	sta $0BB5
	jsl L81D2C6
	lda $0BB5
	sta $0BB3
	jsr L81D6C2
	bra L81EE77

L81EEB4:
	plp
	sec
	rtl

L81EEB7:
	lda $0BB5
	cmp $0BA4
	beq L81EEB4
	plp
	clc
	rtl

L81EEC2:
	php
	rep #$20
	phx
	tay
	lda #$0010
	jsl L81D718
	sty $0B6C
	tay
	lda #$0010
	jsl L81D718
	sty $0B6A
	tay
	lda #$0010
	jsl L81D718
	sty $0B68
	tay
	sta $0B66
	lda $0B6C
	asl A
	tax
	lda $81EF49,X
	sta $0B6C
	lda $0B6A
	asl A
	tax
	lda $81EF49,X
	sta $0B6A
	lda $0B68
	asl A
	tax
	lda $81EF49,X
	sta $0B68
	lda $0B66
	asl A
	tax
	lda $81EF49,X
	sta $0B66
	plx
	lda $0B66
	jsr L81EF3C
	inx
	inx
	lda $0B68
	jsr L81EF3C
	inx
	inx
	lda $0B6A
	jsr L81EF3C
	inx
	inx
	lda $0B6C
	jsr L81EF3C
	plp
	rtl

L81EF3C:
	sta $7E3000,X
	clc
	adc #$0010
	sta $7E3040,X
	rts

.db $00 $25 $01 $25 $02 $25 $03 $25
.db $04 $25 $05 $25 $06 $25 $07 $25
.db $08 $25 $09 $25 $49 $25 $C8 $25
.db $C9 $25 $2E $25 $47 $25 $CA $25

L81EF69:
	php
	rep #$20
	and #$00FF
	cmp #$000D
	bcc L81EF77
	lda #$000C
L81EF77:
	plp
	rtl

.ENDS
