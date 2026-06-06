.BANK 2
.ORG $0000

.SECTION "Bank2" FORCE

L828000:
	lda $0C98
	and #$00FF
	asl
	tax
	jsr (L82800C,X)
	rtl

L82800C:
.dw L828018
.dw L82806C
.dw L828094
.dw L828113
.dw L828596
.dw L828C63

L828018:
	rep #$30
	lda #$0000
	ldy #$0800
	ldx #$0000
L828023:
	sta $7F2000,X
	inx
	dey
	inx
	dey
	bne L828023
	lda $07D3
	and #$00FF
	eor #$0001
	asl
	asl
	asl
	asl
	asl
	tax
	ldy #$0020
L82803F:
	phy
	phx
	txa
	jsl L83D912
	lda.l ActiveUnit.UnitID
	and #$00FF
	cmp #$00FF
	beq L828056
	jsl L83F3B8
L828056:
	plx
	ply
	inx
	dey
	bne L82803F
	sep #$20
	lda #$01
	sta $0C98
	lda #$FF
	sta $0C99
	rep #$20
	clc
	rts

L82806C:
	sep #$20
	lda #$FF
	sta $08ED
	sta $08EE
	sta $08EF
	sta $08F0
	sta $08F1
	sta $08F2
	sta $08F3
	sta $08F4
	sta $0C99
	lda #$02
	sta $0C98
	rep #$20
	clc
	rts

L828094:
	lda #$0000
	sta $0C80
L82809A:
	lda $07D3
	and #$00FF
	asl
	asl
	asl
	asl
	asl
	clc
	adc $0C80
	jsl L83D912
	lda.l ActiveUnit.UnitID
	and #$00FF
	cmp #$00FF
	beq L828106
	lda.l ActiveUnit.HasMoved
	and #$0001
	bne L828106
	lda.l ActiveUnit.AI3
	bit #$0080
	bne L828106
	lda.l ActiveUnit.AI1
	and #$003F
	cmp #$003F
	beq L828106
	lda.l ActiveUnit.Terrain
	jsl L93D29C
	bcs L828106
	sep #$20
	lda $07D3
	asl
	asl
	asl
	asl
	asl
	clc
	adc $0C80
	sta $08ED
	lda #$03
	sta $0C98
	lda #$0B
	sta $08F0
	stz $08F1
	stz $08F2
	rep #$20
	clc
	rts

L828106:
	inc $0C80
	lda #$0020
	cmp $0C80
	bne L82809A
	sec
	rts

L828113:
	lda $08ED
	jsl L83D912
	lda #bank100(AI_3_TABLE)
	sta $01
	lda.l ActiveUnit.AI3
	and #$0007
	asl
	adc #AI_3_TABLE
	sta $00
	lda.l ActiveUnit.AI3
	bit #$0080
	beq L828137
	inc $00
L828137:
	lda.l ActiveUnit.HP
	and #$00FF
	xba
	ora #$0064
	sta.l WRMPYA
	nop
	nop
	nop
	lda.l RDMPYL
	pha
	lda.l ActiveUnit.MaxHP
	and #$00FF
	tax
	pla
	sta $4204
	sep #$10
	stx $4206
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	lda $4214
	rep #$10
	ldx $4216
	rep #$10
	sep #$20
	cmp [$00]
	bmi L828192
L828176:
	sep #$20
	lda.l ActiveUnit.AI3
	and #$7F
	sta.l ActiveUnit.AI3
	lda $08ED
	jsl L83D969
	lda #$04
	sta $0C98
	rep #$20
	clc
	rts

L828192:
	rep #$20
	lda $08ED
	jsl L83D912
	sep #$20
	lda.l ActiveUnit.AI3
	ora #$80
	sta.l ActiveUnit.AI3
	lda $08ED
	jsl L83D969
	lda.l ActiveUnit.ClassID
	sta $08FF
	lda.l ActiveUnit.YPosition
	sta $08FA
	lda.l ActiveUnit.XPosition
	sta $08FB
	lda #$01
	sta $08FC
	rep #$20
	lda #$007F
	sta $08FD
	jsl L80B10B
	lda #$FFFF
	sta $0C95
	sta $0C8C
	lda #$07FE
	sta $0C92
L8281E3:
	ldx $0C92
	lda $7F3800,X
	and.w #$00FF
	cmp $0C8C
	bcs L82822B
	lda $7F2800,X
	cmp.w #$0400
	bmi L828206
	sep #$20
	and #$FF
	cmp $08ED
	rep #$20
	bne L82822B
L828206:
	phx
	jsl L83F63C
	jsl L829806
	ply
	cmp #$0000
	beq L82821A
	cmp #$0001
	bne L82822B
L82821A:
	tyx
	lda $7F3800,X
	and #$00FF
	sta $0C8C
	lda $0C92
	sta $0C95
L82822B:
	dec $0C92
	dec $0C92
	bpl L8281E3
	lda $0C95
	cmp #$FFFF
	bne L82823E
	brl L828176
L82823E:
	pha
	lda #$0014
	sta $0C83
	pla
	jsr L8297DE
	jsr L82824D
	rts

L82824D:
	lda $08ED
	and #$00FF
	jsl L83D912
	lda #bank100(AI_2_POINTERS_TABLE)
	sta $01
	lda #AI_2_POINTERS_TABLE
	sta $00
	lda.l ActiveUnit.AI2
	and #$00FF
	jsl L80A89D
	lda [$00]
	sta $00
	lda.l (ActiveUnit.AI2 + 1)
	and #$00FF
	tay
	lda [$00],Y
	and #$00FF
	cmp #$00FF
	beq L8282AD
	sta $15
	iny
	lda [$00],Y
	and #$00FF
	sta $0C80
	iny
	lda [$00],Y
	and #$00FF
	sta $0C83
	iny
	lda [$00],Y
	and #$00FF
	sta $0C86
	lda $15
	and #$00FF
	asl
	tax
	jsr (L8282AF,X)
	bcs L8282AB
L8282AB:
	clc
	rts

L8282AD:
	bra L8282AD

L8282AF:
.dw L8282C3
.dw L8282C4
.dw L8282C4
.dw L8282C3
.dw L8282C4
.dw L8282C3
.dw L8282C3
.dw L8282C4
.dw L8282C3
.dw L8282C3

L8282C3:
	rts

L8282C4:
	lda $08ED
	jsl L83D912
	lda.l ActiveUnit.Weapon1
	and #$00FF
	cmp #$0040
	beq L828312
	cmp #$0041
	beq L828312
	cmp #$0042
	beq L828312
	cmp #$0043
	beq L828312
	cmp #$0047
	beq L828312
	cmp #$0024
	beq L828311
	cmp #$0025
	beq L828311
	cmp #$0026
	beq L828311
	cmp #$0027
	beq L828311
	cmp #$0028
	beq L828311
	cmp #$003A
	beq L828311
	cmp #$003B
	beq L828311
	jsr L828316
L828311:
	rts

L828312:
	jsr L82834D
	rts

L828316:
	rep #$20
	lda $08EE
	and #$00FF
	sta $15
	lda $08EF
	and #$00FF
	sta $17
	stz $19
	jsl L83D8F7
	lda $19
	sta $0C83
	lda $08ED
	and #$00FF
	jsl L83D912
	jsl L83AF3F
	jsr L829578
L828344:
	jsr L8284C7
	inx
	inx
	dey
	bne L828344
	rts

L82834D:
	lda $07F4
	and #$0001
	bne L82837F
	lda $08ED
	jsl L83D912
	ldx #$0003
L82835F:
	phx
	lda.l ActiveUnit.Weapons,X
	jsl L83EB79
	bcs L82837B
	plx
	txa
	clc
	adc #$0004
	sta $0C86
	lda #$0014
	sta $0C83
	bra L828386
L82837B:
	plx
	dex
	bpl L82835F
L82837F:
	lda #$0000
	sta $0C80
	rts

L828386:
	lda.l ActiveUnit.Weapons,X
	and #$00FF
	cmp #$0040
	beq L828404
	cmp #$0043
	beq L828404
	cmp #$0041
	beq L828404
	cmp #$0042
	beq L8283A8
	cmp #$0047
	beq L8283A8
	bra L82837F
L8283A8:
	lda $0C80
	pha
	lda $0C83
	pha
	lda $0C86
	pha
	lda #$0000
	sta $0C80
	lda.l ActiveUnit.NameID
	and #$00FF
	cmp #NAME_MARIA
	beq L8283CB
	cmp #NAME_ELICE
	bne L8283D1
L8283CB:
	lda #$0014
	sta $0C80
L8283D1:
	pla
	sta $0C86
	pla
	sta $0C83
	pla
	sta $0C80
	lda #$0064
	sta $23
	jsl L83F684
	cmp $0C80
	bpl L828400
	sep #$20
	jsr L8298F6
	bcs L828400
	sta $08F2
	lda.w #$8D0C
	beq L828402
	lda $0C86
	sta $08F1
L828400:
	rep #$20
L828402:
	clc
	rts

L828404:
	lda $08ED
	jsl L83D912
	lda.l ActiveUnit.NameID
	and #$00FF
	cmp #NAME_MARIA
	beq L82841C
	cmp #NAME_ELICE
	bne L82841F
L82841C:
	brl L828439
L82841F:
	jsr L82845E
	bcs L828438
L828424:
	sep #$20
	sta $08F2
	lda #$0C
	sta $08F0
	lda $0C86
	sta $08F1
	rep #$20
	clc
	rts

L828438:
	rts

L828439:
	lda #$004F
	jsl L93D52E
	bcs L828438
	jsl L83D912
	sep #$20
	lda.l ActiveUnit.HP
	cmp.l ActiveUnit.MaxHP
	rep #$20
	beq L828438
	lda #$004F
	jsl L93D52E
	brl L828424

L82845E:
	php
	rep #$20
	lda $08ED
	and #$0020
	asl
	asl
	asl
	asl
	asl
	tax
	ldy #$0020
L828470:
	sep #$20
	lda $7F4431,X
	cmp #$FF
	beq L8284B9
	lda $7F4433,X
	cmp $7F4434,X
	bcs L8284B9
	lda $7F4441,X
	sec
	sbc $08EE
	bpl L828491
	eor #$FF
	ina
L828491:
	sta $15
	lda $7F4440,X
	sec
	sbc $08EF
	bpl L8284A0
	eor #$FF
	ina
L8284A0:
	clc
	adc $15
	cmp #$01
	bne L8284B9
	rep #$20
	txa
	lsr
	lsr
	lsr
	lsr
	lsr
	sep #$20
	cmp $08ED
	beq L8284B9
	plp
	clc
	rts

L8284B9:
	rep #$20
	txa
	clc
	adc #$0020
	tax
	dey
	bne L828470
	plp
	sec
	rts

L8284C7:
	phy
	phx
	jsr L8295B0
	lda $0C83
	jsl L83D8E5
	txa
	clc
	adc $15
	bmi L828540
	cmp #$0020
	bpl L828540
	sta $15
	tya
	clc
	adc $17
	bmi L828540
	cmp #$0020
	bpl L828540
	sta $17
	stz $19
	jsl L83D8F7
	ldx $19
	lda $7F2800,X
	cmp #$0400
	bmi L828540
	and #$00FF
	lsr
	lsr
	lsr
	lsr
	lsr
	sep #$20
	cmp $07D3
	beq L828540
	rep #$20
	lda $7F2800,X
	and #$00FF
	sta $0C86
	jsl L83D912
	lda $19
	pha
	jsl L83AF1C
	pla
	sta $19
	plx
	phx
	txa
	lsr
	sep #$20
	cmp #$04
	bpl L828536
	stz $0C89
	bra L82853B
L828536:
	lda #$01
	sta $0C89
L82853B:
	jsr L828560
	bcc L828545
L828540:
	rep #$20
	plx
	ply
	rts

L828545:
	sep #$20
	lda #$01
	sta $08F0
	stz $08F1
	lda $0C86
	sta $08F2
	lda $0C89
	sta $08F3
	stz $0C99
	bra L828540
L828560:
	php
	rep #$20
	lda $19
	pha
	jsl L83B0A3
	pla
	sta $19
	sep #$20
	lda $076A
	dea
	bmi L828582
	cmp $076B
	bcc L828582
	jsr L828585
	bcs L828582
	plp
	clc
	rts

L828582:
	plp
	sec
	rts

L828585:
	lda $075F
	xba
	lda $0C89
	jsl L8294FE
	bcc L828594
	clc
	rts

L828594:
	sec
	rts

L828596:
	lda $08ED
	and.w #$00FF
	jsl L83D912
	sep #$20
	stz $0C9A
	rep #$20
	lda #bank100(AI_1_POINTERS_TABLE)
	sta $01
	lda #AI_1_POINTERS_TABLE
	sta $00
	lda.l ActiveUnit.AI1
	and #$00FF
	jsl L80A89D
	lda [$00]
	sta $00
	lda.l (ActiveUnit.AI1 + 1)
	and #$00FF
	tay
	lda [$00],Y
	and #$00FF
	cmp #$00FF
	beq L8285F8
	bit #$0010
	bne L8285DC
	jsr L828AA8
	bra L8285EB
L8285DC:
	and #$000F
	sta $15
	lda $15
	and #$00FF
	asl
	tax
	jsr (L8285FA,X)
L8285EB:
	bcc L8285F6
	sep #$20
	lda #$05
	sta $0C98
	rep #$20
L8285F6:
	clc
	rts

L8285F8:
	sec
	rts

L8285FA:
.dw L82887B
.dw L8289EF
.dw L828604
.dw L828711
.dw L828606

L828604:
	sec
	rts

L828606:
	iny
	lda [$00],Y
	and #$00FF
	sta $0C80
	lda #$0009
	sta $0C8F
	lda #$0064
	sta $23
	jsl L83F684
	cmp $0C80
	bmi L828625
	sec
	rts

L828625:
	lda $08ED
	jsl L83D912
	lda.l ActiveUnit.Weapon1
	and #$00FF
	ora #$0E00
	sta.l WRMPYA
	nop
	nop
	nop
	lda.l RDMPYL
	tax
	lda.l ITEMS_DATA,X
	bit #$0018
	beq L828655
	lda $07F4
	bit #$0001
	beq L828655
	sec
	rts

L828655:
	jsl L83AF3F
	sep #$20
	lda #$2E
	sta $08FF
	lda.l ActiveUnit.YPosition
	sta $08FA
	sta $08EE
	lda.l ActiveUnit.XPosition
	sta $08FB
	sta $08EF
	lda #$00
	sta $08FC
	rep #$20
	lda #$000A
	sta $08FD
	jsl L80B10B
	ldy #$0800
	ldx #$0000
L82868B:
	lda $7F3800,X
	sta $7F3000,X
	inx
	dey
	inx
	dey
	bne L82868B
	ldx #$07FE
L82869C:
	phx
	lda $7F3000,X
	and #$00FF
	cmp #$00FF
	beq L8286FE
	cmp #$0003
	bmi L8286FE
	lda $7F2800,X
	cmp #$0400
	bmi L8286FE
	and #$00FF
	lsr
	lsr
	lsr
	lsr
	lsr
	sep #$20
	cmp $07D3
	beq L8286FE
	rep #$20
	lda $7F2800,X
	and #$00FF
	sta $0C86
	jsl L83D912
	jsl L83AF1C
	lda #$0002
	sta $0C89
	jsr L8292B0
	bcs L8286FE
	sep #$20
	lda #$01
	sta $08F0
	stz $08F1
	lda $0C86
	sta $08F2
	lda $0C89
	sta $08F3
	stz $0C99
L8286FE:
	rep #$20
	plx
	dex
	dex
	bpl L82869C
	lda $0C99
	and #$00FF
	beq L82870F
	sec
	rts

L82870F:
	clc
	rts

L828711:
	iny
	lda [$00],Y
	and #$00FF
	sta $0C80
	iny
	lda [$00],Y
	pha
	lda #$0014
	sta $0C83
	lda $0C80
	jsl L87A8F4
	bcc L828754
	lda $08ED
	and #$00FF
	jsl L83D912
	sep #$20
	lda.l (ActiveUnit.AI1 + 1)
	ina
	ina
	ina
	ina
	sta.l (ActiveUnit.AI1 + 1)
	rep #$20
	lda $08ED
	and #$00FF
	jsl L83D969
	brl L828864
L828754:
	lda #$FFFF
	sta $0C86
	lda $08ED
	jsl L83D912
	sep #$20
	lda.l ActiveUnit.ClassID
	sta $08FF
	lda.l ActiveUnit.YPosition
	sta $08FA
	lda.l ActiveUnit.XPosition
	sta $08FB
	lda #$01
	sta $08FC
	rep #$20
	lda #$007F
	sta $08FD
	jsl L80B10B
	lda.l ActiveUnit.Weapon1
	and #$00FF
	ora #$0E00
	sta.l WRMPYA
	nop
	nop
	nop
	lda.l RDMPYL
	tax
	lda.l (ITEMS_DATA + 11),X
	and #$0007
	xba
	lsr
	lsr
	sta $0C89
	lda #$FFFF
	sta $0C95
	lda #$07FE
	sta $0C92
L8287B8:
	ldx $0C92
	lda $7F3800,X
	and #$00FF
	cmp #$00FF
	beq L828835
	cmp $0C86
	bcs L828835
	lda $7F2000,X
	bit $0C89
	beq L828835
	lda $7F2800,X
	cmp #$0400
	bmi L8287E7
	sep #$20
	cmp $08ED
	rep #$20
	bne L828835
L8287E7:
	lda $0C92
	jsl L83D8E5
	stx $0C8C
	sty $0C8F
	ldx #$0000
	ldy #$0004
L8287FA:
	phx
	phy
	jsr L8297C2
	lda $7F2800,X
	cmp #$0400
	bmi L82882E
	and #$00FF
	jsl L83D912
	lda.l ActiveUnit.UnitID
	and #$00FF
	cmp $0C80
	bne L82882E
	lda $0C92
	sta $0C95
	ldx $0C92
	lda $7F3800,X
	and #$00FF
	sta $0C86
L82882E:
	ply
	plx
	inx
	inx
	dey
	bne L8287FA
L828835:
	dec $0C92
	dec $0C92
	bmi L828840
	brl L8287B8
L828840:
	lda $0C95
	cmp #$FFFF
	beq L828870
	jsr L8297DE
	lda $0C8C
	and #$00FF
	bne L828864
	sep #$20
	lda #$00
	sta $08F0
	rep #$20
	pla
	pha
	sta $08F1
	pla
	clc
	rts

L828864:
	sep #$20
	lda #$FF
	sta $0C99
	rep #$20
	pla
	sec
	rts

L828870:
	lda #$FFFF
	sta $0C89
	jsr L82970F
	bra L828864

L82887B:
	iny
	lda [$00],Y
	and #$00FF
	sta $0C86
	jsr L82985E
	bcc L8288AD
	lda $08ED
	and #$00FF
	jsl L83D912
	sep #$20
	lda.l (ActiveUnit.AI1 + 1)
	ina
	ina
	sta.l (ActiveUnit.AI1 + 1)
	rep #$20
	lda $08ED
	and #$00FF
	jsl L83D969
	clc
	rts

L8288AD:
	and #$00FF
	jsl L83D912
	lda.l ActiveUnit.YPosition
	and #$00FF
	sta $0C80
	lda.l ActiveUnit.XPosition
	and #$00FF
	sta $0C83
	lda $08ED
	and #$00FF
	jsl L83D912
	sep #$20
	lda #$0B
	sta $08F0
	stz $08F1
	stz $08F2
	lda.l ActiveUnit.ClassID
	sta $08FF
	lda.l ActiveUnit.YPosition
	sta $08FA
	sta $08EE
	lda.l ActiveUnit.XPosition
	sta $08FB
	sta $08EF
	lda #$01
	sta $08FC
	rep #$20
	lda.l ActiveUnit.Movement
	and #$00FF
	cmp #$000D
	bmi L828910
	lda #$000C
L828910:
	sta $08FD
	jsl L80B10B
	ldy #$0800
	ldx #$0000
L82891D:
	lda $7F3800,X
	sta $7F3000,X
	inx
	dey
	inx
	dey
	bne L82891D
	jsr L829578
	stz $0C8C
L828931:
	phy
	phx
	jsr L8295B0
	lda $0C80
	clc
	adc $15
	sta $15
	lda $0C83
	clc
	adc $17
	sta $17
	stz $19
	jsl L83D8F7
	ldx $19
	lda $7F3000,X
	and #$00FF
	cmp #$00FF
	beq L8289D7
	lda $7F2800,X
	cmp #$0400
	bmi L82896A
	sep #$20
	cmp $08ED
	bne L8289D7
L82896A:
	rep #$20
	jsl L83F63C
	sep #$20
	xba
	lda $08ED
	xba
	rep #$20
	pha
	pha
	lda #bank100(L88C29E)
	sta $01
	lda #L88C29E
	sta $00
	pla
	xba
	and #$00FF
	jsl L80A89D
	lda [$00]
	sta $00
	pla
	and #$00FF
	tay
	sep #$20
	lda [$00],Y
	cmp $0C8C
	bcc L8289D7
	rep #$20
	and #$00FF
	sta $0C8C
	plx
	phx
	txa
	lsr
	sep #$20
	cmp #$04
	bpl L8289B7
	stz $08F3
	bra L8289BC
L8289B7:
	lda.w #$8D01
	sbc ($08,S),Y
L8289BC:
	lda $15
	sta $08EE
	lda $17
	sta $08EF
	lda #$01
	sta $08F0
	stz $08F1
	lda $0C86
	sta $08F2
L8289D4:
	stz $0C99
L8289D7:
	rep #$20
	plx
	ply
	inx
	inx
	dey
	beq L8289E3
	brl L828931
L8289E3:
	lda $0C99
	and #$00FF
	beq L8289ED
	sec
	rts

L8289ED:
	clc
	rts

L8289EF:
	iny
	lda [$00],Y
	and #$00FF
	sta $0C9A
	lda #$0000
	sta $0C8F
	lda $08ED
	and #$00FF
	jsl L83D912
	jsl L83AF3F
	lda #$FFFF
	ldy #$0800
	ldx #$0000
L828A15:
	sta $7F3000,X
	inx
	dey
	inx
	dey
	bne L828A15
	sep #$20
	lda #$0B
	sta $08F0
	stz $08F1
	stz $08F2
	rep #$20
	lda.l ActiveUnit.Weapon1
	and #$00FF
	ora #$0E00
	sta.l WRMPYA
	nop
	nop
	nop
	lda.l RDMPYL
	tax
	lda.l (ITEMS_DATA + 11),X
	and #$0003
	xba
	lsr
	lsr
	sta $0C80
	lda.l ActiveUnit.YPosition
	and #$00FF
	sta $15
	lda.l ActiveUnit.XPosition
	and #$00FF
	sta $17
	stz $19
	jsl L83D8F7
	lda $19
	sta $0C83
	tax
	lda $7F2000,X
	and $0C80
	beq L828AA4
	lda $7F2800,X
	cmp #$0400
	bmi L828A88
	sep #$20
	cmp $08ED
	bne L828AA4
L828A88:
	rep #$20
	lda $08ED
	jsl L83D912
	jsr L829578
L828A94:
	jsr L828BB9
	inx
	inx
	dey
	bne L828A94
	lda $0C99
	and #$00FF
	beq L828AA6
L828AA4:
	sec
	rts

L828AA6:
	clc
	rts

L828AA8:
	iny
	lda [$00],Y
	and #$00FF
	sta $0C9A
	and #$000F
	sta $0C8F
	lda $08ED
	and #$00FF
	jsl L83D912
	lda.l ActiveUnit.Weapon1
	jsl L83EE65
	bcc L828ACD
	sec
	rts

L828ACD:
	jsl L83AF3F
	sep #$20
	lda.l ActiveUnit.ClassID
	sta $08FF
	lda.l ActiveUnit.YPosition
	sta $08FA
	sta $08EE
	lda.l ActiveUnit.XPosition
	sta $08FB
	sta $08EF
	lda #$01
	sta $08FC
	rep #$20
	lda.l ActiveUnit.Movement
	and #$00FF
	cmp #$000D
	bmi L828B04
	lda #$000C
L828B04:
	sta $08FD
	jsl L80B10B
	ldy #$0800
	ldx #$0000
L828B11:
	lda $7F3800,X
	sta $7F3000,X
	inx
	dey
	inx
	dey
	bne L828B11
	sep #$20
	lda #$0B
	sta $08F0
	stz $08F1
	stz $08F2
	rep #$20
	lda.l ActiveUnit.Weapon1
	and #$00FF
	ora #$0E00
	sta.l WRMPYA
	nop
	nop
	nop
	lda.l RDMPYL
	tax
	lda.l (ITEMS_DATA + 11),X
	and #$0003
	xba
	lsr
	lsr
	sta $0C80
	lda #$07FE
	sta $0C83
L828B57:
	ldx $0C83
	lda $7F3000,X
	and #$00FF
	cmp #$00FF
	beq L828BA3
	lda $7F2000,X
	and $0C80
	beq L828BA3
	lda $7F2800,X
	cmp #$0400
	bpl L828B85
	jsl L83F63C
	sep #$20
	sta $0762
	rep #$20
	bra L828B8C
L828B85:
	sep #$20
	cmp $08ED
	bne L828BA3
L828B8C:
	rep #$20
	lda $08ED
	and #$00FF
	jsl L83D912
	jsr L829578
L828B9B:
	jsr L828BB9
	inx
	inx
	dey
	bne L828B9B
L828BA3:
	rep #$20
	dec $0C83
	dec $0C83
	bpl L828B57
	lda $0C99
	and #$00FF
	beq L828BB7
	sec
	rts

L828BB7:
	clc
	rts

L828BB9:
	phy
	phx
	jsr L8295B0
	lda $0C83
L828BC1:
	jsl L83D8E5
	txa
	clc
	adc $15
	bmi L828C32
	cmp #$0020
	bpl L828C32
	sta $15
	tya
	clc
	adc $17
	bmi L828C32
	cmp #$0020
	bpl L828C32
	sta $17
	stz $19
	jsl L83D8F7
	ldx $19
	lda $7F2800,X
	cmp #$0400
	bmi L828C32
	and #$00FF
	lsr
	lsr
	lsr
	lsr
	lsr
	sep #$20
	cmp $07D3
	beq L828C32
	rep #$20
	lda $7F2800,X
	and #$00FF
	sta $0C86
	jsl L83D912
	lda $19
	pha
	jsl L83AF1C
	pla
	sta $19
	plx
	phx
	txa
	lsr
	sep #$20
	cmp #$04
	bpl L828C28
	stz $0C89
	bra L828C2D
L828C28:
	lda #$01
	sta $0C89
L828C2D:
	jsr L8292B0
	bcc L828C37
L828C32:
	rep #$20
	plx
	ply
	rts

L828C37:
	rep #$20
	lda $0C83
	jsl L83D8E5
	sep #$20
	txa
	sta $08EE
	tya
	sta $08EF
	lda #$01
	sta $08F0
	stz $08F1
	lda $0C86
	sta $08F2
	lda $0C89
	sta $08F3
	stz $0C99
	bra L828C32

L828C63:
	lda $08ED
	and.w #$00FF
	jsl L83D912
	lda.w #$8800
	sta $01
	lda.w #$C5E1
	sta $00
	lda.l ActiveUnit.AI2
	and.w #$00FF
	jsl L80A89D
	lda [$00]
	sta $00
	lda.l (ActiveUnit.AI2 + 1)
	and.w #$00FF
	tay
	lda [$00],Y
	and.w #$00FF
	cmp.w #$00FF
	beq L828CCC
	sta $15
	iny
	lda [$00],Y
	and.w #$00FF
	sta $0C80
	iny
	lda [$00],Y
	and.w #$00FF
	sta $0C83
	iny
	lda [$00],Y
	and.w #$00FF
	sta $0C86
	lda $15
	and.w #$00FF
	asl
	tax
	jsr (SOME_AI_2_TABLE_OF_DATA,X)
	bcs L828CCA
	sep #$20
	lda #$05
	sta $0C98
	rep #$20
L828CCA:
	clc
	rts

L828CCC:
	bra L828CCC

SOME_AI_2_TABLE_OF_DATA:
.dw L829013
.dw L829096
.dw L8290EE
.dw L828FE0
.dw L8291AB
.dw L829040
.dw L82926D
.dw L828E6C
.dw L828D2F
.dw L828CE2

L828CE2:
	lda $08ED
	and #$00FF
	jsl L83D912
	lda #$FFFF
	sta $0C89
	jsr L82970F
	sep #$20
	lda.l ActiveUnit.ClassID
	cmp #CLASS_MANAKETE_MALE
	beq L828D0B
	cmp #CLASS_MANAKETE_FEMALE
	beq L828D0B
	lda #$01
	sta.l ActiveUnit.TransformTimer
	bra L828D18
L828D0B:
	lda.w #$8D04
	sbc ($08),Y
	stz $08F2
	lda #$0D
	sta $08F0
L828D18:
	lda.l (ActiveUnit.AI2 + 1)
	ina
	sta.l (ActiveUnit.AI2 + 1)
L828D21:
	rep #$20
	lda $08ED
	and #$00FF
	jsl L83D969
	clc
	rts

L828D2F:
	lda $08ED
	and #$00FF
	jsl L83D912
	sep #$20
	lda.l ActiveUnit.TransformTimer
	cmp $0C80
	bcc L828D47
	brl L828E12
L828D47:
	lda #$2D
	sta $08FF
	lda.l ActiveUnit.YPosition
	sta $08FA
	lda.l ActiveUnit.XPosition
	sta $08FB
	lda #$00
	sta $08FC
	rep #$20
	lda #$007F
	sta $08FD
	jsl L80B10B
	lda #$FFFF
	sta $0C95
	lda #$07FE
	sta $0C92
	lda #$00FF
	sta $0C8C
L828D7D:
	ldx $0C92
	lda $7F3800,X
	and #$00FF
	cmp #$00FF
	beq L828DBE
	cmp $0C8C
	bpl L828DBE
	lda $7F2800,X
	cmp #$0400
	bpl L828DBE
	phx
	jsl L83F63C
	jsl L829806
	plx
	cmp #$0003
	beq L828DAE
	cmp #$0009
	bne L828DBE
L828DAE:
	lda $7F3800,X
	and #$00FF
	sta $0C8C
	lda $0C92
	sta $0C95
L828DBE:
	dec $0C92
	dec $0C92
	bpl L828D7D
	lda $0C95
	cmp #$FFFF
	beq L828E12
	pha
	lda #$0014
	sta $0C83
	pla
	jsr L8297DE
	rep #$20
	stz $0C0C
	stz $0C0B
	stz $090D
	jsl L83EB0B
	jsl L83E623
	jsl L83E773
	jsl L83E83E
	sep #$20
	lda $0C0D
	bit #$80
	bne L828E39
	lda $0C0B
	bit #$80
	bne L828E40
	lda $0C0C
	bit #$01
	bne L828E47
	bit #$02
	bne L828E4E
L828E0F:
	rep #$20
	rts

L828E12:
	rep #$20
	lda $08ED
	and #$00FF
	jsl L83D912
	sep #$20
	lda.l (ActiveUnit.AI2 + 1)
	ina
	ina
	ina
	sta.l (ActiveUnit.AI2 + 1)
	rep #$20
	lda $08ED
	and #$FF
	jsl L83D969
	clc
	rts

L828E39:
	lda.b #$17
	sta $08F0
	bra L828E0F
L828E40:
	lda.b #$07
	sta $08F0
	bra L828E0F
L828E47:
	lda.b #$08
	sta $08F0
	bra L828E0F
L828E4E:
	lda.b #09
	sta $08F0
	lda $08ED
	jsl L83D912
	lda.l ActiveUnit.TransformTimer
	ina
	sta.l ActiveUnit.TransformTimer
	lda $08ED
	jsl L83D969
	bra L828E0F

L828E6C:
	lda $07F4
	and #$0001
	bne L828E9E
	lda $08ED
	jsl L83D912
	ldx #$0003
L828E7E:
	phx
	lda.l ActiveUnit.Weapons,X
	jsl L83EB79
	bcs L828E9A
	plx
	txa
	clc
	adc #$0004
	sta $0C86
	lda #$0014
	sta $0C83
	bra L828EA7
L828E9A:
	plx
	dex
	bpl L828E7E
L828E9E:
	lda #$0000
	sta $0C80
	jmp L828FE0
L828EA7:
	lda.l ActiveUnit.Weapons,X
	and #$00FF
	cmp #$0040
	beq L828F28
	cmp #$0043
	beq L828F28
	cmp #$0041
	beq L828F28
	cmp #$0042
	beq L828EC9
	cmp #$0047
	beq L828EC9
	bra L828E9E
L828EC9:
	lda $0C80
	pha
	lda $0C83
	pha
	lda $0C86
	pha
	lda #$0000
	sta $0C80
	lda.l ActiveUnit.NameID
	and #$00FF
	cmp #NAME_MARIA
	beq L828EEC
	cmp #NAME_ELICE
	bne L828EF2
L828EEC:
	lda #$0014
	sta $0C80
L828EF2:
	jsr L828FE0
	pla
	sta $0C86
	pla
	sta $0C83
	pla
	sta $0C80
	lda.w #$0064
	sta $23
	jsl L83F684
	cmp $0C80
	bpl L828F24
	sep #$20
	jsr L8298F6
	bcs L828F24
	sta $08F2
	lda.w #$8D0C
	beq L828F26
	lda.w $0C86
	sta $08F1
L828F24:
	rep #$20
L828F26:
	clc
	rts

L828F28:
	lda $08ED
	jsl L83D912
	lda.l ActiveUnit.NameID
	and #$00FF
	cmp #NAME_MARIA
	beq L828F40
	cmp #NAME_ELICE
	bne L828F43
L828F40:
	brl L828FBB
L828F43:
	jsr L8298F6
	bcs L828FB5
L828F48:
	pha
	jsl L83D912
	lda $0C80
	pha
	lda $0C83
	pha
	lda $0C86
	pha
	lda $0C83
	sta $0C86
	lda.l ActiveUnit.YPosition
	and #$00FF
	sta $0C80
	lda.l ActiveUnit.XPosition
	and #$00FF
	sta $0C83
	jsr L829040
	pla
	sta $0C86
	pla
	sta $0C83
	pla
	sta $0C80
	lda $08EE
	sta $15
	lda $08EF
	sta $17
	stz $19
	jsl L83D8F7
	ldx $19
	lda $7F3000,X
	and #$00FF
	cmp #$0001
	bne L828FB9
	pla
	sep #$20
	sta $08F2
	lda #$0C
	sta $08F0
	lda $0C86
	sta $08F1
	rep #$20
	clc
	rts

L828FB5:
	jsr L828FE0
	rts

L828FB9:
	pla
	rts

L828FBB:
	lda #$004F
	jsl L93D52E
	bcs L828FB5
	jsl L83D912
	sep #$20
	lda.l ActiveUnit.HP
	cmp.l ActiveUnit.MaxHP
	rep #$20
	beq L828FB5
	lda #$004F
	jsl L93D52E
	brl L828F48

L828FE0:
	lda $08ED
	and #$00FF
	jsl L83D912
	sep #$20
	lda.l ActiveUnit.YPosition
	sta $0C95
	lda.l ActiveUnit.XPosition
	sta $0C96
	rep #$20
	lda $0C80
	sta $0C8F
	lda.l ActiveUnit.ClassID
	and #$00FF
	sta $0C92
	jsr L8295E0
	jsr L82970F
	rts

L829013:
	lda $08ED
	and #$00FF
	jsl L83D912
	lda.l (ActiveUnit.AI2 + 1)
	and #$00FF
	sec
	sbc $0C80
	bpl L82902D
	lda #$0000
L82902D:
	and #$00FF
	sta.l (ActiveUnit.AI2 + 1)
	lda $08ED
	and #$00FF
	jsl L83D969
	clc
	rts

L829040:
	lda $08ED
	jsl L83D912
	sep #$20
	lda $0C80
	sta $0C95
	lda $0C83
	sta $0C96
	cmp.l ActiveUnit.XPosition
	bne L82907D
	lda $0C95
	cmp.l ActiveUnit.YPosition
	bne L82907D
	sep #$20
	lda.l (ActiveUnit.AI2 + 1)
	ina
	ina
	ina
	ina
	sta.l (ActiveUnit.AI2 + 1)
	rep #$20
	lda $08ED
	jsl L83D969
	clc
	rts

L82907D:
	rep #$20
	lda $0C86
	sta $0C8F
	lda.l ActiveUnit.ClassID
	and #$00FF
	sta $0C92
	jsr L8295E0
	jsr L82970F
	rts

L829096:
	lda $0C80
	jsl L93D52E
	bcc L8290BA
	sep #$20
	lda.l (ActiveUnit.AI2 + 1)
	ina
	ina
	ina
	sta.l (ActiveUnit.AI2 + 1)
	rep #$20
	lda $08ED
	and #$00FF
	jsl L83D969
	clc
	rts

L8290BA:
	jsl L83D912
	sep #$20
	lda.l ActiveUnit.YPosition
	sta $0C95
	lda.l ActiveUnit.XPosition
	sta $0C96
	rep #$20
	lda $08ED
	jsl L83D912
	lda.l ActiveUnit.ClassID
	and #$00FF
	sta $0C92
	lda $0C83
	sta $0C8F
	jsr L8295D4
	jsr L82970F
	rts

L8290EE:
	lda #$00FF
	sta $0C8C
	jsr L82974B
L8290F7:
	ldx $0C92
	lda $7F3800,X
	and #$00FF
	cmp #$00FF
	beq L829167
	lda $7F2000,X
	bit $0C89
	beq L829167
	lda $7F3800,X
	and #$00FF
	cmp $0C8C
	bcs L829167
	jsr L8297AA
L82911E:
	phx
	phy
	jsr L8297C2
	lda $7F2800,X
	cmp #$0400
	bmi L829160
	tax
	lda $0C80
	cmp #$00FF
	beq L82914F
	txa
	and #$00FF
	jsl L83D912
	lda.l ActiveUnit.ClassID
	and #$00FF
	jsr L82981D
	and #$00FF
	cmp $0C80
	bne L829160
L82914F:
	lda $0C92
	sta $0C95
	tax
	lda $7F3800,X
	and #$00FF
	sta $0C8C
L829160:
	ply
	plx
	inx
	inx
	dey
	bne L82911E
L829167:
	dec $0C92
	dec $0C92
	bpl L8290F7
	lda $0C95
	cmp #$FFFF
	beq L82917B
	jsr L8297DE
	rts

L82917B:
	lda $0C80
	cmp #$00FF
	bne L829186
	brl L828FE0
L829186:
	lda $08ED
	and #$00FF
	jsl L83D912
	sep #$20
	lda.l (ActiveUnit.AI2 + 1)
	ina
	ina
	ina
	sta.l (ActiveUnit.AI2 + 1)
	rep #$20
	lda $08ED
	and #$00FF
	jsl L83D969
	clc
	rts

L8291AB:
	lda $08ED
	and #$00FF
	jsl L83D912
	sep #$20
	lda.l ActiveUnit.ClassID
	sta $08FF
	lda.l ActiveUnit.YPosition
	sta $08FA
	lda.l ActiveUnit.XPosition
	sta $08FB
	lda #$00
	sta $08FC
	rep #$20
	lda #$007F
	sta $08FD
	jsl L80B10B
	lda #$FFFF
	sta $0C95
	lda #$07FE
	sta $0C92
	lda #$00FF
	sta $0C8C
L8291EF:
	ldx $0C92
	lda $7F3800,X
	and #$00FF
	cmp #$00FF
	beq L829234
	cmp $0C8C
	bpl L829234
	lda $7F2800,X
	cmp #$0400
	bmi L829215
	sep #$20
	cmp $08ED
	rep #$20
	bne L829234
L829215:
	phx
	jsl L83F63C
	jsl L829806
	plx
	cmp $0C80
	bne L829234
	lda $7F3800,X
	and #$00FF
	sta $0C8C
	lda $0C92
	sta $0C95
L829234:
	dec $0C92
	dec $0C92
	bpl L8291EF
	lda $0C95
	cmp #$FFFF
	beq L829248
	jsr L8297DE
	rts

L829248:
	lda $08ED
	and #$00FF
	jsl L83D912
	sep #$20
	lda.l (ActiveUnit.AI2 + 1)
	ina
	ina
	ina
	sta.l (ActiveUnit.AI2 + 1)
	rep #$20
	lda $08ED
	and #$00FF
	jsl L83D969
	clc
	rts

L82926D:
	sep #$20
	lda $0C80
	sta $08F1
	lda $0C83
	sta $08F2
	lda $08ED
	jsl L83D912
	lda.l ActiveUnit.YPosition
	sta $08EE
	lda.l ActiveUnit.XPosition
	sta $08EF
	lda.w #$8D18
	beq L82929D
	stz $0C99
	lda.l (ActiveUnit.AI2 + 1)
	ina
L82929D:
	ina
	ina
	sta.l (ActiveUnit.AI2 + 1)
	rep #$20
	lda $08ED
	and #$00FF
	jsl L83D969
	rts

L8292B0:
	php
	sep #$20
	stz $0C9B
	rep #$20
	lda $19
	pha
	jsl L83B0A3
	pla
	sta $19
	sep #$20
	lda $076A
	dea
	cmp $076B
	bcc L82930F
	jsr L829387
	jsr L8293EC
	jsr L829465
	jsr L829428
	jsr L829413
	jsr L829312
	jsr L8294CB
	jsr L829400
	lda $0C9B
	cmp $0C9A
	bcc L82930F
	bne L829309
	lda $0C9B
	beq L829309
	rep #$20
	lda #$0064
	sta $23
	jsl L83F684
	cmp #$0032
	bmi L82930F
	sep #$20
	lda $0C9B
L829309:
	sta $0C9A
	plp
	clc
	rts

L82930F:
	plp
	sec
	rts

L829312:
	lda $075F
	xba
	lda $0C89
	jsl L8294FE
	bcc L829324
	lda #$0A
	brl L8294F2
L829324:
	lda $0769
	sec
	sbc $076C
	bpl L82932F
	lda #$00
L82932F:
	sta $0C8C
	lda $0785
	sec
	sbc $0786
	bcc L829344
	beq L829344
	lda $0C8C
	asl
	sta $0C8C
L829344:
	lda $0767
	xba
	lda $0C8C
	rep #$20
	sta.l WRMPYA
	nop
	nop
	nop
	lda.l RDMPYL
	ldx #$0064
	sta $4204
	sep #$10
	stx $4206
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	lda $4214
	rep #$10
	ldx $4216
	rep #$10
	ldy #$0005
	jsr L82953A
	cmp #$0028
	bcc L829382
	lda #$0028
L829382:
	sep #$20
	brl L8294E1

L829387:
	lda $076A
	sec
	sbc $076B
	bpl L829392
	lda #$00
L829392:
	sta $0C8C
	lda $0786
	sec
	sbc $0785
	bcc L8293A7
	beq L8293A7
	lda $0C8C
	asl
	sta $0C8C
L8293A7:
	lda $0768
	xba
	lda $0C8C
	rep #$20
	sta.l WRMPYA
	nop
	nop
	nop
	lda.l RDMPYL
	ldx #$0064
	sta $4204
	sep #$10
	stx $4206
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	lda $4214
	rep #$10
	ldx $4216
	rep #$10
	asl
	asl
	ldy #$0000
	jsr L82953A
	cmp #$0028
	bcc L8293E7
	lda #$0028
L8293E7:
	sep #$20
	brl L8294F2

L8293EC:
	lda #$14
	sec
	sbc $076F
	bcs L8293F6
	lda #$00
L8293F6:
	asl
	ldy #$0001
	jsr L82953A
	brl L8294F2

L829400:
	lda #$14
	sec
	sbc $0770
	bcs L82940A
	lda #$00
L82940A:
	ldy #$0007
	jsr L82953A
	brl L8294E1

L829413:
	lda $0857
	beq L82941C
	lda #$FF
	bra L82941F
L82941C:
	lda $0856
L82941F:
	ldy #$0004
	jsr L82953A
	brl L8294F2

L829428:
	lda $075D
	jsr L82981D
	rep #$20
	and #$00FF
	clc
	adc #$0008
	sta $15
	lda $0C8F
	ora #$1100
	sta.l WRMPYA
	nop
	nop
	nop
	lda.l RDMPYL
	clc
	adc $15
	tax
	lda.l L88C526,X
	ldy #$0003
	jsr L82953A
	cmp #$0014
	bcc L829460
	lda #$0014
L829460:
	sep #$20
	brl L8294F2

L829465:
	rep #$20
	sep #$10
	lda $19
	jsl L83D8E5
	stx $08FA
	sty $08FB
	sep #$20
	lda #$2D
	sta $08FF
	lda #$00
	sta $08FC
	rep #$30
	lda #$0003
	sta $08FD
	jsl L80B10B
	ldy #$0000
	ldx #$07FE
L829493:
	lda $7F3800,X
	and #$00FF
	cmp #$00FF
	beq L8294B7
	lda $7F2800,X
	cmp #$0400
	bmi L8294B7
	and #$0020
	asl
	asl
	asl
	xba
	sep #$20
	cmp $07D3
	bne L8294B7
	iny
L8294B7:
	rep #$20
	dex
	dex
	bpl L829493
	sep #$20
	tya
	ldy #$0002
	jsr L82953A
	sep #$20
	brl L8294F2

L8294CB:
	rep #$20
	ldx $19
	lda $7F2000,X
	and #$003F
	ldy #$0006
	jsr L82953A
	sep #$20
	brl L8294E1
L8294E1:
	eor #$FF
	ina
	beq L8294F1
	clc
	adc $0C9B
	bcs L8294EE
	lda #$00
L8294EE:
	sta $0C9B
L8294F1:
	rts

L8294F2:
	clc
	adc $0C9B
	bcc L8294FA
	lda #$FF
L8294FA:
	sta $0C9B
	rts

L8294FE:
	php
	rep #$20
	pha
	and #$00FF
	cmp #$0002
	beq L829534
	ina
	tay
	pla
	xba
	and #$00FF
	cmp #$00FF
	beq L829531
	ora #$0E00
	sta.l WRMPYA
	nop
	nop
	nop
	lda.l RDMPYL
	tax
	tya
	sep #$20
	and.l (ITEMS_DATA + 11),X
	beq L829531
	plp
	clc
	rtl

L829531:
	plp
	sec
	rtl

L829534:
	rep #$20
	pla
	plp
	sec
	rtl

L82953A:
	php
	rep #$20
	and #$00FF
	pha
	lda #bank100(L88C526)
	sta $01
	lda #L88C526
	sta $00
	lda $0C8F
	ora #$1100
	sta.l WRMPYA
	nop
	nop
	nop
	lda.l RDMPYL
	clc
	adc $00
	sta $00
	pla
	sep #$20
	xba
	lda [$00],Y
	rep #$20
	sta.l WRMPYA
	nop
	nop
	nop
	lda.l RDMPYL
	sep #$20
	plp
	rts

L829578:
	php
	rep #$20
	lda.l ActiveUnit.Weapon1
	and #$00FF
	ora #$0E00
	sta.l WRMPYA
	nop
	nop
	nop
	lda.l RDMPYL
	tax
	lda.l (ITEMS_DATA + 11),X
	ldx #$0000
	ldy #$000C
	bit #$0001
	bne L8295A6
	ldx #$0008
	ldy #$0008
L8295A6:
	bit #$0002
	bne L8295AE
	ldy #$0004
L8295AE:
	plp
	rts

L8295B0:
	php
	rep #$20
	stz $15
	stz $17
	lda.l (L8383C3 + 1),X
	sep #$20
	sta $15
	bit #$80
	beq L8295C7
	lda #$FF
	sta $16
L8295C7:
	xba
	sta $17
	bit #$80
	beq L8295D2
	lda #$FF
	sta $18
L8295D2:
	plp
	rts

L8295D4:
	php
	sep #$20
	lda #$01
	sta $08FC
	rep #$20
	bra L8295E8

L8295E0:
	php
	sep #$20
	lda #$00
	sta $08FC
L8295E8:
	rep #$20
	inc $0C8F
	lda #$FFFF
	sta $0C8C
	sta $0C89
	sep #$20
	lda $0C92
L8295FB:
	sta $08FF
	lda $0C95
	sta $08FA
	lda $0C96
	sta $08FB
	rep #$20
	lda #$007F
	sta $08FD
	jsl L80B10B
	lda.l ActiveUnit.YPosition
	and #$00FF
	sta $15
	lda.l ActiveUnit.XPosition
	and #$00FF
	sta $17
	stz $19
	jsl L83D8F7
	ldx $19
	lda $7F3800,X
	cmp #$FFFF
	bne L82964D
	sep #$20
	lda $08FF
	cmp #$2D
	bne L829644
	plp
	rts

L829644:
	lda #$00
	sta $08FC
	lda #$2D
	bra L8295FB
L82964D:
	rep #$20
	ldy #$0800
	ldx #$0000
L829655:
	lda $7F3800,X
	sta $7F3000,X
	inx
	dey
	inx
	dey
	bne L829655
	sep #$20
	lda $08ED
	jsl L83D912
	lda.l ActiveUnit.ClassID
	sta $08FF
	lda.l ActiveUnit.YPosition
	sta $08FA
	lda.l ActiveUnit.XPosition
	sta $08FB
	lda #$01
	sta $08FC
	rep #$20
	lda.l ActiveUnit.Movement
	and #$00FF
	cmp #$000D
	bmi L829697
	lda #$000C
L829697:
	sta $08FD
	jsl L80B10B
	ldx #$07FE
L8296A1:
	lda $7F3800,X
	cmp #$FFFF
	beq L829707
	lda $7F2000,X
	and #$003F
	cmp $0C8F
	bcs L829707
	lda $7F2800,X
	cmp #$0400
	bmi L8296CA
	sep #$20
	cmp $08ED
	beq L8296CA
	rep #$20
	bra L829707
L8296CA:
	sep #$20
	lda $7F3000,X
	cmp $0C8C
	bne L8296EF
	phx
	rep #$20
	lda #$0064
	sta $23
	jsl L83F684
	plx
	cmp #$0032
	bmi L829707
	sep #$20
	lda $7F3000,X
	bra L8296F1
L8296EF:
	bcs L829707
L8296F1:
	sta $0C8C
	phx
	rep #$20
	txa
	jsl L83D8E5
	sep #$20
	tya
	xba
	txa
	rep #$20
	sta $0C89
	plx
L829707:
	rep #$20
	dex
	dex
	bpl L8296A1
	plp
	rts

L82970F:
	php
	rep #$20
	lda $0C89
	cmp #$FFFF
	bne L829732
	sep #$20
	lda $08ED
	jsl L83D912
	lda.l ActiveUnit.YPosition
	xba
	lda.l ActiveUnit.XPosition
	xba
	rep #$20
	sta $0C89
L829732:
	sep #$20
	lda $0C89
	sta $08EE
	lda $0C8A
	sta $08EF
	lda #$0B
	sta $08F0
	stz $0C99
	plp
	clc
	rts

L82974B:
	lda $08ED
	jsl L83D912
	sep #$20
	lda.l ActiveUnit.ClassID
	sta $08FF
	lda.l ActiveUnit.YPosition
	sta $08FA
	lda.l ActiveUnit.XPosition
	sta $08FB
	lda #$00
	sta $08FC
	rep #$20
	lda #$007F
	sta $08FD
	jsl L80B10B
	lda.l ActiveUnit.Weapon1
	and #$00FF
	ora #$0E00
	sta.l WRMPYA
	nop
	nop
	nop
	lda.l RDMPYL
	tax
	lda.l (ITEMS_DATA + 11),X
	and #$0007
	xba
	lsr
	lsr
	sta $0C89
	lda #$FFFF
	sta $0C95
	lda #$07FE
	sta $0C92
	rts

L8297AA:
	lda $0C92
	jsl L83D8E5
	stx $0C8C
	sty $0C8F
	lda $08ED
	jsl L83D912
	jsr L829578
	rts

L8297C2:
	jsr L8295B0
	lda $0C8C
	clc
	adc $15
	sta $15
	lda $0C8F
	clc
	adc $17
	sta $17
	stz $19
	jsl L83D8F7
	ldx $19
	rts

L8297DE:
	jsl L83D8E5
	stx $0C95
	sty $0C96
	lda $0C83
	sta $0C8F
	lda $08ED
	jsl L83D912
	lda.l ActiveUnit.ClassID
	and #$00FF
	sta $0C92
	jsr L8295E0
	jsr L82970F
	rts

L829806:
	php
	rep #$30
	and #$00FF
	pha
	lda #bank100(L88CB7A)
	sta $01
	lda #L88CB7A
	sta $00
	pla
	jsr L829834
	plp
	rtl

L82981D:
	php
	rep #$30
	and #$00FF
	pha
	lda #bank100(L88CBD4)
	sta $01
	lda #L88CBD4
	sta $00
	pla
	jsr L829834
	plp
	rts

L829834:
	php
	sep #$20
	ldx #$0000
	ldy #$0000
L82983D:
	pha
	lda [$00],Y
	cmp #$FF
	beq L82984F
	pla
	cmp [$00],Y
	beq L82984C
	iny
	bra L82983D
L82984C:
	txa
	plp
	rts

L82984F:
	iny
	inx
	lda [$00],Y
	cmp #$FF
	beq L82985A
	pla
	bra L82983D
L82985A:
	pla
	txa
	plp
	rts

L82985E:
	php
	rep #$20
	jsl L93D52E
	bcs L8298BC
	ora #$0400
	pha
	sep #$20
	lda $08ED
	jsl L83D912
	lda.l ActiveUnit.ClassID
	sta $08FF
	lda.l ActiveUnit.YPosition
	sta $08FA
	lda.l ActiveUnit.XPosition
	sta $08FB
	lda #$00
	sta $08FC
	rep #$20
	lda #$007F
	sta $08FD
	jsl L80B10B
	rep #$30
	ldx #$07FE
	pla
L8298A0:
	pha
	lda $7F3800,X
	and #$00FF
	cmp #$00FF
	beq L8298B7
	pla
	cmp $7F2800,X
	bne L8298B8
	plp
	clc
	rts

L8298B7:
	pla
L8298B8:
	dex
	dex
	bpl L8298A0
L8298BC:
	plp
	sec
	rts

L8298BF:
	php
	rep #$30
	lda $0C80
	cmp #$00FF
	beq L8298E5
	lda $07D3
	eor #$0001
	and #$00FF
	asl
	asl
	xba
	tax
	ldy #$0020
L8298DA:
	sep #$20
	lda $7F4431,X
	cmp $0C80
	bne L8298E8
L8298E5:
	plp
	clc
	rts

L8298E8:
	rep #$20
	txa
	clc
	adc #$0020
	tax
	dey
	bne L8298DA
	plp
	sec
	rts

L8298F6:
	php
	rep #$20
	lda $08ED
	and #$0020
	asl
	asl
	asl
	asl
	asl
	tax
	ldy #$0020
L829908:
	sep #$20
	lda $7F4431,X
	cmp #$FF
	beq L82992E
	lda $7F4433,X
	cmp $7F4434,X
	bcs L82992E
	rep #$20
	txa
	lsr
	lsr
	lsr
	lsr
	lsr
	sep #$20
	cmp $08ED
	beq L82992E
	plp
	clc
	rts

L82992E:
	rep #$20
	txa
	clc
	adc #$0020
	tax
	dey
	bne L829908
	plp
	sec
	rts

.ALIGN 4096

L82A000:
	php
	lda $04da,X
	and #$00ff
	bne L82A010
	sep #$20
	stz $070a
	rep #$20
L82A010:
	plp
	rts

L82A012:
	php
	sep #$20
	lda #$01
	sta $070a
	rep #$20
	jsr L82A000
	plp
	rtl

L82A021:
	php
	lda $0D02
	and #$00FF
	beq L82A030
	jsr L82A000
	jsr L82BE15
L82A030:
	plp
	rtl

L82A032:
	php
	lda $0D02
	and #$00FF
	beq L82A041
	jsr L82A000
	jsr L82BE15
L82A041:
	plp
	rtl

L82A043:
	php
	jsr L82A000
	plp
	rtl

L82A049:
	rtl

L82A04A:
	php
	sep #$20
	lda #$00
	sta $7EBDE5
	rep #$20
	ldy #$0020
	ldx #$0000
L82A05B:
	lda.l L94FFE0,X
	sta $7F5310,X
	inx
	dey
	inx
	dey
	bne L82A05B
	jsl L80A6DD
	lda #bank100(L82D9EA)
	sta $01
	lda #L82D9EA
	sta $00
	jsl L808EAD
	lda #bank100(L82A0AD)
	sta $01
	lda #L82A0AD
	sta $00
	jsl L808EAD
	jsl L80954E
	jsl L8098F0
	jsl L8087EA
	lda #$0000
	ldy #$0400
	ldx #$0000
L82A09E:
	sta $7EBCFE,X
	inx
	dey
	inx
	dey
	bne L82A09E
	jsr L82A0B4
	plp
	rtl

L82A0AD:
DMA_DATA $7F5310 $0020 $F0

L82A0B4:
	php
	jsr L82A0F4
	bcs L82A0D6
	jsr L82A2E1
	bcs L82A0D6
	jsr L82A0D8
	bcs L82A0D6
	jsr L82A44A
	bcs L82A0D6
	jsr L82ACF5
	bcs L82A0D6
	jsr L82A739
	bcs L82A0D6
	jsr L82B249
L82A0D6:
	plp
	rts

L82A0D8:
	php
	lda $07D3
	and #$00FF
	tax
	sep #$20
	lda $078F,X
	bit #$40
	beq L82A0F1
	rep #$20
	jsr L82E337
	plp
	sec
	rts

L82A0F1:
	plp
	clc
	rts

L82A0F4:
	php
	lda $07D3
	and #$00FF
	tax
	sep #$20
	lda $078F,X
	bit #$20
	beq L82A114
	lda $075D
	cmp #$15
	bne L82A114
	rep #$20
	jsr L82A117
	plp
	sec
	rts

L82A114:
	plp
	clc
	rts

L82A117:
	php
	sep #$20
	lda #$01
	sta $0D02
	stz $0D8F
	lda $07B7
	sta $0D93
	rep #$20
	lda #bank100(L82B293)
	sta $01
	lda #L82B293
	sta $00
	jsl L808EAD
	ldy #$0040
	ldx #$0000
L82A13E:
	lda.l LD0F800,X
	sta $7EBDE7,X
	inx
	dey
	inx
	dey
	bne L82A13E
	jsr L82B2A2
	lda #$FFFF
	sta $7EBD11
	sta $7EBD13
	lda #bank100(L82A043)
	sta $04CC
	lda #L82A043
	sta $04CB
	ldx #$0000
	stx $0D80
	jsr L82B8EA
	jsr L82B318
	jsr L82A228
	sep #$20
	ldx $0D82
	stz $04DA,X
	lda #$00
	xba
	lda $0D0D
	rep #$20
	clc
	adc #$0034
	jsl L8096FA
	lda $04CE,X
	sta $089F
	lda #$000E
	jsl L80B49E
L82A19A:
	lda $0D8F
	and #$00FF
	cmp #$0050
	beq L82A1BC
	jsl L80954E
	jsl L8098F0
	jsl L8087EA
	ldx $0D82
	lda $04CE,X
	sta $089F
	bra L82A19A
L82A1BC:
	sep #$20
	stz $0D8F
	jsr L82C24E
	jsr L82A1C9
	plp
	rts

L82A1C9:
	php
	ldx #$0020
	sep #$20
	lda #$82
	sta.l $0004CD,X
	lda #$A1
	sta.l $0004CC,X
	lda #$F5
	sta.l $0004CB,X
	lda #$82
	sta.l $0004CD
	lda #$C0
	sta.l $0004CC
	lda #$DD
	sta.l $0004CB
	plp
	rts

L82A1F5:
.ACCU 16
	php
	lda $0D8E
	bit #$0010
	beq L82A21A
	lda #$0000
	jsr L82DC5C
	jsr L82C2AA
	bcc L82A226
	lda #$0080
	bit $0D02
	bne L82A21A
	tsb $0D02
	jsl L83F312
	plp
	rtl

L82A21A:
	lda #$0080
	trb $0D02
	jsr L82D61A
	jsr L82C1B5
L82A226:
	plp
	rtl

L82A228:
	php
	rep #$20
	lda $0D0D
	and #$00FF
	cmp #$0003
	beq L82A241
	stz $0DF5
	lda #$0020
	sta $0DF7
	bra L82A24C
L82A241:
	stz $0DF7
	lda #$0020
	sta $0DF5
	bra L82A24C
L82A24C:
	ldy $0DF5
	jsr L82B58E
	sep #$20
	ldx $0D82
	lda #$01
	sta $04DC,X
	rep #$20
	ldy $0DF7
	jsr L82B5FE
	lda #bank100(L82A012)
	sta $04CC
	lda #L82A012
	sta $04CB
	lda #bank100(L82A27E)
	sta $04EC
	lda #L82A27E
	sta $04EB
	plp
	rts

L82A27E:
	php
	sep #$20
	ldx $0D82
	lda $04DC,X
	bne L82A2CB
	lda $0D02
	bit #$10
	beq L82A2BC
	lda $0D8F
	cmp #$30
	beq L82A2CD
	bcs L82A2C4
	cmp #$20
	bcs L82A2AD
	cmp #$11
	bcs L82A2C4
	lda $0D8F
	sta $7EBDE6
	jsr L82C968
	bra L82A2C4
L82A2AD:
	lda #$30
	sec
	sbc $0D8F
	sta $7EBDE6
	jsr L82C968
	bra L82A2C4
L82A2BC:
	lda #$11
	sta $0D02
	stz $0D8F
L82A2C4:
	lda $0D8F
	ina
	sta $0D8F
L82A2CB:
	plp
	rtl

L82A2CD:
	rep #$20
	lda #bank100(L82D0B2)
	sta $01
	lda #L82D0B2
	sta $00
	sep #$20
	jsl L808EAD
	bra L82A2C4

L82A2E1:
	php
	sep #$20
	lda $078F
	bit #$20
	bne L82A2EE
	plp
	clc
	rts

L82A2EE:
	lda $07D3
	and #$FF
	tax
	lda $075D,X
	cmp #$14
	beq L82A305
	cmp #$0F
	beq L82A305
	cmp #$1C
	beq L82A305
	bne L82A308
L82A305:
	jsr L82A30B
L82A308:
	plp
	sec
	rts

L82A30B:
	php
	sep #$20
	lda #$01
	sta $0D02
	stz $0D8F
	lda $07B7
	sta $0D93
	lda #$03
	sta $0D2D
	rep #$20
	lda #bank100(L82B293)
	sta $01
	lda #L82B293
	sta $00
	jsl L808EAD
	ldy #$0040
	ldx #$0000
L82A337:
	lda.l LD0F800,X
	sta $7EBDE7,X
	inx
	dey
	inx
	dey
	bne L82A337
	lda #$FFFF
	sta $7EBD11
	sta $7EBD13
	lda #bank100(L82A043)
	sta $04CC
	lda #L82A043
	sta $04CB
	ldy #$0000
	jsr L82B58E
	sep #$20
	lda #$01
	sta $04DC,X
	sta $06FB
	rep #$20
	ldy #$0020
	jsr L82B5FE
	rep #$20
	lda #bank100(L82A405)
	sta $04EC
	lda #L82A405
	sta $04EB
	jsl L80954E
	jsl L8098F0
	jsl L8087EA
	sep #$20
	lda #$00
	sta $06FB
	ldx $0D82
	stz $04DA,X
	rep #$20
	jsr L82A3E9
L82A3A0:
	ldx $0D82
	lda $04DA,X
	and #$00FF
	bne L82A3B9
	jsl L80954E
	jsl L8098F0
	jsl L8087EA
	bra L82A3A0
L82A3B9:
	ldx $0D84
	sep #$20
	stz $04DB,X
	lda #$01
	sta $04DC
	rep #$20
	ldx #$0020
L82A3CB:
	phx
	jsl L80954E
	jsl L8098F0
	jsl L8087EA
	plx
	dex
	bne L82A3CB
	sep #$20
	stz $0D8F
	jsr L82C24E
	jsr L82A1C9
	plp
	rts

L82A3E9:
.ACCU 16
	php
	phx
	lda $0D11,X
	and #$00FF
	cmp #$0014
	beq L82A3FB
	lda #$001C
	bra L82A3FE
L82A3FB:
	lda #$0034
L82A3FE:
	jsl L8096FA
	plx
	plp
	rts

L82A405:
	php
	sep #$20
	lda $04DC
	bne L82A439
	rep #$20
	lda $04EE
	sta $089F
	lda #$006E
	jsl L80B49E
	sep #$20
	lda #$00
	sta $2130
	lda #$10
	sta $2131
	lda #$28
	sta $2132
	lda #$48
	sta $2132
	lda #$88
	sta $2132
	bra L82A448
L82A439:
	lda #$00
	sta $2130
	lda #$10
	sta $2131
	lda #$E0
	sta $2132
L82A448:
	plp
	rtl

L82A44A:
.ACCU 16
	php
	lda $078F
	bit #$0010
	beq L82A49F
	sep #$20
	lda #$05
	sta $0D02
	rep #$20
	jsr L82B2A2
	ldy #$0040
	ldx #$0000
L82A465:
	lda.l LD0F800,X
	sta $7EBDE7,X
	inx
	dey
	inx
	dey
	bne L82A465
	jsr L82E2EA
	ldx #$0000
	jsr L82B318
	lda #$FFFF
	sta $7EBD07
	sta $7EBD09
	sta $7EBD0B
	ldx #$0000
	stx $0D80
	jsr L82A4B9
	bcs L82A49C
	jsr L82A648
	jsr L82A4A2
L82A49C:
	plp
	sec
	rts

L82A49F:
	plp
	clc
	rts

L82A4A2:
	php
	lda $0D52
	and #$00FF
	jsl L83DB7D
	lda $0D72
	and #$00FF
	jsl L83DB7D
	plp
	rts

L82A4B9:
	php
	lda #$FFFF
	sta $0DFB
	stz $0DF9
	sep #$20
	lda $0788
	sta $0DF5
	lda $078A
	sta $0DF7
	rep #$20
	jsr L82A4F4
	lda #$002A
	jsr L82A525
	bcs L82A4F1
	lda #$001C
	jsr L82A525
	bcs L82A4F1
	lda #$002F
	jsr L82A525
	bcs L82A4F1
	plp
	clc
	rts

L82A4F1:
	plp
	sec
	rts

L82A4F4:
	php
	lda $07D3
	and #$00FF
	eor #$0001
	tax
	sep #$20
	lda $0789
	cmp $078A
	bcs L82A517
	lda #$20
	sta $7EBD07,X
	lda #$40
	sta $7EBD09,X
	bra L82A523
L82A517:
	lda #$40
	sta $7EBD07,X
	lda #$20
	sta $7EBD09,X
L82A523:
	plp
	rts

L82A525:
	php
	sep #$20
	cmp $0763
	bne L82A545
	rep #$20
	lda #$0000
	sta $0DFB
	sep #$20
	lda $0787
	sta $0DF6
	lda $0789
	sta $0DF8
	bra L82A568
L82A545:
	rep #$20
	inc $0DF9
	jsr L82A573
	bcs L82A570
	pha
	jsl L83D912
	pla
	sep #$20
	jsr L82A5A0
	lda.l ActiveUnit.YPosition
	sta $0DF6
	lda.l ActiveUnit.XPosition
	sta $0DF8
L82A568:
	rep #$20
	jsr L82A5CC
	plp
	clc
	rts

L82A570:
	plp
	sec
	rts

L82A573:
	php
	ldx #$0000
	and #$00FF
	sta $15
L82A57C:
	lda $7F4446,X
	and #$00FF
	cmp $15
	beq L82A594
	txa
	clc
	adc #$0020
	cmp #$0800
	beq L82A59D
	tax
	bra L82A57C
L82A594:
	txa
	lsr
	lsr
	lsr
	lsr
	lsr
	plp
	clc
	rts

L82A59D:
	plp
	sec
	rts

L82A5A0:
	php
	pha
	lda $0DF9
	cmp #$F001
	ora $A2
	rts

L82A5AB:
.db $00 $80 $03 $A2 $40 $00

L82A5B1:
	lda.l ActiveUnit.ClassID
	sta $0D11,X
	lda.l ActiveUnit.YPosition
	sta $0D08,X
	lda.l ActiveUnit.XPosition
	sta $0D09,X
	pla
	sta $0D12,X
	plp
	rts

L82A5CC:
	php
	stz $1B
	sep #$20
	lda $0DF6
	cmp $0DF5
	beq L82A5E7
	bcc L82A5E1
	lda #$01
	sta $1B
	bra L82A5E7
L82A5E1:
	lda #$02
	sta $1B
	bra L82A5E7
L82A5E7:
	lda $0DF8
	cmp $0DF7
	beq L82A5FB
	bcc L82A5F7
	lda #$01
	sta $1C
	bra L82A5FB
L82A5F7:
	lda #$02
	sta $1C
L82A5FB:
	rep #$20
	jsr L82A602
	plp
	rts

L82A602:
	php
	ldx #$0000
L82A606:
	lda.l L82A638,X
	cmp $1B
	beq L82A612
	inx
	inx
	bra L82A606
L82A612:
	lda.l L82A640,X
	pha
	lda $0DFB
	beq L82A626
	lda $0DF9
	clc
	adc #$0003
	tax
	bra L82A62F
L82A626:
	lda #$FFFF
	sta $0DFB
	ldx $07D3
L82A62F:
	pla
	sep #$20
	sta $7EBD07,X
	plp
	rts

L82A638:
.db $00 $01 $00 $02 $02 $00 $01 $00
L82A640:
.db $00 $00 $A0 $00 $60 $00 $80 $00

L82A648:
	php
	ldx #$0000
L82A64C:
.ACCU 16
	phx
	lda $7EBD07,X
	and #$00FF
	stx $21
	tay
	lda $21
	and #$00FF
	asl
	tax
	jsr (L82A670,X)
	plx
	inx
	cpx #$0006
	bcc L82A64C
	jsr L82B504
	jsr L82B55E
	plp
	rts

L82A670:
.ACCU 16
	stx $FEB5
	lda $1B,X
	lda [$8B],Y
	lda [$7C],Y
	ldx $9A
	ldx $08
	ldx #$0040
	lda #$0000
	sta $0D14,X
	lda #$6000
	sta $0D1C,X
	lda #$0000
	sta $0D1E,X
	jsr L82A6B8
	stx $0D8A
	plp
	rts

L82A69A:
	php
	ldx #$0060
	lda #$0080
	sta $0D14,X
	lda #$6800
	sta $0D1C,X
	lda #$1400
	sta $0D1E,X
	jsr L82A6B8
	stx $0D8C
	plp
	rts

L82A6B8:
	php
	phy
	stx $0D80
	lda #$0001
	sta $0D02,X
	tya
	beq L82A6E4
	cmp #$00A0
	beq L82A6D5
	cmp #$0060
	beq L82A6DA
	cmp #$0080
	beq L82A6DF
L82A6D5:
	lda #$0003
	bra L82A6E7

L82A6DA:
	lda #$0001
	bra L82A6E7

L82A6DF:
	lda #$0000
	bra L82A6E7

L82A6E4:
	lda #$0002
L82A6E7:
	sep #$20
	sta $0D0D,X
	clc
	adc #$04
	sta $0D0C,X
	rep #$20
	lda $07D3
	and #$00FF
	bne L82A701
	jsr L82B677
	bra L82A704

L82A701:
	jsr L82B6A0
L82A704:
	lda $074C
	pha
	and #$FFF0
	sta $074C
	phx
	jsr L82CD64
	jsl L80954E
	jsl L8098F0
	jsl L8087EA
	plx
	pla
	sta $074C
	lda $0D11,X
	and #$00FF
	plx
	jsr L82CF21
	jsr L82CF90
	lda #$0001
	sta $7EBD23,X
	plp
	rts

L82A739:
	php
	sep #$20
	lda $07D3
	bne L82A746
	lda $075D
	bra L82A749

L82A746:
	lda $075E
L82A749:
	cmp #$23
	bne L82A753
	jsr L82A756
	plp
	sec
	rts

L82A753:
	plp
	clc
	rts

L82A756:
	php
	phx
	sep #$20
	lda #$05
	sta $0D02
	stz $0DFE
	rep #$20
	jsr L82B2A2
	ldy #$0040
	ldx #$0000
L82A76D:
	lda.l LD0F800,X
	sta $7EBDE7,X
	inx
	dey
	inx
	dey
	bne L82A76D
	jsr L82E2EA
	ldx #$0000
	stx $0D80
	jsr L82B8EA
	lda $0D13
	and #$00FF
	cmp #$0024
	bne L82A7A4
	jsr L82B318
	lda $1D
	and #$00FF
	asl
	tax
	jsr (L82B29C,X)
	jsr L82B2E8
	bra L82A7BA

L82A7A4:
	jsr L82B318
	lda $1D
	and #$00FF
	asl
	tax
	jsr (L82B29C,X)
	jsr L82A892
	jsr L82A819
	jsr L82A7BD
L82A7BA:
	plx
	plp
	rts

L82A7BD:
	php
	jsr L82A7DC
	lsr
	sta $15
	lda #$0040
	sec
	sbc $15
	sep #$20
	sta $0D0A
	rep #$20
	asl
	tax
	lda.l L82AC73,X
	sta $0D08
	plp
	rts

L82A7DC:
	php
	lda $0DF5
	and #$7FFF
	sta $15
	lda $0DF7
	and #$7FFF
	cmp $15
	bcs L82A801
	lda $0DF5
	and #$7FFF
	sta $35
	lda $23
	and #$7FFF
	xba
	sta $33
	bra L82A811

L82A801:
	lda $0DF7
	and #$7FFF
	sta $35
	lda $25
	and #$7FFF
	xba
	sta $33
L82A811:
	jsl L808DBA
	lda $33
	plp
	rts

L82A819:
	php
	ldx $0D84
	lda $04CE,X
	sta $0DF9
	lda $04D0,X
	sta $0DFB
	ldx $0D86
	lda $04CE,X
	sta $0DF5
	xba
	sta $0D44
	lda $04D0,X
	sta $0DF7
	xba
	sta $0D46
	lda $0DF9
	sec
	sbc $0DF5
	bpl L82A850
	eor #$FFFF
	ina
	ora #$8000
L82A850:
	tax
	stx $23
	lda $0DFB
	sec
	sbc $0DF7
	bpl L82A863
	eor #$FFFF
	ina
	ora #$8000
L82A863:
	tay
	sty $25
	jsl L82AB6C
	pha
	jsl L82AB28
	jsr L82A882
	sta $0DF5
	pla
	jsl L82AAE5
	jsr L82A882
	sta $0DF7
	plp
	rts

L82A882:
	php
	sta $2D
	lda #$0003
	sta $2F
	jsl L808D1E
	lda $31
	plp
	rts

L82A892:
	php
	ldx #$0000
L82A896:
	phx
	lda $7EBD07,X
	and #$00FF
	stx $21
	tay
	lda $21
	and #$00FF
	asl
	tax
	jsr (L82A8BA,X)
	plx
	inx
	cpx #$0004
	bcc L82A896
	jsr L82B504
	jsr L82A8C2
	plp
	rts

L82A8BA:
.dw L82B58E
.dw L82B5FE
.dw L82B71B
.dw L82B78B

L82A8C2:
	php
	ldx #$0000
	stx $23
L82A8C8:
	lda $04BE,X
	beq L82A8CF
	stx $23
L82A8CF:
	txa
	clc
	adc #$0020
	tax
	cmp #$0220
	bcc L82A8C8
	ldx $23
	sep #$20
	lda #$82
	sta.l $0004CD,X
	lda #$A8
	sta.l $0004CC,X
	lda #$F2
	sta.l $0004CB,X
	plp
	rts

L82A8F2:
.ACCU 16
	php
	lda $0D02
	and #$00FF
	beq L82A904
	jsr L82A000
	jsr L82A906
	jsr L82BE15
L82A904:
	plp
	rtl

L82A906:
	php
	jsr L82A912
	jsr L82AA39
	jsr L82A966
	plp
	rts

L82A912:
	php
	sep #$20
	lda $0D91
	bit #$20
	beq L82A93A
	rep #$20
	jsr L82A93C
	ldx $0D86
	jsl L8096FA
	sep #$20
	lda #$00
	sta $04DA,X
	sta $0D91
	sta $0DFF
	lda #$07
	sta $0DFE
L82A93A:
	plp
	rts

L82A93C:
	php
	sep #$20
	lda $0D13
	and #$FF
	cmp #$25
	bne L82A952
	lda $0D0D
	and #$FF
	clc
	adc #$28
	bra L82A964

L82A952:
	cmp #$24
	beq L82A95E
	cmp #$26
	beq L82A962
	lda #$36
	bra L82A964

L82A95E:
	lda #$37
	bra L82A964

L82A962:
	lda #$35
L82A964:
	plp
	rts

L82A966:
.ACCU 16
	php
	lda $0DFE
	and #$00FF
	cmp #$0004
	bne L82A98D
	sep #$20
	stz $0DFE
	ldx $0D86
	lda #$01
	sta $04DA,X
	rep #$20
	lda #$0034
	jsl L8096FA
	stz $04DB,X
	bra L82A9DC

L82A98D:
	jsr L82AA0A
	sep #$20
	lda $0DFD
	cmp #$1C
	bcs L82A9DC
	cmp #$10
	bcs L82A9A3
	cmp #$08
	bcs L82A9B4
	bcc L82A9C8
L82A9A3:
	lda $0DFF
	cmp #$01
	beq L82A9DC
	lda #$01
	sta $0D91
	sta $0DFF
	bra L82A9DC

L82A9B4:
	lda $0DFF
	cmp #$02
	beq L82A9DC
	lda #$02
	sta $0D91
	sta $0DFF
	jsr L82A9DE
	bra L82A9DC

L82A9C8:
	lda $0DFF
	cmp #$03
	beq L82A9DC
	ldx $0D86
	lda #$01
	sta $04DB,X
	lda #$03
	sta $0DFF
L82A9DC:
	plp
	rts

L82A9DE:
	php
	sep #$20
	lda #$04
	sta $0D92
	rep #$20
	and #$00FF
	tax
	lda.l L809DCF,X
	jsl L80B467
	sep #$20
	lda $0D93
	bit #$02
	beq L82AA08
	rep #$20
	lda #$0039
	jsl L80B467
	sep #$20
L82AA08:
	plp
	rts

L82AA0A:
.ACCU 16
	php
	lda $0D44
	xba
	and #$00FF
	sec
	sbc $0DF9
	bcs L82AA1C
	eor #$FFFF
	ina
L82AA1C:
	sta $27
	lda $0D46
	xba
	and #$00FF
	sec
	sbc $0DFB
	bcs L82AA2F
	eor #$FFFF
	ina
L82AA2F:
	clc
	adc $27
	sep #$20
	sta $0DFD
	plp
	rts

L82AA39:
.ACCU 16
	php
	lda $0DFE
	and #$00FF
	beq L82AA62
	ldx #$0000
	jsr L82AA8E
	ldx $0D86
	sta $04CE,X
	ldx #$0002
	jsr L82AA8E
	pha
	jsr L82AA64
	pla
	sec
	sbc $17
	ldx $0D86
	sta $04D0,X
L82AA62:
	plp
	rts

L82AA64:
	php
	sep #$20
	lda $0D0A
	ina
	sta $0D0A
	rep #$20
	cmp #$0040
	bcc L82AA7E
	sta $15
	lda #$0040
	asl
	sec
	sbc $15
L82AA7E:
	asl
	tax
	rep #$20
	lda.l L82AC73,X
	sec
	sbc $0D08
	sta $17
	plp
	rts

L82AA8E:
	php
	lda $0DF5,X
	and #$7FFF
	sta $27
	lda $0D44,X
	xba
	and #$00FF
	cmp $0DF9,X
	beq L82AAD0
	bcs L82AABB
	bcc L82AAA7
L82AAA7:
	lda $0D44,X
	clc
	adc $27
	sta $0D44,X
	xba
	and #$00FF
	cmp $0DF9,X
	bcs L82AAD0
	bra L82AACD

L82AABB:
	lda $0D44,X
	sec
	sbc $27
	sta $0D44,X
	xba
	and #$00FF
	cmp $0DF9,X
	bcc L82AAD0
L82AACD:
	plp
	sec
	rts

L82AAD0:
	pha
	lda #$0001
	txy
	beq L82AAD8
	asl
L82AAD8:
	eor #$FFFF
	and $0DFE
	sta $0DFE
	pla
	plp
	clc
	rts

L82AAE5:
	rep #$30
	ldy #$0000
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
	rep #$20
	ldx $4216
	stx $15
	lda $4214
	bit #$0001
	beq L82AB11
	lda #$003F
	sec
	sbc $15
	tax
L82AB11:
	txa
	asl
	tax
	lda.l L82AC73,X
	asl
	sta $15
	lda $4214
	and #$0002
	lsr
	lsr
	ror $15
	lda $15
	rtl

L82AB28:
	rep #$30
	ldy #$0000
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
	rep #$20
	ldx $4216
	stx $15
	lda $4214
	bit #$0001
	bne L82AB54
	lda #$0040
	sec
	sbc $15
	tax
L82AB54:
	txa
	asl
	tax
	lda.l L82AC73,X
	asl
	sta $15
	lda $4214
	ina
	and #$0002
	lsr
	lsr
	ror $15
	lda $15
	rtl

L82AB6C:
	rep #$30
	stz $19
	tya
	asl
	rol $19
	txa
	asl
	rol $19
	lda $19
	bit #$0002
	beq L82AB84
	eor #$0001
	sta $19
L82AB84:
	asl
	asl
	asl
	asl
	asl
	asl
	pha
	tya
	and #$7FFF
	beq L82ABC7
	cmp #$0100
L82AB94:
	bcs L82AB94
	xba
	sta $4204
	txa
	and #$7FFF
	beq L82ABE6
	cmp #$0100
L82ABA3:
	bcs L82ABA3
	sep #$20
	sta $4206
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	rep #$20
	lda $4214
	sta $17
	ldx #$0000
L82ABBB:
	inx
	inx
	lda.l L82ABF1,X
	cmp $17
	bcc L82ABBB
	txa
	lsr
L82ABC7:
	sta $1D
	lda $19
	bit #$0001
	beq L82ABD8
	lda #$003F
	sec
	sbc $1D
	sta $1D
L82ABD8:
	pla
	clc
	adc $1D
	rtl

L82ABDD:
	pla
	clc
	adc #$0040
	and #$00FF
	rtl

L82ABE6:
	pla
	beq L82ABED
	lda #$00C0
	rtl

L82ABED:
	lda #$0040
	rtl

L82ABF1:
.db $00 $00 $06 $00 $0D $00 $13 $00
.db $19 $00 $20 $00 $26 $00 $2C $00
.db $33 $00 $39 $00 $40 $00 $47 $00
.db $4E $00 $55 $00 $5C $00 $63 $00
.db $6A $00 $71 $00 $79 $00 $81 $00
.db $89 $00 $91 $00 $99 $00 $A2 $00
.db $AB $00 $B4 $00 $BE $00 $C8 $00
.db $D2 $00 $DD $00 $E8 $00 $F4 $00
.db $00 $01 $0D $01 $1A $01 $29 $01
.db $38 $01 $48 $01 $59 $01 $6B $01
.db $7F $01 $94 $01 $AB $01 $C4 $01
.db $DF $01 $FD $01 $1D $02 $42 $02
.db $6A $02 $98 $02 $CB $02 $07 $03
.db $4C $03 $9D $03 $FE $03 $74 $04
.db $07 $05 $C3 $05 $BE $06 $1C $08
.db $27 $0A $8E $0D $5B $14 $BC $28
.db $4F $37

L82AC73:
.db $00 $00 $06 $00 $0D $00
.db $13 $00 $19 $00 $1F $00 $26 $00
.db $2C $00 $32 $00 $38 $00 $3E $00
.db $44 $00 $4A $00 $50 $00 $56 $00
.db $5C $00 $62 $00 $68 $00 $6D $00
.db $73 $00 $79 $00 $7E $00 $84 $00
.db $89 $00 $8E $00 $93 $00 $98 $00
.db $9D $00 $A2 $00 $A7 $00 $AC $00
.db $B1 $00 $B5 $00 $B9 $00 $BE $00
.db $C2 $00 $C6 $00 $CA $00 $CE $00
.db $D1 $00 $D5 $00 $D8 $00 $DC $00
.db $DF $00 $E2 $00 $E5 $00 $E7 $00
.db $EA $00 $ED $00 $EF $00 $F1 $00
.db $F3 $00 $F5 $00 $F7 $00 $F8 $00
.db $FA $00 $FB $00 $FC $00 $FD $00
.db $FE $00 $FF $00 $FF $00 $00 $01
.db $00 $01 $00 $01

L82ACF5:
	php
	sep #$20
	lda $07D3
	bne L82AD02
	lda $075F
	bra L82AD05
L82AD02:
	lda $0760
L82AD05:
	cmp #$40
	bcc L82AD20
	cmp #$4F
	bcs L82AD23
	rep #$20
	pha
	jsr L82E29C
	lda #$8018
	sta $0876
	pla
	jsr L82AD2E
L82AD1D:
	plp
	sec
	rts

L82AD20:
	plp
	clc
	rts

L82AD23:
	cmp #$D06B
	sbc $20C2,Y
	jsr L82AEE9
	bra L82AD1D

L82AD2E:
	php
	sec
	sbc #$0040
	sta $15
	lda $15
	and #$00FF
	asl
	tax
	jsr (L82AD41,X)
	plp
	rts

L82AD41:
.dw L82B181
.dw L82B181
.dw L82B181
.dw L82B181
.dw L82ADAF
.dw L82B0DE
.dw L82B0DE
.dw L82AE82
.dw L82AFFA
.dw L82ADAF
.dw L82AD5F
.dw L82AF45
.dw L82AE0C
.dw L82AD64
.dw L82AF96

L82AD5F:
	jsl L82D291
	rts

L82AD64:
	php
	sep #$20
	lda #$09
	sta $0D02
	rep #$20
	jsr L82B2A2
	lda #bank100(L82A043)
	sta $04CC
	lda #L82A043
	sta $04CB
	stx $0D80
	jsr L82B8EA
	lda #$0003
	sta $0D0D
	ldy #$0020
	jsr L82B58E
	ldy #$0000
	jsr L82B6C9
	lda #bank100(L82A012)
	sta $04CC
	lda #L82A012
	sta $04CB
	lda #bank100(L82B129)
	sta $04EC
	lda #L82B129
	sta $04EB
	plp
	rts

L82ADAF:
	php
	sep #$20
	lda #$09
	sta $0D02
	rep #$20
	jsr L82B2A2
	lda #bank100(L82A043)
	sta $04CC
	lda #L82A043
	sta $04CB
	ldx #$0000
	stx $0D80
	jsr L82B8EA
	jsr L82B318
	ldy #$0020
	jsr L82B58E
	ldy #$0040
	jsr L82B5FE
	ldy #$0000
	jsr L82B6C9
	lda #bank100(L82B163)
	sta $050C
	lda #L82B163
	sta $050B
	lda #bank100(L82A012)
	sta $04CC
	lda #L82A012
	sta $04CB
	lda #bank100(L82A043)
	sta $04EC
	lda #L82A043
	sta $04EB
	plp
	rts

L82AE0C:
	php
	sep #$20
	lda #$09
	sta $0D02
	rep #$20
	jsr L82B2A2
	lda #bank100(L82A043)
	sta $04CC
	lda #L82A043
	sta $04CB
	ldx #$0000
	stx $0D80
	jsr L82B8EA
	jsr L82AE5D
	ldx #$0000
	jsr L82B318
	ldy #$0020
	jsr L82B58E
	ldy #$0000
	jsr L82B6C9
	lda #bank100(L82A012)
	sta $04CC
	lda #L82A012
	sta $04CB
	lda #bank100(L82B163)
	sta $04EC
	lda #L82B163
	sta $04EB
	plp
	rts

L82AE5D:
	php
	sep #$20
	lda $0D13
	cmp #$4C
	bne L82AE80
	lda #$01
	eor $07D3
	rep #$20
	and #$00FF
	tax
	sep #$20
	lda $08F3
	sta $0787,X
	lda $08F4
	sta $0789,X
L82AE80:
	plp
	rts

L82AE82:
	php
	sep #$20
	lda #$09
	sta $0D02
	rep #$20
	jsr L82B2A2
	jsr L82B1EC
	lda #bank100(L82A043)
	sta $04CC
	lda #L82A043
	sta $04CB
	ldx #$0000
	stx $0D80
	jsr L82B8EA
	sep #$20
	jsr L82AED9
	lda #$03
	sta $0D0D
	rep #$20
	ldy #$0020
	jsr L82B58E
	ldy #$0000
	jsr L82B6C9
	lda #bank100(L82A012)
	sta $04CC
	lda #L82A012
	sta $04CB
	lda #bank100(L82B13F)
	sta $04EC
	lda #L82B13F
	sta $04EB
	plp
	rts

L82AED9:
	lda $0D10,X
	beq L82AEE5
	lda #$8D20
	stx $0D,Y
	bra L82AEE8
L82AEE5:
	stz $0D96
L82AEE8:
	rts

L82AEE9:
	php
	sep #$20
	lda #$09
	sta $0D02
	rep #$20
	jsr L82B2A2
	lda #bank100(L82A043)
	sta $04CC
	lda #L82A043
	sta $04CB
	ldx #$0000
	stx $0D80
	jsr L82B8EA
	sep #$20
	stz $0D96
	lda #$03
	sta $0D0D
	rep #$20
	ldy #$0020
	jsr L82B58E
	ldy #$0000
	jsr L82B6C9
	lda #bank100(L82A012)
	sta $04CC
	lda #L82A012
	sta $04CB
	lda #bank100(L82AF3D)
	sta $04EC
	lda #L82AF3D
	sta $04EB
	plp
	rts

L82AF3D:
	jsl L82A043
	jsr L82BBE1
	rtl

L82AF45:
	php
	sep #$20
	lda #$09
	sta $0D02
	rep #$20
	jsr L82B2A2
	lda #bank100(L82A043)
	sta $04CC
	lda #L82A043
	sta $04CB
	ldx #$0000
	stx $0D80
	jsr L82B8EA
	sep #$20
	lda #$03
	sta $0D0D
	rep #$20
	ldy #$0020
	jsr L82B58E
	ldy #$0000
	jsr L82B6C9
	lda #bank100(L82A012)
	sta $04CC
	lda #L82A012
	sta $04CB
	lda #bank100(L82B133)
	sta $04EC
	lda #L82B133
	sta $04EB
	plp
	rts

L82AF96:
	php
	sep #$20
	lda #$09
	sta $0D02
	rep #$20
	jsr L82B2A2
	lda #bank100(L82A043)
	sta $04CC
	lda #L82A043
	sta $04CB
	ldx #$0000
	stx $0D80
	jsr L82B8EA
	sep #$20
	jsr L82AED9
	lda #$03
	sta $0D0D
	rep #$20
	ldy #$0020
	jsr L82B58E
	ldy #$0000
	jsr L82B6C9
	lda #bank100(L82A012)
	sta $04CC
	lda #L82A012
	sta $04CB
	lda #bank100(L82B14B)
	sta $04EC
	lda #L82B14B
	sta $04EB
	plp
	rts

L82AFEA:
	lda $0D10,X
	beq L82AFF4
	stz $0D96
	bra L82AFF9
L82AFF4:
	lda #$8D20
	stx $0D,Y
L82AFF9:
	rts

L82AFFA:
	php
	sep #$20
	lda #$09
	sta $0D02
	rep #$20
	jsr L82B2A2
	lda #bank100(L82A043)
	sta $04CC
	lda #L82A043
	sta $04CB
	ldx #$0000
	stx $0D80
	jsr L82B8EA
	sep #$20
	jsr L82B0CE
	lda #$03
	sta $0D0D
	rep #$20
	ldy #$0020
	jsr L82B58E
	ldy #$0000
	jsr L82B6C9
	ldy #$0020
	ldx #$0000
L82B03A:
	lda.l $0004BE,X
	sta.l $0004FE,X
	inx
	dey
	inx
	dey
	bne L82B03A
	ldy #$0020
	ldx #$0000
L82B04E:
	lda.l $0004BE,X
	sta.l $00051E,X
	inx
	dey
	inx
	dey
	bne L82B04E
	ldy #$0020
	ldx #$0000
L82B062:
	lda.l $0004BE,X
	sta.l $00053E,X
	inx
	dey
	inx
	dey
	bne L82B062
	ldy #$0020
	ldx #$0000
L82B076:
	lda.l $0004BE,X
	sta.l $00055E,X
	inx
	dey
	inx
	dey
	bne L82B076
	lda #bank100(L82A012)
	sta $04CC
	lda #L82A012
	sta $04CB
	lda #bank100(L82B157)
	sta $056C
	lda #L82B157
	sta $056B
	lda #bank100(L82A043)
	sta $04EC
	lda #L82A043
	sta $04EB
	lda #bank100(L82A049)
	sta $050C
	lda #L82A049
	sta $050B
	lda #bank100(L82A049)
	sta $052C
	lda #L82A049
	sta $052B
	lda #bank100(L82A049)
	sta $054C
	lda #L82A049
	sta $054B
	plp
	rts

L82B0CE:
	lda $0D10,X
	beq L82B0D8
	stz $0D96
	bra L82B0DD
L82B0D8:
	lda #$8D20
	stx $0D,Y
L82B0DD:
	rts

L82B0DE:
	php
	sep #$20
	lda #$09
	sta $0D02
	rep #$20
	jsr L82B2A2
	lda #bank100(L82A043)
	sta $04CC
	lda #L82A043
	sta $04CB
	ldx #$0000
	stx $0D80
	jsr L82B8EA
	jsr L82B318
	ldy #$0020
	jsr L82B58E
	ldy #$0000
	jsr L82B6C9
	lda #bank100(L82A012)
	sta $04CC
	lda #L82A012
	sta $04CB
	lda #bank100(L82B163)
	sta $04EC
	lda #L82B163
	sta $04EB
	plp
	rts

L82B129:
	php
	jsl L82A043
	jsr L82B982
	plp
	rtl

L82B133:
	php
	phx
	jsl L82A043
	jsr L82B9EE
	plx
	plp
	rtl

L82B13F:
	php
	phx
	jsl L82A043
	jsr L82BA31
	plx
	plp
	rtl

L82B14B:
	php
	phx
	jsl L82A043
	jsr L82BB23
	plx
	plp
	rtl

L82B157:
	php
	phx
	jsl L82A043
	jsr L82BCBA
	plx
	plp
	rtl

L82B163:
	php
	phx
	jsl L82A043
	ldx #$0020
	ldy #$0000
	jsr L82EDB0
	ldx #$0000
	ldy #$0020
	jsr L82F06B
	jsr L82B938
	plx
	plp
	rtl

L82B181:
	php
	sep #$20
	lda #$09
	sta $0D02
	rep #$20
	jsr L82B2A2
	jsr L82B202
	jsr L82B1EC
	lda #bank100(L82A043)
	sta $04CC
	lda #L82A043
	sta $04CB
	lda #bank100(L82B293)
	sta $01
	lda #L82B293
	sta $00
	jsl L808EAD
	jsl L80954E
	jsl L8098F0
	jsl L8087EA
	ldx #$0000
	stx $0D80
	jsr L82B8EA
	jsr L82B318
	ldy #$0020
	jsr L82B58E
	ldy #$0000
	jsr L82B6C9
	lda #bank100(L82A012)
	sta $04CC
	lda #L82A012
	sta $04CB
	lda #bank100(L82B22B)
	sta $04EC
	lda #L82B22B
	sta $04EB
	plp
	rts

L82B1EC:
	php
	sep #$20
	lda $07D3
	beq L82B1FB
	lda #$10
	tsb $0D93
	bra L82B200

L82B1FB:
	lda #$10
	trb $0D93
L82B200:
	plp
	rts

L82B202:
.ACCU 16
	php
	lda $07D3
	and #$00FF
	bne L82B21B
	lda #$FFFF
	sta $7EBD11
	lda #$0800
	sta $7EBD13
	bra L82B229

L82B21B:
	lda #$0000
	sta $7EBD11
	lda #$FFFF
	sta $7EBD13
L82B229:
	plp
	rts

L82B22B:
	php
	phx
	jsl L82A043
	ldx #$0020
	ldy #$0000
	jsr L82EDB0
	ldx #$0000
	ldy #$0020
	jsr L82F06B
	jsr L82BD9D
	plx
	plp
	rtl

L82B249:
	php
	phx
	sep #$20
	lda #$05
	sta $0D02
	rep #$20
	jsr L82B2A2
	ldy #$0040
	ldx #$0000
L82B25D:
	lda.l LD0F800,X
	sta $7EBDE7,X
	inx
	dey
	inx
	dey
	bne L82B25D
	jsr L82E2EA
	ldx #$0020
	stx $0D80
	jsr L82B8F4
	ldx #$0000
	stx $0D80
	jsr L82B8EA
	jsr L82B318
	lda $1D
	and #$00FF
	asl
	tax
	jsr (L82B29C,X)
	jsr L82B2E8
	plx
	plp
	rts

L82B293:
DMA_DATA LD0F600 $0200 $80 $5A00

L82B29C:
.dw L82B441
.dw L82B468
.dw L82B4B6

L82B2A2:
	php
	sep #$20
	stz $0D91
	stz $0D90
	stz $0D94
	stz $0D93
	stz $0D8F
	stz $070A
	stz $0D8E
	lda #$00
	sta $7EBDE6
	rep #$20
	stz $0DF3
	lda #$0000
	sta $7EBD23
	sta $7EBD43
	sta $7EBD63
	sta $7EBD83
	sta $7EBDA3
	sta $7EBDC3
	stz $0D9B
	stz $0D9D
	plp
	rts

L82B2E8:
	php
	ldx #$0000
L82B2EC:
	phx
	lda $7EBD07,X
	and #$00FF
	stx $21
	tay
	lda $21
	and #$00FF
	asl
	tax
	jsr (L82B310,X)
	plx
	inx
	cpx #$0004
	bcc L82B2EC
	jsr L82B504
	jsr L82B52E
	plp
	rts

L82B310:
.dw L82B58E
.dw L82B5FE
.dw L82B71B
.dw L82B78B

L82B318:
	jsr L82B31F
	jsr L82B369
	rts

L82B31F:
	php
	stz $1D
	sep #$20
	lda $07D3
	bne L82B337
	lda $0788
	sta $0DF3
	lda $078A
	sta $0DF4
	bra L82B343

L82B337:
	lda $0787
	sta $0DF3
	lda $0789
	sta $0DF4
L82B343:
	lda $0D08,X
	sta $17
	lda $0DF3
	sta $19
	jsr L82B3F2
	lda $1B
	sta $0DF5
	lda $0D09,X
	sta $17
	lda $0DF4
	sta $19
	jsr L82B3F2
	lda $1B
	sta $0DF6
	plp
	rts

L82B369:
	php
	ldx #$0000
L82B36D:
	lda.l L82B392,X
	cmp $0DF5
	beq L82B37A
	inx
	inx
	bra L82B36D

L82B37A:
	lda.l L82B3C2,X
	sep #$20
	sta $0D0D
	eor #$01
	sta $0D2D
	rep #$20
	xba
	and #$00FF
	sta $1D
	plp
	rts

L82B392:
.db $04 $00 $02 $00 $08 $00 $01 $00
.db $00 $04 $00 $08 $04 $04 $02 $04
.db $00 $02 $00 $01 $02 $02 $04 $02
.db $02 $01 $04 $01 $02 $08 $04 $08
.db $01 $02 $01 $04 $08 $02 $08 $04
.db $01 $01 $08 $01 $01 $08 $08 $08

L82B3C2:
.db $00 $00 $01 $00 $04 $00 $05 $00
.db $02 $01 $06 $01 $08 $01 $0B $01
.db $03 $02 $07 $02 $09 $02 $0A $02
.db $07 $02 $07 $02 $06 $01 $06 $01
.db $05 $00 $05 $00 $04 $00 $04 $00
.db $09 $02 $0A $02 $0B $01 $08 $01

L82B3F2:
.ACCU 8
	php
	stz $1B
	lda $17
	cmp $19
	beq L82B43F
	bpl L82B41F
	ina
	cmp $19
	beq L82B417
	ina
	cmp $19
	beq L82B40F
	lda $1B
	ora #$0001
	sta $1B
	bra L82B43F

L82B40F:
	lda $1B
	ora #$01
	sta $1B
	bra L82B43F

L82B417:
	lda $1B
	ora #$02
	sta $1B
	bra L82B43F

L82B41F:
	dea
	cmp $19
	beq L82B439
	dea
	cmp $19
	beq L82B431
	lda $1B
	ora #$08
	sta $1B
	bra L82B43F

L82B431:
	lda $1B
	ora #$08
	sta $1B
	bra L82B43F

L82B439:
	lda $1B
	ora #$04
	sta $1B
L82B43F:
	plp
	rts

L82B441:
.ACCU 16
	php
	phx
	lda #$7E00
	sta $01
	lda #$BD07
	sta $00
	ldy #$0000
	sep #$20
	lda #$40
	sta [$00],Y
	iny
	lda #$60
	sta [$00],Y
	iny
	lda #$00
	sta [$00],Y
	iny
	lda #$20
	sta [$00],Y
	plx
	plp
	rts

L82B468:
.ACCU 16
	php
	phx
	lda #$7E00
	sta $01
	lda #$BD07
	sta $00
	ldy #$0000
	lda $0D13
	and #$00FF
	cmp #$0035
	beq L82B487
	cmp #$0039
	bne L82B49E
L82B487:
	sep #$20
	lda #$40
	sta [$00],Y
	iny
	lda #$60
	sta [$00],Y
	iny
	lda #$00
	sta [$00],Y
	iny
	lda #$20
	sta [$00],Y
	bra L82B4B3

L82B49E:
	sep #$20
	lda #$20
	sta [$00],Y
	iny
	lda #$60
	sta [$00],Y
	iny
	lda #$40
	sta [$00],Y
	iny
	lda #$00
	sta [$00],Y
L82B4B3:
	plx
	plp
	rts

L82B4B6:
.ACCU 16
	php
	phx
	lda #$7E00
	sta $01
	lda #$BD07
	sta $00
	ldy #$0000
	lda $0D33
	and #$00FF
	cmp #$0035
	beq L82B4D5
	cmp #$0039
	bne L82B4EC
L82B4D5:
	sep #$20
	lda #$60
	sta [$00],Y
	iny
	lda #$40
	sta [$00],Y
	iny
	lda #$20
	sta [$00],Y
	iny
	lda #$00
	sta [$00],Y
	bra L82B501

L82B4EC:
	sep #$20
	lda #$60
	sta [$00],Y
	iny
	lda #$20
	sta [$00],Y
	iny
	lda #$00
	sta [$00],Y
	iny
	lda #$40
	sta [$00],Y
L82B501:
	plx
	plp
	rts

L82B504:
.ACCU 16
	php
	ldx #$0000
L82B508:
	lda $04BE,X
	bne L82B518
	txa
	clc
	adc #$0020
	tax
	cmp #$0220
	bcc L82B508
L82B518:
	sep #$20
	lda #$82
	sta.l $0004CD,X
	lda #$A0
	sta.l $0004CC,X
	lda #$12
	sta.l $0004CB,X
	plp
	rts

L82B52E:
.ACCU 16
	php
	ldx #$0000
	stx $23
L82B534:
	lda $04BE,X
	beq L82B53B
	stx $23
L82B53B:
	txa
	clc
	adc #$0020
	tax
	cmp #$0220
	bcc L82B534
	ldx $23
	sep #$20
	lda #$82
	sta.l $0004CD,X
	lda #$A0
	sta.l $0004CC,X
	lda #$21
	sta.l $0004CB,X
	plp
	rts

L82B55E:
.ACCU 16
	php
	ldx #$0000
	stx $23
L82B564:
	lda $04BE,X
	beq L82B56B
	stx $23
L82B56B:
	txa
	clc
	adc #$0020
	tax
	cmp #$0220
	bcc L82B564
	ldx $23
	sep #$20
	lda #$82
	sta.l $0004CD,X
	lda #$A0
	sta.l $0004CC,X
	lda #$21
	sta.l $0004CB,X
	plp
	rts

L82B58E:
	php
	phy
	ldx #$0000
	stx $0D80
	jsr L82B8EA
	jsr L82B677
	sep #$20
	lda $0D0D,X
	clc
	adc #$04
	sta $0D0C,X
	rep #$20
	lda #$0180
	sta $0D14,X
	lda #$7800
	sta $0D1C,X
	lda #$5000
	sta $0D1E,X
	lda $074C
	pha
	and #$FFF0
	sta $074C
	phx
	jsr L82CD64
	jsl L80954E
	jsl L8098F0
	jsl L8087EA
	plx
	pla
	sta $074C
	lda #$0000
	sta $04BE
	lda $0D11,X
	and #$00FF
	plx
	jsr L82CF21
	stx $0D82
	jsr L82CF90
	jsl L80954E
	jsl L8098F0
	jsl L8087EA
	plp
	rts

L82B5FE:
	php
	phy
	ldx #$0020
	stx $0D80
	lda #$0001
	sta $0D02,X
	jsr L82B8F4
	jsr L82B6A0
	sep #$20
	lda $0D2D
	clc
	adc #$04
	sta $0D0C,X
	rep #$20
	lda #$0100
	sta $0D14,X
	lda #$7000
	sta $0D1C,X
	lda #$2800
	sta $0D1E,X
	lda $074C
	pha
	and #$FFF0
	sta $074C
	phx
	jsr L82CD64
	jsl L80954E
	jsl L8098F0
	jsl L8087EA
	plx
	pla
	sta $074C
	lda $0D11,X
	and #$00FF
	plx
	jsr L82CF21
	stx $0D84
	jsr L82CF90
	jsl L80954E
	jsl L8098F0
	lda $08F2
	and #$00FF
	jsl L83DBB7
	ldx $0D84
	plp
	rts

L82B677:
	php
	sep #$20
	lda $0D02
	bit #$04
	beq L82B68E
	lda $07D3
	beq L82B68A
	lda #$01
	bra L82B69B

L82B68A:
	lda #$00
	bra L82B69B

L82B68E:
	lda $07D3
	beq L82B697
	lda #$01
	bra L82B69B

L82B697:
	lda #$00
	bra L82B69B

L82B69B:
	sta $0D10,X
	plp
	rts

L82B6A0:
	php
	sep #$20
	lda $0D02
	bit #$04
	beq L82B6B7
	lda $07D3
	bne L82B6B3
	lda #$01
	bra L82B6C4

L82B6B3:
	lda #$00
	bra L82B6C4

L82B6B7:
	lda $07D3
	beq L82B6C0
	lda #$01
	bra L82B6C4

L82B6C0:
	lda #$00
	bra L82B6C4

L82B6C4:
	sta $0D10,X
	plp
	rts

L82B6C9:
.ACCU 16
	php
	sty $0DF3
	ldx #$0000
	stx $0D80
	jsr L82B8EA
	ldx $0D80
	lda $0D13,X
	and #$00FF
	cmp #$004F
	bcs L82B709
	sec
	sbc #$0040
	bmi L82B713
L82B6EA:
	pha
	lda #$0180
	sta $0D14,X
	ldy #$7E00
	ldx #$6400
	pla
	jsr L82CEBA
	ldy $0DF3
	jsr L82D16E
	stx $0D86
	jsr L82CF90
	plp
	rts

L82B709:
	cmp #$006B
	bne L82B713
	lda #$000F
	bra L82B6EA

L82B713:
	ldx #$FFFF
	stx $0D86
	plp
	rts

L82B71B:
	php
	sty $0DF3
	lda $07D3
	bne L82B72C
	lda $078F
	bit #$0010
	bne L82B783
L82B72C:
	ldx #$0000
	stx $0D80
	jsr L82B8EA
	lda #$0180
	sta $0D14,X
	lda #$3C00
	sta $0D1E,X
	jsr L82B899
	bcs L82B77B
	ldx $0D80
	lda $0D13,X
	and #$00FF
	cmp #$0009
	bne L82B759
	jsr L82B7FB
	bra L82B77B

L82B759:
	cmp #$0040
	bcs L82B783
	sec
	sbc #$002D
	bmi L82B783
	pha
	lda #$0180
	sta $0D14,X
	ldy #$7E00
	ldx #$6400
	pla
	jsr L82CE53
	ldy $0DF3
	jsr L82D12E
L82B77B:
	stx $0D86
	jsr L82CF90
	plp
	rts

L82B783:
	ldx #$FFFF
	stx $0D86
	plp
	rts

L82B78B:
	php
	sty $0DF3
	lda $07D3
	beq L82B79C
	lda $078F
	bit #$0010
	bne L82B7F3
L82B79C:
	ldx #$0020
	stx $0D80
	jsr L82B8F4
	lda #$0100
	sta $0D14,X
	lda #$2800
	sta $0D1E,X
	jsr L82B899
	bcs L82B7EB
	ldx $0D80
	lda $0D13,X
	and #$00FF
	cmp #$0009
	bne L82B7C9
	jsr L82B813
	bra L82B7EB

L82B7C9:
	cmp #$0040
	bcs L82B7F3
	sec
	sbc #$002D
	bmi L82B7F3
	pha
	lda #$0100
	sta $0D14,X
	ldy #$7600
	ldx #$7000
	pla
	jsr L82CE53
	ldy $0DF3
	jsr L82D12E
L82B7EB:
	stx $0D88
	jsr L82CF90
	plp
	rts

L82B7F3:
	ldx #$FFFF
	stx $0D88
	plp
	rts

L82B7FB:
	php
	lda #$0194
	sta $0D14,X
	ldy #$7F40
	ldx #$6400
	jsr L82B82B
	ldy $0DF3
	jsr L82D12E
	plp
	rts

L82B813:
	php
	lda #$0114
	sta $0D14,X
	ldy #$7740
	ldx #$7000
	jsr L82B82B
	ldy $0DF3
	jsr L82D12E
	plp
	rts

L82B82B:
	php
	phy
	phx
	stx $17
	sty $19
	lda #$002E
	sec
	sbc #$002D
	pha
	and #$00FF
	sta $15
	asl
	clc
	adc $15
	tax
	lda.l L80BEE4,X
	sta $00
	lda.l (L80BEE4 + 1),X
	sta $01
	ldx $17
	jsl L82D21F
	lda #$0002
	sta $7EBCFE
	lda #$7E00
	sta $7EBD00
	lda #$40FE
	clc
	adc $17
	sta $7EBCFF
	lda #$0180
	sta $7EBD02
	lda #$0080
	sta $7EBD04
	lda $19
	sta $7EBD05
	lda #$7E00
	sta $01
	lda #$BCFE
	sta $00
	jsl L808EAD
	jsl L8087EA
	pla
	plx
	ply
	plp
	rts

L82B899:
	php
	lda $0D11,X
	and #$00FF
	cmp #$0010
	beq L82B8AF
	cmp #$0023
	beq L82B8AF
	cmp #$0026
	bcc L82B8E7
L82B8AF:
	sta $15
	asl
	clc
	adc $15
	tax
	lda.l (L80BDE5 + 1),X
	sta $01
	lda.l L80BDE5,X
	sta $00
	ldx $0D80
	jsl L82D23B
	jsr L82CF7D
	jsr L82CFA7
	jsr L82CFF2
	jsr L82CFFA
	ldy #$0034
	ldx $0DF3
	jsl L809689
	sep #$20
	stz $04DC,X
	plp
	sec
	rts

L82B8E7:
	plp
	clc
	rts

L82B8EA:
.ACCU 16
	lda $07D3
	and #$00FF
	beq L82B8FE
	bne L82B91B
L82B8F4:
	lda $07D3
	and #$00FF
	bne L82B8FE
	beq L82B91B
L82B8FE:
	php
	sep #$20
	lda $075D
	sta $0D11,X
	lda $075F
	sta $0D13,X
	lda $0787
	sta $0D08,X
	lda $0789
	sta $0D09,X
	plp
	rts

L82B91B:
	php
	sep #$20
	lda $075E
	sta $0D11,X
	lda $0760
	sta $0D13,X
	lda $0788
	sta $0D08,X
	lda $078A
	sta $0D09,X
	plp
	rts

L82B938:
	php
	phx
	sep #$20
	lda $0D8F
	beq L82B947
	dea
	sta $0D8F
	bra L82B97F

L82B947:
	lda $0D02
	bit #$08
	beq L82B97A
	lda $0D8E
	bit #$04
	bne L82B96C
	lda #$01
	sta $15
	jsr L82C649
	bcs L82B97F
	sep #$20
	lda $0D93
	bit #$08
	bne L82B97A
	lda $0D94
	bne L82B97A
L82B96C:
	rep #$20
	jsr L82C56E
	bcc L82B97F
	sep #$20
	inc $0D94
	bra L82B97F

L82B97A:
	rep #$20
	jsr L82BF96
L82B97F:
	plx
	plp
	rts

L82B982:
	php
	sep #$20
	lda $0D8F
	beq L82B990
	dea
	sta $0D8F
	bra L82B9AC

L82B990:
	rep #$20
	lda $0D94
	and #$00FF
	asl
	tax
	jsr (L82B9B5,X)
	bcc L82B9AC
	sep #$20
	lda $0D94
	ina
	sta $0D94
	cmp #$03
	beq L82B9AE
L82B9AC:
	plp
	rts

L82B9AE:
	rep #$20
	jsr L82BF96
	plp
	rts

L82B9B5:
.dw L82C56E
.dw L82B9BD
.dw L82B9E0
.dw L82BF96

L82B9BD:
	php
	rep #$20
	lda $0D91
	and #$00FF
	beq L82B9DD
	bit #$0004
	beq L82B9DD
	lda #$0000
	jsr L82C899
	sep #$20
	stz $0D91
	rep #$20
	plp
	sec
	rts

L82B9DD:
	plp
	clc
	rts

L82B9E0:
	php
	sep #$20
	lda $070A
	beq L82B9EB
	plp
	sec
	rts

L82B9EB:
	plp
	clc
	rts

L82B9EE:
	php
	sep #$20
	lda $0D8F
	beq L82B9FC
	dea
	sta $0D8F
	bra L82BA22

L82B9FC:
	lda $070A
	beq L82BA22
	rep #$20
	lda $0D94
	and #$00FF
	asl
	tax
	jsr (L82BA2B,X)
	sep #$20
	stz $070A
	bcc L82BA22
	sep #$20
	lda $0D94
	ina
	sta $0D94
	cmp #$03
	beq L82BA24
L82BA22:
	plp
	rts

L82BA24:
	rep #$20
	jsr L82BF96
	plp
	rts

L82BA2B:
.dw L82C56E
.dw L82C628
.dw L82BF96

L82BA31:
	php
	sep #$20
	lda $0D8F
	beq L82BA3F
	dea
	sta $0D8F
	bra L82BA65

L82BA3F:
	lda $070A
	beq L82BA65
	rep #$20
	lda $0D94
	and #$00FF
	asl
	tax
	jsr (L82BA6E,X)
	sep #$20
	stz $070A
	bcc L82BA65
	sep #$20
	lda $0D94
	ina
	sta $0D94
	cmp #$04
	beq L82BA67
L82BA65:
	plp
	rts

L82BA67:
	rep #$20
	jsr L82BF96
	plp
	rts

L82BA6E:
.dw L82C56E
.dw L82C628
.dw L82BA76
.dw L82BF96

L82BA76:
	php
L82BA77:
	rep #$20
	lda $0D96
	and #$00FF
	jsl L83D912
	lda.l ActiveUnit.UnitID
	and #$00FF
	cmp #$00FF
	beq L82BAE9
	lda.l (ActiveUnit.AI3 + 1)
	and #$00FF
	bne L82BAA8
	lda $0D96
	and #$001F
	cmp #$001F
	beq L82BAE9
	inc $0D96
	bra L82BA77

L82BAA8:
	rep #$20
	ldx $0D86
	jsr L82BAEC
	bcs L82BAC2
	sep #$20
	lda $0D96
	and #$1F
	cmp #$1F
	beq L82BAE9
	inc $0D96
	bra L82BA77

L82BAC2:
	rep #$20
	lda #$0001
	jsl L8096FA
	sep #$20
	lda $0D96
	and #$1F
	cmp #$1F
	beq L82BAE9
	inc $0D96
	stz $04DA,X
	lda #$04
	eor #$FF
	and $0D8E
	sta $0D8E
	plp
	clc
	rts

L82BAE9:
	plp
	sec
	rts

L82BAEC:
	php
	sep #$20
	lda.l ActiveUnit.YPosition
	sec
	sbc $0860
	cmp #$01
	bcc L82BB20
	cmp #$0F
	bcs L82BB20
	asl
	asl
	asl
	asl
	sta $04CE,X
	lda.l ActiveUnit.XPosition
	sec
	sbc $0861
	cmp #$01
	bcc L82BB20
	cmp #$0E
	bcs L82BB20
	asl
	asl
	asl
	asl
	sta $04D0,X
	plp
	sec
	rts

L82BB20:
	plp
	clc
	rts

L82BB23:
	php
	sep #$20
	lda $0D8F
	beq L82BB31
	dea
	sta $0D8F
	bra L82BB57

L82BB31:
	lda $070A
	beq L82BB57
	rep #$20
	lda $0D94
	and #$00FF
	asl
	tax
	jsr (L82BB60,X)
	sep #$20
	stz $070A
	bcc L82BB57
	sep #$20
	lda $0D94
	ina
	sta $0D94
	cmp #$05
	beq L82BB59
L82BB57:
	plp
	rts

L82BB59:
	rep #$20
	jsr L82BF96
	plp
	rts

L82BB60:
.dw L82C56E
.dw L82C628
.dw L82BB6B
.dw L82BF96

L82BB68:
	php
	plp
	rts

L82BB6B:
	php
L82BB6C:
	rep #$20
	lda $0D96
	and #$00FF
	jsl L83D912
	lda.l ActiveUnit.UnitID
	and #$00FF
	cmp #$00FF
	beq L82BBDE
	lda.l ActiveUnit.HasMoved
	and #$0001
	bne L82BB9D
	sep #$20
	lda $0D96
	and #$1F
	cmp #$1F
	beq L82BBDE
	inc $0D96
	bra L82BB6C

L82BB9D:
	rep #$20
	ldx $0D86
	jsr L82BAEC
	bcs L82BBB7
	sep #$20
	lda $0D96
	and #$1F
	cmp #$1F
	beq L82BBDE
	inc $0D96
	bra L82BB6C

L82BBB7:
	rep #$20
	lda #$0001
	jsl L8096FA
	sep #$20
	lda $0D96
	and #$1F
	cmp #$1F
	beq L82BBDE
	inc $0D96
	stz $04DA,X
	lda #$04
	eor #$FF
	and $0D8E
	sta $0D8E
	plp
	clc
	rts

L82BBDE:
	plp
	sec
	rts

L82BBE1:
	php
	sep #$20
	lda $0D8F
	beq L82BBEF
	dea
	sta $0D8F
	bra L82BC15

L82BBEF:
	lda $070A
	beq L82BC15
	rep #$20
	lda $0D94
	and #$00FF
	asl
	tax
	jsr (L82BC25,X)
	sep #$20
	stz $070A
	bcc L82BC15
	sep #$20
	lda $0D94
	ina
	sta $0D94
	cmp #$02
	beq L82BC17
L82BC15:
	plp
	rts

L82BC17:
	sep #$20
	lda #$01
	sta $0D94
	rep #$20
	jsr L82BF96
	plp
	rts

L82BC25:
.ACCU 8
	and #$BC
	stx $BF,Y
	php
L82BC2A:
	rep #$20
	lda $0D96
	and #$00FF
	jsl L83D912
	lda.l ActiveUnit.UnitID
	and #$00FF
	cmp #$00FF
	beq L82BCA6
	lda.l (ActiveUnit.AI3 + 1)
	and #$00FF
	bne L82BC5B
	sep #$20
	lda $0D96
	and #$1F
	cmp #$1F
	beq L82BCA6
	inc $0D96
	bra L82BC2A


L82BC5B:
	rep #$20
	ldx $0D86
	jsr L82BAEC
	bcs L82BC75
	sep #$20
	lda $0D96
	and #$1F
	cmp #$1F
	beq L82BCA6
	inc $0D96
	bra L82BC2A

L82BC75:
	rep #$20
	lda #$0001
	jsl L8096FA
	lda #$00B5
	jsl L80B4BB
	sep #$20
	lda $0D96
	and #$1F
	cmp #$1F
	beq L82BCA6
	inc $0D96
	stz $04DA,X
	lda #$04
	eor #$FF
	and $0D8E
	sta $0D8E
	plp
	clc
	rts

L82BCA3:
	plp
	sec
	rts

L82BCA6:
.ACCU 16
	lda $0D96
	and #$00FF
	cmp #$0020
	bcs L82BCA3
	lda #$0020
	sta $0D96
	brl L82BC2A

L82BCBA:
	php
	sep #$20
	lda $0D8F
	beq L82BCC8
	dea
	sta $0D8F
	bra L82BCEE

L82BCC8:
	lda $070A
	beq L82BCEE
	rep #$20
	lda $0D94
	and #$00FF
	asl
	tax
	jsr (L82BCF7,X)
	sep #$20
	stz $070A
	bcc L82BCEE
	sep #$20
	lda $0D94
	ina
	sta $0D94
	cmp #$03
	beq L82BCF0
L82BCEE:
	plp
	rts

L82BCF0:
	rep #$20
	jsr L82BF96
	plp
	rts

L82BCF7:
	ror $28C5
	dec $FF
	ldy.w L82BF96,X ; ???
	php
	ldy #$0000
	lda $0D86
	sta $21
L82BD08:
	rep #$20
	phy
	lda $0D96
	and #$00FF
	jsl L83D912
	ply
	lda.l ActiveUnit.UnitID
	and #$00FF
	cmp #$00FF
	beq L82BD9A
	lda.l ActiveUnit.ClassID
	and #$00FF
	cmp #CLASS_SISTER
	bcc L82BD43
	cmp #$001C
	bcs L82BD3E
L82BD33:
	rep #$20
	ldx $21
	jsr L82BAEC
	bcs L82BD53
	bcc L82BD43
L82BD3E:
	cmp #$0022
	beq L82BD33
L82BD43:
	sep #$20
	lda $0D96
	and #$1F
	cmp #$1F
	beq L82BD9A
	inc $0D96
	bra L82BD08

L82BD53:
	phy
	rep #$20
	lda #$0001
	jsl L8096FA
	ply
	cpy #$0000
	bne L82BD6B
	lda $21
	clc
	adc #$0020
	sta $21
L82BD6B:
	sep #$20
	lda $0D96
	and #$1F
	cmp #$1F
	beq L82BD9A
	inc $0D96
	stz $04DA,X
	lda #$04
	eor #$FF
	and $0D8E
	sta $0D8E
	lda $21
	clc
	adc #$20
	sta $21
	iny
	iny
	cpy #$000A
	bcs L82BD97
	brl L82BD08

L82BD97:
	plp
	clc
	rts

L82BD9A:
	plp
	sec
	rts

L82BD9D:
	php
	phx
	sep #$20
	lda $0D8F
	beq L82BDAC
	dea
	sta $0D8F
	bra L82BDEC

L82BDAC:
	lda $0D02
	bit #$08
	beq L82BDE7
	lda $0D8E
	bit #$04
	bne L82BDD4
	jsr L82BE56
	bcs L82BDEC
	stz $15
	jsr L82C649
	bcs L82BDEC
	sep #$20
	lda $0D93
	bit #$08
	bne L82BDE7
	lda $0D94
	bne L82BDE2
L82BDD4:
	rep #$20
	jsr L82C56E
	bcc L82BDEC
	sep #$20
	inc $0D94
	bra L82BDEC

L82BDE2:
	rep #$20
	jsr L82BDEF
L82BDE7:
	rep #$20
	jsr L82BF96
L82BDEC:
	plx
	plp
	rts

L82BDEF:
	ldx #$0010
L82BDF2:
	phx
	jsl L8087EA
	plx
	dex
	bne L82BDF2
	jsr L82D61A
	jsl L80A6DD
	lda #bank100(L82D9EA)
	sta $01
	lda #L82D9EA
	sta $00
	jsl L808EAD
	jsl L8087EA
	rts

L82BE15:
	php
	sep #$20
	lda $0D8F
	beq L82BE23
	dea
	sta $0D8F
	bra L82BE3C

L82BE23:
	sep #$20
	jsr L82BE3E
	jsr L82BEB6
	bcs L82BE3C
	jsr L82C78E
	bcs L82BE3C
	lda $0D8E
	and #$03
	bne L82BE3C
	jsr L82BF59
L82BE3C:
	plp
	rts

L82BE3E:
	php
	lda $7EBDE6
	beq L82BE4F
	dea
	sta $7EBDE6
	bne L82BE51
	jsr L82CB60
L82BE4F:
	plp
	rts

L82BE51:
	jsr L82C968
	plp
	rts

L82BE56:
	php
	lda $0D9D
	bne L82BE66
	lda $0D9E
	beq L82BEA9
	ldx #$0001
	bra L82BE69

L82BE66:
	ldx #$0000
L82BE69:
	lda $0D8F
	beq L82BE74
	dea
	sta $0D8F
	bra L82BEA6

L82BE74:
	lda $0D9D,X
	sta $25
	lda $0D9B,X
	sta $27
	jsr L82BF34
	lda $25
	sta $0D9D,X
	lda $27
	sta $0D9B,X
	rep #$20
	lda #$007E
	jsl L80B4BB
	sep #$20
	lda #$06
	sta $0D8F
	lda $0D8E
	ora #$02
	sta $0D8E
	jsr L82D966
L82BEA6:
	plp
	sec
	rts

L82BEA9:
.ACCU 16
	lda #$4902
	sbc $0D8E2D,X
	sta $0D8E
	plp
	clc
	rts

L82BEB6:
	php
	lda $0D9D
	bmi L82BEE3
	lda $0D9E
	bmi L82BEDE
	lda $0D9D
	bne L82BED0
	lda $0D9E
	beq L82BF0B
	ldx #$0001
	bra L82BED3

L82BED0:
	ldx #$0000
L82BED3:
	rep #$20
	jsr L82BF18
	sep #$20
	bcc L82BF0B
	bcs L82BEE6
L82BEDE:
	ldx #$0001
	bra L82BEE6

L82BEE3:
	ldx #$0000
L82BEE6:
	lda $0D9D,X
	sta $25
	lda $0D9B,X
	sta $27
	jsr L82BF34
	lda $25
	sta $0D9D,X
	lda $27
	sta $0D9B,X
	lda $0D8E
	ora #$02
	sta $0D8E
	jsr L82D966
	plp
	sec
	rts

L82BF0B:
.ACCU 16
	lda #$4902
	sbc $0D8E2D,X
	sta $0D8E
	plp
	clc
	rts

L82BF18:
	php
	txa
	sep #$20
	beq L82BF27
	lda $0760
	cmp #$39
	beq L82BF2E
	bne L82BF31
L82BF27:
	lda $075F
	cmp #$39
	bne L82BF31
L82BF2E:
	plp
	sec
	rts

L82BF31:
	plp
	clc
	rts

L82BF34:
	php
	lda $25
	beq L82BF55
	bmi L82BF47
	lda $27
	ina
	sta $27
	lda $25
	dea
	sta $25
	bra L82BF57

L82BF47:
	lda $27
	dea
	sta $27
	beq L82BF55
	lda $25
	ina
	sta $25
	bne L82BF57
L82BF55:
	stz $25
L82BF57:
	plp
	rts

L82BF59:
	php
	lda $0D8E
	bit #$04
	bne L82BF81
	sep #$20
	lda $0D93
	bit #$08
	bne L82BF91
	lda $0D94
	cmp #$03
	beq L82BF91
	asl
	tax
	lda $07B7,X
	sta $0D93
	txa
	lsr
	tax
	lda $07BD,X
	bne L82BF8A
L82BF81:
	rep #$20
	jsr L82C56E
	bcc L82BF94
	sep #$20
L82BF8A:
	inc $0D94
	rep #$20
	bra L82BF94

L82BF91:
	jsr L82BFE4
L82BF94:
	plp
	rts

L82BF96:
	php
	sep #$20
	lda $0D02
	bit #$08
	beq L82BFAC
	eor #$08
	sta $0D02
	lda #$01
	sta $0D8F
	bra L82BFC5

L82BFAC:
	jsr L82C24E
	jsr L82C274
	jsr L82BFC7
	jsr L82C03B
	rep #$20
	lda #$FFFF
	sta $7EBD11
	sta $7EBD13
L82BFC5:
	plp
	rts

L82BFC7:
.ACCU 8
	php
	lda $0D13
	cmp #$44
	beq L82BFD3
	cmp #$49
	bne L82BFE2
L82BFD3:
	ldx #$0020
	lda $08F3
	sta $0D08,X
	lda $08F4
	sta $0D09,X
L82BFE2:
	plp
	rts

L82BFE4:
	php
	lda $0D02
	bit #$04
	beq L82BFF8
	eor #$04
	sta $0D02
	lda #$20
	sta $0D8F
	bra L82C007

L82BFF8:
	jsr L82C1F7
	jsr L82C24E
	jsr L82C260
	jsr L82C27D
	jsr L82C009
L82C007:
	plp
	rts


L82C009:
	php
	ldx #$0000
	stx $23
	rep #$20
L82C011:
	lda $04BE,X
	beq L82C018
	stx $23
L82C018:
	txa
	clc
	adc #$0020
	tax
	cmp #$0200
	bcc L82C011
	ldx $23
	sep #$20
	lda #$82
	sta.l $0004CD,X
	lda #$C1
	sta.l $0004CC,X
	lda #$31
	sta.l $0004CB,X
	plp
	rts

L82C03B:
	php
	ldx #$0000
	stx $23
	rep #$20
L82C043:
	lda $04BE,X
	beq L82C04A
	stx $23
L82C04A:
	txa
	clc
	adc #$0020
	tax
	cmp #$0200
	bcc L82C043
	ldx $23
	sep #$20
	lda #$82
	sta.l $0004CD,X
	lda #$C0
	sta.l $0004CC,X
	lda #$7F
	sta.l $0004CB,X
	lda #$82
	sta.l $0004CD
	lda #$C0
	sta.l $0004CC
	lda #$DD
	sta.l $0004CB
	plp
	rts

L82C07F:
.ACCU 16
	php
	lda $0D8E
	bit #$0010
	beq L82C093
	lda #$0000
	jsr L82DC5C
	jsr L82C2AA
	bcc L82C0DB
L82C093:
	bit #$0080
	beq L82C0A3
	lda #$0000
	jsr L82DC5C
	jsr L82C3CF
	bcc L82C0DB
L82C0A3:
	lda $0D13
	and #$00FF
	cmp #$004D
	bne L82C0B3
	jsr L82C102
	bcc L82C0DB
L82C0B3:
	lda #$0080
	bit $0D02
	bne L82C0C4
	tsb $0D02
	jsl L83F312
	plp
	rtl

L82C0C4:
	lda #$0080
	trb $0D02
	lda $0D13
	and #$00FF
	cmp #$004D
	beq L82C0D8
	jsr L82D61A
L82C0D8:
	jsr L82C1B5
L82C0DB:
	plp
	rtl

L82C0DD:
	ldx #$0020
	ldy #$0000
	jsr L82EDB0
	ldx #$0000
	ldy #$0020
	jsr L82F06B
	ldx #$0040
	ldy #$0020
	jsr L82EDB0
	ldx #$0020
	ldy #$0040
	jsr L82F06B
	rtl

L82C102:
	sep #$20
	lda $0D8E
	bit #$40
	beq L82C122
	lda $08F3
	sta $08E6
	lda $08F4
	sta $08E7
	rep #$20
	jsl L83E061
	jsl L83E06A
	rts

L82C122:
.ACCU 8
	lda #$40
	sta $0D8E
	rep #$20
	jsr L82D61A
	jsr L82C1C6
	clc
	rts

L82C131:
	php
	stx $0D80
	lda $0D8E
	bit #$0008
	beq L82C142
	jsr L82C1D9
	bcc L82C185
L82C142:
	and #$00B0
	beq L82C187
	bit #$0010
	beq L82C151
	jsr L82C2AA
	bcc L82C185
L82C151:
	bit #$0020
	beq L82C15B
	jsr L82C338
	bcc L82C185
L82C15B:
	bit #$0080
	beq L82C165
	jsr L82C3CF
	bcc L82C185
L82C165:
	lda #$0080
	bit $0D02
	bne L82C176
	tsb $0D02
	jsl L83F312
	plp
	rtl

L82C176:
	lda #$0080
	trb $0D02
	jsr L82D61A
	jsr L82C1B5
	jsr L82C192
L82C185:
	plp
	rtl

L82C187:
	jsr L82D61A
	jsr L82C1B5
	jsr L82C192
	plp
	rtl

L82C192:
	php
	lda $078F
	bit #$0010
	beq L82C1B3
	lda $0D52
	and #$00FF
	jsl L83DB34
	jsl L8087EA
	lda $0D72
	and #$00FF
	jsl L83DB34
L82C1B3:
	plp
	rts

L82C1B5:
	php
	sep #$20
	stz $0D02
	rep #$20
	jsr L82C1C6
	jsl L82D291
	plp
	rts

L82C1C6:
	jsl L80A6DD
	lda #bank100(L82D9EA)
	sta $01
	lda #L82D9EA
	sta $00
	jsl L808EAD
	rts

L82C1D9:
	php
	ldx $0DF3
	lda $04DB,X
	cmp #$0001
	bne L82C1F4
	sep #$20
	lda #$08
	eor #$FF
	and $0D8E
	sta $0D8E
	plp
	sec
	rts

L82C1F4:
	plp
	clc
	rts

L82C1F7:
	php
	sep #$20
	lda $078F
	bit #$01
	beq L82C208
	lda $07D3
	beq L82C216
	bne L82C21B
L82C208:
	lda $0790
	bit #$01
	beq L82C234
	lda $07D3
	bne L82C216
	beq L82C21B
L82C216:
	ldx $0D82
	bra L82C21E

L82C21B:
	ldx $0D84
L82C21E:
	lda #$50
	sta $04DB,X
	stx $0DF3
	jsr L82C237
	lda #$08
	ora $0D8E
	sta $0D8E
	plp
	clc
	rts

L82C234:
	plp
	sec
	rts

L82C237:
	php
	phx
	rep #$20
	lda $04CE,X
	and #$00FF
	sta $089F
	lda #$000F
	jsl L80B49E
	plx
	plp
	rts

L82C24E:
	php
	sep #$20
	lda $0797
	beq L82C25E
	lda #$10
	ora $0D8E
	sta $0D8E
L82C25E:
	plp
	rts

L82C260:
	php
	sep #$20
	lda $0791
	cmp #$FF
	beq L82C272
	lda #$20
	ora $0D8E
	sta $0D8E
L82C272:
	plp
	rts

L82C274:
	php
	sep #$20
	lda #$02
	sta $25
	bra L82C288

L82C27D:
	php
	sep #$20
	lda $0D94
	and #$03
	asl
	sta $25
L82C288:
	ldx #$0000
L82C28B:
	lda $07B7,X
	bit #$10
	bne L82C298
	bit #$04
	bne L82C298
	beq L82C2A0
L82C298:
	inx
	inx
	cpx $25
	bcc L82C28B
	bcs L82C2A8
L82C2A0:
	lda #$80
	ora $0D8E
	sta $0D8E
L82C2A8:
	plp
	rts

L82C2AA:
.ACCU 16
	php
	phx
	lda $0D8F
	and #$00FF
	beq L82C2C1
	cmp #$0001
	beq L82C325
	sep #$20
	dea
	sta $0D8F
	bra L82C321

L82C2C1:
	jsr L82C45D
	bcc L82C321

L82C2C6:
.ACCU 16
	lda #bank100(L82B293)
	sta $01
	lda #L82B293
	sta $00
	jsl L808EAD
	jsl L8087EA
	lda $7EBD11
	beq L82C2E8
	lda #$0000
	sta $7EBD11
	jsr L82D32E
L82C2E8:
	lda #$0000
	sta $04
	lda #$0DBB
	sta $03
	lda #bank100(L82C51A)
	sta $01
	lda #L82C51A
	sta $00
	jsr L82C509
	ldx #$0000
	txy
	jsr L82D853
	lda #bank100(L82D9EA)
	sta $01
	lda #L82D9EA
	sta $00
	jsl L808EAD
	lda #$80BD
	sta $0876
	sep #$20
	lda #$8C
	sta $0D8F
L82C321:
	plx
	plp
	clc
	rts

L82C325:
	sep #$20
	stz $0D8F
	lda #$10
	eor #$FF
	and $0D8E
	sta $0D8E
	plx
	plp
	sec
	rts

L82C338:
.ACCU 16
	php
	phx
	lda $0D8F
	and #$00FF
	beq L82C34F
	cmp #$0001
	beq L82C3B3
	sep #$20
	dea
	sta $0D8F
	bra L82C3AF

L82C34F:
.ACCU 16
	jsr L82C45D
	bcc L82C3AF
	lda #bank100(L82B293)
	sta $01
	lda #L82B293
	sta $00
	jsl L808EAD
	jsl L8087EA
	lda $7EBD11
	beq L82C376
	lda #$0000
	sta $7EBD11
	jsr L82D32E
L82C376:
	lda #$0000
	sta $04
	lda #$0DBB
	sta $03
	lda #bank100(L82C536)
	sta $01
	lda #L82C536
	sta $00
	jsr L82C509
	ldx #$0000
	txy
	jsr L82D853
	lda #bank100(L82D9EA)
	sta $01
	lda #L82D9EA
	sta $00
	jsl L808EAD
	lda #$80B2
	sta $0876
	sep #$20
	lda #$68
	sta $0D8F
L82C3AF:
	plx
	plp
	clc
	rts

L82C3B3:
	sep #$20
	stz $0D8F
	lda #$20
	eor #$FF
	and $0D8E
	sta $0D8E
	plx
	plp
	sec
	rts

L82C3C6:
.db $02 $90 $A2 $94 $10 $00 $80 $00
.db $5A

L82C3CF:
.ACCU 16
	php
	phx
	lda $0D8F
	and #$00FF
	beq L82C3E6
	cmp #$0001
	beq L82C44A
	sep #$20
	dea
	sta $0D8F
	bra L82C446

L82C3E6:
.ACCU 16
	jsr L82C45D
	bcc L82C446
	lda #bank100(L82B293)
	sta $01
	lda #L82B293
	sta $00
	jsl L808EAD
	jsl L8087EA
	lda $7EBD11
	beq L82C40D
	lda #$0000
	sta $7EBD11
	jsr L82D32E
L82C40D:
	lda #$0000
	sta $04
	lda #$0DBB
	sta $03
	lda #bank100(L82C552)
	sta $01
	lda #L82C552
	sta $00
	jsr L82C509
	ldx #$0000
	txy
	jsr L82D853
	lda #bank100(L82D9EA)
	sta $01
	lda #L82D9EA
	sta $00
	jsl L808EAD
	lda #$80BE
	sta $0876
	sep #$20
	lda #$72
	sta $0D8F
L82C446:
	plx
	plp
	clc
	rts

L82C44A:
	sep #$20
	stz $0D8F
	lda #$80
	eor #$FF
	and $0D8E
	sta $0D8E
	plx
	plp
	sec
	rts

L82C45D:
.ACCU 16
	lda $0D8E
	bit #$0040
	bne L82C47B
	jsr L82C4A3
	jsr L82C4C3
	bcs L82C4A2
	sep #$20
	lda $17
	sta $08E6
	lda $19
	sta $08E7
	rep #$20
L82C47B:
	sep #$20
	lda $0D8E
	ora #$40
	sta $0D8E
	rep #$20
	jsl L83E061
	jsl L83E06A
	bcs L82C493
	bcc L82C4A2
L82C493:
	sep #$20
	lda #$40
	eor #$FF
	and $0D8E
	sta $0D8E
	rep #$20
	sec
L82C4A2:
	rts

L82C4A3:
	php
	sep #$20
	lda $07D3
	beq L82C4B7
	lda $0788
	sta $17
	lda $078A
	sta $19
	bra L82C4C1

L82C4B7:
	lda $0787
	sta $17
	lda $0789
	sta $19
L82C4C1:
	plp
	rts

L82C4C3:
	php
	sep #$20
	lda $17
	sec
	sbc $0860
	cmp #$01
	bcc L82C506
	cmp #$0F
	bcs L82C506
	sta $1B
	lda $19
	sec
	sbc $0861
	cmp #$01
	bcc L82C506
	cmp #$0D
	bcs L82C506
	sta $1D
	rep #$20
	ldx $0D82
	lda $1B
	and #$00FF
	asl
	asl
	asl
	asl
	sta $04CE,X
	lda $1D
	and #$00FF
	asl
	asl
	asl
	asl
	sta $04D0,X
	plp
	sec
	rts

L82C506:
	plp
	clc
	rts

L82C509:
	php
	ldy #$0000
L82C50D:
	lda [$00],Y
	sta [$03],Y
	iny
	iny
	cpy #$001C
	bcc L82C50D
	plp
	rts

L82C51A:
.db $D9 $20 $BC $20 $D8 $20 $90 $20
.db $36 $21 $BB $20 $DF $20 $C9 $20
.db $EB $20 $C8 $20 $80 $20 $57 $21
.db $EF $20 $CF $20

L82C536:
.db $90 $20 $91 $20 $B2 $20 $D0 $20
.db $5E $21 $5F $21 $DF $20 $80 $20
.db $81 $20 $A2 $20 $C0 $20 $4E $21
.db $4F $21 $CF $20

L82C552:
.db $90 $20 $91 $20 $B2 $20 $D0 $20
.db $39 $20 $1E $20 $5D $20 $80 $20
.db $81 $20 $A2 $20 $C0 $20 $29 $20
.db $0E $20 $4D $20

L82C56E:
	php
	phx
	sep #$20
	lda $0D8E
	bit #$04
	bne L82C587
	ora #$04
	sta $0D8E
	lda #$10
	sta $0D8F
	plx
	plp
	clc
	rts

L82C587:
	stz $0D90
	lda $0D93
	and #$10
	lsr
	lsr
	lsr
	lsr
	eor $07D3
	beq L82C59D
	inc $0D90
	bra L82C5A7

L82C59D:
	rep #$20
	ldy $0D82
	ldx #$0000
	bra L82C5AF

L82C5A7:
	rep #$20
	ldy $0D84
	ldx #$0020
L82C5AF:
	jsr L82C60B
	lda $0D0D,X
	and #$00FF
	clc
	adc $15
	clc
	adc #$001C
	tyx
	jsl L8096FA
	sep #$20
	stz $04DA,X
	lda #$04
	eor #$FF
	and $0D8E
	sta $0D8E
	jsr L82C5DC
	rep #$20
	plx
	plp
	sec
	rts

L82C5DC:
	php
	lda $0D93
	bit #$D010
	and $AD
	sta $108907
	beq L82C609
	rep #$20
	ldx $0D8A
	lda $0D4D
	clc
	adc #$001C
	jsl L8096FA
	ldx $0D8C
	lda $0D6D
	clc
	adc #$001C
	jsl L8096FA
L82C609:
	plp
	rts

L82C60B:
	php
	stz $15
	lda $078F
	bit #$0010
	bne L82C626
	lda $0D13,X
	and #$00FF
	cmp #$0009
	bne L82C626
	lda #$000C
	sta $15
L82C626:
	plp
	rts

L82C628:
	php
	sep #$20
	lda $0D91
	beq L82C646
	bit #$04
	beq L82C646
	rep #$20
	lda #$0000
	jsr L82C899
	sep #$20
	stz $0D91
	rep #$20
	plp
	sec
	rts

L82C646:
	plp
	clc
	rts

L82C649:
	php
	rep #$20
	lda $070A
	and #$00FF
	bne L82C68A
	lda $0D91
	and #$00FF
	beq L82C687
	lda $0D91
	bit #$0010
	bne L82C673
	bit #$0004
	bne L82C67A
	bit #$0002
	beq L82C687
	jsr L82CC5C
	bra L82C680

L82C673:
	jsr L82C68D
	bcs L82C680
	bcc L82C687
L82C67A:
	lda #$0000
	jsr L82C899
L82C680:
	sep #$20
	stz $0D91
	rep #$20
L82C687:
	plp
	sec
	rts

L82C68A:
	plp
	clc
	rts

L82C68D:
	lda $0D8E
	bit #$0040
	bne L82C6AB
	jsr L82C700
	jsr L82C737
	bcs L82C6D3
	sep #$20
	lda $17
	sta $08E6
	lda $19
	sta $08E7
	rep #$20
L82C6AB:
	sep #$20
	lda $0D8E
	ora #$40
	sta $0D8E
	rep #$20
	jsl L83E061
	jsl L83E06A
	bcs L82C6C3
	bcc L82C6D2
L82C6C3:
	sep #$20
	lda #$40
	eor #$FF
	and $0D8E
	sta $0D8E
	rep #$20
	clc
L82C6D2:
	rts

L82C6D3:
	rep #$20
	jsr L82C6DA
	sec
	rts

L82C6DA:
	php
	lda $0D13
	and #$00FF
	cmp #$0044
	beq L82C6EB
	cmp #$0049
	bne L82C6FE
L82C6EB:
	lda $04CE
	sta $050E
	lda $04D0
	sta $0510
	sep #$20
	lda #$01
	sta $051B
L82C6FE:
	plp
	rts

L82C700:
	php
	sep #$20
	lda $0D95
	cmp #$02
	beq L82C72B
	lda $07D3
	beq L82C71D
	lda $0787
	sta $17
	lda $0789
	sta $19
	inc $15
	bra L82C735

L82C71D:
	lda $0788
	sta $17
	lda $078A
	sta $19
	inc $15
	bra L82C735

L82C72B:
	lda $08F3
	sta $17
	lda $08F4
	sta $19
L82C735:
	plp
	rts

L82C737:
	php
	sep #$20
	lda $17
	sec
	sbc $0860
	cmp #$01
	bcc L82C78B
	cmp #$0F
	bcs L82C78B
	sta $1B
	lda $19
	sec
	sbc $0861
	cmp #$01
	bcc L82C78B
	cmp #$0D
	bcs L82C78B
	sta $1D
	rep #$20
	ldx $0D86
	lda $1B
	and #$00FF
	asl
	asl
	asl
	asl
	sta $04CE,X
	lda $1D
	and #$00FF
	asl
	asl
	asl
	asl
	sta $04D0,X
	lda $0D95
	and #$00FF
	cmp #$0001
	beq L82C788
	lda #$0001
	jsr L82C899
L82C788:
	plp
	sec
	rts

L82C78B:
	plp
	clc
	rts

L82C78E:
	php
	rep #$20
	lda $070A
	and #$00FF
	bne L82C7FB
	lda $0D91
	and #$00FF
	beq L82C7F8
	lda $0D91
	bit #$0020
	bne L82C7DF
	bit #$0010
	bne L82C7EE
	bit #$0008
	bne L82C7E9
	bit #$0004
	bne L82C7E4
	bit #$0002
	bne L82C7CF
	bit #$0001
	beq L82C7F8
	lda $0D93
	bit #$0001
	beq L82C7F1
	jsr L82C906
	bra L82C7F1

L82C7CF:
	lda $0D93
	bit #$0001
	bne L82C7F1
	jsr L82CB81
	jsr L82C941
	bra L82C7F1

L82C7DF:
	jsr L82C825
	bra L82C7F1

L82C7E4:
	jsr L82C85D
	bra L82C7F1

L82C7E9:
	jsr L82C8CE
	bra L82C7F1

L82C7EE:
	jsr L82C7FE
L82C7F1:
	sep #$20
	stz $0D91
	rep #$20
L82C7F8:
	plp
	sec
	rts

L82C7FB:
	plp
	clc
	rts

L82C7FE:
	php
	sep #$20
	lda $0D90
	beq L82C810
	rep #$20
	ldx $0D88
	lda $0D82
	bra L82C818

L82C810:
	rep #$20
	ldx $0D86
	lda $0D84
L82C818:
	jsr L82C8B1
	sep #$20
	lda #$00
	sta.l $0004DA,X
	plp
	rts

L82C825:
	php
	sep #$20
	lda $0760
	cmp #$24
	bne L82C85B
	lda $0D90
	bne L82C841
	rep #$20
	ldx $0D86
	lda $0D82
	jsr L82C8B1
	bra L82C84C

L82C841:
	rep #$20
	ldx $0D88
	lda $0D84
	jsr L82C8B1
L82C84C:
	lda #$0037
	jsl L8096FA
	sep #$20
	lda #$00
	sta.l $0004DA,X
L82C85B:
	plp
	rts

L82C85D:
	php
	sep #$20
	lda $0D90
	bne L82C878
	rep #$20
	ldx $0D86
	lda $0D82
	jsr L82C8B1
	lda $0D0D
	and #$00FF
	bra L82C889

L82C878:
	rep #$20
	ldx $0D88
	lda $0D84
	jsr L82C8B1
	lda $0D2D
	and #$00FF
L82C889:
	phx
	jsl L8096FA
	plx
	sep #$20
	lda #$00
	sta.l $0004DA,X
	plp
	rts

L82C899:
	php
	pha
	ldx $0D86
	phx
	jsl L8096FA
	plx
	pla
	bne L82C8A7
L82C8A7:
	sep #$20
	lda #$00
	sta.l $0004DA,X
	plp
	rts

L82C8B1:
	php
	phx
	sta $23
	stx $25
	ldx $23
	lda $04CE,X
	ldx $25
	sta $04CE,X
	ldx $23
	lda $04D0,X
	ldx $25
	sta $04D0,X
	plx
	plp
	rts

L82C8CE:
	php
	sep #$20
	lda $0D90
	bne L82C8E7
	rep #$20
	ldx $0D86
	lda $0D0D
	and #$00FF
	clc
	adc #$0028
	bra L82C8F6

L82C8E7:
	rep #$20
	ldx $0D88
	lda $0D2D
	and #$00FF
	clc
	adc #$0028
L82C8F6:
	phx
	jsl L8096FA
	plx
	sep #$20
	lda #$00
	sta.l $0004DA,X
	plp
	rts

L82C906:
.ACCU 16
	php
	lda.l $0006FE
	pha
	lda $0D90
	and #$00FF
	bne L82C922
	ldx $0D84
	lda $0D0D
	and #$00FF
	eor #$0001
	bra L82C92B

L82C922:
	ldx $0D82
	lda $0D0D
	and #$00FF
L82C92B:
	clc
	adc #$0010
	jsl L8096FA
	sep #$20
	stz $04DA,X
	rep #$20
	pla
	sta.l $0006FE
	plp
	rts

L82C941:
	php
	sep #$20
	lda #$00
	xba
	lda $0D94
	dea
	asl
	tax
	lda $07B8,X
	beq L82C963
	lda #$10
	sta $7EBDE6
	lda #$01
	ora $0D8E
	sta $0D8E
	jsr L82C968
L82C963:
	jsr L82CCB2
	plp
	rts

L82C968:
	php
	lda #$7F
	sta $02
	lda #$51
	sta $01
	lda #$30
	sta $00
	rep #$20
	jsr L82C9C3
	bcs L82C9B3
	tya
	bne L82C99A
	lda $00
	clc
	adc #$01C0
	sta $00
	jsr L82CA6D
	lda #bank100(L82C9B5)
	sta $01
	lda #L82C9B5
	sta $00
	jsl L808EAD
	bra L82C9B3

L82C99A:
	lda $00
	clc
	adc #$0180
	sta $00
	jsr L82CA6D
	lda #bank100(L82C9BC)
	sta $01
	lda #L82C9BC
	sta $00
	jsl L808EAD
L82C9B3:
	plp
	rts

L82C9B5:
DMA_DATA $001D82 $0020 $E0

L82C9BC:
DMA_DATA $001D82 $0020 $C0

L82C9C3:
	php
	rep #$20
	lda $0D90
	and #$00FF
	bne L82C9D8
	lda $0D93
	bit #$0020
	bne L82C9EC
	beq L82C9E6
L82C9D8:
	lda $0D93
	bit #$0020
	bne L82CA2C
	ldy #$0000
	plp
	clc
	rts

L82C9E6:
	ldy #$0001
	plp
	clc
	rts

L82C9EC:
	lda $07D3
	and #$00FF
	beq L82CA09
	lda #$34CD
	ldy #$0020
	ldx #$0000
L82C9FD:
	sta.l $001D82,X
	inx
	dey
	inx
	dey
	bne L82C9FD
	bra L82CA1C

L82CA09:
	lda #$0018
	ldy #$0020
	ldx #$0000
L82CA12:
	sta.l $001D82,X
	inx
	dey
	inx
	dey
	bne L82CA12
L82CA1C:
	lda #bank100(L82C9B5)
	sta $01
	lda #L82C9B5
	sta $00
	jsl L808EAD
	bra L82CA6A

L82CA2C:
	lda $07D3
	and #$00FF
	bne L82CA49
	lda #$34CD
	ldy #$0020
	ldx #$0000
L82CA3D:
	sta.l $001D82,X
	inx
	dey
	inx
	dey
	bne L82CA3D
	bra L82CA5C

L82CA49:
	lda #$0018
	ldy #$0020
	ldx #$0000
L82CA52:
	sta.l $001D82,X
	inx
	dey
	inx
	dey
	bne L82CA52
L82CA5C:
	lda #bank100(L82C9BC)
	sta $01
	lda #L82C9BC
	sta $00
	jsl L808EAD
L82CA6A:
	plp
	sec
	rts

L82CA6D:
	php
	ldy #$0000
	tyx
	lda #$0010
	sta $15
L82CA77:
	lda [$00],Y
	jsr L82CA8A
	sta.l $001D82,X
	iny
	iny
	inx
	inx
	dec $15
	bne L82CA77
	plp
	rts

L82CA8A:
	php
	phx
	phy
	sta $17
	and #$001F
	jsr L82CAC3
	sta $1B
	lda $17
	lsr
	lsr
	lsr
	lsr
	lsr
	sta $19
	and #$001F
	jsr L82CAC3
	asl
	asl
	asl
	asl
	asl
	tsb $1B
	lda $19
	lsr
	lsr
	lsr
	lsr
	lsr
	and #$001F
	jsr L82CAC3
	xba
	asl
	asl
	ora $1B
	ply
	plx
	plp
	rts

L82CAC3:
	php
	pha
	sep #$20
	lda $0D93
	and #$02
	rep #$20
	and #$00FF
	tax
	pla
	jsr (L82CAD8,X)
	plp
	rts

L82CAD8:
.dw L82CADC
.dw L82CB1A

L82CADC:
	php
	sta $1D
	ldx #$0010
	lda #$001F
	sec
	sbc $1D
	sta $4204
	sep #$10
	stx $4206
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	lda $4214
	rep #$10
	ldx $4216
	rep #$10
	xba
	sep #$20
	lda $7EBDE6
	rep #$20
	sta.l $004202
	nop
	nop
	nop
	lda.l $004216
	clc
	adc $1D
	plp
	rts

L82CB1A:
	php
	sta $1D
	ldx #$0010
	lda #$001F
	sec
	sbc $1D
	sta $4204
	sep #$10
	stx $4206
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	lda $4214
	rep #$10
	ldx $4216
	rep #$10
	xba
	sep #$20
	lda #$10
	sec
	sbc $7EBDE6
	rep #$20
	sta.l $004202
	nop
	nop
	nop
	lda.l $004216
	sta $1F
	lda #$001F
	sec
	sbc $1F
	plp
	rts

L82CB60:
	php
	phx
	lda #$4901
	sbc $0D8E2D,X
	sta $0D8E
	rep #$20
	lda #bank100(L82D0B2)
	sta $01
	lda #L82D0B2
	sta $00
	sep #$20
	jsl L808EAD
	plx
	plp
	rts

L82CB81:
	php
	sep #$20
	lda #$00
	xba
	jsr L82CC40
	bcs L82CB91
	jsr L82CB96
	bra L82CB94

L82CB91:
	jsr L82CBEB
L82CB94:
	plp
	rts

L82CB96:
	php
	lda $0D94
	dea
	asl
	rep #$20
	tax
	sep #$20
	lda $07B8,X
	sta $0D9D
	eor #$FF
	ina
	cmp $0D9B
	bcc L82CBCD
	lda $0766
	sec
	sbc $0D9C
	sta $19
	sec
	sbc $0D9B
	bcc L82CBC6
	lda $0D9B
	sta $0D9E
	bra L82CBE9

L82CBC6:
	lda $19
	sta $0D9E
	bra L82CBE9

L82CBCD:
	sta $17
	lda $0766
	sec
	sbc $0D9C
	sta $15
	sec
	sbc $17
	bcc L82CBE4
	lda $17
	sta $0D9E
	bra L82CBE9

L82CBE4:
	lda $15
	sta $0D9E
L82CBE9:
	plp
	rts

L82CBEB:
	php
	lda $0D94
	dea
	asl
	rep #$20
	tax
	sep #$20
	lda $07B8,X
	sta $0D9E
	eor #$FF
	ina
	cmp $0D9C
	bcc L82CC22
	lda $0765
	sec
	sbc $0D9B
	sta $19
	sec
	sbc $0D9C
	bcc L82CC1B
	lda $0D9C
	sta $0D9D
	bra L82CC3E

L82CC1B:
	lda $19
	sta $0D9D
	bra L82CC3E

L82CC22:
	sta $17
	lda $0765
	sec
	sbc $0D9B
	sta $15
	sec
	sbc $17
	bcc L82CC39
	lda $17
	sta $0D9D
	bra L82CC3E

L82CC39:
	lda $15
	sta $0D9D
L82CC3E:
	plp
	rts

L82CC40:
	lda $0D90
	eor $07D3
	bne L82CC51
	lda $0D93
	bit #$20
	bne L82CC5A
	beq L82CC58
L82CC51:
	lda $0D93
	bit #$20
	beq L82CC5A
L82CC58:
	sec
	rts

L82CC5A:
	clc
	rts

L82CC5C:
.ACCU 16
	php
	lda #$0001
	jsr L82DC5C
	jsr L82D32E
	jsr L82D8A6
	sep #$20
	lda #$00
	xba
	lda $0D90
	eor $07D3
	beq L82CC94
	lda $0765
	sec
	sbc $076F
	sta $15
	sec
	sbc $07A2
	bpl L82CC8C
	lda $15
	sta $0D9D
	bra L82CCB0

L82CC8C:
	lda $07A2
	sta $0D9D
	bra L82CCB0

L82CC94:
	lda $0766
	sec
	sbc $0770
	sta $15
	sec
	sbc $07A3
	bpl L82CCAA
	lda $15
	sta $0D9E
	bra L82CCB0

L82CCAA:
	lda $07A3
	sta $0D9E
L82CCB0:
	plp
	rts

L82CCB2:
	php
	sep #$20
	jsr L82CD3C
	lda $0D93
	bit #$08
	beq L82CCD9
	bit #$10
	beq L82CCC8
	lda $078F
	bra L82CCCB

L82CCC8:
	lda $0790
L82CCCB:
	bit #$01
	beq L82CCD9
	rep #$20
	lda #$00B6
	jsr L82CD2E
	bra L82CCDE

L82CCD9:
	jsr L82CCE0
	bra L82CCDE

L82CCDE:
	plp
	rts

L82CCE0:
	php
	rep #$20
	lda $0D94
	and #$00FF
	dea
	asl
	tax
	lda $07B8,X
	and #$00FF
	beq L82CD0F
	lda $0D92
	and #$00FF
	cmp #$000A
	bcc L82CD05
	jsr L82CD17
	lda #$0004
L82CD05:
	tax
	lda.l L809DD9,X
	jsr L82CD2E
	bra L82CD15

L82CD0F:
	lda #$00B7
	jsr L82CD2E
L82CD15:
	plp
	rts

L82CD17:
	php
	lda $0D93
	bit #$0002
	beq L82CD2C
	lda $15
	sta $089D
	lda #$0039
	jsl L80B44D
L82CD2C:
	plp
	rts

L82CD2E:
	php
	pha
	lda $15
	sta $089F
	pla
	jsl L80B49E
	plp
	rts

L82CD3C:
.ACCU 8
	php
	lda $0D93
	lsr
	lsr
	lsr
	lsr
	and #$01
	eor $07D3
	beq L82CD50
	ldx $0D82
	bra L82CD53

L82CD50:
	ldx $0D84
L82CD53:
	rep #$20
	lda $04CE,X
	and #$00FF
	sta $15
	plp
	rts

L82CD5F:
	ldx #$002D
	bra L82CD67

L82CD64:
	ldx #$0000
L82CD67:
	php
	txa
	ldx $0D80
	clc
	adc $0D11,X
	and #$00FF
	sta $15
	asl
	clc
	adc $15
	tax
	lda.l L80BCD7,X
	sta $00
	lda.l (L80BCD7+1),X
	sta $01
	jsl L82D1FE
	lda #$0002
	sta $7EBCFE
	lda #$7E00
	sta $7EBD00
	ldx $0D80
	lda $0D1E,X
	clc
	adc #$40FE
	sta $7EBCFF
	jsr L82CDD1
	sta $7EBD02
	sep #$20
	lda #$80
	sta $7EBD04
	rep #$20
	ldx $0D80
	lda $0D1C,X
	sta $7EBD05
	lda #$7E00
	sta $01
	lda #$BCFE
	sta $00
	jsl L808EAD
	plp
	rts

L82CDD1:
	php
	lda $7EBDE5
	and #$00FF
	bne L82CE0B
	ldx $0D80
	lda $0D11,X
	and #$00FF
	cmp #$0016
	bcc L82CE0B
	cmp #$001C
	bcs L82CDF3
L82CDEE:
	lda #$0C00
	bra L82CE0E

L82CDF3:
	cmp #$0022
	beq L82CDEE
	ldx $0D80
	lda $0D13,X
	and #$00FF
	cmp #$0009
	bne L82CE0B
	lda #$0E80
	bra L82CE0E

L82CE0B:
	lda #$1000
L82CE0E:
	plp
	rts

L82CE10:
	php
	phx
	phy
	ldx #$0000
	lda.l L80BD5E
	sta $00
	lda.l (L80BD5E + 1)
	sta $01
	ldx $0D80
	lda $0D1E,X
	clc
	adc #$0E00
	tax
	clc
	adc #$0080
	sta $17
	sep #$20
L82CE35:
	ldy #$0000
	lda [$00],Y
	sta.l DecompressionLocation,X
	inx
	ldy $00
	iny
	bne L82CE49
	ldy #$8000
	inc $02
L82CE49:
	sty $00
	cpx $17
	bcc L82CE35
	ply
	plx
	plp
	rts

L82CE53:
.ACCU 16
	php
	pha
	phy
	phx
	stx $17
	sty $19
	and #$00FF
	sta $15
	asl
	clc
	adc $15
	tax
	lda.l L80BEE4,X
	sta $00
	lda.l (L80BEE4 + 1),X
	sta $01
	ldx $17
	jsl L82D21F
	lda #$0002
	sta $7EBCFE
	lda #$7E00
	sta $7EBD00
	lda #$40FE
	clc
	adc $17
	sta $7EBCFF
	lda #$0400
	sta $7EBD02
	lda #$0080
	sta $7EBD04
	lda $19
	sta $7EBD05
	lda #$7E00
	sta $01
	lda #$BCFE
	sta $00
	jsl L808EAD
	jsl L8087EA
	plx
	ply
	pla
	plp
	rts

L82CEBA:
	php
	pha
	phy
	phx
	stx $17
	sty $19
	and #$00FF
	sta $15
	asl
	clc
	adc $15
	tax
	lda.l L80BF11,X
	sta $00
	lda.l (L80BF11 + 1),X
	sta $01
	ldx $17
	jsl L82D21F
	lda #$0002
	sta $7EBCFE
	lda #$7E00
	sta $7EBD00
	lda #$40FE
	clc
	adc $17
	sta $7EBCFF
	lda #$0400
	sta $7EBD02
	lda #$0080
	sta $7EBD04
	lda $19
	sta $7EBD05
	lda #$7E00
	sta $01
	lda #$BCFE
	sta $00
	jsl L808EAD
	jsl L8087EA
	plx
	ply
	pla
	plp
	rts

L82CF21:
	php
	phx
	pha
	lda #bank100(L809E45)
	sta $01
	lda #L809E45
	sta $00
	jsl L809606
	lda #bank100(L809E2D)
	sta $01
	lda #L809E2D
	sta $00
	jsl L809615
	pla
	and #$00FF
	sta $15
	asl
	clc
	adc $15
	tax
	lda.l (L80BDE5 + 1),X
	sta $01
	lda.l L80BDE5,X
	sta $00
	ldx $0D80
	jsl L82D23B
	jsr L82CF7D
	jsr L82CFA7
	jsr L82CFF2
	jsr L82CFFA
	jsr L82D11B
	tay
	plx
	jsl L809689
	sep #$20
	stz $04DC,X
	stz $06FB
	plp
	rts

L82CF7D:
.ACCU 16
	lda #$7E00
	sta.l $0006E7
	lda $0D1E,X
	clc
	adc #$40FE
	sta.l $0006E6
	rts

L82CF90:
	php
	sep #$20
	lda #$82
	sta.l $0004CD,X
	lda #$A0
	sta.l $0004CC,X
	lda #$43
	sta.l $0004CB,X
	plp
	rts

L82CFA7:
	php
	sep #$20
	lda $0D09,X
	sec
	sbc $0861
	bmi L82CFB7
	cmp #$0E
	bcc L82CFBE
L82CFB7:
	pha
	lda #$01
	sta $06FB
	pla
L82CFBE:
	rep #$20
	and #$000F
	asl
	asl
	asl
	asl
	sta.l $0006F0
	sep #$20
	lda $0D08,X
	sec
	sbc $0860
	bcc L82CFE3
	bmi L82CFDC
	cmp #$10
	bcc L82CFE3
L82CFDC:
	pha
	lda #$01
	sta $06FB
	pla
L82CFE3:
	rep #$20
	and #$001F
	asl
	asl
	asl
	asl
	sta.l $0006EE
	plp
	rts

L82CFF2:
	lda $0D14,X
	sta.l $0006F8
	rts

L82CFFA:
	php
	jsr L82D028
	sep #$20
	ldx $0D80
	bne L82D009
	lda #$86
	bra L82D022

L82D009:
	cpx #$0020
	bne L82D012
	lda #$84
	bra L82D022

L82D012:
	cpx #$0040
	bne L82D01B
	lda #$82
	bra L82D022

L82D01B:
	cpx #$0060
	bne L82D022
	lda #$81
L82D022:
	sta.l $0006EA
	plp
	rts

L82D028:
.ACCU 16
	php
	stz $25
	ldx $0D80
	lda $0D11,X
	and #$00FF
	cmp #$0002
	beq L82D06B
	cmp #$001C
	beq L82D06B
	cmp #$0014
	beq L82D06B
	cmp #$0005
	beq L82D06B
	cmp #$0006
	beq L82D06B
	cmp #$001B
	beq L82D06B
	cmp #$0025
	beq L82D06B
	cmp #$002C
	beq L82D075
	cmp #$0018
	beq L82D070
	cmp #$002A
	beq L82D07A
	lda #$0000
	bra L82D07D

L82D06B:
	lda #$0020
	bra L82D07D

L82D070:
	lda #$0040
	bra L82D07D

L82D075:
	lda #$0060
	bra L82D07D

L82D07A:
.ACCU 16
	lda #$0080
L82D07D:
	sta $25
	ldy #$0000
	ldx $0D80
	lda $0D10,X
	and #$00FF
	bne L82D090
	ldy #$0100
L82D090:
	lda.l (L80BCD4 + 1)
	sta $01
	lda.l L80BCD4
	clc
	adc $25
	sta $00
	jsr L82D0B9
	lda #bank100(L82D0B2)
	sta $01
	lda #L82D0B2
	sta $00
	jsl L808EAD
	plp
	rts

L82D0B2:
DMA_DATA $7F5230 $0100 $80

L82D0B9:
	php
	lda #$7F00
	sta $04
	lda #$5130
	sta $03
	lda $0D80
	bne L82D0D3
	lda #$01C0
	clc
	adc $03
	sta $03
	bra L82D0FE

L82D0D3:
	cmp #$0020
	bne L82D0E2
	lda #$0180
	clc
	adc $03
	sta $03
	bra L82D0FE

L82D0E2:
	cmp #$0040
	bne L82D0F1
	lda #$0140
	clc
	adc $03
	sta $03
	bra L82D0FE

L82D0F1:
	cmp #$0060
	bne L82D0FE
	lda #$0120
	clc
	adc $03
	sta $03
L82D0FE:
	ldx #$0020
L82D101:
	lda [$00],Y
	sta [$03]
	inc $03
	inc $03
	iny
	iny
	dex
	dex
	bne L82D101
	plp
	rts

L82D111:
	php
	sep #$20
	lda #$42
	sta $06E9
	plp
	rts

L82D11B:
	php
	sep #$20
	lda $0D0C,X
	cmp #$FF
	bne L82D12C
	lda $0D0D,X
	clc
	adc $0D0F,X
L82D12C:
	plp
	rts

L82D12E:
	php
	phy
	stx $17
	sty $19
	sta $15
	asl
	clc
	adc $15
	tax
	lda.l (L80BF41 + 1),X
	sta $01
	lda.l L80BF41,X
	sta $00
	ldx $0D80
	jsl L82D25A
	ldx $0D80
	jsr L82D1D1
	jsr L82CFA7
	jsr L82CFF2
	jsr L82D1F3
	ldy #$000C
	ldx $19
	jsl L809689
	sep #$20
	stz $04DC,X
	ply
	plp
	rts

L82D16E:
	php
	phy
	stx $17
	sty $19
	sta $15
	asl
	clc
	adc $15
	tax
	lda.l (L80BF6E + 1),X
	sta $01
	lda.l L80BF6E,X
	sta $00
	ldx $0D80
	jsl L82D25A
	ldx $0D80
	jsr L82D1D1
	jsr L82D1AE
	jsr L82CFF2
	jsr L82D1F3
	ldy #$0002
	ldx $19
	jsl L809689
	sep #$20
	stz $04DC,X
	ply
	plp
	rts

L82D1AE:
	php
	sep #$20
	lda $0D09,X
	sec
	sbc $0861
	asl
	asl
	asl
	asl
	sta.l $0006F0
	lda $0D08,X
	sec
	sbc $0860
	asl
	asl
	asl
	asl
	sta.l $0006EE
	plp
	rts

L82D1D1:
.ACCU 16
	lda #$7E00
	sta.l $0006E7
	lda #$40FE
	clc
	adc $17
	sta.l $0006E6
	rts

L82D1E3:
	txa
	bne L82D1EB
	lda #$0180
	bra L82D1EE

L82D1EB:
	lda #$0100
L82D1EE:
	sta.l $0006F8
	rts

L82D1F3:
	php
	sep #$20
	lda #$87
	sta.l $0006EA
	plp
	rts

L82D1FE:
	php
	phx
	phy
	lda $01
	sta.l $000072
	lda $00
	sta.l $000071
	ldx $0D80
	lda $0D1E,X
	sta.l $000076
	jsl DECOMPRESS_ASSET
	ply
	plx
	plp
	rtl

L82D21F:
	php
	phx
	phy
	lda $01
	sta.l $000072
	lda $00
	sta.l $000071
	txa
	sta.l $000076
	jsl DECOMPRESS_ASSET
	ply
	plx
	plp
	rtl

L82D23B:
	php
	phx
	lda $01
	sta.l $000072
	lda $00
	sta.l $000071
	ldx $0D80
	lda $0D1E,X
	sta.l $000076
	jsl DECOMPRESS_ASSET
	plx
	plp
	rtl

L82D25A:
	php
	phy
	phx
	lda $01
	sta.l $000072
	lda $00
	sta.l $000071
	lda $17
	sta.l $000076
	jsl DECOMPRESS_ASSET
	plx
	ply
	plp
	rtl

L82D277:
.ACCU 16
	php
	pha
	and #$000F
	cmp #$0008
	bcc L82D28B
	pla
	and #$FFF0
	clc
	adc #$0010
	bra L82D28F

L82D28B:
	pla
	and #$FFF0
L82D28F:
	plp
	rts

L82D291:
	php
	phx
	jsl L8095E1
	ldx #$0000
	stz $0D02,X
	stz $0D00,X
	ldx #$0020
	stz $0D02,X
	stz $0D00,X
	ldx #$0040
	stz $0D02,X
	stz $0D00,X
	ldx #$0060
	stz $0D02,X
	stz $0D00,X
	lda #$0000
	sta $7EBD1F
	sta $7EBD3F
	sta $7EBD5F
	sta $7EBD7F
	sta $7EBD21
	sta $7EBD41
	sta $7EBD61
	sta $7EBD81
	sta $7EBD23
	sta $7EBD43
	sta $7EBD63
	sta $7EBD83
	sta $7EBDA3
	sta $7EBDC3
	sta $7EBD1B
	sta $7EBD1D
	sep #$20
	lda #$00
	sta $04DA
	sta $04FA
	sta $051A
	sta $053A
	sta $055A
	sta $057A
	plx
	plp
	rtl

L82D317:
	php
	phx
	stz $0D97
	stz $0D99
	stz $0D9B
	stz $0D9D
	jsr L82DD29
	jsr L82D8A6
	plx
	plp
	rts

L82D32E:
	php
	sep #$20
	lda #$0A
	sta $0D8F
L82D336:
	rep #$20
	jsr L82D351
	jsr L82D458
	jsl L8087EA
	sep #$20
	lda $0D8F
	dea
	sta $0D8F
	and #$FF
	bne L82D336
	plp
	rts

L82D351:
.ACCU 16
	php
	lda $0D8F
	and #$00FF
	lsr
	tax
	beq L82D399
	stx $1B
	lda #$7E00
	sta $01
	lda #$BDE7
	sta $00
	lda #$7F00
	sta $04
	lda #$5130
	sta $03
	ldy #$0000
L82D375:
	lda [$00],Y
L82D377:
	jsr L82D426
	dec $1B
	bne L82D377
	sta [$03],Y
	stx $1B
	iny
	iny
	cpy #$0020
	bcc L82D375
L82D389:
	lda #bank100(L82D39E)
	sta $01
	lda #L82D39E
	sta $00
	jsl L808EAD
	plp
	rts

L82D399:
	jsr L82D3A5
	bra L82D389

L82D39E:
DMA_DATA $7F5130 $0020 $00

L82D3A5:
	php
	lda $076F
	and #$00FF
	sta $15
	lda $0765
	and #$00FF
	sta $17
	jsr L82D3FF
	tax
	ldy #$0000
	lda #$7F00
	sta $01
	lda #$5130
	sta $00
L82D3C7:
	lda $7EBDE7,X
	sta [$00],Y
	inx
	inx
	iny
	iny
	cpy #$0010
	bcc L82D3C7
	lda $0770
	and #$00FF
	sta $15
	lda $0766
	and #$00FF
	sta $17
	jsr L82D3FF
	clc
	adc #$0010
	tax
L82D3EE:
	lda $7EBDE7,X
	sta [$00],Y
	inx
	inx
	iny
	iny
	cpy #$0020
	bcc L82D3EE
	plp
	rts

L82D3FF:
	php
	lda $07CD
	and #$0003
	beq L82D421
	cmp #$0001
	beq L82D414
	cmp #$0002
	bne L82D421
	asl $15
L82D414:
	asl $15
	lda $17
	cmp $15
	bcc L82D421
	lda #$0020
	bra L82D424

L82D421:
	lda #$0000
L82D424:
	plp
	rts

L82D426:
	php
	sta $17
	and #$0010
	sta $19
	lda $17
	and #$000F
	asl
	tsb $19
	lda $17
	and #$0200
	tsb $19
	lda $17
	and #$01E0
	asl
	tsb $19
	lda $17
	and #$4000
	tsb $19
	lda $17
	and #$3C00
	asl
	ora $19
	ora $17
	plp
	rts

L82D458:
	php
	lda $0D97
	cmp $0D99
	bcc L82D485
	lda $7EBD11
	cmp #$FFFF
	beq L82D472
	pha
	ldx #$0000
	ply
	jsr L82D4B7
L82D472:
	lda $7EBD13
	cmp #$FFFF
	beq L82D4A7
	pha
	ldx #$0002
	ply
	jsr L82D56C
	bra L82D4A7

L82D485:
	lda $7EBD11
	cmp #$FFFF
	beq L82D496
	pha
	ldx #$0000
	ply
	jsr L82D56C
L82D496:
	lda $7EBD13
	cmp #$FFFF
	beq L82D4A7
	pha
	ldx #$0002
	ply
	jsr L82D4B7
L82D4A7:
	lda #bank100(L82D9EA)
	sta $01
	lda #L82D9EA
	sta $00
	jsl L808EAD
	plp
	rts

L82D4B7:
	php
	sty $15
	lda #$7E00
	sta $07
	lda #$3000
	sta $06
	lda $0D97,X
	clc
	adc $06
	sta $06
	jsr L82D4FF
	jsr L82D4D4
	plp
	rts

L82D4D4:
	php
	ldy #$0000
	lda #$2551
	ora $15
	sta [$06],Y
	ldy #$0040
	lda #$2550
	ora $15
	sta [$06],Y
	ldy #$0080
	lda #$2553
	ora $15
	sta [$06],Y
	ldy #$00C0
	lda #$2554
	ora $15
	sta [$06],Y
	plp
	rts

L82D4FF:
	php
	lda $0D8F
	and #$00FF
	sta $17
	lda #$000B
	sec
	sbc $17
	cmp #$0009
	bcc L82D516
	lda #$0008
L82D516:
	asl
	tay
	lda #$6551
	ora $15
	sta [$06],Y
	dey
	dey
	lda #$2552
	ora $15
	sta [$06],Y
	tya
	clc
	adc #$0042
	tay
	lda #$6550
	ora $15
	sta [$06],Y
	dey
	dey
	lda #$2557
	ora $15
	sta [$06],Y
	tya
	clc
	adc #$0042
	tay
	lda #$6553
	ora $15
	sta [$06],Y
	dey
	dey
	lda #$2557
	ora $15
	sta [$06],Y
	tya
	clc
	adc #$0042
	tay
	lda #$2556
	ora $15
	sta [$06],Y
	dey
	dey
	lda #$2555
	ora $15
	sta [$06],Y
	plp
	rts

L82D56C:
	php
	sty $15
	lda #$7E00
	sta $07
	lda #$3000
	sta $06
	lda $0D97,X
	clc
	adc $06
	sta $06
	jsr L82D5B4
	jsr L82D589
	plp
	rts

L82D589:
	php
	ldy #$0010
	lda #$6551
	ora $15
	sta [$06],Y
	ldy #$0050
	lda #$6550
	ora $15
	sta [$06],Y
	ldy #$0090
	lda #$6553
	ora $15
	sta [$06],Y
	ldy #$00D0
	lda #$2556
	ora $15
	sta [$06],Y
	plp
	rts

L82D5B4:
	php
	lda $0D8F
	and #$00FF
	sec
	sbc #$0003
	bpl L82D5C4
	lda #$0000
L82D5C4:
	asl
	tay
	lda #$2551
	ora $15
	sta [$06],Y
	iny
	iny
	lda #$2552
	ora $15
	sta [$06],Y
	tya
	clc
	adc #$003E
	tay
	lda #$2550
	ora $15
	sta [$06],Y
	iny
	iny
	lda #$2557
	ora $15
	sta [$06],Y
	tya
	clc
	adc #$003E
	tay
	lda #$2553
	ora $15
	sta [$06],Y
	iny
	iny
	lda #$2557
	ora $15
	sta [$06],Y
	tya
	clc
	adc #$003E
	tay
	lda #$2554
	ora $15
	sta [$06],Y
	iny
	iny
	lda #$2555
	ora $15
	sta [$06],Y
	plp
	rts

L82D61A:
	php
	jsr L82D620
	plp
	rts

L82D620:
	php
	sep #$20
	lda #$07
	sta $0D8F
L82D628:
	rep #$20
	jsr L82D640
	jsl L8087EA
	sep #$20
	lda $0D8F
	dea
	sta $0D8F
	and #$FF
	bne L82D628
	plp
	rts

L82D640:
.ACCU 16
	php
	lda $0D97
	cmp $0D99
	bcc L82D66D
	lda $7EBD11
	cmp #$FFFF
	beq L82D65A
	pha
	ldx #$0000
	ply
	jsr L82D69F
L82D65A:
	lda $7EBD13
	cmp #$FFFF
	beq L82D68F
	pha
	ldx #$0002
	ply
	jsr L82D723
	bra L82D68F

L82D66D:
	lda $7EBD11
	cmp #$FFFF
	beq L82D67E
	pha
	ldx #$0000
	ply
	jsr L82D723
L82D67E:
	lda $7EBD13
	cmp #$FFFF
	beq L82D68F
	pha
	ldx #$0002
	ply
	jsr L82D69F
L82D68F:
	lda #bank100(L82D9EA)
	sta $01
	lda #L82D9EA
	sta $00
	jsl L808EAD
	plp
	rts

L82D69F:
	php
	sty $15
	lda #$7E00
	sta $07
	lda #$3000
	sta $06
	lda $0D97,X
	clc
	adc $06
	sta $06
	jsr L82D6BC
	jsr L82D4D4
	plp
	rts

L82D6BC:
	php
	lda $0D8F
	and #$00FF
	sec
	sbc #$0001
	bpl L82D6CC
	lda #$0000
L82D6CC:
	ina
	asl
	tay
	lda #$6551
	ora $15
	sta [$06],Y
	iny
	iny
	lda #$24FF
	ora $15
	sta [$06],Y
	tya
	clc
	adc #$003E
	tay
	lda #$6550
	ora $15
	sta [$06],Y
	iny
	iny
	lda #$24FF
	ora $15
	sta [$06],Y
	tya
	clc
	adc #$003E
	tay
	lda #$6553
	ora $15
	sta [$06],Y
	iny
	iny
	lda #$24FF
	ora $15
	sta [$06],Y
	tya
	clc
	adc #$003E
	tay
	lda #$2556
	ora $15
	sta [$06],Y
	iny
	iny
	lda #$24FF
	ora $15
	sta [$06],Y
	plp
	rts

L82D723:
	php
	sty $15
	lda #$7E00
	sta $07
	lda #$3000
	sta $06
	lda $0D97,X
	clc
	adc $06
	sta $06
	jsr L82D740
	jsr L82D589
	plp
	rts

L82D740:
	php
	lda $0D8F
	and #$00FF
	sta $17
	lda #$0008
	sec
	sbc $17
	cmp #$0007
	bcc L82D757
	lda #$0007
L82D757:
	asl
	tay
	lda #$2551
	ora $15
	sta [$06],Y
	dey
	dey
	lda #$24FF
	ora $15
	sta [$06],Y
	tya
	clc
	adc #$0042
	tay
	lda #$2550
	ora $15
	sta [$06],Y
	dey
	dey
	lda #$24FF
	ora $15
	sta [$06],Y
	tya
	clc
	adc #$0042
	tay
	lda #$2553
	ora $15
	sta [$06],Y
	dey
	dey
	lda #$24FF
	ora $15
	sta [$06],Y
	tya
	clc
	adc #$0042
	tay
	lda #$2554
	ora $15
	sta [$06],Y
	dey
	dey
	lda #$24FF
	ora $15
	sta [$06],Y
	plp
	rts

L82D7AD:
.db $50 $25 $50 $65 $53 $25 $53 $65
.db $51 $25 $51 $65 $54 $25 $56 $25
.db $52 $25 $55 $25

L82D7C1:
	php
	phx
	ldx #$0000
	lda.l L82D7AD,X
	ora $15
	ldy #$0040
	sta [$06],Y
	inx
	inx
	lda.l L82D7AD,X
	ora $15
	ldy #$0050
	sta [$06],Y
	inx
	inx
	lda.l L82D7AD,X
	ora $15
	ldy #$0080
	sta [$06],Y
	inx
	inx
	lda.l L82D7AD,X
	ora $15
	ldy #$0090
	sta [$06],Y
	inx
	inx
	lda.l L82D7AD,X
	ora $15
	ldy #$0000
	sta [$06],Y
	inx
	inx
	lda.l L82D7AD,X
	ora $15
	ldy #$0010
	sta [$06],Y
	inx
	inx
	lda.l L82D7AD,X
	ora $15
	ldy #$00C0
	sta [$06],Y
	inx
	inx
	lda.l L82D7AD,X
	ora $15
	ldy #$00D0
	sta [$06],Y
	inx
	inx
	ldy #$0000
L82D831:
	iny
	iny
	lda.l L82D7AD,X
	sta [$06],Y
	cpy #$000E
	bcc L82D831
	inx
	inx
	ldy #$00C0
L82D843:
	iny
	iny
	lda.l L82D7AD,X
	sta [$06],Y
	cpy #$00CE
	bcc L82D843
	plx
	plp
	rts

L82D853:
	php
	phx
	sty $15
	lda #$7E00
	sta $07
	lda #$3000
	sta $06
	lda $0D97,X
	clc
	adc $06
	sta $06
	jsr L82D7C1
	plx
	lda $06
	clc
	adc #$0040
	clc
	adc #$0080
	ina
	ina
	sta $06
	ldy #$0000
	bra L82D892

L82D880:
	phy
	lda [$03],Y
	ora $15
	txy
	sta [$06],Y
	ply
	iny
	iny
	inx
	inx
	cpx #$000E
	bne L82D880
L82D892:
	cpy #$001C
	beq L82D8A4
	ldx #$0000
	lda $06
	sec
	sbc #$0040
	sta $06
	bra L82D880

L82D8A4:
	plp
	rts

L82D8A6:
	php
	sep #$20
	lda #$00
	ldy #$000E
	ldx #$0000
L82D8B1:
	sta.l $000D9F,X
	inx
	dey
	bne L82D8B1
	lda #$00
	ldy #$000E
	ldx #$0000
L82D8C1:
	sta.l $000DAD,X
	inx
	dey
	bne L82D8C1
	lda $076F
	sta $0D9B
	lda #$00
	sta $02
	lda #$0D
	sta $01
	lda #$9F
	sta $00
	lda $0765
	jsr L82D8FE
	lda $0770
	sta $0D9C
	lda #$00
	sta $02
	lda #$0D
	sta $01
	lda #$AD
	sta $00
	lda $0766
	jsr L82D8FE
	jsr L82D966
	plp
	rts

L82D8FE:
	php
	ldy #$0000
	cmp #$1A
	bcc L82D91A
	pha
	lda #$40
L82D909:
	sta [$00],Y
	iny
	cpy #$0006
	bcc L82D909
	lda #$20
	sta [$00],Y
	iny
	pla
	sec
	sbc #$1A
L82D91A:
	jsr L82D91F
	plp
	rts

L82D91F:
	php
	stz $1D
	stz $1E
	xba
	lda #$00
	xba
	ldx #$0004
	rep #$20
	sta $4204
	sep #$10
	stx $4206
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	lda $4214
	rep #$10
	ldx $4216
	sep #$20
	rep #$10
	cmp #$00
	beq L82D95D
	sta $1D
	tya
	clc
	adc $1D
	sta $1D
	lda #$40
L82D956:
	sta [$00],Y
	iny
	cpy $1D
	bcc L82D956
L82D95D:
	txa
	asl
	asl
	asl
	asl
	sta [$00],Y
	plp
	rts

L82D966:
	php
	rep #$20
	lda $7EBD11
	cmp #$FFFF
	beq L82D99F
	pha
	sep #$20
	lda #$00
	sta $02
	lda #$0D
	sta $01
	lda #$9F
	sta $00
	lda $0D9B
	jsr L82DA5B
	lda #$00
	sta $05
	lda #$0D
	sta $04
	lda #$BB
	sta $03
	rep #$20
	jsr L82DAE5
	ldx #$0000
	ply
	jsr L82D853
L82D99F:
	rep #$20
	lda $7EBD13
	cmp #$FFFF
	beq L82D9D7
	pha
	sep #$20
	lda #$00
	sta $02
	lda #$0D
	sta $01
	lda #$AD
	sta $00
	lda $0D9C
	jsr L82DA5B
	lda #$00
	sta $05
	lda #$0D
	sta $04
	lda #$D7
	sta $03
	rep #$20
	jsr L82DAE5
	ldx #$0002
	ply
	jsr L82D853
L82D9D7:
	lda #bank100(L82D9EA)
	sta $01
	lda #L82D9EA
	sta $00
	jsl L808EAD
	jsr L82D9F3
	plp
	rts

L82D9EA:
DMA_DATA $7E3000 $0800 $80 $4800

L82D9F3:
	php
	lda $0D9B
	and #$00FF
	sta $15
	lda $0765
	and #$00FF
	sta $17
	jsr L82D3FF
	tax
	ldy #$0000
	lda #$7F00
	sta $01
	lda #$5130
	sta $00
L82DA15:
	lda $7EBDE7,X
	sta [$00],Y
	inx
	inx
	iny
	iny
	cpy #$0010
	bcc L82DA15
	lda $0D9C
	and #$00FF
	sta $15
	lda $0766
	and #$00FF
	sta $17
	jsr L82D3FF
	clc
	adc #$0010
	tax
L82DA3C:
	lda $7EBDE7,X
	sta [$00],Y
	inx
	inx
	iny
	iny
	cpy #$0020
	bcc L82DA3C
	lda #bank100(L82D39E)
	sta $01
	lda #L82D39E
	sta $00
	jsl L808EAD
	plp
	rts

L82DA5B:
.ACCU 8
	php
	ldy #$0000
	cmp #$1A
	bcc L82DA77
	pha
	lda #$44
L82DA66:
	sta [$00],Y
	iny
	cpy #$0006
	bcc L82DA66
	lda #$22
	sta [$00],Y
	iny
	pla
	sec
	sbc #$1A
L82DA77:
	jsr L82DA7C
	plp
	rts

L82DA7C:
	php
	jsr L82DACA
	stz $1D
	stz $1E
	xba
	lda #$00
	xba
	ldx #$0004
	rep #$20
	sta $4204
	sep #$10
	stx $4206
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	lda $4214
	rep #$10
	ldx $4216
	sep #$20
	rep #$10
	sta $1D
	tya
	clc
	adc $1D
	sta $1D
L82DAB0:
	lda #$04
	cpy $1D
	beq L82DABD
	ora [$00],Y
	sta [$00],Y
	iny
	bra L82DAB0

L82DABD:
	lda [$00],Y
	and #$F0
	sta $1D
	txa
	ora $1D
	sta [$00],Y
	plp
	rts

L82DACA:
	php
	pha
	phy
	sty $25
	lda #$07
	clc
	adc $25
	sta $25
L82DAD6:
	lda [$00],Y
	and #$F0
	sta [$00],Y
	iny
	cpy $25
	bcc L82DAD6
	ply
	pla
	plp
	rts

L82DAE5:
	rep #$20
	php
	ldy #$0000
L82DAEB:
	lda [$00],Y
	and #$00FF
	jsr L82DB1B
	phy
	pha
	tya
	asl
	tay
	pla
	sta [$03],Y
	ply
	iny
	cpy #$0007
	bcc L82DAEB
L82DB02:
	lda [$00],Y
	and #$00FF
	jsr L82DB1B
	phy
	pha
	tya
	asl
	tay
	pla
	sta [$03],Y
	ply
	iny
	cpy #$000E
	bcc L82DB02
	plp
	rts

L82DB1B:
	php
	sta $15
	and #$00F0
	bne L82DB2A
	lda $15
	jsr L82DC29
	bra L82DB58

L82DB2A:
	cmp #$0040
	bne L82DB36
	lda $15
	jsr L82DB5D
	bra L82DB58

L82DB36:
	cmp #$0030
	bne L82DB42
	lda $15
	jsr L82DB90
	bra L82DB58

L82DB42:
	cmp #$0020
	bne L82DB4E
	lda $15
	jsr L82DBC3
	bra L82DB58

L82DB4E:
	cmp #$0010
	bne L82DB58
	lda $15
	jsr L82DBF6
L82DB58:
	ora #$2000
	plp
	rts

L82DB5D:
	php
	and #$000F
	beq L82DB8B
	cmp #$0004
	bne L82DB6D
	lda #$0140
	bra L82DB8E

L82DB6D:
	cmp #$0003
	bne L82DB77
	lda #$0144
	bra L82DB8E

L82DB77:
	cmp #$0002
	bne L82DB81
	lda #$0145
	bra L82DB8E

L82DB81:
	cmp #$0001
	bne L82DB8B
	lda #$0146
	bra L82DB8E

L82DB8B:
	lda #$0147
L82DB8E:
	plp
	rts

L82DB90:
	php
	and #$000F
	beq L82DBBE
	cmp #$0004
	bne L82DBA0
	lda #$0140
	bra L82DBC1

L82DBA0:
	cmp #$0003
	bne L82DBAA
	lda #$0141
	bra L82DBC1

L82DBAA:
	cmp #$0002
	bne L82DBB4
	lda #$014B
	bra L82DBC1

L82DBB4:
	cmp #$0001
	bne L82DBBE
	lda #$014C
	bra L82DBC1

L82DBBE:
	lda #$0148
L82DBC1:
	plp
	rts

L82DBC3:
	php
	and #$000F
	beq L82DBF1
	cmp #$0004
	bne L82DBD3
	lda #$0140
	bra L82DBF4

L82DBD3:
	cmp #$0003
	bne L82DBDD
	lda #$0141
	bra L82DBF4

L82DBDD:
	cmp #$0002
	bne L82DBE7
	lda #$0142
	bra L82DBF4

L82DBE7:
	cmp #$0001
	bne L82DBF1
	lda #$014D
	bra L82DBF4

L82DBF1:
	lda #$0149
L82DBF4:
	plp
	rts

L82DBF6:
	php
	and #$000F
	beq L82DC24
	cmp #$0004
	bne L82DC06
	lda #$0140
	bra L82DC27

L82DC06:
	cmp #$0003
	bne L82DC10
	lda #$0141
	bra L82DC27

L82DC10:
	cmp #$0002
	bne L82DC1A
	lda #$0142
	bra L82DC27

L82DC1A:
	cmp #$0001
	bne L82DC24
	lda #$0143
	bra L82DC27

L82DC24:
	lda #$014A
L82DC27:
	plp
	rts

L82DC29:
	php
	and #$000F
	beq L82DC57
	cmp #$0004
	bne L82DC39
	lda #$0140
	bra L82DC5A

L82DC39:
	cmp #$0003
	bne L82DC43
	lda #$0141
	bra L82DC5A

L82DC43:
	cmp #$0002
	bne L82DC4D
	lda #$0142
	bra L82DC5A

L82DC4D:
	cmp #$0001
	bne L82DC57
	lda #$0143
	bra L82DC5A

L82DC57:
	lda #$0157
L82DC5A:
	plp
	rts

L82DC5C:
	php
	stz $0D97
	stz $0D99
	stz $0D9B
	stz $0D9D
	sep #$20
	eor $07D3
	bne L82DC8B
	ldx #$0000
	lda $0787
	sec
	sbc $0860
	sta $7EBD15
	lda $0789
	sec
	sbc $0861
	sta $7EBD16
	bra L82DCA4

L82DC8B:
	ldx #$0002
	lda $0788
	sec
	sbc $0860
	sta $7EBD17
	lda $078A
	sec
	sbc $0861
	sta $7EBD18
L82DCA4:
	jsr L82DCA9
	plp
	rts

L82DCA9:
	php
	phx
	lda $7EBD15,X
	cmp #$08
	bcc L82DCBA
	jsr L82DCF1
	sta $1F
	bra L82DCBF

L82DCBA:
	jsr L82DCDF
	sta $1F
L82DCBF:
	lda $7EBD16,X
	cmp #$08
	bcc L82DCCE
	jsr L82DD16
	sta $20
	bra L82DCD3

L82DCCE:
	jsr L82DD03
	sta $20
L82DCD3:
	rep #$20
	lda $1F
	sep #$20
	jsr L82DEBE
	plx
	plp
	rts

L82DCDF:
	php
	asl
	cmp #$14
	bcs L82DCEA
	clc
	adc #$02
	bra L82DCEF

L82DCEA:
	sec
	sbc #$09
	inc $17
L82DCEF:
	plp
	rts

L82DCF1:
	php
	asl
	cmp #$0A
	bcc L82DCFC
	sec
	sbc #$09
	bra L82DD01

L82DCFC:
	clc
	adc #$02
	inc $17
L82DD01:
	plp
	rts

L82DD03:
	php
	dea
	asl
	cmp #$14
	bcs L82DD10
	clc
	adc #$02
	ina
	bra L82DD12

L82DD10:
	lda #$17
L82DD12:
	stz $17
	plp
	rts

L82DD16:
	php
	dea
	asl
	cmp #$04
	bcc L82DD23
	sec
	sbc #$02
	ina
	bra L82DD25

L82DD23:
	lda #$01
L82DD25:
	stz $17
	plp
	rts

L82DD29:
	php
	stz $0D97
	stz $0D99
	stz $0D9B
	stz $0D9D
	sep #$20
	lda $0787
	sec
	sbc $0860
	sta $7EBD15
	lda $0788
	sec
	sbc $0860
	sta $7EBD17
	lda $0789
	sec
	sbc $0861
	sta $7EBD16
	lda $078A
	sec
	sbc $0861
	sta $7EBD18
	jsr L82DD69
	plp
	rts

L82DD69:
	php
	jsr L82DD8A
	jsr L82DE87
	rep #$20
	lda $19
	sep #$20
	ldx #$0000
	jsr L82DEBE
	rep #$20
	lda $1B
	sep #$20
	ldx #$0002
	jsr L82DEBE
	plp
	rts

L82DD8A:
	jsr L82DD94
	bcc L82DD90
	rts

L82DD90:
	jsr L82DE28
	rts

L82DD94:
	lda $7EBD16
	sec
	sbc $7EBD18
	beq L82DDAD
	bpl L82DDA4
	eor #$FF
	ina
L82DDA4:
	cmp #$04
	bcc L82DDAD
	jsr L82DDAF
	sec
	rts

L82DDAD:
	clc
	rts

L82DDAF:
	lda $07D3
	beq L82DDEE
	lda $7EBD16
	cmp #$08
	bcs L82DDD5
	ldx #$0000
	lda $7EBD16
	jsr L82DEE0
	sta $1A
	ldx #$0002
	lda $7EBD16
	jsr L82DEE0
	sta $1C
	rts

L82DDD5:
	ldx #$0000
	lda $7EBD16
	jsr L82DEF3
	sta $1A
	ldx #$0002
	lda $7EBD16
	jsr L82DEF3
	sta $1C
	rts

L82DDEE:
	lda $7EBD18
	cmp #$08
	bcs L82DE0F
	ldx #$0000
	lda $7EBD18
	jsr L82DEE0
	sta $1A
	ldx #$0002
	lda $7EBD18
	jsr L82DEE0
	sta $1C
	rts

L82DE0F:
	ldx #$0000
	lda $7EBD18
	jsr L82DEF3
	sta $1A
	ldx #$0002
	lda $7EBD18
	jsr L82DEF3
	sta $1C
	rts

L82DE28:
	lda $7EBD16
	cmp $7EBD18
	bcs L82DE42
	lda $7EBD16
	sta $0DF3
	lda $7EBD18
	sta $0DF4
	bra L82DE52

L82DE42:
	lda $7EBD16
	sta $0DF4
	lda $7EBD18
	sta $0DF3
	bra L82DE52

L82DE52:
	lda $0DF3
	cmp #$08
	bcs L82DE70
	ldx #$0000
	lda $0DF4
	jsr L82DEE0
	sta $1A
	ldx #$0002
	lda $0DF4
	jsr L82DEE0
	sta $1C
	rts

L82DE70:
	ldx #$0000
	lda $0DF3
	jsr L82DEF3
	sta $1A
	ldx #$0002
	lda $0DF3
	jsr L82DEF3
	sta $1C
	rts

L82DE87:
	lda $7EBD15
	cmp $7EBD17
	bcs L82DE93
	bcc L82DEA9
L82DE93:
	ldx #$0002
	lda $7EBD15
	jsr L82DF06
	sta $1B
	ldx #$0000
	jsr L82DF1D
	sta $19
	bra L82DEBD

L82DEA9:
	ldx #$0000
	lda $7EBD17
	jsr L82DF06
	sta $19
	ldx #$0002
	jsr L82DF1D
	sta $1B
L82DEBD:
	rts

L82DEBE:
	php
	asl
	sta $0D97,X
	xba
	sta $4202
	lda #$40
	sta $4203
	nop
	nop
	lda $4216
	clc
	adc $0D97,X
	sta $0D97,X
	lda $4217
	sta $0D98,X
	plp
	rts

L82DEE0:
	php
	dea
	asl
	cmp #$14
	bcs L82DEED
	clc
	adc #$04
	ina
	bra L82DEEF

L82DEED:
	lda #$17
L82DEEF:
	stz $17
	plp
	rts

L82DEF3:
	php
	dea
	asl
	cmp #$04
	bcc L82DF00
	sec
	sbc #$04
	ina
	bra L82DF02

L82DF00:
	lda #$01
L82DF02:
	stz $17
	plp
	rts

L82DF06:
	php
	asl
	cmp #$0A
	bcc L82DF19
	cmp #$16
	bcs L82DF15
	sec
	sbc #$09
	bra L82DF1B

L82DF15:
	lda #$0D
	bra L82DF1B

L82DF19:
	lda #$02
L82DF1B:
	plp
	rts

L82DF1D:
	php
	clc
	adc #$09
	plp
	rts

L82DF23:
	php
	rep #$30
	pha
	lda $07D3
	and #$00FF
	tax
	pla
	sep #$20
	sta $0787,X
	xba
	sta $0789,X
	rep #$20
	jsl L82D291
	ldy #$0020
	ldx #$0000
L82DF44:
	lda.l L94FFE0,X
	sta $7F5310,X
	inx
	dey
	inx
	dey
	bne L82DF44
	lda #bank100(L82A0AD)
	sta $01
	lda #L82A0AD
	sta $00
	jsl L808EAD
	sep #$20
	lda #$29
	sta $075D
	rep #$20
	lda #$0180
	sta $0D14
	ldy #$0000
	jsr L82B58E
	lda #bank100(L82A043)
	sta $04CC
	lda #L82A043
	sta $04CB
	lda #$0041
	jsl L8096FA
	lda $04CE
	sta $089F
	lda #$00C7
	jsl L80B49E
	sep #$20
	lda #$01
	sta $04DC
	rep #$20
L82DF9E:
	lda #$0000
	sta $50
	sta $52
	jsl L80954E
	jsl L8098F0
	jsl L8087EA
	lda $04DC
	and #$00FF
	bne L82DF9E
	lda #$0000
	sta $04BE
	plp
	rtl

L82DFC1:
	php
	sep #$20
	sta $0DF3
	xba
	sta $0DF4
	rep #$20
	jsl L82D291
	ldy #$0020
	ldx #$0000
L82DFD7:
	lda.l LD0E3C9,X
	sta $7F5310,X
	inx
	dey
	inx
	dey
	bne L82DFD7
	lda #bank100(L82A0AD)
	sta $01
	lda #L82A0AD
	sta $00
	jsl L808EAD
	jsr L82E02E
	lda #bank100(L82A043)
	sta $04CC
	lda #L82A043
	sta $04CB
	sep #$20
	lda #$01
	sta $04DC
	rep #$20
L82E00B:
	lda #$0000
	sta $50
	sta $52
	jsl L80954E
	jsl L8098F0
	jsl L8087EA
	lda $04DC
	and #$00FF
	bne L82E00B
	lda #$0000
	sta $04BE
	plp
	rtl

L82E02E:
	php
	lda $074C
	pha
	and #$FFF0
	sta $074C
	jsr L82E049
	jsl L8087EA
	pla
	sta $074C
	jsr L82E0A0
	plp
	rts

L82E049:
	php
	lda #bank100(LD0E3E9)
	sta.l $000072
	lda #LD0E3E9
	sta.l $000071
	lda #$0000
	sta.l $000076
	jsl DECOMPRESS_ASSET
	lda #$0002
	sta $7EBCFE
	lda #$7E00
	sta $7EBD00
	lda #$40FE
	sta $7EBCFF
	lda #$1000
	sta $7EBD02
	sep #$20
	lda #$80
	sta $7EBD04
	rep #$20
	lda #$7000
	sta $7EBD05
	lda #$7E00
	sta $01
	lda #$BCFE
	sta $00
	jsl L808EAD
	plp
	rts

L82E0A0:
	php
	lda #bank100(L809E45)
	sta $01
	lda #L809E45
	sta $00
	jsl L809606
	lda #bank100(L809E2D)
	sta $01
	lda #L809E2D
	sta $00
	jsl L809615
	lda #bank100(LD0DEFF)
	sta.l $000072
	lda #LD0DEFF
	sta.l $000071
	lda #$0000
	sta.l $000076
	jsl DECOMPRESS_ASSET
	lda #$7E00
	sta.l $0006E7
	lda #$40FE
	sta.l $0006E6
	jsr L82E107
	lda #$0100
	sta.l $0006F8
	lda #$0087
	sta.l $0006EA
	ldy #$0000
	tyx
	jsl L809689
	sep #$20
	stz $04DC,X
	stz $06FB
	plp
	rts

L82E107:
	php
	sep #$20
	lda $0DF4
	sec
	sbc $0861
	bmi L82E117
	cmp #$0E
	bcc L82E11E
L82E117:
	pha
	lda #$01
	sta $06FB
	pla
L82E11E:
	rep #$20
	and #$000F
	asl
	asl
	asl
	asl
	sta.l $0006F0
	sep #$20
	lda $0DF3
	sec
	sbc $0860
	bcc L82E143
	bmi L82E13C
	cmp #$10
	bcc L82E143
L82E13C:
	pha
	lda #$01
	sta $06FB
	pla
L82E143:
	rep #$20
	and #$001F
	asl
	asl
	asl
	asl
	sta.l $0006EE
	plp
	rts

L82E152:
	php
	rep #$30
	pha
	lda $07D3
	and #$00FF
	tax
	pla
	sep #$20
	sta $0787,X
	xba
	sta $0789,X
	rep #$20
	ldy #$0020
	ldx #$0000
L82E16F:
	lda.l L94FFE0,X
	sta $7F5310,X
	inx
	dey
	inx
	dey
	bne L82E16F
	lda #bank100(L82A0AD)
	sta $01
	lda #L82A0AD
	sta $00
	jsl L808EAD
	sep #$20
	lda #$44
	sta $075F
	rep #$20
	lda #$0180
	sta $0D14
	ldy #$0000
	jsr L82B6C9
	lda #$0000
	jsl L8096FA
L82E1A7:
	lda $50
	sta $52
	pha
	jsl L80954E
	jsl L8098F0
	jsl L8087EA
	pla
	sta $50
	lda $0D91
	bit #$0010
	beq L82E1A7
	lda $0D95
	and #$00FF
	cmp #$0002
	bne L82E1A7
	lda #$0000
	sta $04BE
	plp
	rtl

L82E1D6:
	php
	rep #$30
	ldy #$0020
	ldx #$0000
L82E1DF:
	lda.l L94FFE0,X
	sta $7F5310,X
	inx
	dey
	inx
	dey
	bne L82E1DF
	lda #bank100(L82A0AD)
	sta $01
	lda #L82A0AD
	sta $00
	jsl L808EAD
	sep #$20
	lda #$40
	sta $075F
	sta $0760
	rep #$20
	ldy #$0000
	jsr L82E3DC
	lda #bank100(L82A049)
	sta $04CC
	lda #L82A049
	sta $04CB
	jsr L82E24C
	lda #$0001
	ldx #$0000
	jsl L8096FA
	stz $50
L82E228:
	lda $50
	sta $52
	pha
	jsl L80954E
	jsl L8098F0
	jsl L8087EA
	pla
	sta $50
	lda $0D91
	bit #$0002
	beq L82E228
	lda #$0000
	sta $04BE
	plp
	rts

L82E24C:
	php
	sep #$20
	lda $07D3
	beq L82E262
	lda $0788
	sta $17
	lda $078A
	sta $19
	inc $15
	bra L82E26E

L82E262:
	lda $0787
	sta $17
	lda $0789
	sta $19
	inc $15
L82E26E:
	jsr L82C737
	plp
	rts

L82E273:
.ACCU 16
	php
	lda $07D3
	and #$00FF
	bne L82E28C
	lda #$0000
	sta $7EBD11
	lda #$FFFF
	sta $7EBD13
	bra L82E29A

L82E28C:
	lda #$FFFF
	sta $7EBD11
	lda #$0800
	sta $7EBD13
L82E29A:
	plp
	rts

L82E29C:
	php
	ldx #$0000
	lda $07D3
	and #$00FF
	bne L82E2C9
L82E2A8:
	lda.l LD0F800,X
	sta $7EBDE7,X
	sta $7EBDF7,X
	lda.l LD0F820,X
	sta $7EBE07,X
	sta $7EBE17,X
	inx
	inx
	cpx #$0010
	bcc L82E2A8
	bra L82E2E8

L82E2C9:
	lda.l LD0F810,X
	sta $7EBDE7,X
	sta $7EBDF7,X
	lda.l LD0F830,X
	sta $7EBE07,X
	sta $7EBE17,X
	inx
	inx
	cpx #$0010
	bcc L82E2C9
L82E2E8:
	plp
	rts

L82E2EA:
	php
	phx
	jsr L82E32F
	lda #$0000
	sta $7EBD11
	lda #$0800
	sta $7EBD13
	lda #bank100(L82A043)
	sta $04CC
	lda #L82A043
	sta $04CB
	lda #bank100(L82B293)
	sta $01
	lda #L82B293
	sta $00
	jsl L808EAD
	jsr L82DD29
	jsr L82D32E
	jsr L82D8A6
	jsl L80954E
	jsl L8098F0
	jsl L8087EA
	plx
	plp
	rts

L82E32F:
	lda #$0060
	jsl L80B4BB
	rts

L82E337:
	php
	sep #$20
	stz $0D0D
	rep #$20
	jsl L82D291
	stz $52
	jsl L80954E
	jsr L82B2A2
	jsr L82E273
	jsr L82E29C
	jsr L82B8EA
	ldy #$0020
	jsr L82B58E
	jsr L82E3C6
	jsr L82E1D6
	lda #bank100(L82B293)
	sta $01
	lda #L82B293
	sta $00
	jsl L808EAD
	lda #$0000
	jsr L82DC5C
	jsr L82D32E
	jsr L82D8A6
	jsl L80954E
	jsl L8098F0
	jsl L8087EA
	ldx #$0006
L82E38A:
	phx
	jsl L80954E
	jsl L8098F0
	jsl L8087EA
	plx
	dex
	bne L82E38A
	jsr L82E409
	jsr L82D61A
	jsr L82E3D1
	jsl L82D291
	stz $52
	jsl L80954E
	jsl L80A6DD
	lda #bank100(L82D9EA)
	sta $01
	lda #L82D9EA
	sta $00
	jsl L808EAD
	jsl L8087EA
	plp
	rts

L82E3C6:
	lda $08ED
	and #$00FF
	jsl L83DB7D
	rts

L82E3D1:
	lda $08ED
	and #$00FF
	jsl L83DB34
	rts

L82E3DC:
	php
	sty $0DF3
	ldx #$0000
	stx $0D80
	jsr L82B8EA
	lda #$0100
	sta $0D14,X
	ldy #$7600
	ldx #$6400
	lda #$0000
	jsr L82CEBA
	ldy $0DF3
	jsr L82D16E
	stx $0D86
	jsr L82CF90
	plp
	rts

L82E409:
	php
	jsr L82E432
L82E40D:
	rep #$20
	lda $0D94
	and #$00FF
	asl
	tax
	jsr (L82E42E,X)
	sep #$20
	lda $0D94
	ina
	sta $0D94
	cmp #$02
	bne L82E40D
	rep #$20
	jsr L82E48C
	plp
	rts

L82E42E:
.dw L82E476
.dw L82E48C

L82E432:
	php
	sep #$20
	lda $07D3
	bne L82E458
	lda $0765
	sec
	sbc $076F
	sta $15
	sec
	sbc $07A2
	bpl L82E450
	lda $15
	sta $0D9D
	bra L82E474

L82E450:
	lda $07A2
	sta $0D9D
	bra L82E474

L82E458:
	lda $0766
	sec
	sbc $0770
	sta $15
	sec
	sbc $07A3
	bpl L82E46E
	lda $15
	sta $0D9E
	bra L82E474

L82E46E:
	lda $07A3
	sta $0D9E
L82E474:
	plp
	rts

L82E476:
	jsl L80954E
	jsl L8098F0
	jsl L8087EA
	sep #$20
	jsr L82BE56
	rep #$20
	bcs L82E476
	rts

L82E48C:
	ldx #$0008
L82E48F:
	phx
	jsl L80954E
	jsl L8098F0
	jsl L8087EA
	plx
	dex
	bne L82E48F
	rts

L82E4A1:
	php
	sep #$20
	lda #$01
	sta $7EBDE5
	rep #$20
	jsr L82E4E4
	lda #$7F00
	sta $01
	lda #$5D20
	sta $00
L82E4B9:
	jsr L82E714
	jsr L82E54D
	bcc L82E4B9
	jsr L82E4C6
	plp
	rtl

L82E4C6:
	php
	ldx #$0000
L82E4CA:
	lda $7EBD0D,X
	and #$00FF
	cmp #$00FF
	beq L82E4DC
	phx
	jsl L83DB7D
	plx
L82E4DC:
	inx
	cpx #$0004
	bcc L82E4CA
	plp
	rts

L82E4E4:
	php
	lda #$0000
	tay
	tax
	stx $0D80
	sta $0D00
	sta $0D20
	sta $0D40
	sta $0D60
	sta $0D16
	sta $0D36
	sta $0D56
	sta $0D76
	sta $0D18
	sta $0D38
	sta $0D58
	sta $0D78
	sta $7EBD1B
	sta $7EBD1D
	sta $7EBD23
	sta $7EBD43
	sta $7EBD63
	sta $7EBD83
	sep #$20
	lda #$FF
	sta $7EBD0D
	sta $7EBD0E
	sta $7EBD0F
	sta $7EBD10
	lda #$C0
	trb $0D03
	trb $0D23
	trb $0D43
	trb $0D63
	plp
	rts

L82E54D:
	php
	cpx #$0060
	beq L82E577
	rep #$20
	lda #$7F00
	sta $01
	lda #$5D20
	sta $00
	txa
	clc
	adc #$0020
	tax
	stx $0D80
	asl
	asl
	asl
	asl
	clc
	adc $00
	sta $00
	ldy $0D00,X
	plp
	clc
	rts

L82E577:
	plp
	sec
	rts

L82E57A:
	php
	phx
	stx $0D80
	jsr L82E5CC
	jsr L82ED3A
	bcc L82E58D
	txy
	jsr L82F06B
	bra L82E5C9

L82E58D:
	jsr L82EB63
	bcs L82E5C9
	lda $0D16,X
	beq L82E5A3
	sec
	sbc $0D18,X
	bcs L82E5C6
	sta $0D16,X
	stz $0D18,X
L82E5A3:
	ldy $0D00,X
	cpy #$FFFF
	beq L82E5C9
	iny
	iny
	lda #$7F00
	sta $01
	lda #$5D20
	sta $00
	txa
	asl
	asl
	asl
	asl
	clc
	adc $00
	sta $00
	jsr L82E714
	bra L82E5C9

L82E5C6:
	jsr L82EC66
L82E5C9:
	plx
	plp
	rtl

L82E5CC:
	php
	phx
	lda $7EBD21,X
	bit #$0020
	beq L82E626
	lda $04DB,X
	and #$00FF
	bne L82E626
	txy
	lda $7EBD1F,X
	bne L82E61E
	ldx #$0000
	sep #$20
	lda $7EBD1B,X
	beq L82E5FB
	inx
	inx
	lda $7EBD1B,X
	beq L82E5FB
	bne L82E629
L82E5FB:
	phx
	tyx
	rep #$20
	lda $0D16,X
	bne L82E612
	lda $0D03,X
	and #$00C0
	cmp #$00C0
	beq L82E612
	plx
	bra L82E629

L82E612:
	plx
	sep #$20
	jsr L82E62C
	tyx
	jsr L82E67D
	bra L82E629

L82E61E:
	jsr L82E663
	jsr L82E67D
	bra L82E629

L82E626:
	jsr L82E6EF
L82E629:
	plx
	plp
	rts

L82E62C:
	php
	phy
	phy
	stx $25
	tyx
	rep #$20
	lda $0D11,X
	and #$00FF
	asl
	tax
	lda.l L80BE84,X
	ldx $25
	sta $08A1,X
	pla
	ina
	sta $7EBD1B,X
	tyx
	sep #$20
	lda $25
	lsr
	ina
	sta $7EBD1F,X
	jsr L82E663
	ldx $25
	txa
	jsl L80B581
	ply
	plp
	rts

L82E663:
	php
	phx
	rep #$20
	lda $7EBD1F,X
	dea
	bmi L82E67A
	asl
	pha
	lda $04CE,X
	and #$00FF
	plx
	sta $08A5,X
L82E67A:
	plx
	plp
	rts

L82E67D:
	php
	phx
	rep #$30
	jsr L82E6CE
	bcs L82E6B3
	lda $0D08,X
	sta $15
	lda $0D09,X
	sta $17
	stz $19
	jsl L83D8F7
	ldx $19
	jsl L83F63C
	cmp #$0002
	beq L82E6B8
	cmp #$0006
	beq L82E6B8
	cmp #$000A
	beq L82E6B8
	cmp #$000E
	beq L82E6B8
	cmp #$0012
L82E6B3:
	lda #$0000
	bra L82E6BB

L82E6B8:
	lda #$2000
L82E6BB:
	tay
	plx
	phx
	lda $7EBD1F,X
	dea
	bmi L82E6CB
	asl
	tax
	tya
	sta $08A9,X
L82E6CB:
	plx
	plp
	rts

L82E6CE:
	php
	lda $0D11,X
	and #$00FF
	cmp #$0009
	beq L82E6EC
	cmp #$000A
	beq L82E6EC
	cmp #$0028
	beq L82E6EC
	cmp #$002B
	beq L82E6EC
	plp
	clc
	rts

L82E6EC:
	plp
	sec
	rts

L82E6EF:
	php
	phx
	rep #$20
	lda $7EBD1F,X
	beq L82E711
	dea
	asl
	tax
	lda #$0000
	sta $7EBD1B,X
	txa
	jsl L80B5EC
	plx
	phx
	lda #$0000
	sta $7EBD1F,X
L82E711:
	plx
	plp
	rts

L82E714:
	php
L82E715:
	lda [$00],Y
	sep #$20
	cmp #$00
	bne L82E722
	jsr L82E787
	bra L82E758

L82E722:
	cmp #$01
	bne L82E72B
	jsr L82E7B8
	bra L82E758

L82E72B:
	cmp #$02
	bne L82E734
	jsr L82E7F3
	bra L82E758

L82E734:
	cmp #$03
	bne L82E73D
	jsr L82E7FC
	bra L82E758

L82E73D:
	cmp #$04
	bne L82E746
	jsr L82E870
	bra L82E758

L82E746:
	cmp #$05
	bne L82E74F
	jsr L82E90E
	bra L82E75E

L82E74F:
	cmp #$FF
	bne L82E758
	jsr L82EAC9
	bra L82E75E

L82E758:
	rep #$20
	iny
	iny
	bra L82E715

L82E75E:
	rep #$20
	tya
	sta $0D00,X
	plp
	rts

L82E766:
	php
	lda $0D16,X
	bne L82E785
	lda $0D03,X
	and #$00C0
	cmp #$00C0
	beq L82E785
	lda #$0020
	eor #$FFFF
	and $7EBD21,X
	sta $7EBD21,X
L82E785:
	plp
	rts

L82E787:
.ACCU 8
	php
	phy
	phx
	xba
	bit #$80
	beq L82E79B
	and #$7f
	phx
	rep #$20
	jsl L87A8F4
	sep #$20
	plx
L82E79B:
	sta $0D12,X
	sta $15
	rep #$20
	lda $15
	and #$00FF
	jsl L83D912
	plx
	sep #$20
	lda.l ActiveUnit.ClassID
	sta $0D11,X
	ply
	plp
	rts

L82E7B8:
	php
	rep #$20
	xba
	and #$00FF
	beq L82E7CA
	asl
	asl
	asl
	asl
	sta $0D1A,X
	bra L82E7CD

L82E7CA:
	jsr L82E7CF
L82E7CD:
	plp
	rts

L82E7CF:
	php
	lda.l ActiveUnit.Speed
	and #$00FF
	cmp #$0006
	bcc L82E7E6
	cmp #$000E
	bcs L82E7EB
	lda #$0200
	bra L82E7EE

L82E7E6:
	lda #$0100
	bra L82E7EE

L82E7EB:
	lda #$0300
L82E7EE:
	sta $0D1A,X
	plp
	rts

L82E7F3:
	php
	xba
	and #$9D03
	ora $280D
	rts

L82E7FC:
	php
	xba
	pha
	and #$0A07
	asl
	ora $0D03,X
	sta $0D03,X
	pla
	pha
	jsr L82E819
	pla
	rep #$20
	and #$0003
	jsr L82E826
	plp
	rts

L82E819:
	php
	phx
	and #$0A08
	asl
	sta $7EBD21,X
	plx
	plp
	rts

L82E826:
	php
	pha
	cmp #$0001
	beq L82E845
	cmp #$0002
	beq L82E853
	cmp #$0003
	beq L82E861
	lda #$6000
	sta $0D1C,X
	lda #$0000
	sta $0D1E,X
	bra L82E86D

L82E845:
	lda #$6800
	sta $0D1C,X
	lda #$1400
	sta $0D1E,X
	bra L82E86D

L82E853:
	lda #$7000
	sta $0D1C,X
	lda #$2800
	sta $0D1E,X
	bra L82E86D

L82E861:
	lda #$7800
	sta $0D1C,X
	lda #$3C00
	sta $0D1E,X
L82E86D:
	pla
	plp
	rts

L82E870:
	php
	phx
	phy
	lda #$EB00
	sta $0D0C,X
	rep #$20
	cmp #$00FF
	beq L82E885
	cmp #$0004
	bcs L82E8AE
L82E885:
	jsr L82E8DD
	sta $0D14,X
	lda $00
	pha
	lda $01
	pha
	lda $074C
	pha
	and #$FFF0
	sta $074C
	jsr L82CD5F
	jsl L8087EA
	pla
	sta $074C
	pla
	sta $01
	pla
	sta $00
	bra L82E8D9

L82E8AE:
	jsr L82E8DD
	clc
	adc #$0080
	sta $0D14,X
	lda $00
	pha
	lda $01
	pha
	lda $074C
	pha
	and #$FFF0
	sta $074C
	jsr L82CD64
	jsl L8087EA
	pla
	sta $074C
	pla
	sta $01
	pla
	sta $00
L82E8D9:
	ply
	plx
	plp
	rts

L82E8DD:
	php
	ldx $0D80
	lda $0D03,X
	lsr
	lsr
	and #$0003
	beq L82E8FA
	cmp #$0001
	beq L82E8FF
	cmp #$0002
	beq L82E904
	cmp #$0003
	beq L82E909
L82E8FA:
	lda #$FF80
	bra L82E90C

L82E8FF:
	lda #$0000
	bra L82E90C

L82E904:
	lda #$0080
	bra L82E90C

L82E909:
	lda #$0100
L82E90C:
	plp
	rts

L82E90E:
	php
	phx
	phy
	rep #$20
	and #$FF00
	sta $25
	beq L82E923
	lda #$0002
	ora $0D02,X
	sta $0D02,X
L82E923:
	sep #$20
	stz $0D0F,X
	lda $0D03,X
	and #$03
	beq L82E938
	bne L82E931
L82E931:
	rep #$20
	jsr L82E95C
	bra L82E93D

L82E938:
	rep #$20
	jsr L82E9F7
L82E93D:
	sep #$20
	txy
	jsr L82F06B
	stz $0D0F,X
	lda #$01
	ora $0D02,X
	sta $0D02,X
	lda #$01
	ora $0D03,X
	and #$1F
	sta $0D03,X
	ply
	plx
	plp
	rts

L82E95C:
	php
	phx
	sep #$20
	lda $0D11,X
	cmp #$29
	beq L82E96D
	cmp #$2B
	beq L82E96D
	bne L82E97E
L82E96D:
	lda $0D02,X
	bit #$01
	bne L82E979
	jsr L82E9CE
	bra L82E97E

L82E979:
	lda #$35
	sta $0D0F,X
L82E97E:
	lda $0D0C,X
	cmp #$FF
	bne L82E98D
	lda $0D0D,X
	cmp $0D0E,X
	beq L82E9C1
L82E98D:
	rep #$20
	lda $25
	sta $0D16,X
	lda $04CE,X
	xba
	sta $0D04,X
	lda $04D0,X
	xba
	sta $0D06,X
	jsr L82D11B
	rep #$20
	jsr L82EE74
L82E9AA:
	sep #$20
	lda $0D0C,X
	cmp #$FF
	beq L82E9B8
	sta $0D0E,X
	bra L82E9BE

L82E9B8:
	lda $0D0D,X
	sta $0D0E,X
L82E9BE:
	plx
	plp
	rts

L82E9C1:
	rep #$20
	lda $25
	clc
	adc $0D16,X
	sta $0D16,X
	bra L82E9AA

L82E9CE:
	php
	phx
	lda #$9D01
	jml [$A904]
	and $0F9D,Y
	ora $11BD
	ora $2BC9
	beq L82E9E3
	bne L82E9F4
L82E9E3:
	rep #$20
	lda #$0063
	pha
	lda $04CE,X
	sta $089F
	pla
	jsl L80B49E
L82E9F4:
	plx
	plp
	rts

L82E9F7:
	php
	stx $0D80
	lda $25
	sta $0D16,X
	jsr L82EA8D
	sep #$20
	lda.l ActiveUnit.XPosition
	sta $0D09,X
	lda.l ActiveUnit.YPosition
	sta $0D08,X
	lda $0D12,X
	cmp #$20
	bpl L82EA1E
	lda #$00
	bra L82EA20

L82EA1E:
	lda #$01
L82EA20:
	sta $0D10,X
	rep #$20
	lda.l ActiveUnit.ClassID
	jsr L82CF21
	jsr L82EA79
	jsr L82EA57
	lda.l $0004CE,X
	xba
	sta $0D04,X
	lda.l $0004D0,X
	xba
	sta $0D06,X
	sep #$20
	lda $04CE,X
	sta $0D0A,X
	lda $04D0,X
	sta $0D0B,X
	lda #$FF
	sta $0D0E,X
	plp
	rts

L82EA57:
	php
	phx
	sep #$20
	lda $0D03,X
	bit #$10
	bne L82EA66
	lda #$FF
	bra L82EA69

L82EA66:
	lda $0D12,X
L82EA69:
	pha
	txa
	lsr
	lsr
	lsr
	lsr
	lsr
	tax
	pla
	sta $7EBD0D,X
	plx
	plp
	rts

L82EA79:
	sep #$20
	lda #$82
	sta $04CD,X
	lda #$E5
	sta $04CC,X
	lda #$7A
	sta $04CB,X
	rep #$20
	rts

L82EA8D:
	php
	phx
	lda #$0000
	sta $7EBD1F,X
	plx
	phx
	lda $0D12,X
	and #$00FF
	jsl L83D912
	ldx $0D80
	sep #$20
	lda.l ActiveUnit.ClassID
	sta $0D11,X
	cmp #$29
	beq L82EAB8
	cmp #$2B
	beq L82EAB8
	bne L82EAC6
L82EAB8:
	rep #$20
	lda $0D16,X
	beq L82EAC6
	sep #$20
	lda #$39
	sta $0D0F,X
L82EAC6:
	plx
	plp
	rts

L82EAC9:
	php
	phx
	rep #$20
	tay
	lda $0D03,X
	and #$00FF
	beq L82EB10
	tya
	and #$FF00
	cmp #$0400
	bne L82EAE4
	jsr L82EE9B
	bra L82EB10

L82EAE4:
	lsr
	lsr
	sep #$20
	sta $27
	ora #$20
	ora $0D03,X
	sta $0D03,X
	lda $27
	cmp #$80
	bne L82EB00
	lda #$02
	ora $0D02,X
	sta $0D02,X
L82EB00:
	lda $0D11,X
	cmp #$29
	beq L82EB0D
	cmp #$2B
	beq L82EB0D
	bne L82EB10
L82EB0D:
	jsr L82EB16
L82EB10:
	ldy #$FFFF
	plx
	plp
	rts

L82EB16:
.ACCU 16
	php
	phx
	lda $0D02,X
	bit #$F002
	eor ($A9,X)
	and $0F9D,X
	ora $01A9
	sta $04DC,X
	rep #$20
	lda $04CE,X
	xba
	sta $0D04,X
	lda $04D0,X
	xba
	sta $0D06,X
	jsr L82D11B
	rep #$20
	jsr L82EE74
	sep #$20
	lda $0D11,X
	cmp #$2B
	beq L82EB57
	cmp #$29
	beq L82EB50
	bne L82EB60
L82EB50:
	rep #$20
	lda #$0069
	bra L82EB5C

L82EB57:
	rep #$20
	lda #$0064
L82EB5C:
	jsl L80B4BB
L82EB60:
	plx
	plp
	rts

L82EB63:
	php
	phx
	lda $04DC,X
	and #$00FF
	bne L82EBE2
	lda $0D03,X
	bit #$0020
	beq L82EBE6
	rep #$20
	lda $0D03,X
	and #$00C0
	beq L82EB8E
	cmp #$0040
	beq L82EBB3
	cmp #$0080
	beq L82EB98
	cmp #$00C0
	beq L82EBC8
L82EB8E:
	jsr L82EC0C
	sep #$20
	stz $0D02,X
	bra L82EB9D

L82EB98:
	jsr L82EBEA
	bra L82EBE2

L82EB9D:
	sep #$20
	stz $0D03,X
	lda #$20
	eor #$FF
	and $7EBD21,X
	sta $7EBD21,X
	jsr L82E6EF
	bra L82EBE2

L82EBB3:
.ACCU 16
	lda #$0020
	eor #$FFFF
	and $7EBD21,X
	sta $7EBD21,X
	sep #$20
	jsr L82E6EF
	rep #$20
L82EBC8:
	lda $04CE,X
	jsr L82D277
	sta $04CE,X
	lda $04D0,X
	jsr L82D277
	sta $04D0,X
	stz $0D00,X
	sep #$20
	stz $0D02,X
L82EBE2:
	plx
	plp
	sec
	rts

L82EBE6:
	plx
	plp
	clc
	rts

L82EBEA:
	php
	jsr L82EC24
	sep #$20
	lda #$FE
	sta $04D4,X
	lda #$02
	sta $04D5,X
	lda #$E0
	eor #$FF
	sta $15
	lda $0D03,X
	and $15
	ora #$20
	sta $0D03,X
	plp
	rts

L82EC0C:
.ACCU 16
	php
	ldx $0D80
	lda #$0000
	sta $04BE,X
	sep #$20
	lda #$FE
	sta $04D4,X
	lda #$02
	sta $04D5,X
	plp
	rts

L82EC24:
.ACCU 16
	php
	phx
	lda $04CE,X
	jsr L82D277
	sta $04CE,X
	lda $04D0,X
	jsr L82D277
	sta $04D0,X
	lda $0D12,X
	and #$00FF
	jsl L83D912
	plx
	sep #$20
	lda $0D09,X
	sta.l ActiveUnit.XPosition
	lda $0D08,X
	sta.l ActiveUnit.YPosition
	phx
	lda $0D12,X
	and #$00FF
	pha
	jsl L83D969
	pla
	jsl L83DB34
	plx
	plp
	rts

L82EC66:
.ACCU 16
	php
	lda $0D0D,X
	and #$00FF
	bne L82EC74
	jsr L82ECA2
	bra L82EC90

L82EC74:
	cmp #$0001
	bne L82EC7E
	jsr L82ECC8
	bra L82EC90

L82EC7E:
	cmp #$0002
	bne L82EC88
	jsr L82ECEE
	bra L82EC90

L82EC88:
	cmp #$0003
	bne L82EC90
	jsr L82ED14
L82EC90:
	jsr L82EC95
	plp
	rts

L82EC95:
	php
	lda $0D18,X
	clc
	adc $0D1A,X
	sta $0D18,X
	plp
	rts

L82ECA2:
	php
	lda $0D04,X
	pha
	sec
	sbc $0D1A,X
	sta $0D04,X
	xba
	and #$00FF
	sta $04CE,X
	and #$00F0
	sta $1D
	pla
	xba
	and #$00F0
	cmp $1D
	beq L82ECC6
	jsr L82EFF4
L82ECC6:
	plp
	rts

L82ECC8:
	php
	lda $0D04,X
	pha
	clc
	adc $0D1A,X
	sta $0D04,X
	xba
	and #$00FF
	sta $04CE,X
	and #$00F0
	sta $1D
	pla
	xba
	and #$00F0
	cmp $1D
	beq L82ECEC
	jsr L82EFF4
L82ECEC:
	plp
	rts

L82ECEE:
	php
	lda $0D06,X
	pha
	sec
	sbc $0D1A,X
	sta $0D06,X
	xba
	and #$00FF
	sta $04D0,X
	and #$00F0
	sta $1D
	pla
	xba
	and #$00F0
	cmp $1D
	beq L82ED12
	jsr L82EFF4
L82ED12:
	plp
	rts

L82ED14:
	php
	lda $0D06,X
	pha
	clc
	adc $0D1A,X
	sta $0D06,X
	xba
	and #$00FF
	sta $04D0,X
	and #$00F0
	sta $1D
	pla
	xba
	and #$00F0
	cmp $1D
	beq L82ED38
	jsr L82EFF4
L82ED38:
	plp
	rts

L82ED3A:
	lda $0D03,X
	and #$00C0
	cmp #$00C0
	bne L82ED4A
	jsr L82ED4F
	clc
	rts

L82ED4A:
	txy
	jsr L82EDB0
	rts

L82ED4F:
	php
	phx
	stx $27
	lda $08E8
	and #$00FF
	cmp #$0008
	bne L82ED6D
	lda $08E9
	sta $19
	lda $19
	and #$00FF
	asl
	tax
	jsr (L82ED70,X)
L82ED6D:
	plx
	plp
	rts

L82ED70:
.db $78 $ED $86 $ED $94 $ED $A2 $ED

L82ED78:
	php
	sep #$20
	ldx $27
	lda $0D08,X
	dea
	sta $0D08,X
	plp
	rts

L82ED86:
	php
	sep #$20
	ldx $27
	lda $0D08,X
	ina
	sta $0D08,X
	plp
	rts

L82ED94:
	php
	sep #$20
	ldx $27
	lda $0D09,X
	dea
	sta $0D09,X
	plp
	rts

L82EDA2:
	php
	sep #$20
	ldx $27
	lda $0D09,X
	ina
	sta $0D09,X
	plp
	rts

L82EDB0:
.ACCU 16
	php
	phx
	phy
	sty $25
	stx $27
	lda $08E8
	and #$00FF
	beq L82EDFF
	lda $08E9
	sta $19
	lda $19
	and #$00FF
	asl
	tax
	jsr (L82EE04,X)
	ldx $27
	lda $04CE,X
	xba
	ldx $25
	sta $0D04,X
	ldx $27
	lda $04D0,X
	xba
	ldx $25
	sta $0D06,X
	sep #$20
	ldx $27
	lda $04CE,X
	ldx $25
	sta $0D0A,X
	ldx $27
	lda $04D0,X
	ldx $25
	sta $0D0B,X
	ply
	plx
	plp
	sec
	rts

L82EDFF:
	ply
	plx
	plp
	clc
	rts

L82EE04:
.dw L82EE0C
.dw L82EE26
.dw L82EE40
.dw L82EE5A

L82EE0C:
.ACCU 16
	php
	lda $08EA
	and #$00FF
	sta $1D
	ldx $27
	lda $04CE,X
	clc
	adc.w $001D
	and #$01FF
	sta $04CE,X
	plp
	rts

L82EE26:
	php
	lda $08EA
	and #$00FF
	sta $1D
	ldx $27
	lda $04CE,X
	sec
	sbc.w $001D
	and #$01FF
	sta $04CE,X
	plp
	rts

L82EE40:
	php
	lda $08EA
	and #$00FF
	sta $1D
	ldx $27
	lda $04D0,X
	clc
	adc.w $001D
	and #$00FF
	sta $04D0,X
	plp
	rts

L82EE5A:
	php
	lda $08EA
	and #$00FF
	sta $1D
	ldx $27
	lda $04D0,X
	sec
	sbc.w $001D
	and #$00FF
	sta $04D0,X
	plp
	rts

L82EE74:
	php
	phy
	pha
	lda $04CE,X
	jsr L82D277
	sta $04CE,X
	lda $04D0,X
	jsr L82D277
	sta $04D0,X
	pla
	jsl L8096FA
	sep #$20
	lda #$01
	ora $0D02,X
	sta $0D02,X
	ply
	plp
	rts

L82EE9B:
	php
	stx $0D80
	sep #$20
	lda #$01
	sta $0D02,X
	rep #$20
	jsr L82E6EF
	jsr L82EEB0
	plp
	rts

L82EEB0:
	php
	jsr L82EEDE
	jsr L82EF12
	jsr L82EF75
	jsr L82EED1
	lda #bank100(L82D0B2)
	sta $01
	lda #L82D0B2
	sta $00
	jsl L808EAD
	jsl L8087EA
	plp
	rts

L82EED1:
	lda #bank100(L82EFE6)
	sta $04CC,X
	lda #L82EFE6
	sta $04CB,X
	rts

L82EEDE:
	php
	ldx $0D80
	lda $0D03,X
	lsr
	lsr
	and #$0003
	beq L82EEFB
	cmp #$0001
	beq L82EF00
	cmp #$0002
	beq L82EF05
	cmp #$0003
	beq L82EF0A
L82EEFB:
	lda #$0000
	bra L82EF0D

L82EF00:
	lda #$0080
	bra L82EF0D

L82EF05:
	lda #$0100
	bra L82EF0D

L82EF0A:
	lda #$0180
L82EF0D:
	sta $0D14,X
	plp
	rts

L82EF12:
	php
	phx
	ldx #$6400
	lda #bank100(LD0C538)
	sta $01
	lda #LD0C538
	sta $00
	lda $074C
	pha
	and #$FFF0
	sta $074C
	jsl L82D21F
	pla
	sta $074C
	lda #$0002
	sta $7EBCFE
	lda #$7E00
	sta $7EBD00
	lda #$A4FE
	sta $7EBCFF
	lda #$0400
	sta $7EBD02
	lda #$0080
	sta $7EBD04
	ldx $0D80
	lda $0D1C,X
	clc
	adc #$0600
	sta $7EBD05
	lda #$7E00
	sta $01
	lda #$BCFE
	sta $00
	jsl L808EAD
	plx
	plp
	rts

L82EF75:
	php
	ldx #$7000
	stx $17
	lda #bank100(LD0C80C)
	sta $01
	lda #LD0C80C
	sta $00
	jsl L82D25A
	ldx $0D80
	jsr L82D1D1
	jsr L82CFA7
	jsr L82CFF2
	jsr L82EFA9
	ldy #$0003
	ldx $0D80
	jsl L809689
	sep #$20
	stz $04DC,X
	plp
	rts

L82EFA9:
.ACCU 16
	php
	phx
	lda #bank100(L94FFE0)
	sta $01
	lda #L94FFE0
	sta $00
	ldy #$0000
	jsr L82D0B9
	sep #$20
	ldx $0D80
	bne L82EFC6
	lda #$86
	bra L82EFDF

L82EFC6:
	cpx #$0020
	bne L82EFCF
	lda #$84
	bra L82EFDF

L82EFCF:
	cpx #$0040
	bne L82EFD8
	lda #$82
	bra L82EFDF

L82EFD8:
	cpx #$0060
	bne L82EFDF
	lda #$81
L82EFDF:
	sta.l $0006EA
	plx
	plp
	rts

L82EFE6:
	php
	lda $04DA,X
	beq L82EFF2
	stz $0D02,X
	stz $04BE,X
L82EFF2:
	plp
	rtl

L82EFF4:
.ACCU 16
	php
	lda $04CE,X
	jsr L82D277
	sta $17
	lda $0D0A,X
	and #$00FF
	jsr L82D277
	sta $15
	lda $17
	sep #$20
	jsr L82F04B
	clc
	adc $0D08,X
	sta $0D08,X
	rep #$20
	lda $04D0,X
	jsr L82D277
	sta $17
	lda $0D0B,X
	and #$00FF
	jsr L82D277
	sta $15
	lda $17
	sep #$20
	jsr L82F04B
	clc
	adc $0D09,X
	sta $0D09,X
	lda $04CE,X
	sta $0D0A,X
	lda $04D0,X
	sta $0D0B,X
	txy
	jsr L82F06B
	plp
	rts

L82F04B:
	php
	sec
	sbc $15
	bcs L82F05F
	lsr
	lsr
	lsr
	lsr
	ora #$F0
	cmp #$F1
	bne L82F069
	lda #$01
	bra L82F069

L82F05F:
	lsr
	lsr
	lsr
	lsr
	cmp #$0F
	bne L82F069
	lda #$FF
L82F069:
	plp
	rts

L82F06B:
	php
	sep #$20
	lda $0D08,X
	sec
	sbc $0860
	bcc L82F095
	cmp #$10
	bcs L82F095
	lda $0D09,X
	sec
	sbc $0861
	bcc L82F095
	cmp #$0F
	bcs L82F095
	tyx
	lda #$01
	eor #$FF
	and $04DB,X
	sta $04DB,X
	bra L82F09E

L82F095:
	tyx
	lda #$01
	ora $04DB,X
	sta $04DB,X
L82F09E:
	plp
	rts

.ENDS
