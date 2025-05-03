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
.dw $8018
.dw $806C
.dw $8094
.dw $8113
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
	jsl $83D912
	lda.l ActiveUnit.UnitID
	and #$00FF
	cmp #$00FF
	beq L828056
	jsl $83F3B8
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
	jsl $83D912
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
	jsl $93D29C
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
	jsl $83D912
	lda #$8800
	sta $01
	lda.l ActiveUnit.AI3
	and #$0007
	asl
	adc #$CB72
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
	jsl $83D969
	lda #$04
	sta $0C98
	rep #$20
	clc
	rts

L828192:
	rep #$20
	lda $08ED
	jsl $83D912
	sep #$20
	lda.l ActiveUnit.AI3
	ora #$80
	sta.l ActiveUnit.AI3
	lda $08ED
	jsl $83D969
	lda.l ActiveUnit.ClassID
	sta $08FF
	lda.l ActiveUnit.YPosition
	sta $08FA
	lda.l ActiveUnit.XPosition
	sta $08FB
	lda.w #$8D01
	jsr ($C208,X)
	jsr $7FA9
.db $00 $8D ; brk #$8D
	sbc $2208,X
	phd
	lda ($80),Y
	lda.w #$FFFF
	sta $0C95
	sta $0C8C
	lda.w #$07FE
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
	jsl $83F63C
	jsl $829806
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
	jsl $83D912
	lda #$8800
	sta $01
	lda #$C5E1
	sta $00
	lda.l ActiveUnit.AI2
	and #$00FF
	jsl L80A89D
	lda [$00]
	sta $00
	lda $7F441B
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
	jsl $83D912
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
	jsl $83D8F7
	lda $19
	sta $0C83
	lda $08ED
	and #$00FF
	jsl $83D912
	jsl $83AF3F
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
	jsl $83D912
	ldx #$0003
L82835F:
	phx
	lda.l ActiveUnit.Weapons,X
	jsl $83EB79
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
	cmp #$001D
	beq L8283CB
	cmp #$0032
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
	jsl $83F684
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
	jsl $83D912
	lda.l ActiveUnit.NameID
	and #$00FF
	cmp #$001D
	beq L82841C
	cmp #$0032
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
	jsl $93D52E
	bcs L828438
	jsl $83D912
	sep #$20
	lda.l ActiveUnit.HP
	cmp.l ActiveUnit.MaxHP
	rep #$20
	beq L828438
	lda #$004F
	jsl $93D52E
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
	inc A
L828491:
	sta $15
	lda $7F4440,X
	sec
	sbc $08EF
	bpl L8284A0
	eor #$FF
	inc A
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
	jsl $83D8E5
	txa
	clc
	adc $15
	bmi L828541 - 1 ; ???
	cmp #$0020
	bpl L828541 - 1 ; ???
	sta $15
	tya
	clc
	adc $17
	bmi L828541 - 1 ; ???
	cmp #$0020
	bpl L828541 - 1 ; ???
	sta $17
	stz $19
	jsl $83D8F7
	ldx $19
	lda $7F2800,X
	cmp #$0400
	bmi L828541 - 1 ; ???
	and #$00FF
	lsr
	lsr
	lsr
	lsr
	lsr
	sep #$20
	cmp $07D3
	beq L828541 - 1 ; ???
	rep #$20
	lda $7F2800,X
	and #$00FF
	sta $0C86
	jsl $83D912
	lda $19
	pha
	jsl $83AF1C
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
	bra L82853C - 1
L828536:
	lda.w #$8D01
	bit.w #$200C
L82853C:
	rts

L82853D:
	sta $90
	ora $C2
L828541:
	jsr $7AFA
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
	bra L828541 - 1 ; ???
	php
	rep #$20
	lda $19
	pha
	jsl $83B0A3
	pla
	sta $19
	sep #$20
	lda $076A
	dec A
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
	jsl $8294FE
	bcc L828594
	clc
	rts

L828594:
	sec
	rts

L828596:
	lda $08ED
	and.w #$00FF
	jsl $83D912
	sep #$20
	stz $0C9A
	rep #$20
	lda #$8800
	sta $01
	lda #$C46C
	sta $00
	lda.l ActiveUnit.AI1
	and #$00FF
	jsl L80A89D
	lda [$00]
	sta $00
	lda $7F4419
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
	jsl $83F684
	cmp $0C80
	bmi L828625
	sec
	rts

L828625:
	lda $08ED
	jsl $83D912
	lda.l ActiveUnit.Weapon1
	and #$00FF
	ora #$0E00
	sta.l WRMPYA
	nop
	nop
	nop
	lda.l RDMPYL
	tax
	lda $88A6E9,X
	bit #$0018
	beq L828655
	lda $07F4
	bit #$0001
	beq L828655
	sec
	rts

L828655:
	jsl $83AF3F
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
	jsl $80B10B
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
	jsl $83D912
	jsl $83AF1C
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
	jsl $87A8F4
	bcc L828754
	lda $08ED
	and #$00FF
	jsl $83D912
	sep #$20
	lda $7F4419
	inc A
	inc A
	inc A
	inc A
	sta $7F4419
	rep #$20
	lda $08ED
	and #$00FF
	jsl $83D969
	brl L828864
L828754:
	lda #$FFFF
	sta $0C86
	lda $08ED
	jsl $83D912
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
	jsl $80B10B
	lda.l ActiveUnit.Weapon1
	and #$00FF
	ora #$0E00
	sta.l WRMPYA
	nop
	nop
	nop
	lda.l RDMPYL
	tax
	lda $88A6F4,X
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
	jsl $83D8E5
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
	jsl $83D912
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
	jsl $83D912
	sep #$20
	lda $7F4419
	inc A
	inc A
	sta $7F4419
	rep #$20
	lda $08ED
	and #$00FF
	jsl $83D969
	clc
	rts

L8288AD:
	and #$00FF
	jsl $83D912
	lda.l ActiveUnit.YPosition
	and #$00FF
	sta $0C80
	lda.l ActiveUnit.XPosition
	and #$00FF
	sta $0C83
	lda $08ED
	and #$00FF
	jsl $83D912
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
	jsl $80B10B
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
	jsl $83D8F7
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
	jsl $83F63C
	sep #$20
	xba
	lda $08ED
	xba
	rep #$20
	pha
	pha
	lda #$8800
	sta $01
	lda #$C29E
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
	lda.w #$8D01
	beq L8289D4 - 1 ; ???
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
	jsl $83D912
	jsl $83AF3F
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
	lda $88A6F4,X
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
	jsl $83D8F7
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
	jsl $83D912
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
	jsl $83D912
	lda.l ActiveUnit.Weapon1
	jsl $83EE65
	bcc L828ACD
	sec
	rts

L828ACD:
	jsl $83AF3F
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
	jsl $80B10B
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
	lda $88A6F4,X
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
	jsl $83F63C
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
	jsl $83D912
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
	jsl $83D8E5
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
	jsl $83D8F7
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
	jsl $83D912
	lda $19
	pha
	jsl $83AF1C
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
	bra L828C2E - 1 ; ???
L828C28:
	lda.w #$8D01
	bit.w #$200C
L828C2E:
	bcs L828BC1 + 1 ; ???
	bcc L828C37
L828C32:
	rep #$20
	plx
	ply
	rts

L828C37:
	rep #$20
	lda $0C83
	jsl $83D8E5
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
	jsl $83D912
	lda.w #$8800
	sta $01
	lda.w #$C5E1
	sta $00
	lda.l ActiveUnit.AI2
	and.w #$00FF
	jsl L80A89D
	lda [$00]
	sta $00
	lda $7F441B
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
	jsl $83D912
	lda #$FFFF
	sta $0C89
	jsr L82970F
	sep #$20
	lda.l ActiveUnit.ClassID
	cmp #$0F
	beq L828D0B
	cmp #$1C
	beq L828D0B
	lda #$01
	sta.l ActiveUnit.TransformTimer
	bra L828D18
L828D0B:
	lda.w #$8D04
	sbc ($08),Y
	stz $08F2
	lda.w #$8D0D
	beq L828D21 - 1 ; ???
L828D18:
	lda $7F441B
	inc A
	sta $7F441B
L828D21:
	rep #$20
	lda $08ED
	and #$00FF
	jsl $83D969
	clc
	rts

L828D2F:
	lda $08ED
	and #$00FF
	jsl $83D912
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
	jsl $80B10B
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
	jsl $83F63C
	jsl $829806
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
	jsl $83EB0B
	jsl $83E623
	jsl $83E773
	jsl $83E83E
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
	jsl $83D912
	sep #$20
	lda $7F441B
	inc A
	inc A
	inc A
	sta $7F441B
	rep #$20
	lda $08ED
	and #$00FF
	jsl $83D969
	clc
	rts

L828E39:
	lda #$8D17
	beq L828E47 - 1 ; ???
	bra L828E0F
L828E40:
	lda #$8D07
	beq L828E4E - 1 ; ???
	bra L828E0F
L828E47:
	lda #$8D08
	beq L828E53 + 1 ; ???
	bra L828E0F
L828E4E:
	lda #$8D09
	beq L828E5A + 1
L828E53:
	lda $08ED
	jsl $83D912
L828E5A:
	lda.l ActiveUnit.TransformTimer
	inc A
	sta.l ActiveUnit.TransformTimer
	lda $08ED
	jsl $83D969
	bra L828E0F

L828E6C:
	lda $07F4
	and #$0001
	bne L828E9E
	lda $08ED
	jsl $83D912
	ldx #$0003
L828E7E:
	phx
	lda.l ActiveUnit.Weapons,X
	jsl $83EB79
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
	jmp $8FE0
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
	cmp #$001D
	beq L828EEC
	cmp #$0032
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
	jsl $83F684
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
	jsl $83D912
	lda.l ActiveUnit.NameID
	and #$00FF
	cmp #$001D
	beq L828F40
	cmp #$0032
	bne L828F43
L828F40:
	brl L828FBB
L828F43:
	jsr L8298F6
	bcs L828FB5
L828F48:
	pha
	jsl $83D912
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
	jsl $83D8F7
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
	jsl $93D52E
	bcs L828FB5
	jsl $83D912
	sep #$20
	lda.l ActiveUnit.HP
	cmp.l ActiveUnit.MaxHP
	rep #$20
	beq L828FB5
	lda #$004F
	jsl $93D52E
	brl L828F48

L828FE0:
	lda $08ED
	and #$00FF
	jsl $83D912
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
	jsl $83D912
	lda $7F441B
	and #$00FF
	sec
	sbc $0C80
	bpl L82902D
	lda #$0000
L82902D:
	and #$00FF
	sta $7F441B
	lda $08ED
	and #$00FF
	jsl $83D969
	clc
	rts

L829040:
	lda $08ED
	jsl $83D912
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
	lda $7F441B
	inc A
	inc A
	inc A
	inc A
	sta $7F441B
	rep #$20
	lda $08ED
	jsl $83D969
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
	jsl $93D52E
	bcc L8290BA
	sep #$20
	lda $7F441B
	inc A
	inc A
	inc A
	sta $7F441B
	rep #$20
	lda $08ED
	and #$00FF
	jsl $83D969
	clc
	rts

L8290BA:
	jsl $83D912
	sep #$20
	lda.l ActiveUnit.YPosition
	sta $0C95
	lda.l ActiveUnit.XPosition
	sta $0C96
	rep #$20
	lda $08ED
	jsl $83D912
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
	jsl $83D912
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
	jsl $83D912
	sep #$20
	lda $7F441B
	inc A
	inc A
	inc A
	sta $7F441B
	rep #$20
	lda $08ED
	and #$00FF
	jsl $83D969
	clc
	rts

L8291AB:
	lda $08ED
	and #$00FF
	jsl $83D912
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
	jsl $80B10B
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
	jsl $83F63C
	jsl $829806
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
	jsl $83D912
	sep #$20
	lda $7F441B
	inc A
	inc A
	inc A
	sta $7F441B
	rep #$20
	lda $08ED
	and #$00FF
	jsl $83D969
	clc
	rts

L82926D:
	sep #$20
	lda $0C80
	sta $08F1
	lda $0C83
	sta $08F2
	lda $08ED
	jsl $83D912
	lda.l ActiveUnit.YPosition
	sta $08EE
	lda.l ActiveUnit.XPosition
	sta $08EF
	lda.w #$8D18
	beq L82929D
	stz $0C99
	lda.l $7F441B
	inc A
L82929D:
	inc A
	inc A
	sta $7F441B
	rep #$20
	lda $08ED
	and #$00FF
	jsl $83D969
	rts

L8292B0:
	php
	sep #$20
	stz $0C9B
	rep #$20
	lda $19
	pha
	jsl $83B0A3
	pla
	sta $19
	sep #$20
	lda $076A
	dec A
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
	jsl $83F684
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
	jsl $8294FE
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
	lda $88C526,X
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
	jsl $83D8E5
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
	jsl $80B10B
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
	inc A
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
	inc A
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
	and $88A6F4,X
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
	lda #$8800
	sta $01
	lda #$C526
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
	lda $88A6F4,X
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
	lda $8383C4,X
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
	jsl $80B10B
	lda.l ActiveUnit.YPosition
	and #$00FF
	sta $15
	lda.l ActiveUnit.XPosition
	and #$00FF
	sta $17
	stz $19
	jsl $83D8F7
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
	jsl $83D912
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
	jsl $80B10B
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
	jsl $83F684
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
	jsl $83D8E5
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
	jsl $83D912
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
	jsl $83D912
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
	jsl $80B10B
	lda.l ActiveUnit.Weapon1
	and #$00FF
	ora #$0E00
	sta.l WRMPYA
	nop
	nop
	nop
	lda.l RDMPYL
	tax
	lda $88A6F4,X
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
	jsl $83D8E5
	stx $0C8C
	sty $0C8F
	lda $08ED
	jsl $83D912
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
	jsl $83D8F7
	ldx $19
	rts

L8297DE:
	jsl $83D8E5
	stx $0C95
	sty $0C96
	lda $0C83
	sta $0C8F
	lda $08ED
	jsl $83D912
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
	lda #$8800
	sta $01
	lda #$CB7A
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
	lda #$8800
	sta $01
	lda #$CBD4
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
	jsl $93D52E
	bcs L8298BC
	ora #$0400
	pha
	sep #$20
	lda $08ED
	jsl $83D912
	lda.l ActiveUnit.ClassID
	sta $08FF
	lda.l ActiveUnit.YPosition
	sta $08FA
	lda.l ActiveUnit.XPosition
	sta $08FB
	lda.w #$8D00
	jsr ($C208,X)
	jsr $7FA9
.db $00 $8D ; brk #$8D
	sbc $2208,X
	phd
	lda ($80),Y
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
.db $08 $BD $DA $04 $29 $FF $00 $D0
.db $07 $E2 $20 $9C $0A $07 $C2 $20
.db $28 $60 $08 $E2 $20 $A9 $01 $8D
.db $0A $07 $C2 $20 $20 $00 $A0 $28
.db $6B $08 $AD $02 $0D $29 $FF $00
.db $F0 $06 $20 $00 $A0 $20 $15 $BE
.db $28 $6B $08 $AD $02 $0D $29 $FF
.db $00 $F0 $06 $20 $00 $A0 $20 $15
.db $BE $28 $6B $08 $20 $00 $A0 $28
.db $6B $6B $08 $E2 $20 $A9 $00 $8F
.db $E5 $BD $7E $C2 $20 $A0 $20 $00
.db $A2 $00 $00 $BF $E0 $FF $94 $9F
.db $10 $53 $7F $E8 $88 $E8 $88 $D0
.db $F2 $22 $DD $A6 $80 $A9 $00 $82
.db $85 $01 $A9 $EA $D9 $85 $00 $22
.db $AD $8E $80 $A9 $00 $82 $85 $01
.db $A9 $AD $A0 $85 $00 $22 $AD $8E
.db $80 $22 $4E $95 $80 $22 $F0 $98
.db $80 $22 $EA $87 $80 $A9 $00 $00
.db $A0 $00 $04 $A2 $00 $00 $9F $FE
.db $BC $7E $E8 $88 $E8 $88 $D0 $F6
.db $20 $B4 $A0 $28 $6B $01 $10 $53
.db $7F $20 $00 $F0 $08 $20 $F4 $A0
.db $B0 $1C $20 $E1 $A2 $B0 $17 $20
.db $D8 $A0 $B0 $12 $20 $4A $A4 $B0
.db $0D $20 $F5 $AC $B0 $08 $20 $39
.db $A7 $B0 $03 $20 $49 $B2 $28 $60
.db $08 $AD $D3 $07 $29 $FF $00 $AA
.db $E2 $20 $BD $8F $07 $89 $40 $F0
.db $08 $C2 $20 $20 $37 $E3 $28 $38
.db $60 $28 $18 $60 $08 $AD $D3 $07
.db $29 $FF $00 $AA $E2 $20 $BD $8F
.db $07 $89 $20 $F0 $0F $AD $5D $07
.db $C9 $15 $D0 $08 $C2 $20 $20 $17
.db $A1 $28 $38 $60 $28 $18 $60 $08
.db $E2 $20 $A9 $01 $8D $02 $0D $9C
.db $8F $0D $AD $B7 $07 $8D $93 $0D
.db $C2 $20 $A9 $00 $82 $85 $01 $A9
.db $93 $B2 $85 $00 $22 $AD $8E $80
.db $A0 $40 $00 $A2 $00 $00 $BF $00
.db $F8 $D0 $9F $E7 $BD $7E $E8 $88
.db $E8 $88 $D0 $F2 $20 $A2 $B2 $A9
.db $FF $FF $8F $11 $BD $7E $8F $13
.db $BD $7E $A9 $00 $82 $8D $CC $04
.db $A9 $43 $A0 $8D $CB $04 $A2 $00
.db $00 $8E $80 $0D $20 $EA $B8 $20
.db $18 $B3 $20 $28 $A2 $E2 $20 $AE
.db $82 $0D $9E $DA $04 $A9 $00 $EB
.db $AD $0D $0D $C2 $20 $18 $69 $34
.db $00 $22 $FA $96 $80 $BD $CE $04
.db $8D $9F $08 $A9 $0E $00 $22 $9E
.db $B4 $80 $AD $8F $0D $29 $FF $00
.db $C9 $50 $00 $F0 $17 $22 $4E $95
.db $80 $22 $F0 $98 $80 $22 $EA $87
.db $80 $AE $82 $0D $BD $CE $04 $8D
.db $9F $08 $80 $DE $E2 $20 $9C $8F
.db $0D $20 $4E $C2 $20 $C9 $A1 $28
.db $60 $08 $A2 $20 $00 $E2 $20 $A9
.db $82 $9F $CD $04 $00 $A9 $A1 $9F
.db $CC $04 $00 $A9 $F5 $9F $CB $04
.db $00 $A9 $82 $8F $CD $04 $00 $A9
.db $C0 $8F $CC $04 $00 $A9 $DD $8F
.db $CB $04 $00 $28 $60 $08 $AD $8E
.db $0D $89 $10 $00 $F0 $1C $A9 $00
.db $00 $20 $5C $DC $20 $AA $C2 $90
.db $1D $A9 $80 $00 $2C $02 $0D $D0
.db $09 $0C $02 $0D $22 $12 $F3 $83
.db $28 $6B $A9 $80 $00 $1C $02 $0D
.db $20 $1A $D6 $20 $B5 $C1 $28 $6B
.db $08 $C2 $20 $AD $0D $0D $29 $FF
.db $00 $C9 $03 $00 $F0 $0B $9C $F5
.db $0D $A9 $20 $00 $8D $F7 $0D $80
.db $0B $9C $F7 $0D $A9 $20 $00 $8D
.db $F5 $0D $80 $00 $AC $F5 $0D $20
.db $8E $B5 $E2 $20 $AE $82 $0D $A9
.db $01 $9D $DC $04 $C2 $20 $AC $F7
.db $0D $20 $FE $B5 $A9 $00 $82 $8D
.db $CC $04 $A9 $12 $A0 $8D $CB $04
.db $A9 $00 $82 $8D $EC $04 $A9 $7E
.db $A2 $8D $EB $04 $28 $60 $08 $E2
.db $20 $AE $82 $0D $BD $DC $04 $D0
.db $42 $AD $02 $0D $89 $10 $F0 $2C
.db $AD $8F $0D $C9 $30 $F0 $36 $B0
.db $2B $C9 $20 $B0 $10 $C9 $11 $B0
.db $23 $AD $8F $0D $8F $E6 $BD $7E
.db $20 $68 $C9 $80 $17 $A9 $30 $38
.db $ED $8F $0D $8F $E6 $BD $7E $20
.db $68 $C9 $80 $08 $A9 $11 $8D $02
.db $0D $9C $8F $0D $AD $8F $0D $1A
.db $8D $8F $0D $28 $6B $C2 $20 $A9
.db $00 $82 $85 $01 $A9 $B2 $D0 $85
.db $00 $E2 $20 $22 $AD $8E $80 $80
.db $E3 $08 $E2 $20 $AD $8F $07 $89
.db $20 $D0 $03 $28 $18 $60 $AD $D3
.db $07 $29 $FF $AA $BD $5D $07 $C9
.db $14 $F0 $0A $C9 $0F $F0 $06 $C9
.db $1C $F0 $02 $D0 $03 $20 $0B $A3
.db $28 $38 $60 $08 $E2 $20 $A9 $01
.db $8D $02 $0D $9C $8F $0D $AD $B7
.db $07 $8D $93 $0D $A9 $03 $8D $2D
.db $0D $C2 $20 $A9 $00 $82 $85 $01
.db $A9 $93 $B2 $85 $00 $22 $AD $8E
.db $80 $A0 $40 $00 $A2 $00 $00 $BF
.db $00 $F8 $D0 $9F $E7 $BD $7E $E8
.db $88 $E8 $88 $D0 $F2 $A9 $FF $FF
.db $8F $11 $BD $7E $8F $13 $BD $7E
.db $A9 $00 $82 $8D $CC $04 $A9 $43
.db $A0 $8D $CB $04 $A0 $00 $00 $20
.db $8E $B5 $E2 $20 $A9 $01 $9D $DC
.db $04 $8D $FB $06 $C2 $20 $A0 $20
.db $00 $20 $FE $B5 $C2 $20 $A9 $00
.db $82 $8D $EC $04 $A9 $05 $A4 $8D
.db $EB $04 $22 $4E $95 $80 $22 $F0
.db $98 $80 $22 $EA $87 $80 $E2 $20
.db $A9 $00 $8D $FB $06 $AE $82 $0D
.db $9E $DA $04 $C2 $20 $20 $E9 $A3
.db $AE $82 $0D $BD $DA $04 $29 $FF
.db $00 $D0 $0E $22 $4E $95 $80 $22
.db $F0 $98 $80 $22 $EA $87 $80 $80
.db $E7 $AE $84 $0D $E2 $20 $9E $DB
.db $04 $A9 $01 $8D $DC $04 $C2 $20
.db $A2 $20 $00 $DA $22 $4E $95 $80
.db $22 $F0 $98 $80 $22 $EA $87 $80
.db $FA $CA $D0 $EF $E2 $20 $9C $8F
.db $0D $20 $4E $C2 $20 $C9 $A1 $28
.db $60 $08 $DA $BD $11 $0D $29 $FF
.db $00 $C9 $14 $00 $F0 $05 $A9 $1C
.db $00 $80 $03 $A9 $34 $00 $22 $FA
.db $96 $80 $FA $28 $60 $08 $E2 $20
.db $AD $DC $04 $D0 $2C $C2 $20 $AD
.db $EE $04 $8D $9F $08 $A9 $6E $00
.db $22 $9E $B4 $80 $E2 $20 $A9 $00
.db $8D $30 $21 $A9 $10 $8D $31 $21
.db $A9 $28 $8D $32 $21 $A9 $48 $8D
.db $32 $21 $A9 $88 $8D $32 $21 $80
.db $0F $A9 $00 $8D $30 $21 $A9 $10
.db $8D $31 $21 $A9 $E0 $8D $32 $21
.db $28 $6B $08 $AD $8F $07 $89 $10
.db $00 $F0 $4C $E2 $20 $A9 $05 $8D
.db $02 $0D $C2 $20 $20 $A2 $B2 $A0
.db $40 $00 $A2 $00 $00 $BF $00 $F8
.db $D0 $9F $E7 $BD $7E $E8 $88 $E8
.db $88 $D0 $F2 $20 $EA $E2 $A2 $00
.db $00 $20 $18 $B3 $A9 $FF $FF $8F
.db $07 $BD $7E $8F $09 $BD $7E $8F
.db $0B $BD $7E $A2 $00 $00 $8E $80
.db $0D $20 $B9 $A4 $B0 $06 $20 $48
.db $A6 $20 $A2 $A4 $28 $38 $60 $28
.db $18 $60 $08 $AD $52 $0D $29 $FF
.db $00 $22 $7D $DB $83 $AD $72 $0D
.db $29 $FF $00 $22 $7D $DB $83 $28
.db $60 $08 $A9 $FF $FF $8D $FB $0D
.db $9C $F9 $0D $E2 $20 $AD $88 $07
.db $8D $F5 $0D $AD $8A $07 $8D $F7
.db $0D $C2 $20 $20 $F4 $A4 $A9 $2A
.db $00 $20 $25 $A5 $B0 $13 $A9 $1C
.db $00 $20 $25 $A5 $B0 $0B $A9 $2F
.db $00 $20 $25 $A5 $B0 $03 $28 $18
.db $60 $28 $38 $60 $08 $AD $D3 $07
.db $29 $FF $00 $49 $01 $00 $AA $E2
.db $20 $AD $89 $07 $CD $8A $07 $B0
.db $0E $A9 $20 $9F $07 $BD $7E $A9
.db $40 $9F $09 $BD $7E $80 $0C $A9
.db $40 $9F $07 $BD $7E $A9 $20 $9F
.db $09 $BD $7E $28 $60 $08 $E2 $20
.db $CD $63 $07 $D0 $18 $C2 $20 $A9
.db $00 $00 $8D $FB $0D $E2 $20 $AD
.db $87 $07 $8D $F6 $0D $AD $89 $07
.db $8D $F8 $0D $80 $23 $C2 $20 $EE
.db $F9 $0D $20 $73 $A5 $B0 $21 $48
.db $22 $12 $D9 $83 $68 $E2 $20 $20
.db $A0 $A5 $AF $11 $44 $7F $8D $F6
.db $0D $AF $10 $44 $7F $8D $F8 $0D
.db $C2 $20 $20 $CC $A5 $28 $18 $60
.db $28 $38 $60 $08 $A2 $00 $00 $29
.db $FF $00 $85 $15 $BF $46 $44 $7F
.db $29 $FF $00 $C5 $15 $F0 $0D $8A
.db $18 $69 $20 $00 $C9 $00 $08 $F0
.db $0C $AA $80 $E8 $8A $4A $4A $4A
.db $4A $4A $28 $18 $60 $28 $38 $60
.db $08 $48 $AD $F9 $0D $C9 $01 $F0
.db $05 $A2 $60 $00 $80 $03 $A2 $40
.db $00 $AF $01 $44 $7F $9D $11 $0D
.db $AF $11 $44 $7F $9D $08 $0D $AF
.db $10 $44 $7F $9D $09 $0D $68 $9D
.db $12 $0D $28 $60 $08 $64 $1B $E2
.db $20 $AD $F6 $0D $CD $F5 $0D $F0
.db $0E $90 $06 $A9 $01 $85 $1B $80
.db $06 $A9 $02 $85 $1B $80 $00 $AD
.db $F8 $0D $CD $F7 $0D $F0 $0C $90
.db $06 $A9 $01 $85 $1C $80 $04 $A9
.db $02 $85 $1C $C2 $20 $20 $02 $A6
.db $28 $60 $08 $A2 $00 $00 $BF $38
.db $A6 $82 $C5 $1B $F0 $04 $E8 $E8
.db $80 $F4 $BF $40 $A6 $82 $48 $AD
.db $FB $0D $F0 $0A $AD $F9 $0D $18
.db $69 $03 $00 $AA $80 $09 $A9 $FF
.db $FF $8D $FB $0D $AE $D3 $07 $68
.db $E2 $20 $9F $07 $BD $7E $28 $60
.db $00 $01 $00 $02 $02 $00 $01 $00
.db $00 $00 $A0 $00 $60 $00 $80 $00
.db $08 $A2 $00 $00 $DA $BF $07 $BD
.db $7E $29 $FF $00 $86 $21 $A8 $A5
.db $21 $29 $FF $00 $0A $AA $FC $70
.db $A6 $FA $E8 $E0 $06 $00 $90 $E4
.db $20 $04 $B5 $20 $5E $B5 $28 $60
.db $8E $B5 $FE $B5 $1B $B7 $8B $B7
.db $7C $A6 $9A $A6 $08 $A2 $40 $00
.db $A9 $00 $00 $9D $14 $0D $A9 $00
.db $60 $9D $1C $0D $A9 $00 $00 $9D
.db $1E $0D $20 $B8 $A6 $8E $8A $0D
.db $28 $60 $08 $A2 $60 $00 $A9 $80
.db $00 $9D $14 $0D $A9 $00 $68 $9D
.db $1C $0D $A9 $00 $14 $9D $1E $0D
.db $20 $B8 $A6 $8E $8C $0D $28 $60
.db $08 $5A $8E $80 $0D $A9 $01 $00
.db $9D $02 $0D $98 $F0 $1E $C9 $A0
.db $00 $F0 $0A $C9 $60 $00 $F0 $0A
.db $C9 $80 $00 $F0 $0A $A9 $03 $00
.db $80 $0D $A9 $01 $00 $80 $08 $A9
.db $00 $00 $80 $03 $A9 $02 $00 $E2
.db $20 $9D $0D $0D $18 $69 $04 $9D
.db $0C $0D $C2 $20 $AD $D3 $07 $29
.db $FF $00 $D0 $05 $20 $77 $B6 $80
.db $03 $20 $A0 $B6 $AD $4C $07 $48
.db $29 $F0 $FF $8D $4C $07 $DA $20
.db $64 $CD $22 $4E $95 $80 $22 $F0
.db $98 $80 $22 $EA $87 $80 $FA $68
.db $8D $4C $07 $BD $11 $0D $29 $FF
.db $00 $FA $20 $21 $CF $20 $90 $CF
.db $A9 $01 $00 $9F $23 $BD $7E $28
.db $60 $08 $E2 $20 $AD $D3 $07 $D0
.db $05 $AD $5D $07 $80 $03 $AD $5E
.db $07 $C9 $23 $D0 $06 $20 $56 $A7
.db $28 $38 $60 $28 $18 $60 $08 $DA
.db $E2 $20 $A9 $05 $8D $02 $0D $9C
.db $FE $0D $C2 $20 $20 $A2 $B2 $A0
.db $40 $00 $A2 $00 $00 $BF $00 $F8
.db $D0 $9F $E7 $BD $7E $E8 $88 $E8
.db $88 $D0 $F2 $20 $EA $E2 $A2 $00
.db $00 $8E $80 $0D $20 $EA $B8 $AD
.db $13 $0D $29 $FF $00 $C9 $24 $00
.db $D0 $12 $20 $18 $B3 $A5 $1D $29
.db $FF $00 $0A $AA $FC $9C $B2 $20
.db $E8 $B2 $80 $16 $20 $18 $B3 $A5
.db $1D $29 $FF $00 $0A $AA $FC $9C
.db $B2 $20 $92 $A8 $20 $19 $A8 $20
.db $BD $A7 $FA $28 $60 $08 $20 $DC
.db $A7 $4A $85 $15 $A9 $40 $00 $38
.db $E5 $15 $E2 $20 $8D $0A $0D $C2
.db $20 $0A $AA $BF $73 $AC $82 $8D
.db $08 $0D $28 $60 $08 $AD $F5 $0D
.db $29 $FF $7F $85 $15 $AD $F7 $0D
.db $29 $FF $7F $C5 $15 $B0 $12 $AD
.db $F5 $0D $29 $FF $7F $85 $35 $A5
.db $23 $29 $FF $7F $EB $85 $33 $80
.db $10 $AD $F7 $0D $29 $FF $7F $85
.db $35 $A5 $25 $29 $FF $7F $EB $85
.db $33 $22 $BA $8D $80 $A5 $33 $28
.db $60 $08 $AE $84 $0D $BD $CE $04
.db $8D $F9 $0D $BD $D0 $04 $8D $FB
.db $0D $AE $86 $0D $BD $CE $04 $8D
.db $F5 $0D $EB $8D $44 $0D $BD $D0
.db $04 $8D $F7 $0D $EB $8D $46 $0D
.db $AD $F9 $0D $38 $ED $F5 $0D $10
.db $07 $49 $FF $FF $1A $09 $00 $80
.db $AA $86 $23 $AD $FB $0D $38 $ED
.db $F7 $0D $10 $07 $49 $FF $FF $1A
.db $09 $00 $80 $A8 $84 $25 $22 $6C
.db $AB $82 $48 $22 $28 $AB $82 $20
.db $82 $A8 $8D $F5 $0D $68 $22 $E5
.db $AA $82 $20 $82 $A8 $8D $F7 $0D
.db $28 $60 $08 $85 $2D $A9 $03 $00
.db $85 $2F $22 $1E $8D $80 $A5 $31
.db $28 $60 $08 $A2 $00 $00 $DA $BF
.db $07 $BD $7E $29 $FF $00 $86 $21
.db $A8 $A5 $21 $29 $FF $00 $0A $AA
.db $FC $BA $A8 $FA $E8 $E0 $04 $00
.db $90 $E4 $20 $04 $B5 $20 $C2 $A8
.db $28 $60 $8E $B5 $FE $B5 $1B $B7
.db $8B $B7 $08 $A2 $00 $00 $86 $23
.db $BD $BE $04 $F0 $02 $86 $23 $8A
.db $18 $69 $20 $00 $AA $C9 $20 $02
.db $90 $EE $A6 $23 $E2 $20 $A9 $82
.db $9F $CD $04 $00 $A9 $A8 $9F $CC
.db $04 $00 $A9 $F2 $9F $CB $04 $00
.db $28 $60 $08 $AD $02 $0D $29 $FF
.db $00 $F0 $09 $20 $00 $A0 $20 $06
.db $A9 $20 $15 $BE $28 $6B $08 $20
.db $12 $A9 $20 $39 $AA $20 $66 $A9
.db $28 $60 $08 $E2 $20 $AD $91 $0D
.db $89 $20 $F0 $1E $C2 $20 $20 $3C
.db $A9 $AE $86 $0D $22 $FA $96 $80
.db $E2 $20 $A9 $00 $9D $DA $04 $8D
.db $91 $0D $8D $FF $0D $A9 $07 $8D
.db $FE $0D $28 $60 $08 $E2 $20 $AD
.db $13 $0D $29 $FF $C9 $25 $D0 $0A
.db $AD $0D $0D $29 $FF $18 $69 $28
.db $80 $12 $C9 $24 $F0 $08 $C9 $26
.db $F0 $08 $A9 $36 $80 $06 $A9 $37
.db $80 $02 $A9 $35 $28 $60 $08 $AD
.db $FE $0D $29 $FF $00 $C9 $04 $00
.db $D0 $1B $E2 $20 $9C $FE $0D $AE
.db $86 $0D $A9 $01 $9D $DA $04 $C2
.db $20 $A9 $34 $00 $22 $FA $96 $80
.db $9E $DB $04 $80 $4F $20 $0A $AA
.db $E2 $20 $AD $FD $0D $C9 $1C $B0
.db $43 $C9 $10 $B0 $06 $C9 $08 $B0
.db $13 $90 $25 $AD $FF $0D $C9 $01
.db $F0 $32 $A9 $01 $8D $91 $0D $8D
.db $FF $0D $80 $28 $AD $FF $0D $C9
.db $02 $F0 $21 $A9 $02 $8D $91 $0D
.db $8D $FF $0D $20 $DE $A9 $80 $14
.db $AD $FF $0D $C9 $03 $F0 $0D $AE
.db $86 $0D $A9 $01 $9D $DB $04 $A9
.db $03 $8D $FF $0D $28 $60 $08 $E2
.db $20 $A9 $04 $8D $92 $0D $C2 $20
.db $29 $FF $00 $AA $BF $CF $9D $80
.db $22 $67 $B4 $80 $E2 $20 $AD $93
.db $0D $89 $02 $F0 $0B $C2 $20 $A9
.db $39 $00 $22 $67 $B4 $80 $E2 $20
.db $28 $60 $08 $AD $44 $0D $EB $29
.db $FF $00 $38 $ED $F9 $0D $B0 $04
.db $49 $FF $FF $1A $85 $27 $AD $46
.db $0D $EB $29 $FF $00 $38 $ED $FB
.db $0D $B0 $04 $49 $FF $FF $1A $18
.db $65 $27 $E2 $20 $8D $FD $0D $28
.db $60 $08 $AD $FE $0D $29 $FF $00
.db $F0 $20 $A2 $00 $00 $20 $8E $AA
.db $AE $86 $0D $9D $CE $04 $A2 $02
.db $00 $20 $8E $AA $48 $20 $64 $AA
.db $68 $38 $E5 $17 $AE $86 $0D $9D
.db $D0 $04 $28 $60 $08 $E2 $20 $AD
.db $0A $0D $1A $8D $0A $0D $C2 $20
.db $C9 $40 $00 $90 $09 $85 $15 $A9
.db $40 $00 $0A $38 $E5 $15 $0A $AA
.db $C2 $20 $BF $73 $AC $82 $38 $ED
.db $08 $0D $85 $17 $28 $60 $08 $BD
.db $F5 $0D $29 $FF $7F $85 $27 $BD
.db $44 $0D $EB $29 $FF $00 $DD $F9
.db $0D $F0 $2D $B0 $16 $90 $00 $BD
.db $44 $0D $18 $65 $27 $9D $44 $0D
.db $EB $29 $FF $00 $DD $F9 $0D $B0
.db $17 $80 $12 $BD $44 $0D $38 $E5
.db $27 $9D $44 $0D $EB $29 $FF $00
.db $DD $F9 $0D $90 $03 $28 $38 $60
.db $48 $A9 $01 $00 $9B $F0 $01 $0A
.db $49 $FF $FF $2D $FE $0D $8D $FE
.db $0D $68 $28 $18 $60 $C2 $30 $A0
.db $00 $00 $8D $04 $42 $E2 $20 $A9
.db $40 $8D $06 $42 $EA $EA $EA $EA
.db $EA $EA $EA $C2 $20 $AE $16 $42
.db $86 $15 $AD $14 $42 $89 $01 $00
.db $F0 $07 $A9 $3F $00 $38 $E5 $15
.db $AA $8A $0A $AA $BF $73 $AC $82
.db $0A $85 $15 $AD $14 $42 $29 $02
.db $00 $4A $4A $66 $15 $A5 $15 $6B
.db $C2 $30 $A0 $00 $00 $8D $04 $42
.db $E2 $20 $A9 $40 $8D $06 $42 $EA
.db $EA $EA $EA $EA $EA $EA $C2 $20
.db $AE $16 $42 $86 $15 $AD $14 $42
.db $89 $01 $00 $D0 $07 $A9 $40 $00
.db $38 $E5 $15 $AA $8A $0A $AA $BF
.db $73 $AC $82 $0A $85 $15 $AD $14
.db $42 $1A $29 $02 $00 $4A $4A $66
.db $15 $A5 $15 $6B $C2 $30 $64 $19
.db $98 $0A $26 $19 $8A $0A $26 $19
.db $A5 $19 $89 $02 $00 $F0 $05 $49
.db $01 $00 $85 $19 $0A $0A $0A $0A
.db $0A $0A $48 $98 $29 $FF $7F $F0
.db $36 $C9 $00 $01 $B0 $FE $EB $8D
.db $04 $42 $8A $29 $FF $7F $F0 $46
.db $C9 $00 $01 $B0 $FE $E2 $20 $8D
.db $06 $42 $EA $EA $EA $EA $EA $EA
.db $EA $C2 $20 $AD $14 $42 $85 $17
.db $A2 $00 $00 $E8 $E8 $BF $F1 $AB
.db $82 $C5 $17 $90 $F6 $8A $4A $85
.db $1D $A5 $19 $89 $01 $00 $F0 $08
.db $A9 $3F $00 $38 $E5 $1D $85 $1D
.db $68 $18 $65 $1D $6B $68 $18 $69
.db $40 $00 $29 $FF $00 $6B $68 $F0
.db $04 $A9 $C0 $00 $6B $A9 $40 $00
.db $6B $00 $00 $06 $00 $0D $00 $13
.db $00 $19 $00 $20 $00 $26 $00 $2C
.db $00 $33 $00 $39 $00 $40 $00 $47
.db $00 $4E $00 $55 $00 $5C $00 $63
.db $00 $6A $00 $71 $00 $79 $00 $81
.db $00 $89 $00 $91 $00 $99 $00 $A2
.db $00 $AB $00 $B4 $00 $BE $00 $C8
.db $00 $D2 $00 $DD $00 $E8 $00 $F4
.db $00 $00 $01 $0D $01 $1A $01 $29
.db $01 $38 $01 $48 $01 $59 $01 $6B
.db $01 $7F $01 $94 $01 $AB $01 $C4
.db $01 $DF $01 $FD $01 $1D $02 $42
.db $02 $6A $02 $98 $02 $CB $02 $07
.db $03 $4C $03 $9D $03 $FE $03 $74
.db $04 $07 $05 $C3 $05 $BE $06 $1C
.db $08 $27 $0A $8E $0D $5B $14 $BC
.db $28 $4F $37 $00 $00 $06 $00 $0D
.db $00 $13 $00 $19 $00 $1F $00 $26
.db $00 $2C $00 $32 $00 $38 $00 $3E
.db $00 $44 $00 $4A $00 $50 $00 $56
.db $00 $5C $00 $62 $00 $68 $00 $6D
.db $00 $73 $00 $79 $00 $7E $00 $84
.db $00 $89 $00 $8E $00 $93 $00 $98
.db $00 $9D $00 $A2 $00 $A7 $00 $AC
.db $00 $B1 $00 $B5 $00 $B9 $00 $BE
.db $00 $C2 $00 $C6 $00 $CA $00 $CE
.db $00 $D1 $00 $D5 $00 $D8 $00 $DC
.db $00 $DF $00 $E2 $00 $E5 $00 $E7
.db $00 $EA $00 $ED $00 $EF $00 $F1
.db $00 $F3 $00 $F5 $00 $F7 $00 $F8
.db $00 $FA $00 $FB $00 $FC $00 $FD
.db $00 $FE $00 $FF $00 $FF $00 $00
.db $01 $00 $01 $00 $01 $08 $E2 $20
.db $AD $D3 $07 $D0 $05 $AD $5F $07
.db $80 $03 $AD $60 $07 $C9 $40 $90
.db $17 $C9 $4F $B0 $16 $C2 $20 $48
.db $20 $9C $E2 $A9 $18 $80 $8D $76
.db $08 $68 $20 $2E $AD $28 $38 $60
.db $28 $18 $60 $C9 $6B $D0 $F9 $C2
.db $20 $20 $E9 $AE $80 $EF $08 $38
.db $E9 $40 $00 $85 $15 $A5 $15 $29
.db $FF $00 $0A $AA $FC $41 $AD $28
.db $60 $81 $B1 $81 $B1 $81 $B1 $81
.db $B1 $AF $AD $DE $B0 $DE $B0 $82
.db $AE $FA $AF $AF $AD $5F $AD $45
.db $AF $0C $AE $64 $AD $96 $AF $22
.db $91 $D2 $82 $60 $08 $E2 $20 $A9
.db $09 $8D $02 $0D $C2 $20 $20 $A2
.db $B2 $A9 $00 $82 $8D $CC $04 $A9
.db $43 $A0 $8D $CB $04 $8E $80 $0D
.db $20 $EA $B8 $A9 $03 $00 $8D $0D
.db $0D $A0 $20 $00 $20 $8E $B5 $A0
.db $00 $00 $20 $C9 $B6 $A9 $00 $82
.db $8D $CC $04 $A9 $12 $A0 $8D $CB
.db $04 $A9 $00 $82 $8D $EC $04 $A9
.db $29 $B1 $8D $EB $04 $28 $60 $08
.db $E2 $20 $A9 $09 $8D $02 $0D $C2
.db $20 $20 $A2 $B2 $A9 $00 $82 $8D
.db $CC $04 $A9 $43 $A0 $8D $CB $04
.db $A2 $00 $00 $8E $80 $0D $20 $EA
.db $B8 $20 $18 $B3 $A0 $20 $00 $20
.db $8E $B5 $A0 $40 $00 $20 $FE $B5
.db $A0 $00 $00 $20 $C9 $B6 $A9 $00
.db $82 $8D $0C $05 $A9 $63 $B1 $8D
.db $0B $05 $A9 $00 $82 $8D $CC $04
.db $A9 $12 $A0 $8D $CB $04 $A9 $00
.db $82 $8D $EC $04 $A9 $43 $A0 $8D
.db $EB $04 $28 $60 $08 $E2 $20 $A9
.db $09 $8D $02 $0D $C2 $20 $20 $A2
.db $B2 $A9 $00 $82 $8D $CC $04 $A9
.db $43 $A0 $8D $CB $04 $A2 $00 $00
.db $8E $80 $0D $20 $EA $B8 $20 $5D
.db $AE $A2 $00 $00 $20 $18 $B3 $A0
.db $20 $00 $20 $8E $B5 $A0 $00 $00
.db $20 $C9 $B6 $A9 $00 $82 $8D $CC
.db $04 $A9 $12 $A0 $8D $CB $04 $A9
.db $00 $82 $8D $EC $04 $A9 $63 $B1
.db $8D $EB $04 $28 $60 $08 $E2 $20
.db $AD $13 $0D $C9 $4C $D0 $19 $A9
.db $01 $4D $D3 $07 $C2 $20 $29 $FF
.db $00 $AA $E2 $20 $AD $F3 $08 $9D
.db $87 $07 $AD $F4 $08 $9D $89 $07
.db $28 $60 $08 $E2 $20 $A9 $09 $8D
.db $02 $0D $C2 $20 $20 $A2 $B2 $20
.db $EC $B1 $A9 $00 $82 $8D $CC $04
.db $A9 $43 $A0 $8D $CB $04 $A2 $00
.db $00 $8E $80 $0D $20 $EA $B8 $E2
.db $20 $20 $D9 $AE $A9 $03 $8D $0D
.db $0D $C2 $20 $A0 $20 $00 $20 $8E
.db $B5 $A0 $00 $00 $20 $C9 $B6 $A9
.db $00 $82 $8D $CC $04 $A9 $12 $A0
.db $8D $CB $04 $A9 $00 $82 $8D $EC
.db $04 $A9 $3F $B1 $8D $EB $04 $28
.db $60 $BD $10 $0D $F0 $07 $A9 $20
.db $8D $96 $0D $80 $03 $9C $96 $0D
.db $60 $08 $E2 $20 $A9 $09 $8D $02
.db $0D $C2 $20 $20 $A2 $B2 $A9 $00
.db $82 $8D $CC $04 $A9 $43 $A0 $8D
.db $CB $04 $A2 $00 $00 $8E $80 $0D
.db $20 $EA $B8 $E2 $20 $9C $96 $0D
.db $A9 $03 $8D $0D $0D $C2 $20 $A0
.db $20 $00 $20 $8E $B5 $A0 $00 $00
.db $20 $C9 $B6 $A9 $00 $82 $8D $CC
.db $04 $A9 $12 $A0 $8D $CB $04 $A9
.db $00 $82 $8D $EC $04 $A9 $3D $AF
.db $8D $EB $04 $28 $60 $22 $43 $A0
.db $82 $20 $E1 $BB $6B $08 $E2 $20
.db $A9 $09 $8D $02 $0D $C2 $20 $20
.db $A2 $B2 $A9 $00 $82 $8D $CC $04
.db $A9 $43 $A0 $8D $CB $04 $A2 $00
.db $00 $8E $80 $0D $20 $EA $B8 $E2
.db $20 $A9 $03 $8D $0D $0D $C2 $20
.db $A0 $20 $00 $20 $8E $B5 $A0 $00
.db $00 $20 $C9 $B6 $A9 $00 $82 $8D
.db $CC $04 $A9 $12 $A0 $8D $CB $04
.db $A9 $00 $82 $8D $EC $04 $A9 $33
.db $B1 $8D $EB $04 $28 $60 $08 $E2
.db $20 $A9 $09 $8D $02 $0D $C2 $20
.db $20 $A2 $B2 $A9 $00 $82 $8D $CC
.db $04 $A9 $43 $A0 $8D $CB $04 $A2
.db $00 $00 $8E $80 $0D $20 $EA $B8
.db $E2 $20 $20 $D9 $AE $A9 $03 $8D
.db $0D $0D $C2 $20 $A0 $20 $00 $20
.db $8E $B5 $A0 $00 $00 $20 $C9 $B6
.db $A9 $00 $82 $8D $CC $04 $A9 $12
.db $A0 $8D $CB $04 $A9 $00 $82 $8D
.db $EC $04 $A9 $4B $B1 $8D $EB $04
.db $28 $60 $BD $10 $0D $F0 $05 $9C
.db $96 $0D $80 $05 $A9 $20 $8D $96
.db $0D $60 $08 $E2 $20 $A9 $09 $8D
.db $02 $0D $C2 $20 $20 $A2 $B2 $A9
.db $00 $82 $8D $CC $04 $A9 $43 $A0
.db $8D $CB $04 $A2 $00 $00 $8E $80
.db $0D $20 $EA $B8 $E2 $20 $20 $CE
.db $B0 $A9 $03 $8D $0D $0D $C2 $20
.db $A0 $20 $00 $20 $8E $B5 $A0 $00
.db $00 $20 $C9 $B6 $A0 $20 $00 $A2
.db $00 $00 $BF $BE $04 $00 $9F $FE
.db $04 $00 $E8 $88 $E8 $88 $D0 $F2
.db $A0 $20 $00 $A2 $00 $00 $BF $BE
.db $04 $00 $9F $1E $05 $00 $E8 $88
.db $E8 $88 $D0 $F2 $A0 $20 $00 $A2
.db $00 $00 $BF $BE $04 $00 $9F $3E
.db $05 $00 $E8 $88 $E8 $88 $D0 $F2
.db $A0 $20 $00 $A2 $00 $00 $BF $BE
.db $04 $00 $9F $5E $05 $00 $E8 $88
.db $E8 $88 $D0 $F2 $A9 $00 $82 $8D
.db $CC $04 $A9 $12 $A0 $8D $CB $04
.db $A9 $00 $82 $8D $6C $05 $A9 $57
.db $B1 $8D $6B $05 $A9 $00 $82 $8D
.db $EC $04 $A9 $43 $A0 $8D $EB $04
.db $A9 $00 $82 $8D $0C $05 $A9 $49
.db $A0 $8D $0B $05 $A9 $00 $82 $8D
.db $2C $05 $A9 $49 $A0 $8D $2B $05
.db $A9 $00 $82 $8D $4C $05 $A9 $49
.db $A0 $8D $4B $05 $28 $60 $BD $10
.db $0D $F0 $05 $9C $96 $0D $80 $05
.db $A9 $20 $8D $96 $0D $60 $08 $E2
.db $20 $A9 $09 $8D $02 $0D $C2 $20
.db $20 $A2 $B2 $A9 $00 $82 $8D $CC
.db $04 $A9 $43 $A0 $8D $CB $04 $A2
.db $00 $00 $8E $80 $0D $20 $EA $B8
.db $20 $18 $B3 $A0 $20 $00 $20 $8E
.db $B5 $A0 $00 $00 $20 $C9 $B6 $A9
.db $00 $82 $8D $CC $04 $A9 $12 $A0
.db $8D $CB $04 $A9 $00 $82 $8D $EC
.db $04 $A9 $63 $B1 $8D $EB $04 $28
.db $60 $08 $22 $43 $A0 $82 $20 $82
.db $B9 $28 $6B $08 $DA $22 $43 $A0
.db $82 $20 $EE $B9 $FA $28 $6B $08
.db $DA $22 $43 $A0 $82 $20 $31 $BA
.db $FA $28 $6B $08 $DA $22 $43 $A0
.db $82 $20 $23 $BB $FA $28 $6B $08
.db $DA $22 $43 $A0 $82 $20 $BA $BC
.db $FA $28 $6B $08 $DA $22 $43 $A0
.db $82 $A2 $20 $00 $A0 $00 $00 $20
.db $B0 $ED $A2 $00 $00 $A0 $20 $00
.db $20 $6B $F0 $20 $38 $B9 $FA $28
.db $6B $08 $E2 $20 $A9 $09 $8D $02
.db $0D $C2 $20 $20 $A2 $B2 $20 $02
.db $B2 $20 $EC $B1 $A9 $00 $82 $8D
.db $CC $04 $A9 $43 $A0 $8D $CB $04
.db $A9 $00 $82 $85 $01 $A9 $93 $B2
.db $85 $00 $22 $AD $8E $80 $22 $4E
.db $95 $80 $22 $F0 $98 $80 $22 $EA
.db $87 $80 $A2 $00 $00 $8E $80 $0D
.db $20 $EA $B8 $20 $18 $B3 $A0 $20
.db $00 $20 $8E $B5 $A0 $00 $00 $20
.db $C9 $B6 $A9 $00 $82 $8D $CC $04
.db $A9 $12 $A0 $8D $CB $04 $A9 $00
.db $82 $8D $EC $04 $A9 $2B $B2 $8D
.db $EB $04 $28 $60 $08 $E2 $20 $AD
.db $D3 $07 $F0 $07 $A9 $10 $0C $93
.db $0D $80 $05 $A9 $10 $1C $93 $0D
.db $28 $60 $08 $AD $D3 $07 $29 $FF
.db $00 $D0 $10 $A9 $FF $FF $8F $11
.db $BD $7E $A9 $00 $08 $8F $13 $BD
.db $7E $80 $0E $A9 $00 $00 $8F $11
.db $BD $7E $A9 $FF $FF $8F $13 $BD
.db $7E $28 $60 $08 $DA $22 $43 $A0
.db $82 $A2 $20 $00 $A0 $00 $00 $20
.db $B0 $ED $A2 $00 $00 $A0 $20 $00
.db $20 $6B $F0 $20 $9D $BD $FA $28
.db $6B $08 $DA $E2 $20 $A9 $05 $8D
.db $02 $0D $C2 $20 $20 $A2 $B2 $A0
.db $40 $00 $A2 $00 $00 $BF $00 $F8
.db $D0 $9F $E7 $BD $7E $E8 $88 $E8
.db $88 $D0 $F2 $20 $EA $E2 $A2 $20
.db $00 $8E $80 $0D $20 $F4 $B8 $A2
.db $00 $00 $8E $80 $0D $20 $EA $B8
.db $20 $18 $B3 $A5 $1D $29 $FF $00
.db $0A $AA $FC $9C $B2 $20 $E8 $B2
.db $FA $28 $60 $02 $00 $F6 $D0 $00
.db $02 $80 $00 $5A $41 $B4 $68 $B4
.db $B6 $B4 $08 $E2 $20 $9C $91 $0D
.db $9C $90 $0D $9C $94 $0D $9C $93
.db $0D $9C $8F $0D $9C $0A $07 $9C
.db $8E $0D $A9 $00 $8F $E6 $BD $7E
.db $C2 $20 $9C $F3 $0D $A9 $00 $00
.db $8F $23 $BD $7E $8F $43 $BD $7E
.db $8F $63 $BD $7E $8F $83 $BD $7E
.db $8F $A3 $BD $7E $8F $C3 $BD $7E
.db $9C $9B $0D $9C $9D $0D $28 $60
.db $08 $A2 $00 $00 $DA $BF $07 $BD
.db $7E $29 $FF $00 $86 $21 $A8 $A5
.db $21 $29 $FF $00 $0A $AA $FC $10
.db $B3 $FA $E8 $E0 $04 $00 $90 $E4
.db $20 $04 $B5 $20 $2E $B5 $28 $60
.db $8E $B5 $FE $B5 $1B $B7 $8B $B7
.db $20 $1F $B3 $20 $69 $B3 $60 $08
.db $64 $1D $E2 $20 $AD $D3 $07 $D0
.db $0E $AD $88 $07 $8D $F3 $0D $AD
.db $8A $07 $8D $F4 $0D $80 $0C $AD
.db $87 $07 $8D $F3 $0D $AD $89 $07
.db $8D $F4 $0D $BD $08 $0D $85 $17
.db $AD $F3 $0D $85 $19 $20 $F2 $B3
.db $A5 $1B $8D $F5 $0D $BD $09 $0D
.db $85 $17 $AD $F4 $0D $85 $19 $20
.db $F2 $B3 $A5 $1B $8D $F6 $0D $28
.db $60 $08 $A2 $00 $00 $BF $92 $B3
.db $82 $CD $F5 $0D $F0 $04 $E8 $E8
.db $80 $F3 $BF $C2 $B3 $82 $E2 $20
.db $8D $0D $0D $49 $01 $8D $2D $0D
.db $C2 $20 $EB $29 $FF $00 $85 $1D
.db $28 $60 $04 $00 $02 $00 $08 $00
.db $01 $00 $00 $04 $00 $08 $04 $04
.db $02 $04 $00 $02 $00 $01 $02 $02
.db $04 $02 $02 $01 $04 $01 $02 $08
.db $04 $08 $01 $02 $01 $04 $08 $02
.db $08 $04 $01 $01 $08 $01 $01 $08
.db $08 $08 $00 $00 $01 $00 $04 $00
.db $05 $00 $02 $01 $06 $01 $08 $01
.db $0B $01 $03 $02 $07 $02 $09 $02
.db $0A $02 $07 $02 $07 $02 $06 $01
.db $06 $01 $05 $00 $05 $00 $04 $00
.db $04 $00 $09 $02 $0A $02 $0B $01
.db $08 $01 $08 $64 $1B $A5 $17 $C5
.db $19 $F0 $44 $10 $22 $1A $C5 $19
.db $F0 $15 $1A $C5 $19 $F0 $08 $A5
.db $1B $09 $01 $85 $1B $80 $30 $A5
.db $1B $09 $01 $85 $1B $80 $28 $A5
.db $1B $09 $02 $85 $1B $80 $20 $3A
.db $C5 $19 $F0 $15 $3A $C5 $19 $F0
.db $08 $A5 $1B $09 $08 $85 $1B $80
.db $0E $A5 $1B $09 $08 $85 $1B $80
.db $06 $A5 $1B $09 $04 $85 $1B $28
.db $60 $08 $DA $A9 $00 $7E $85 $01
.db $A9 $07 $BD $85 $00 $A0 $00 $00
.db $E2 $20 $A9 $40 $97 $00 $C8 $A9
.db $60 $97 $00 $C8 $A9 $00 $97 $00
.db $C8 $A9 $20 $97 $00 $FA $28 $60
.db $08 $DA $A9 $00 $7E $85 $01 $A9
.db $07 $BD $85 $00 $A0 $00 $00 $AD
.db $13 $0D $29 $FF $00 $C9 $35 $00
.db $F0 $05 $C9 $39 $00 $D0 $17 $E2
.db $20 $A9 $40 $97 $00 $C8 $A9 $60
.db $97 $00 $C8 $A9 $00 $97 $00 $C8
.db $A9 $20 $97 $00 $80 $15 $E2 $20
.db $A9 $20 $97 $00 $C8 $A9 $60 $97
.db $00 $C8 $A9 $40 $97 $00 $C8 $A9
.db $00 $97 $00 $FA $28 $60 $08 $DA
.db $A9 $00 $7E $85 $01 $A9 $07 $BD
.db $85 $00 $A0 $00 $00 $AD $33 $0D
.db $29 $FF $00 $C9 $35 $00 $F0 $05
.db $C9 $39 $00 $D0 $17 $E2 $20 $A9
.db $60 $97 $00 $C8 $A9 $40 $97 $00
.db $C8 $A9 $20 $97 $00 $C8 $A9 $00
.db $97 $00 $80 $15 $E2 $20 $A9 $60
.db $97 $00 $C8 $A9 $20 $97 $00 $C8
.db $A9 $00 $97 $00 $C8 $A9 $40 $97
.db $00 $FA $28 $60 $08 $A2 $00 $00
.db $BD $BE $04 $D0 $0B $8A $18 $69
.db $20 $00 $AA $C9 $20 $02 $90 $F0
.db $E2 $20 $A9 $82 $9F $CD $04 $00
.db $A9 $A0 $9F $CC $04 $00 $A9 $12
.db $9F $CB $04 $00 $28 $60 $08 $A2
.db $00 $00 $86 $23 $BD $BE $04 $F0
.db $02 $86 $23 $8A $18 $69 $20 $00
.db $AA $C9 $20 $02 $90 $EE $A6 $23
.db $E2 $20 $A9 $82 $9F $CD $04 $00
.db $A9 $A0 $9F $CC $04 $00 $A9 $21
.db $9F $CB $04 $00 $28 $60 $08 $A2
.db $00 $00 $86 $23 $BD $BE $04 $F0
.db $02 $86 $23 $8A $18 $69 $20 $00
.db $AA $C9 $20 $02 $90 $EE $A6 $23
.db $E2 $20 $A9 $82 $9F $CD $04 $00
.db $A9 $A0 $9F $CC $04 $00 $A9 $21
.db $9F $CB $04 $00 $28 $60 $08 $5A
.db $A2 $00 $00 $8E $80 $0D $20 $EA
.db $B8 $20 $77 $B6 $E2 $20 $BD $0D
.db $0D $18 $69 $04 $9D $0C $0D $C2
.db $20 $A9 $80 $01 $9D $14 $0D $A9
.db $00 $78 $9D $1C $0D $A9 $00 $50
.db $9D $1E $0D $AD $4C $07 $48 $29
.db $F0 $FF $8D $4C $07 $DA $20 $64
.db $CD $22 $4E $95 $80 $22 $F0 $98
.db $80 $22 $EA $87 $80 $FA $68 $8D
.db $4C $07 $A9 $00 $00 $8D $BE $04
.db $BD $11 $0D $29 $FF $00 $FA $20
.db $21 $CF $8E $82 $0D $20 $90 $CF
.db $22 $4E $95 $80 $22 $F0 $98 $80
.db $22 $EA $87 $80 $28 $60 $08 $5A
.db $A2 $20 $00 $8E $80 $0D $A9 $01
.db $00 $9D $02 $0D $20 $F4 $B8 $20
.db $A0 $B6 $E2 $20 $AD $2D $0D $18
.db $69 $04 $9D $0C $0D $C2 $20 $A9
.db $00 $01 $9D $14 $0D $A9 $00 $70
.db $9D $1C $0D $A9 $00 $28 $9D $1E
.db $0D $AD $4C $07 $48 $29 $F0 $FF
.db $8D $4C $07 $DA $20 $64 $CD $22
.db $4E $95 $80 $22 $F0 $98 $80 $22
.db $EA $87 $80 $FA $68 $8D $4C $07
.db $BD $11 $0D $29 $FF $00 $FA $20
.db $21 $CF $8E $84 $0D $20 $90 $CF
.db $22 $4E $95 $80 $22 $F0 $98 $80
.db $AD $F2 $08 $29 $FF $00 $22 $B7
.db $DB $83 $AE $84 $0D $28 $60 $08
.db $E2 $20 $AD $02 $0D $89 $04 $F0
.db $0D $AD $D3 $07 $F0 $04 $A9 $01
.db $80 $11 $A9 $00 $80 $0D $AD $D3
.db $07 $F0 $04 $A9 $01 $80 $04 $A9
.db $00 $80 $00 $9D $10 $0D $28 $60
.db $08 $E2 $20 $AD $02 $0D $89 $04
.db $F0 $0D $AD $D3 $07 $D0 $04 $A9
.db $01 $80 $11 $A9 $00 $80 $0D $AD
.db $D3 $07 $F0 $04 $A9 $01 $80 $04
.db $A9 $00 $80 $00 $9D $10 $0D $28
.db $60 $08 $8C $F3 $0D $A2 $00 $00
.db $8E $80 $0D $20 $EA $B8 $AE $80
.db $0D $BD $13 $0D $29 $FF $00 $C9
.db $4F $00 $B0 $25 $38 $E9 $40 $00
.db $30 $29 $48 $A9 $80 $01 $9D $14
.db $0D $A0 $00 $7E $A2 $00 $64 $68
.db $20 $BA $CE $AC $F3 $0D $20 $6E
.db $D1 $8E $86 $0D $20 $90 $CF $28
.db $60 $C9 $6B $00 $D0 $05 $A9 $0F
.db $00 $80 $D7 $A2 $FF $FF $8E $86
.db $0D $28 $60 $08 $8C $F3 $0D $AD
.db $D3 $07 $D0 $08 $AD $8F $07 $89
.db $10 $00 $D0 $57 $A2 $00 $00 $8E
.db $80 $0D $20 $EA $B8 $A9 $80 $01
.db $9D $14 $0D $A9 $00 $3C $9D $1E
.db $0D $20 $99 $B8 $B0 $35 $AE $80
.db $0D $BD $13 $0D $29 $FF $00 $C9
.db $09 $00 $D0 $05 $20 $FB $B7 $80
.db $22 $C9 $40 $00 $B0 $25 $38 $E9
.db $2D $00 $30 $1F $48 $A9 $80 $01
.db $9D $14 $0D $A0 $00 $7E $A2 $00
.db $64 $68 $20 $53 $CE $AC $F3 $0D
.db $20 $2E $D1 $8E $86 $0D $20 $90
.db $CF $28 $60 $A2 $FF $FF $8E $86
.db $0D $28 $60 $08 $8C $F3 $0D $AD
.db $D3 $07 $F0 $08 $AD $8F $07 $89
.db $10 $00 $D0 $57 $A2 $20 $00 $8E
.db $80 $0D $20 $F4 $B8 $A9 $00 $01
.db $9D $14 $0D $A9 $00 $28 $9D $1E
.db $0D $20 $99 $B8 $B0 $35 $AE $80
.db $0D $BD $13 $0D $29 $FF $00 $C9
.db $09 $00 $D0 $05 $20 $13 $B8 $80
.db $22 $C9 $40 $00 $B0 $25 $38 $E9
.db $2D $00 $30 $1F $48 $A9 $00 $01
.db $9D $14 $0D $A0 $00 $76 $A2 $00
.db $70 $68 $20 $53 $CE $AC $F3 $0D
.db $20 $2E $D1 $8E $88 $0D $20 $90
.db $CF $28 $60 $A2 $FF $FF $8E $88
.db $0D $28 $60 $08 $A9 $94 $01 $9D
.db $14 $0D $A0 $40 $7F $A2 $00 $64
.db $20 $2B $B8 $AC $F3 $0D $20 $2E
.db $D1 $28 $60 $08 $A9 $14 $01 $9D
.db $14 $0D $A0 $40 $77 $A2 $00 $70
.db $20 $2B $B8 $AC $F3 $0D $20 $2E
.db $D1 $28 $60 $08 $5A $DA $86 $17
.db $84 $19 $A9 $2E $00 $38 $E9 $2D
.db $00 $48 $29 $FF $00 $85 $15 $0A
.db $18 $65 $15 $AA $BF $E4 $BE $80
.db $85 $00 $BF $E5 $BE $80 $85 $01
.db $A6 $17 $22 $1F $D2 $82 $A9 $02
.db $00 $8F $FE $BC $7E $A9 $00 $7E
.db $8F $00 $BD $7E $A9 $FE $40 $18
.db $65 $17 $8F $FF $BC $7E $A9 $80
.db $01 $8F $02 $BD $7E $A9 $80 $00
.db $8F $04 $BD $7E $A5 $19 $8F $05
.db $BD $7E $A9 $00 $7E $85 $01 $A9
.db $FE $BC $85 $00 $22 $AD $8E $80
.db $22 $EA $87 $80 $68 $FA $7A $28
.db $60 $08 $BD $11 $0D $29 $FF $00
.db $C9 $10 $00 $F0 $0A $C9 $23 $00
.db $F0 $05 $C9 $26 $00 $90 $38 $85
.db $15 $0A $18 $65 $15 $AA $BF $E6
.db $BD $80 $85 $01 $BF $E5 $BD $80
.db $85 $00 $AE $80 $0D $22 $3B $D2
.db $82 $20 $7D $CF $20 $A7 $CF $20
.db $F2 $CF $20 $FA $CF $A0 $34 $00
.db $AE $F3 $0D $22 $89 $96 $80 $E2
.db $20 $9E $DC $04 $28 $38 $60 $28
.db $18 $60 $AD $D3 $07 $29 $FF $00
.db $F0 $0C $D0 $27 $AD $D3 $07 $29
.db $FF $00 $D0 $02 $F0 $1D $08 $E2
.db $20 $AD $5D $07 $9D $11 $0D $AD
.db $5F $07 $9D $13 $0D $AD $87 $07
.db $9D $08 $0D $AD $89 $07 $9D $09
.db $0D $28 $60 $08 $E2 $20 $AD $5E
.db $07 $9D $11 $0D $AD $60 $07 $9D
.db $13 $0D $AD $88 $07 $9D $08 $0D
.db $AD $8A $07 $9D $09 $0D $28 $60
.db $08 $DA $E2 $20 $AD $8F $0D $F0
.db $06 $3A $8D $8F $0D $80 $38 $AD
.db $02 $0D $89 $08 $F0 $2C $AD $8E
.db $0D $89 $04 $D0 $17 $A9 $01 $85
.db $15 $20 $49 $C6 $B0 $21 $E2 $20
.db $AD $93 $0D $89 $08 $D0 $13 $AD
.db $94 $0D $D0 $0E $C2 $20 $20 $6E
.db $C5 $90 $0C $E2 $20 $EE $94 $0D
.db $80 $05 $C2 $20 $20 $96 $BF $FA
.db $28 $60 $08 $E2 $20 $AD $8F $0D
.db $F0 $06 $3A $8D $8F $0D $80 $1C
.db $C2 $20 $AD $94 $0D $29 $FF $00
.db $0A $AA $FC $B5 $B9 $90 $0D $E2
.db $20 $AD $94 $0D $1A $8D $94 $0D
.db $C9 $03 $F0 $02 $28 $60 $C2 $20
.db $20 $96 $BF $28 $60 $6E $C5 $BD
.db $B9 $E0 $B9 $96 $BF $08 $C2 $20
.db $AD $91 $0D $29 $FF $00 $F0 $15
.db $89 $04 $00 $F0 $10 $A9 $00 $00
.db $20 $99 $C8 $E2 $20 $9C $91 $0D
.db $C2 $20 $28 $38 $60 $28 $18 $60
.db $08 $E2 $20 $AD $0A $07 $F0 $03
.db $28 $38 $60 $28 $18 $60 $08 $E2
.db $20 $AD $8F $0D $F0 $06 $3A $8D
.db $8F $0D $80 $26 $AD $0A $07 $F0
.db $21 $C2 $20 $AD $94 $0D $29 $FF
.db $00 $0A $AA $FC $2B $BA $E2 $20
.db $9C $0A $07 $90 $0D $E2 $20 $AD
.db $94 $0D $1A $8D $94 $0D $C9 $03
.db $F0 $02 $28 $60 $C2 $20 $20 $96
.db $BF $28 $60 $6E $C5 $28 $C6 $96
.db $BF $08 $E2 $20 $AD $8F $0D $F0
.db $06 $3A $8D $8F $0D $80 $26 $AD
.db $0A $07 $F0 $21 $C2 $20 $AD $94
.db $0D $29 $FF $00 $0A $AA $FC $6E
.db $BA $E2 $20 $9C $0A $07 $90 $0D
.db $E2 $20 $AD $94 $0D $1A $8D $94
.db $0D $C9 $04 $F0 $02 $28 $60 $C2
.db $20 $20 $96 $BF $28 $60 $6E $C5
.db $28 $C6 $76 $BA $96 $BF $08 $C2
.db $20 $AD $96 $0D $29 $FF $00 $22
.db $12 $D9 $83 $AF $00 $44 $7F $29
.db $FF $00 $C9 $FF $00 $F0 $5A $AF
.db $1D $44 $7F $29 $FF $00 $D0 $10
.db $AD $96 $0D $29 $1F $00 $C9 $1F
.db $00 $F0 $46 $EE $96 $0D $80 $CF
.db $C2 $20 $AE $86 $0D $20 $EC $BA
.db $B0 $10 $E2 $20 $AD $96 $0D $29
.db $1F $C9 $1F $F0 $2C $EE $96 $0D
.db $80 $B5 $C2 $20 $A9 $01 $00 $22
.db $FA $96 $80 $E2 $20 $AD $96 $0D
.db $29 $1F $C9 $1F $F0 $13 $EE $96
.db $0D $9E $DA $04 $A9 $04 $49 $FF
.db $2D $8E $0D $8D $8E $0D $28 $18
.db $60 $28 $38 $60 $08 $E2 $20 $AF
.db $11 $44 $7F $38 $ED $60 $08 $C9
.db $01 $90 $25 $C9 $0F $B0 $21 $0A
.db $0A $0A $0A $9D $CE $04 $AF $10
.db $44 $7F $38 $ED $61 $08 $C9 $01
.db $90 $0E $C9 $0E $B0 $0A $0A $0A
.db $0A $0A $9D $D0 $04 $28 $38 $60
.db $28 $18 $60 $08 $E2 $20 $AD $8F
.db $0D $F0 $06 $3A $8D $8F $0D $80
.db $26 $AD $0A $07 $F0 $21 $C2 $20
.db $AD $94 $0D $29 $FF $00 $0A $AA
.db $FC $60 $BB $E2 $20 $9C $0A $07
.db $90 $0D $E2 $20 $AD $94 $0D $1A
.db $8D $94 $0D $C9 $05 $F0 $02 $28
.db $60 $C2 $20 $20 $96 $BF $28 $60
.db $6E $C5 $28 $C6 $6B $BB $96 $BF
.db $08 $28 $60 $08 $C2 $20 $AD $96
.db $0D $29 $FF $00 $22 $12 $D9 $83
.db $AF $00 $44 $7F $29 $FF $00 $C9
.db $FF $00 $F0 $5A $AF $12 $44 $7F
.db $29 $01 $00 $D0 $10 $E2 $20 $AD
.db $96 $0D $29 $1F $C9 $1F $F0 $46
.db $EE $96 $0D $80 $CF $C2 $20 $AE
.db $86 $0D $20 $EC $BA $B0 $10 $E2
.db $20 $AD $96 $0D $29 $1F $C9 $1F
.db $F0 $2C $EE $96 $0D $80 $B5 $C2
.db $20 $A9 $01 $00 $22 $FA $96 $80
.db $E2 $20 $AD $96 $0D $29 $1F $C9
.db $1F $F0 $13 $EE $96 $0D $9E $DA
.db $04 $A9 $04 $49 $FF $2D $8E $0D
.db $8D $8E $0D $28 $18 $60 $28 $38
.db $60 $08 $E2 $20 $AD $8F $0D $F0
.db $06 $3A $8D $8F $0D $80 $26 $AD
.db $0A $07 $F0 $21 $C2 $20 $AD $94
.db $0D $29 $FF $00 $0A $AA $FC $25
.db $BC $E2 $20 $9C $0A $07 $90 $0D
.db $E2 $20 $AD $94 $0D $1A $8D $94
.db $0D $C9 $02 $F0 $02 $28 $60 $E2
.db $20 $A9 $01 $8D $94 $0D $C2 $20
.db $20 $96 $BF $28 $60 $29 $BC $96
.db $BF $08 $C2 $20 $AD $96 $0D $29
.db $FF $00 $22 $12 $D9 $83 $AF $00
.db $44 $7F $29 $FF $00 $C9 $FF $00
.db $F0 $64 $AF $1D $44 $7F $29 $FF
.db $00 $D0 $10 $E2 $20 $AD $96 $0D
.db $29 $1F $C9 $1F $F0 $50 $EE $96
.db $0D $80 $CF $C2 $20 $AE $86 $0D
.db $20 $EC $BA $B0 $10 $E2 $20 $AD
.db $96 $0D $29 $1F $C9 $1F $F0 $36
.db $EE $96 $0D $80 $B5 $C2 $20 $A9
.db $01 $00 $22 $FA $96 $80 $A9 $B5
.db $00 $22 $BB $B4 $80 $E2 $20 $AD
.db $96 $0D $29 $1F $C9 $1F $F0 $16
.db $EE $96 $0D $9E $DA $04 $A9 $04
.db $49 $FF $2D $8E $0D $8D $8E $0D
.db $28 $18 $60 $28 $38 $60 $AD $96
.db $0D $29 $FF $00 $C9 $20 $00 $B0
.db $F2 $A9 $20 $00 $8D $96 $0D $82
.db $70 $FF $08 $E2 $20 $AD $8F $0D
.db $F0 $06 $3A $8D $8F $0D $80 $26
.db $AD $0A $07 $F0 $21 $C2 $20 $AD
.db $94 $0D $29 $FF $00 $0A $AA $FC
.db $F7 $BC $E2 $20 $9C $0A $07 $90
.db $0D $E2 $20 $AD $94 $0D $1A $8D
.db $94 $0D $C9 $03 $F0 $02 $28 $60
.db $C2 $20 $20 $96 $BF $28 $60 $6E
.db $C5 $28 $C6 $FF $BC $96 $BF $08
.db $A0 $00 $00 $AD $86 $0D $85 $21
.db $C2 $20 $5A $AD $96 $0D $29 $FF
.db $00 $22 $12 $D9 $83 $7A $AF $00
.db $44 $7F $29 $FF $00 $C9 $FF $00
.db $F0 $78 $AF $01 $44 $7F $29 $FF
.db $00 $C9 $16 $00 $90 $15 $C9 $1C
.db $00 $B0 $0B $C2 $20 $A6 $21 $20
.db $EC $BA $B0 $17 $90 $05 $C9 $22
.db $00 $F0 $F0 $E2 $20 $AD $96 $0D
.db $29 $1F $C9 $1F $F0 $4C $EE $96
.db $0D $80 $B5 $5A $C2 $20 $A9 $01
.db $00 $22 $FA $96 $80 $7A $C0 $00
.db $00 $D0 $08 $A5 $21 $18 $69 $20
.db $00 $85 $21 $E2 $20 $AD $96 $0D
.db $29 $1F $C9 $1F $F0 $24 $EE $96
.db $0D $9E $DA $04 $A9 $04 $49 $FF
.db $2D $8E $0D $8D $8E $0D $A5 $21
.db $18 $69 $20 $85 $21 $C8 $C8 $C0
.db $0A $00 $B0 $03 $82 $71 $FF $28
.db $18 $60 $28 $38 $60 $08 $DA $E2
.db $20 $AD $8F $0D $F0 $06 $3A $8D
.db $8F $0D $80 $40 $AD $02 $0D $89
.db $08 $F0 $34 $AD $8E $0D $89 $04
.db $D0 $1A $20 $56 $BE $B0 $2D $64
.db $15 $20 $49 $C6 $B0 $26 $E2 $20
.db $AD $93 $0D $89 $08 $D0 $18 $AD
.db $94 $0D $D0 $0E $C2 $20 $20 $6E
.db $C5 $90 $11 $E2 $20 $EE $94 $0D
.db $80 $0A $C2 $20 $20 $EF $BD $C2
.db $20 $20 $96 $BF $FA $28 $60 $A2
.db $10 $00 $DA $22 $EA $87 $80 $FA
.db $CA $D0 $F7 $20 $1A $D6 $22 $DD
.db $A6 $80 $A9 $00 $82 $85 $01 $A9
.db $EA $D9 $85 $00 $22 $AD $8E $80
.db $22 $EA $87 $80 $60 $08 $E2 $20
.db $AD $8F $0D $F0 $06 $3A $8D $8F
.db $0D $80 $19 $E2 $20 $20 $3E $BE
.db $20 $B6 $BE $B0 $0F $20 $8E $C7
.db $B0 $0A $AD $8E $0D $29 $03 $D0
.db $03 $20 $59 $BF $28 $60 $08 $AF
.db $E6 $BD $7E $F0 $0A $3A $8F $E6
.db $BD $7E $D0 $05 $20 $60 $CB $28
.db $60 $20 $68 $C9 $28 $60 $08 $AD
.db $9D $0D $D0 $0A $AD $9E $0D $F0
.db $48 $A2 $01 $00 $80 $03 $A2 $00
.db $00 $AD $8F $0D $F0 $06 $3A $8D
.db $8F $0D $80 $32 $BD $9D $0D $85
.db $25 $BD $9B $0D $85 $27 $20 $34
.db $BF $A5 $25 $9D $9D $0D $A5 $27
.db $9D $9B $0D $C2 $20 $A9 $7E $00
.db $22 $BB $B4 $80 $E2 $20 $A9 $06
.db $8D $8F $0D $AD $8E $0D $09 $02
.db $8D $8E $0D $20 $66 $D9 $28 $38
.db $60 $A9 $02 $49 $FF $2D $8E $0D
.db $8D $8E $0D $28 $18 $60 $08 $AD
.db $9D $0D $30 $27 $AD $9E $0D $30
.db $1D $AD $9D $0D $D0 $0A $AD $9E
.db $0D $F0 $40 $A2 $01 $00 $80 $03
.db $A2 $00 $00 $C2 $20 $20 $18 $BF
.db $E2 $20 $90 $2F $B0 $08 $A2 $01
.db $00 $80 $03 $A2 $00 $00 $BD $9D
.db $0D $85 $25 $BD $9B $0D $85 $27
.db $20 $34 $BF $A5 $25 $9D $9D $0D
.db $A5 $27 $9D $9B $0D $AD $8E $0D
.db $09 $02 $8D $8E $0D $20 $66 $D9
.db $28 $38 $60 $A9 $02 $49 $FF $2D
.db $8E $0D $8D $8E $0D $28 $18 $60
.db $08 $8A $E2 $20 $F0 $09 $AD $60
.db $07 $C9 $39 $F0 $09 $D0 $0A $AD
.db $5F $07 $C9 $39 $D0 $03 $28 $38
.db $60 $28 $18 $60 $08 $A5 $25 $F0
.db $1C $30 $0C $A5 $27 $1A $85 $27
.db $A5 $25 $3A $85 $25 $80 $10 $A5
.db $27 $3A $85 $27 $F0 $07 $A5 $25
.db $1A $85 $25 $D0 $02 $64 $25 $28
.db $60 $08 $AD $8E $0D $89 $04 $D0
.db $20 $E2 $20 $AD $93 $0D $89 $08
.db $D0 $27 $AD $94 $0D $C9 $03 $F0
.db $20 $0A $AA $BD $B7 $07 $8D $93
.db $0D $8A $4A $AA $BD $BD $07 $D0
.db $09 $C2 $20 $20 $6E $C5 $90 $0C
.db $E2 $20 $EE $94 $0D $C2 $20 $80
.db $03 $20 $E4 $BF $28 $60 $08 $E2
.db $20 $AD $02 $0D $89 $08 $F0 $0C
.db $49 $08 $8D $02 $0D $A9 $01 $8D
.db $8F $0D $80 $19 $20 $4E $C2 $20
.db $74 $C2 $20 $C7 $BF $20 $3B $C0
.db $C2 $20 $A9 $FF $FF $8F $11 $BD
.db $7E $8F $13 $BD $7E $28 $60 $08
.db $AD $13 $0D $C9 $44 $F0 $04 $C9
.db $49 $D0 $0F $A2 $20 $00 $AD $F3
.db $08 $9D $08 $0D $AD $F4 $08 $9D
.db $09 $0D $28 $60 $08 $AD $02 $0D
.db $89 $04 $F0 $0C $49 $04 $8D $02
.db $0D $A9 $20 $8D $8F $0D $80 $0F
.db $20 $F7 $C1 $20 $4E $C2 $20 $60
.db $C2 $20 $7D $C2 $20 $09 $C0 $28
.db $60 $08 $A2 $00 $00 $86 $23 $C2
.db $20 $BD $BE $04 $F0 $02 $86 $23
.db $8A $18 $69 $20 $00 $AA $C9 $00
.db $02 $90 $EE $A6 $23 $E2 $20 $A9
.db $82 $9F $CD $04 $00 $A9 $C1 $9F
.db $CC $04 $00 $A9 $31 $9F $CB $04
.db $00 $28 $60 $08 $A2 $00 $00 $86
.db $23 $C2 $20 $BD $BE $04 $F0 $02
.db $86 $23 $8A $18 $69 $20 $00 $AA
.db $C9 $00 $02 $90 $EE $A6 $23 $E2
.db $20 $A9 $82 $9F $CD $04 $00 $A9
.db $C0 $9F $CC $04 $00 $A9 $7F $9F
.db $CB $04 $00 $A9 $82 $8F $CD $04
.db $00 $A9 $C0 $8F $CC $04 $00 $A9
.db $DD $8F $CB $04 $00 $28 $60 $08
.db $AD $8E $0D $89 $10 $00 $F0 $0B
.db $A9 $00 $00 $20 $5C $DC $20 $AA
.db $C2 $90 $48 $89 $80 $00 $F0 $0B
.db $A9 $00 $00 $20 $5C $DC $20 $CF
.db $C3 $90 $38 $AD $13 $0D $29 $FF
.db $00 $C9 $4D $00 $D0 $05 $20 $02
.db $C1 $90 $28 $A9 $80 $00 $2C $02
.db $0D $D0 $09 $0C $02 $0D $22 $12
.db $F3 $83 $28 $6B $A9 $80 $00 $1C
.db $02 $0D $AD $13 $0D $29 $FF $00
.db $C9 $4D $00 $F0 $03 $20 $1A $D6
.db $20 $B5 $C1 $28 $6B $A2 $20 $00
.db $A0 $00 $00 $20 $B0 $ED $A2 $00
.db $00 $A0 $20 $00 $20 $6B $F0 $A2
.db $40 $00 $A0 $20 $00 $20 $B0 $ED
.db $A2 $20 $00 $A0 $40 $00 $20 $6B
.db $F0 $6B $E2 $20 $AD $8E $0D $89
.db $40 $F0 $17 $AD $F3 $08 $8D $E6
.db $08 $AD $F4 $08 $8D $E7 $08 $C2
.db $20 $22 $61 $E0 $83 $22 $6A $E0
.db $83 $60 $A9 $40 $8D $8E $0D $C2
.db $20 $20 $1A $D6 $20 $C6 $C1 $18
.db $60 $08 $8E $80 $0D $AD $8E $0D
.db $89 $08 $00 $F0 $05 $20 $D9 $C1
.db $90 $43 $29 $B0 $00 $F0 $40 $89
.db $10 $00 $F0 $05 $20 $AA $C2 $90
.db $34 $89 $20 $00 $F0 $05 $20 $38
.db $C3 $90 $2A $89 $80 $00 $F0 $05
.db $20 $CF $C3 $90 $20 $A9 $80 $00
.db $2C $02 $0D $D0 $09 $0C $02 $0D
.db $22 $12 $F3 $83 $28 $6B $A9 $80
.db $00 $1C $02 $0D $20 $1A $D6 $20
.db $B5 $C1 $20 $92 $C1 $28 $6B $20
.db $1A $D6 $20 $B5 $C1 $20 $92 $C1
.db $28 $6B $08 $AD $8F $07 $89 $10
.db $00 $F0 $18 $AD $52 $0D $29 $FF
.db $00 $22 $34 $DB $83 $22 $EA $87
.db $80 $AD $72 $0D $29 $FF $00 $22
.db $34 $DB $83 $28 $60 $08 $E2 $20
.db $9C $02 $0D $C2 $20 $20 $C6 $C1
.db $22 $91 $D2 $82 $28 $60 $22 $DD
.db $A6 $80 $A9 $00 $82 $85 $01 $A9
.db $EA $D9 $85 $00 $22 $AD $8E $80
.db $60 $08 $AE $F3 $0D $BD $DB $04
.db $C9 $01 $00 $D0 $0F $E2 $20 $A9
.db $08 $49 $FF $2D $8E $0D $8D $8E
.db $0D $28 $38 $60 $28 $18 $60 $08
.db $E2 $20 $AD $8F $07 $89 $01 $F0
.db $07 $AD $D3 $07 $F0 $10 $D0 $13
.db $AD $90 $07 $89 $01 $F0 $25 $AD
.db $D3 $07 $D0 $02 $F0 $05 $AE $82
.db $0D $80 $03 $AE $84 $0D $A9 $50
.db $9D $DB $04 $8E $F3 $0D $20 $37
.db $C2 $A9 $08 $0D $8E $0D $8D $8E
.db $0D $28 $18 $60 $28 $38 $60 $08
.db $DA $C2 $20 $BD $CE $04 $29 $FF
.db $00 $8D $9F $08 $A9 $0F $00 $22
.db $9E $B4 $80 $FA $28 $60 $08 $E2
.db $20 $AD $97 $07 $F0 $08 $A9 $10
.db $0D $8E $0D $8D $8E $0D $28 $60
.db $08 $E2 $20 $AD $91 $07 $C9 $FF
.db $F0 $08 $A9 $20 $0D $8E $0D $8D
.db $8E $0D $28 $60 $08 $E2 $20 $A9
.db $02 $85 $25 $80 $0B $08 $E2 $20
.db $AD $94 $0D $29 $03 $0A $85 $25
.db $A2 $00 $00 $BD $B7 $07 $89 $10
.db $D0 $06 $89 $04 $D0 $02 $F0 $08
.db $E8 $E8 $E4 $25 $90 $ED $B0 $08
.db $A9 $80 $0D $8E $0D $8D $8E $0D
.db $28 $60 $08 $DA $AD $8F $0D $29
.db $FF $00 $F0 $0D $C9 $01 $00 $F0
.db $6C $E2 $20 $3A $8D $8F $0D $80
.db $60 $20 $5D $C4 $90 $5B $A9 $00
.db $82 $85 $01 $A9 $93 $B2 $85 $00
.db $22 $AD $8E $80 $22 $EA $87 $80
.db $AF $11 $BD $7E $F0 $0A $A9 $00
.db $00 $8F $11 $BD $7E $20 $2E $D3
.db $A9 $00 $00 $85 $04 $A9 $BB $0D
.db $85 $03 $A9 $00 $82 $85 $01 $A9
.db $1A $C5 $85 $00 $20 $09 $C5 $A2
.db $00 $00 $9B $20 $53 $D8 $A9 $00
.db $82 $85 $01 $A9 $EA $D9 $85 $00
.db $22 $AD $8E $80 $A9 $BD $80 $8D
.db $76 $08 $E2 $20 $A9 $8C $8D $8F
.db $0D $FA $28 $18 $60 $E2 $20 $9C
.db $8F $0D $A9 $10 $49 $FF $2D $8E
.db $0D $8D $8E $0D $FA $28 $38 $60
.db $08 $DA $AD $8F $0D $29 $FF $00
.db $F0 $0D $C9 $01 $00 $F0 $6C $E2
.db $20 $3A $8D $8F $0D $80 $60 $20
.db $5D $C4 $90 $5B $A9 $00 $82 $85
.db $01 $A9 $93 $B2 $85 $00 $22 $AD
.db $8E $80 $22 $EA $87 $80 $AF $11
.db $BD $7E $F0 $0A $A9 $00 $00 $8F
.db $11 $BD $7E $20 $2E $D3 $A9 $00
.db $00 $85 $04 $A9 $BB $0D $85 $03
.db $A9 $00 $82 $85 $01 $A9 $36 $C5
.db $85 $00 $20 $09 $C5 $A2 $00 $00
.db $9B $20 $53 $D8 $A9 $00 $82 $85
.db $01 $A9 $EA $D9 $85 $00 $22 $AD
.db $8E $80 $A9 $B2 $80 $8D $76 $08
.db $E2 $20 $A9 $68 $8D $8F $0D $FA
.db $28 $18 $60 $E2 $20 $9C $8F $0D
.db $A9 $20 $49 $FF $2D $8E $0D $8D
.db $8E $0D $FA $28 $38 $60 $02 $90
.db $A2 $94 $10 $00 $80 $00 $5A $08
.db $DA $AD $8F $0D $29 $FF $00 $F0
.db $0D $C9 $01 $00 $F0 $6C $E2 $20
.db $3A $8D $8F $0D $80 $60 $20 $5D
.db $C4 $90 $5B $A9 $00 $82 $85 $01
.db $A9 $93 $B2 $85 $00 $22 $AD $8E
.db $80 $22 $EA $87 $80 $AF $11 $BD
.db $7E $F0 $0A $A9 $00 $00 $8F $11
.db $BD $7E $20 $2E $D3 $A9 $00 $00
.db $85 $04 $A9 $BB $0D $85 $03 $A9
.db $00 $82 $85 $01 $A9 $52 $C5 $85
.db $00 $20 $09 $C5 $A2 $00 $00 $9B
.db $20 $53 $D8 $A9 $00 $82 $85 $01
.db $A9 $EA $D9 $85 $00 $22 $AD $8E
.db $80 $A9 $BE $80 $8D $76 $08 $E2
.db $20 $A9 $72 $8D $8F $0D $FA $28
.db $18 $60 $E2 $20 $9C $8F $0D $A9
.db $80 $49 $FF $2D $8E $0D $8D $8E
.db $0D $FA $28 $38 $60 $AD $8E $0D
.db $89 $40 $00 $D0 $16 $20 $A3 $C4
.db $20 $C3 $C4 $B0 $35 $E2 $20 $A5
.db $17 $8D $E6 $08 $A5 $19 $8D $E7
.db $08 $C2 $20 $E2 $20 $AD $8E $0D
.db $09 $40 $8D $8E $0D $C2 $20 $22
.db $61 $E0 $83 $22 $6A $E0 $83 $B0
.db $02 $90 $0F $E2 $20 $A9 $40 $49
.db $FF $2D $8E $0D $8D $8E $0D $C2
.db $20 $38 $60 $08 $E2 $20 $AD $D3
.db $07 $F0 $0C $AD $88 $07 $85 $17
.db $AD $8A $07 $85 $19 $80 $0A $AD
.db $87 $07 $85 $17 $AD $89 $07 $85
.db $19 $28 $60 $08 $E2 $20 $A5 $17
.db $38 $ED $60 $08 $C9 $01 $90 $36
.db $C9 $0F $B0 $32 $85 $1B $A5 $19
.db $38 $ED $61 $08 $C9 $01 $90 $26
.db $C9 $0D $B0 $22 $85 $1D $C2 $20
.db $AE $82 $0D $A5 $1B $29 $FF $00
.db $0A $0A $0A $0A $9D $CE $04 $A5
.db $1D $29 $FF $00 $0A $0A $0A $0A
.db $9D $D0 $04 $28 $38 $60 $28 $18
.db $60 $08 $A0 $00 $00 $B7 $00 $97
.db $03 $C8 $C8 $C0 $1C $00 $90 $F5
.db $28 $60 $D9 $20 $BC $20 $D8 $20
.db $90 $20 $36 $21 $BB $20 $DF $20
.db $C9 $20 $EB $20 $C8 $20 $80 $20
.db $57 $21 $EF $20 $CF $20 $90 $20
.db $91 $20 $B2 $20 $D0 $20 $5E $21
.db $5F $21 $DF $20 $80 $20 $81 $20
.db $A2 $20 $C0 $20 $4E $21 $4F $21
.db $CF $20 $90 $20 $91 $20 $B2 $20
.db $D0 $20 $39 $20 $1E $20 $5D $20
.db $80 $20 $81 $20 $A2 $20 $C0 $20
.db $29 $20 $0E $20 $4D $20 $08 $DA
.db $E2 $20 $AD $8E $0D $89 $04 $D0
.db $0E $09 $04 $8D $8E $0D $A9 $10
.db $8D $8F $0D $FA $28 $18 $60 $9C
.db $90 $0D $AD $93 $0D $29 $10 $4A
.db $4A $4A $4A $4D $D3 $07 $F0 $05
.db $EE $90 $0D $80 $0A $C2 $20 $AC
.db $82 $0D $A2 $00 $00 $80 $08 $C2
.db $20 $AC $84 $0D $A2 $20 $00 $20
.db $0B $C6 $BD $0D $0D $29 $FF $00
.db $18 $65 $15 $18 $69 $1C $00 $BB
.db $22 $FA $96 $80 $E2 $20 $9E $DA
.db $04 $A9 $04 $49 $FF $2D $8E $0D
.db $8D $8E $0D $20 $DC $C5 $C2 $20
.db $FA $28 $38 $60 $08 $AD $93 $0D
.db $89 $10 $D0 $25 $AD $8F $07 $89
.db $10 $F0 $1E $C2 $20 $AE $8A $0D
.db $AD $4D $0D $18 $69 $1C $00 $22
.db $FA $96 $80 $AE $8C $0D $AD $6D
.db $0D $18 $69 $1C $00 $22 $FA $96
.db $80 $28 $60 $08 $64 $15 $AD $8F
.db $07 $89 $10 $00 $D0 $10 $BD $13
.db $0D $29 $FF $00 $C9 $09 $00 $D0
.db $05 $A9 $0C $00 $85 $15 $28 $60
.db $08 $E2 $20 $AD $91 $0D $F0 $16
.db $89 $04 $F0 $12 $C2 $20 $A9 $00
.db $00 $20 $99 $C8 $E2 $20 $9C $91
.db $0D $C2 $20 $28 $38 $60 $28 $18
.db $60 $08 $C2 $20 $AD $0A $07 $29
.db $FF $00 $D0 $36 $AD $91 $0D $29
.db $FF $00 $F0 $2B $AD $91 $0D $89
.db $10 $00 $D0 $0F $89 $04 $00 $D0
.db $11 $89 $02 $00 $F0 $19 $20 $5C
.db $CC $80 $0D $20 $8D $C6 $B0 $08
.db $90 $0D $A9 $00 $00 $20 $99 $C8
.db $E2 $20 $9C $91 $0D $C2 $20 $28
.db $38 $60 $28 $18 $60 $AD $8E $0D
.db $89 $40 $00 $D0 $16 $20 $00 $C7
.db $20 $37 $C7 $B0 $36 $E2 $20 $A5
.db $17 $8D $E6 $08 $A5 $19 $8D $E7
.db $08 $C2 $20 $E2 $20 $AD $8E $0D
.db $09 $40 $8D $8E $0D $C2 $20 $22
.db $61 $E0 $83 $22 $6A $E0 $83 $B0
.db $02 $90 $0F $E2 $20 $A9 $40 $49
.db $FF $2D $8E $0D $8D $8E $0D $C2
.db $20 $18 $60 $C2 $20 $20 $DA $C6
.db $38 $60 $08 $AD $13 $0D $29 $FF
.db $00 $C9 $44 $00 $F0 $05 $C9 $49
.db $00 $D0 $13 $AD $CE $04 $8D $0E
.db $05 $AD $D0 $04 $8D $10 $05 $E2
.db $20 $A9 $01 $8D $1B $05 $28 $60
.db $08 $E2 $20 $AD $95 $0D $C9 $02
.db $F0 $21 $AD $D3 $07 $F0 $0E $AD
.db $87 $07 $85 $17 $AD $89 $07 $85
.db $19 $E6 $15 $80 $18 $AD $88 $07
.db $85 $17 $AD $8A $07 $85 $19 $E6
.db $15 $80 $0A $AD $F3 $08 $85 $17
.db $AD $F4 $08 $85 $19 $28 $60 $08
.db $E2 $20 $A5 $17 $38 $ED $60 $08
.db $C9 $01 $90 $47 $C9 $0F $B0 $43
.db $85 $1B $A5 $19 $38 $ED $61 $08
.db $C9 $01 $90 $37 $C9 $0D $B0 $33
.db $85 $1D $C2 $20 $AE $86 $0D $A5
.db $1B $29 $FF $00 $0A $0A $0A $0A
.db $9D $CE $04 $A5 $1D $29 $FF $00
.db $0A $0A $0A $0A $9D $D0 $04 $AD
.db $95 $0D $29 $FF $00 $C9 $01 $00
.db $F0 $06 $A9 $01 $00 $20 $99 $C8
.db $28 $38 $60 $28 $18 $60 $08 $C2
.db $20 $AD $0A $07 $29 $FF $00 $D0
.db $62 $AD $91 $0D $29 $FF $00 $F0
.db $57 $AD $91 $0D $89 $20 $00 $D0
.db $36 $89 $10 $00 $D0 $40 $89 $08
.db $00 $D0 $36 $89 $04 $00 $D0 $2C
.db $89 $02 $00 $D0 $12 $89 $01 $00
.db $F0 $36 $AD $93 $0D $89 $01 $00
.db $F0 $27 $20 $06 $C9 $80 $22 $AD
.db $93 $0D $89 $01 $00 $D0 $1A $20
.db $81 $CB $20 $41 $C9 $80 $12 $20
.db $25 $C8 $80 $0D $20 $5D $C8 $80
.db $08 $20 $CE $C8 $80 $03 $20 $FE
.db $C7 $E2 $20 $9C $91 $0D $C2 $20
.db $28 $38 $60 $28 $18 $60 $08 $E2
.db $20 $AD $90 $0D $F0 $0A $C2 $20
.db $AE $88 $0D $AD $82 $0D $80 $08
.db $C2 $20 $AE $86 $0D $AD $84 $0D
.db $20 $B1 $C8 $E2 $20 $A9 $00 $9F
.db $DA $04 $00 $28 $60 $08 $E2 $20
.db $AD $60 $07 $C9 $24 $D0 $2C $AD
.db $90 $0D $D0 $0D $C2 $20 $AE $86
.db $0D $AD $82 $0D $20 $B1 $C8 $80
.db $0B $C2 $20 $AE $88 $0D $AD $84
.db $0D $20 $B1 $C8 $A9 $37 $00 $22
.db $FA $96 $80 $E2 $20 $A9 $00 $9F
.db $DA $04 $00 $28 $60 $08 $E2 $20
.db $AD $90 $0D $D0 $13 $C2 $20 $AE
.db $86 $0D $AD $82 $0D $20 $B1 $C8
.db $AD $0D $0D $29 $FF $00 $80 $11
.db $C2 $20 $AE $88 $0D $AD $84 $0D
.db $20 $B1 $C8 $AD $2D $0D $29 $FF
.db $00 $DA $22 $FA $96 $80 $FA $E2
.db $20 $A9 $00 $9F $DA $04 $00 $28
.db $60 $08 $48 $AE $86 $0D $DA $22
.db $FA $96 $80 $FA $68 $D0 $00 $E2
.db $20 $A9 $00 $9F $DA $04 $00 $28
.db $60 $08 $DA $85 $23 $86 $25 $A6
.db $23 $BD $CE $04 $A6 $25 $9D $CE
.db $04 $A6 $23 $BD $D0 $04 $A6 $25
.db $9D $D0 $04 $FA $28 $60 $08 $E2
.db $20 $AD $90 $0D $D0 $11 $C2 $20
.db $AE $86 $0D $AD $0D $0D $29 $FF
.db $00 $18 $69 $28 $00 $80 $0F $C2
.db $20 $AE $88 $0D $AD $2D $0D $29
.db $FF $00 $18 $69 $28 $00 $DA $22
.db $FA $96 $80 $FA $E2 $20 $A9 $00
.db $9F $DA $04 $00 $28 $60 $08 $AF
.db $FE $06 $00 $48 $AD $90 $0D $29
.db $FF $00 $D0 $0E $AE $84 $0D $AD
.db $0D $0D $29 $FF $00 $49 $01 $00
.db $80 $09 $AE $82 $0D $AD $0D $0D
.db $29 $FF $00 $18 $69 $10 $00 $22
.db $FA $96 $80 $E2 $20 $9E $DA $04
.db $C2 $20 $68 $8F $FE $06 $00 $28
.db $60 $08 $E2 $20 $A9 $00 $EB $AD
.db $94 $0D $3A $0A $AA $BD $B8 $07
.db $F0 $11 $A9 $10 $8F $E6 $BD $7E
.db $A9 $01 $0D $8E $0D $8D $8E $0D
.db $20 $68 $C9 $20 $B2 $CC $28 $60
.db $08 $A9 $7F $85 $02 $A9 $51 $85
.db $01 $A9 $30 $85 $00 $C2 $20 $20
.db $C3 $C9 $B0 $37 $98 $D0 $1B $A5
.db $00 $18 $69 $C0 $01 $85 $00 $20
.db $6D $CA $A9 $00 $82 $85 $01 $A9
.db $B5 $C9 $85 $00 $22 $AD $8E $80
.db $80 $19 $A5 $00 $18 $69 $80 $01
.db $85 $00 $20 $6D $CA $A9 $00 $82
.db $85 $01 $A9 $BC $C9 $85 $00 $22
.db $AD $8E $80 $28 $60 $01 $82 $1D
.db $00 $20 $00 $E0 $01 $82 $1D $00
.db $20 $00 $C0 $08 $C2 $20 $AD $90
.db $0D $29 $FF $00 $D0 $0A $AD $93
.db $0D $89 $20 $00 $D0 $16 $F0 $0E
.db $AD $93 $0D $89 $20 $00 $D0 $4C
.db $A0 $00 $00 $28 $18 $60 $A0 $01
.db $00 $28 $18 $60 $AD $D3 $07 $29
.db $FF $00 $F0 $15 $A9 $CD $34 $A0
.db $20 $00 $A2 $00 $00 $9F $82 $1D
.db $00 $E8 $88 $E8 $88 $D0 $F6 $80
.db $13 $A9 $18 $00 $A0 $20 $00 $A2
.db $00 $00 $9F $82 $1D $00 $E8 $88
.db $E8 $88 $D0 $F6 $A9 $00 $82 $85
.db $01 $A9 $B5 $C9 $85 $00 $22 $AD
.db $8E $80 $80 $3E $AD $D3 $07 $29
.db $FF $00 $D0 $15 $A9 $CD $34 $A0
.db $20 $00 $A2 $00 $00 $9F $82 $1D
.db $00 $E8 $88 $E8 $88 $D0 $F6 $80
.db $13 $A9 $18 $00 $A0 $20 $00 $A2
.db $00 $00 $9F $82 $1D $00 $E8 $88
.db $E8 $88 $D0 $F6 $A9 $00 $82 $85
.db $01 $A9 $BC $C9 $85 $00 $22 $AD
.db $8E $80 $28 $38 $60 $08 $A0 $00
.db $00 $BB $A9 $10 $00 $85 $15 $B7
.db $00 $20 $8A $CA $9F $82 $1D $00
.db $C8 $C8 $E8 $E8 $C6 $15 $D0 $EF
.db $28 $60 $08 $DA $5A $85 $17 $29
.db $1F $00 $20 $C3 $CA $85 $1B $A5
.db $17 $4A $4A $4A $4A $4A $85 $19
.db $29 $1F $00 $20 $C3 $CA $0A $0A
.db $0A $0A $0A $04 $1B $A5 $19 $4A
.db $4A $4A $4A $4A $29 $1F $00 $20
.db $C3 $CA $EB $0A $0A $05 $1B $7A
.db $FA $28 $60 $08 $48 $E2 $20 $AD
.db $93 $0D $29 $02 $C2 $20 $29 $FF
.db $00 $AA $68 $FC $D8 $CA $28 $60
.db $DC $CA $1A $CB $08 $85 $1D $A2
.db $10 $00 $A9 $1F $00 $38 $E5 $1D
.db $8D $04 $42 $E2 $10 $8E $06 $42
.db $EA $EA $EA $EA $EA $EA $EA $AD
.db $14 $42 $C2 $10 $AE $16 $42 $C2
.db $10 $EB $E2 $20 $AF $E6 $BD $7E
.db $C2 $20 $8F $02 $42 $00 $EA $EA
.db $EA $AF $16 $42 $00 $18 $65 $1D
.db $28 $60 $08 $85 $1D $A2 $10 $00
.db $A9 $1F $00 $38 $E5 $1D $8D $04
.db $42 $E2 $10 $8E $06 $42 $EA $EA
.db $EA $EA $EA $EA $EA $AD $14 $42
.db $C2 $10 $AE $16 $42 $C2 $10 $EB
.db $E2 $20 $A9 $10 $38 $EF $E6 $BD
.db $7E $C2 $20 $8F $02 $42 $00 $EA
.db $EA $EA $AF $16 $42 $00 $85 $1F
.db $A9 $1F $00 $38 $E5 $1F $28 $60
.db $08 $DA $A9 $01 $49 $FF $2D $8E
.db $0D $8D $8E $0D $C2 $20 $A9 $00
.db $82 $85 $01 $A9 $B2 $D0 $85 $00
.db $E2 $20 $22 $AD $8E $80 $FA $28
.db $60 $08 $E2 $20 $A9 $00 $EB $20
.db $40 $CC $B0 $05 $20 $96 $CB $80
.db $03 $20 $EB $CB $28 $60 $08 $AD
.db $94 $0D $3A $0A $C2 $20 $AA $E2
.db $20 $BD $B8 $07 $8D $9D $0D $49
.db $FF $1A $CD $9B $0D $90 $1E $AD
.db $66 $07 $38 $ED $9C $0D $85 $19
.db $38 $ED $9B $0D $90 $08 $AD $9B
.db $0D $8D $9E $0D $80 $23 $A5 $19
.db $8D $9E $0D $80 $1C $85 $17 $AD
.db $66 $07 $38 $ED $9C $0D $85 $15
.db $38 $E5 $17 $90 $07 $A5 $17 $8D
.db $9E $0D $80 $05 $A5 $15 $8D $9E
.db $0D $28 $60 $08 $AD $94 $0D $3A
.db $0A $C2 $20 $AA $E2 $20 $BD $B8
.db $07 $8D $9E $0D $49 $FF $1A $CD
.db $9C $0D $90 $1E $AD $65 $07 $38
.db $ED $9B $0D $85 $19 $38 $ED $9C
.db $0D $90 $08 $AD $9C $0D $8D $9D
.db $0D $80 $23 $A5 $19 $8D $9D $0D
.db $80 $1C $85 $17 $AD $65 $07 $38
.db $ED $9B $0D $85 $15 $38 $E5 $17
.db $90 $07 $A5 $17 $8D $9D $0D $80
.db $05 $A5 $15 $8D $9D $0D $28 $60
.db $AD $90 $0D $4D $D3 $07 $D0 $09
.db $AD $93 $0D $89 $20 $D0 $0B $F0
.db $07 $AD $93 $0D $89 $20 $F0 $02
.db $38 $60 $18 $60 $08 $A9 $01 $00
.db $20 $5C $DC $20 $2E $D3 $20 $A6
.db $D8 $E2 $20 $A9 $00 $EB $AD $90
.db $0D $4D $D3 $07 $F0 $1E $AD $65
.db $07 $38 $ED $6F $07 $85 $15 $38
.db $ED $A2 $07 $10 $07 $A5 $15 $8D
.db $9D $0D $80 $24 $AD $A2 $07 $8D
.db $9D $0D $80 $1C $AD $66 $07 $38
.db $ED $70 $07 $85 $15 $38 $ED $A3
.db $07 $10 $07 $A5 $15 $8D $9E $0D
.db $80 $06 $AD $A3 $07 $8D $9E $0D
.db $28 $60 $08 $E2 $20 $20 $3C $CD
.db $AD $93 $0D $89 $08 $F0 $1A $89
.db $10 $F0 $05 $AD $8F $07 $80 $03
.db $AD $90 $07 $89 $01 $F0 $0A $C2
.db $20 $A9 $B6 $00 $20 $2E $CD $80
.db $05 $20 $E0 $CC $80 $00 $28 $60
.db $08 $C2 $20 $AD $94 $0D $29 $FF
.db $00 $3A $0A $AA $BD $B8 $07 $29
.db $FF $00 $F0 $1B $AD $92 $0D $29
.db $FF $00 $C9 $0A $00 $90 $06 $20
.db $17 $CD $A9 $04 $00 $AA $BF $D9
.db $9D $80 $20 $2E $CD $80 $06 $A9
.db $B7 $00 $20 $2E $CD $28 $60 $08
.db $AD $93 $0D $89 $02 $00 $F0 $0C
.db $A5 $15 $8D $9D $08 $A9 $39 $00
.db $22 $4D $B4 $80 $28 $60 $08 $48
.db $A5 $15 $8D $9F $08 $68 $22 $9E
.db $B4 $80 $28 $60 $08 $AD $93 $0D
.db $4A $4A $4A $4A $29 $01 $4D $D3
.db $07 $F0 $05 $AE $82 $0D $80 $03
.db $AE $84 $0D $C2 $20 $BD $CE $04
.db $29 $FF $00 $85 $15 $28 $60 $A2
.db $2D $00 $80 $03 $A2 $00 $00 $08
.db $8A $AE $80 $0D $18 $7D $11 $0D
.db $29 $FF $00 $85 $15 $0A $18 $65
.db $15 $AA $BF $D7 $BC $80 $85 $00
.db $BF $D8 $BC $80 $85 $01 $22 $FE
.db $D1 $82 $A9 $02 $00 $8F $FE $BC
.db $7E $A9 $00 $7E $8F $00 $BD $7E
.db $AE $80 $0D $BD $1E $0D $18 $69
.db $FE $40 $8F $FF $BC $7E $20 $D1
.db $CD $8F $02 $BD $7E $E2 $20 $A9
.db $80 $8F $04 $BD $7E $C2 $20 $AE
.db $80 $0D $BD $1C $0D $8F $05 $BD
.db $7E $A9 $00 $7E $85 $01 $A9 $FE
.db $BC $85 $00 $22 $AD $8E $80 $28
.db $60 $08 $AF $E5 $BD $7E $29 $FF
.db $00 $D0 $30 $AE $80 $0D $BD $11
.db $0D $29 $FF $00 $C9 $16 $00 $90
.db $22 $C9 $1C $00 $B0 $05 $A9 $00
.db $0C $80 $1B $C9 $22 $00 $F0 $F6
.db $AE $80 $0D $BD $13 $0D $29 $FF
.db $00 $C9 $09 $00 $D0 $05 $A9 $80
.db $0E $80 $03 $A9 $00 $10 $28 $60
.db $08 $DA $5A $A2 $00 $00 $AF $5E
.db $BD $80 $85 $00 $AF $5F $BD $80
.db $85 $01 $AE $80 $0D $BD $1E $0D
.db $18 $69 $00 $0E $AA $18 $69 $80
.db $00 $85 $17 $E2 $20 $A0 $00 $00
.db $B7 $00 $9F $FE $40 $7E $E8 $A4
.db $00 $C8 $D0 $05 $A0 $00 $80 $E6
.db $02 $84 $00 $E4 $17 $90 $E6 $7A
.db $FA $28 $60 $08 $48 $5A $DA $86
.db $17 $84 $19 $29 $FF $00 $85 $15
.db $0A $18 $65 $15 $AA $BF $E4 $BE
.db $80 $85 $00 $BF $E5 $BE $80 $85
.db $01 $A6 $17 $22 $1F $D2 $82 $A9
.db $02 $00 $8F $FE $BC $7E $A9 $00
.db $7E $8F $00 $BD $7E $A9 $FE $40
.db $18 $65 $17 $8F $FF $BC $7E $A9
.db $00 $04 $8F $02 $BD $7E $A9 $80
.db $00 $8F $04 $BD $7E $A5 $19 $8F
.db $05 $BD $7E $A9 $00 $7E $85 $01
.db $A9 $FE $BC $85 $00 $22 $AD $8E
.db $80 $22 $EA $87 $80 $FA $7A $68
.db $28 $60 $08 $48 $5A $DA $86 $17
.db $84 $19 $29 $FF $00 $85 $15 $0A
.db $18 $65 $15 $AA $BF $11 $BF $80
.db $85 $00 $BF $12 $BF $80 $85 $01
.db $A6 $17 $22 $1F $D2 $82 $A9 $02
.db $00 $8F $FE $BC $7E $A9 $00 $7E
.db $8F $00 $BD $7E $A9 $FE $40 $18
.db $65 $17 $8F $FF $BC $7E $A9 $00
.db $04 $8F $02 $BD $7E $A9 $80 $00
.db $8F $04 $BD $7E $A5 $19 $8F $05
.db $BD $7E $A9 $00 $7E $85 $01 $A9
.db $FE $BC $85 $00 $22 $AD $8E $80
.db $22 $EA $87 $80 $FA $7A $68 $28
.db $60 $08 $DA $48 $A9 $00 $80 $85
.db $01 $A9 $45 $9E $85 $00 $22 $06
.db $96 $80 $A9 $00 $80 $85 $01 $A9
.db $2D $9E $85 $00 $22 $15 $96 $80
.db $68 $29 $FF $00 $85 $15 $0A $18
.db $65 $15 $AA $BF $E6 $BD $80 $85
.db $01 $BF $E5 $BD $80 $85 $00 $AE
.db $80 $0D $22 $3B $D2 $82 $20 $7D
.db $CF $20 $A7 $CF $20 $F2 $CF $20
.db $FA $CF $20 $1B $D1 $A8 $FA $22
.db $89 $96 $80 $E2 $20 $9E $DC $04
.db $9C $FB $06 $28 $60 $A9 $00 $7E
.db $8F $E7 $06 $00 $BD $1E $0D $18
.db $69 $FE $40 $8F $E6 $06 $00 $60
.db $08 $E2 $20 $A9 $82 $9F $CD $04
.db $00 $A9 $A0 $9F $CC $04 $00 $A9
.db $43 $9F $CB $04 $00 $28 $60 $08
.db $E2 $20 $BD $09 $0D $38 $ED $61
.db $08 $30 $04 $C9 $0E $90 $07 $48
.db $A9 $01 $8D $FB $06 $68 $C2 $20
.db $29 $0F $00 $0A $0A $0A $0A $8F
.db $F0 $06 $00 $E2 $20 $BD $08 $0D
.db $38 $ED $60 $08 $90 $0D $30 $04
.db $C9 $10 $90 $07 $48 $A9 $01 $8D
.db $FB $06 $68 $C2 $20 $29 $1F $00
.db $0A $0A $0A $0A $8F $EE $06 $00
.db $28 $60 $BD $14 $0D $8F $F8 $06
.db $00 $60 $08 $20 $28 $D0 $E2 $20
.db $AE $80 $0D $D0 $04 $A9 $86 $80
.db $19 $E0 $20 $00 $D0 $04 $A9 $84
.db $80 $10 $E0 $40 $00 $D0 $04 $A9
.db $82 $80 $07 $E0 $60 $00 $D0 $02
.db $A9 $81 $8F $EA $06 $00 $28 $60
.db $08 $64 $25 $AE $80 $0D $BD $11
.db $0D $29 $FF $00 $C9 $02 $00 $F0
.db $32 $C9 $1C $00 $F0 $2D $C9 $14
.db $00 $F0 $28 $C9 $05 $00 $F0 $23
.db $C9 $06 $00 $F0 $1E $C9 $1B $00
.db $F0 $19 $C9 $25 $00 $F0 $14 $C9
.db $2C $00 $F0 $19 $C9 $18 $00 $F0
.db $0F $C9 $2A $00 $F0 $14 $A9 $00
.db $00 $80 $12 $A9 $20 $00 $80 $0D
.db $A9 $40 $00 $80 $08 $A9 $60 $00
.db $80 $03 $A9 $80 $00 $85 $25 $A0
.db $00 $00 $AE $80 $0D $BD $10 $0D
.db $29 $FF $00 $D0 $03 $A0 $00 $01
.db $AF $D5 $BC $80 $85 $01 $AF $D4
.db $BC $80 $18 $65 $25 $85 $00 $20
.db $B9 $D0 $A9 $00 $82 $85 $01 $A9
.db $B2 $D0 $85 $00 $22 $AD $8E $80
.db $28 $60 $01 $30 $52 $7F $00 $01
.db $80 $08 $A9 $00 $7F $85 $04 $A9
.db $30 $51 $85 $03 $AD $80 $0D $D0
.db $0A $A9 $C0 $01 $18 $65 $03 $85
.db $03 $80 $2B $C9 $20 $00 $D0 $0A
.db $A9 $80 $01 $18 $65 $03 $85 $03
.db $80 $1C $C9 $40 $00 $D0 $0A $A9
.db $40 $01 $18 $65 $03 $85 $03 $80
.db $0D $C9 $60 $00 $D0 $08 $A9 $20
.db $01 $18 $65 $03 $85 $03 $A2 $20
.db $00 $B7 $00 $87 $03 $E6 $03 $E6
.db $03 $C8 $C8 $CA $CA $D0 $F2 $28
.db $60 $08 $E2 $20 $A9 $42 $8D $E9
.db $06 $28 $60 $08 $E2 $20 $BD $0C
.db $0D $C9 $FF $D0 $07 $BD $0D $0D
.db $18 $7D $0F $0D $28 $60 $08 $5A
.db $86 $17 $84 $19 $85 $15 $0A $18
.db $65 $15 $AA $BF $42 $BF $80 $85
.db $01 $BF $41 $BF $80 $85 $00 $AE
.db $80 $0D $22 $5A $D2 $82 $AE $80
.db $0D $20 $D1 $D1 $20 $A7 $CF $20
.db $F2 $CF $20 $F3 $D1 $A0 $0C $00
.db $A6 $19 $22 $89 $96 $80 $E2 $20
.db $9E $DC $04 $7A $28 $60 $08 $5A
.db $86 $17 $84 $19 $85 $15 $0A $18
.db $65 $15 $AA $BF $6F $BF $80 $85
.db $01 $BF $6E $BF $80 $85 $00 $AE
.db $80 $0D $22 $5A $D2 $82 $AE $80
.db $0D $20 $D1 $D1 $20 $AE $D1 $20
.db $F2 $CF $20 $F3 $D1 $A0 $02 $00
.db $A6 $19 $22 $89 $96 $80 $E2 $20
.db $9E $DC $04 $7A $28 $60 $08 $E2
.db $20 $BD $09 $0D $38 $ED $61 $08
.db $0A $0A $0A $0A $8F $F0 $06 $00
.db $BD $08 $0D $38 $ED $60 $08 $0A
.db $0A $0A $0A $8F $EE $06 $00 $28
.db $60 $A9 $00 $7E $8F $E7 $06 $00
.db $A9 $FE $40 $18 $65 $17 $8F $E6
.db $06 $00 $60 $8A $D0 $05 $A9 $80
.db $01 $80 $03 $A9 $00 $01 $8F $F8
.db $06 $00 $60 $08 $E2 $20 $A9 $87
.db $8F $EA $06 $00 $28 $60 $08 $DA
.db $5A $A5 $01 $8F $72 $00 $00 $A5
.db $00 $8F $71 $00 $00 $AE $80 $0D
.db $BD $1E $0D $8F $76 $00 $00 $22
.db $18 $8F $80 $7A $FA $28 $6B $08
.db $DA $5A $A5 $01 $8F $72 $00 $00
.db $A5 $00 $8F $71 $00 $00 $8A $8F
.db $76 $00 $00 $22 $18 $8F $80 $7A
.db $FA $28 $6B $08 $DA $A5 $01 $8F
.db $72 $00 $00 $A5 $00 $8F $71 $00
.db $00 $AE $80 $0D $BD $1E $0D $8F
.db $76 $00 $00 $22 $18 $8F $80 $FA
.db $28 $6B $08 $5A $DA $A5 $01 $8F
.db $72 $00 $00 $A5 $00 $8F $71 $00
.db $00 $A5 $17 $8F $76 $00 $00 $22
.db $18 $8F $80 $FA $7A $28 $6B $08
.db $48 $29 $0F $00 $C9 $08 $00 $90
.db $0A $68 $29 $F0 $FF $18 $69 $10
.db $00 $80 $04 $68 $29 $F0 $FF $28
.db $60 $08 $DA $22 $E1 $95 $80 $A2
.db $00 $00 $9E $02 $0D $9E $00 $0D
.db $A2 $20 $00 $9E $02 $0D $9E $00
.db $0D $A2 $40 $00 $9E $02 $0D $9E
.db $00 $0D $A2 $60 $00 $9E $02 $0D
.db $9E $00 $0D $A9 $00 $00 $8F $1F
.db $BD $7E $8F $3F $BD $7E $8F $5F
.db $BD $7E $8F $7F $BD $7E $8F $21
.db $BD $7E $8F $41 $BD $7E $8F $61
.db $BD $7E $8F $81 $BD $7E $8F $23
.db $BD $7E $8F $43 $BD $7E $8F $63
.db $BD $7E $8F $83 $BD $7E $8F $A3
.db $BD $7E $8F $C3 $BD $7E $8F $1B
.db $BD $7E $8F $1D $BD $7E $E2 $20
.db $A9 $00 $8D $DA $04 $8D $FA $04
.db $8D $1A $05 $8D $3A $05 $8D $5A
.db $05 $8D $7A $05 $FA $28 $6B $08
.db $DA $9C $97 $0D $9C $99 $0D $9C
.db $9B $0D $9C $9D $0D $20 $29 $DD
.db $20 $A6 $D8 $FA $28 $60 $08 $E2
.db $20 $A9 $0A $8D $8F $0D $C2 $20
.db $20 $51 $D3 $20 $58 $D4 $22 $EA
.db $87 $80 $E2 $20 $AD $8F $0D $3A
.db $8D $8F $0D $29 $FF $D0 $E7 $28
.db $60 $08 $AD $8F $0D $29 $FF $00
.db $4A $AA $F0 $3D $86 $1B $A9 $00
.db $7E $85 $01 $A9 $E7 $BD $85 $00
.db $A9 $00 $7F $85 $04 $A9 $30 $51
.db $85 $03 $A0 $00 $00 $B7 $00 $20
.db $26 $D4 $C6 $1B $D0 $F9 $97 $03
.db $86 $1B $C8 $C8 $C0 $20 $00 $90
.db $EC $A9 $00 $82 $85 $01 $A9 $9E
.db $D3 $85 $00 $22 $AD $8E $80 $28
.db $60 $20 $A5 $D3 $80 $EB $01 $30
.db $51 $7F $20 $00 $00 $08 $AD $6F
.db $07 $29 $FF $00 $85 $15 $AD $65
.db $07 $29 $FF $00 $85 $17 $20 $FF
.db $D3 $AA $A0 $00 $00 $A9 $00 $7F
.db $85 $01 $A9 $30 $51 $85 $00 $BF
.db $E7 $BD $7E $97 $00 $E8 $E8 $C8
.db $C8 $C0 $10 $00 $90 $F1 $AD $70
.db $07 $29 $FF $00 $85 $15 $AD $66
.db $07 $29 $FF $00 $85 $17 $20 $FF
.db $D3 $18 $69 $10 $00 $AA $BF $E7
.db $BD $7E $97 $00 $E8 $E8 $C8 $C8
.db $C0 $20 $00 $90 $F1 $28 $60 $08
.db $AD $CD $07 $29 $03 $00 $F0 $19
.db $C9 $01 $00 $F0 $07 $C9 $02 $00
.db $D0 $0F $06 $15 $06 $15 $A5 $17
.db $C5 $15 $90 $05 $A9 $20 $00 $80
.db $03 $A9 $00 $00 $28 $60 $08 $85
.db $17 $29 $10 $00 $85 $19 $A5 $17
.db $29 $0F $00 $0A $04 $19 $A5 $17
.db $29 $00 $02 $04 $19 $A5 $17 $29
.db $E0 $01 $0A $04 $19 $A5 $17 $29
.db $00 $40 $04 $19 $A5 $17 $29 $00
.db $3C $0A $05 $19 $05 $17 $28 $60
.db $08 $AD $97 $0D $CD $99 $0D $90
.db $24 $AF $11 $BD $7E $C9 $FF $FF
.db $F0 $08 $48 $A2 $00 $00 $7A $20
.db $B7 $D4 $AF $13 $BD $7E $C9 $FF
.db $FF $F0 $2C $48 $A2 $02 $00 $7A
.db $20 $6C $D5 $80 $22 $AF $11 $BD
.db $7E $C9 $FF $FF $F0 $08 $48 $A2
.db $00 $00 $7A $20 $6C $D5 $AF $13
.db $BD $7E $C9 $FF $FF $F0 $08 $48
.db $A2 $02 $00 $7A $20 $B7 $D4 $A9
.db $00 $82 $85 $01 $A9 $EA $D9 $85
.db $00 $22 $AD $8E $80 $28 $60 $08
.db $84 $15 $A9 $00 $7E $85 $07 $A9
.db $00 $30 $85 $06 $BD $97 $0D $18
.db $65 $06 $85 $06 $20 $FF $D4 $20
.db $D4 $D4 $28 $60 $08 $A0 $00 $00
.db $A9 $51 $25 $05 $15 $97 $06 $A0
.db $40 $00 $A9 $50 $25 $05 $15 $97
.db $06 $A0 $80 $00 $A9 $53 $25 $05
.db $15 $97 $06 $A0 $C0 $00 $A9 $54
.db $25 $05 $15 $97 $06 $28 $60 $08
.db $AD $8F $0D $29 $FF $00 $85 $17
.db $A9 $0B $00 $38 $E5 $17 $C9 $09
.db $00 $90 $03 $A9 $08 $00 $0A $A8
.db $A9 $51 $65 $05 $15 $97 $06 $88
.db $88 $A9 $52 $25 $05 $15 $97 $06
.db $98 $18 $69 $42 $00 $A8 $A9 $50
.db $65 $05 $15 $97 $06 $88 $88 $A9
.db $57 $25 $05 $15 $97 $06 $98 $18
.db $69 $42 $00 $A8 $A9 $53 $65 $05
.db $15 $97 $06 $88 $88 $A9 $57 $25
.db $05 $15 $97 $06 $98 $18 $69 $42
.db $00 $A8 $A9 $56 $25 $05 $15 $97
.db $06 $88 $88 $A9 $55 $25 $05 $15
.db $97 $06 $28 $60 $08 $84 $15 $A9
.db $00 $7E $85 $07 $A9 $00 $30 $85
.db $06 $BD $97 $0D $18 $65 $06 $85
.db $06 $20 $B4 $D5 $20 $89 $D5 $28
.db $60 $08 $A0 $10 $00 $A9 $51 $65
.db $05 $15 $97 $06 $A0 $50 $00 $A9
.db $50 $65 $05 $15 $97 $06 $A0 $90
.db $00 $A9 $53 $65 $05 $15 $97 $06
.db $A0 $D0 $00 $A9 $56 $25 $05 $15
.db $97 $06 $28 $60 $08 $AD $8F $0D
.db $29 $FF $00 $38 $E9 $03 $00 $10
.db $03 $A9 $00 $00 $0A $A8 $A9 $51
.db $25 $05 $15 $97 $06 $C8 $C8 $A9
.db $52 $25 $05 $15 $97 $06 $98 $18
.db $69 $3E $00 $A8 $A9 $50 $25 $05
.db $15 $97 $06 $C8 $C8 $A9 $57 $25
.db $05 $15 $97 $06 $98 $18 $69 $3E
.db $00 $A8 $A9 $53 $25 $05 $15 $97
.db $06 $C8 $C8 $A9 $57 $25 $05 $15
.db $97 $06 $98 $18 $69 $3E $00 $A8
.db $A9 $54 $25 $05 $15 $97 $06 $C8
.db $C8 $A9 $55 $25 $05 $15 $97 $06
.db $28 $60 $08 $20 $20 $D6 $28 $60
.db $08 $E2 $20 $A9 $07 $8D $8F $0D
.db $C2 $20 $20 $40 $D6 $22 $EA $87
.db $80 $E2 $20 $AD $8F $0D $3A $8D
.db $8F $0D $29 $FF $D0 $EA $28 $60
.db $08 $AD $97 $0D $CD $99 $0D $90
.db $24 $AF $11 $BD $7E $C9 $FF $FF
.db $F0 $08 $48 $A2 $00 $00 $7A $20
.db $9F $D6 $AF $13 $BD $7E $C9 $FF
.db $FF $F0 $2C $48 $A2 $02 $00 $7A
.db $20 $23 $D7 $80 $22 $AF $11 $BD
.db $7E $C9 $FF $FF $F0 $08 $48 $A2
.db $00 $00 $7A $20 $23 $D7 $AF $13
.db $BD $7E $C9 $FF $FF $F0 $08 $48
.db $A2 $02 $00 $7A $20 $9F $D6 $A9
.db $00 $82 $85 $01 $A9 $EA $D9 $85
.db $00 $22 $AD $8E $80 $28 $60 $08
.db $84 $15 $A9 $00 $7E $85 $07 $A9
.db $00 $30 $85 $06 $BD $97 $0D $18
.db $65 $06 $85 $06 $20 $BC $D6 $20
.db $D4 $D4 $28 $60 $08 $AD $8F $0D
.db $29 $FF $00 $38 $E9 $01 $00 $10
.db $03 $A9 $00 $00 $1A $0A $A8 $A9
.db $51 $65 $05 $15 $97 $06 $C8 $C8
.db $A9 $FF $24 $05 $15 $97 $06 $98
.db $18 $69 $3E $00 $A8 $A9 $50 $65
.db $05 $15 $97 $06 $C8 $C8 $A9 $FF
.db $24 $05 $15 $97 $06 $98 $18 $69
.db $3E $00 $A8 $A9 $53 $65 $05 $15
.db $97 $06 $C8 $C8 $A9 $FF $24 $05
.db $15 $97 $06 $98 $18 $69 $3E $00
.db $A8 $A9 $56 $25 $05 $15 $97 $06
.db $C8 $C8 $A9 $FF $24 $05 $15 $97
.db $06 $28 $60 $08 $84 $15 $A9 $00
.db $7E $85 $07 $A9 $00 $30 $85 $06
.db $BD $97 $0D $18 $65 $06 $85 $06
.db $20 $40 $D7 $20 $89 $D5 $28 $60
.db $08 $AD $8F $0D $29 $FF $00 $85
.db $17 $A9 $08 $00 $38 $E5 $17 $C9
.db $07 $00 $90 $03 $A9 $07 $00 $0A
.db $A8 $A9 $51 $25 $05 $15 $97 $06
.db $88 $88 $A9 $FF $24 $05 $15 $97
.db $06 $98 $18 $69 $42 $00 $A8 $A9
.db $50 $25 $05 $15 $97 $06 $88 $88
.db $A9 $FF $24 $05 $15 $97 $06 $98
.db $18 $69 $42 $00 $A8 $A9 $53 $25
.db $05 $15 $97 $06 $88 $88 $A9 $FF
.db $24 $05 $15 $97 $06 $98 $18 $69
.db $42 $00 $A8 $A9 $54 $25 $05 $15
.db $97 $06 $88 $88 $A9 $FF $24 $05
.db $15 $97 $06 $28 $60 $50 $25 $50
.db $65 $53 $25 $53 $65 $51 $25 $51
.db $65 $54 $25 $56 $25 $52 $25 $55
.db $25 $08 $DA $A2 $00 $00 $BF $AD
.db $D7 $82 $05 $15 $A0 $40 $00 $97
.db $06 $E8 $E8 $BF $AD $D7 $82 $05
.db $15 $A0 $50 $00 $97 $06 $E8 $E8
.db $BF $AD $D7 $82 $05 $15 $A0 $80
.db $00 $97 $06 $E8 $E8 $BF $AD $D7
.db $82 $05 $15 $A0 $90 $00 $97 $06
.db $E8 $E8 $BF $AD $D7 $82 $05 $15
.db $A0 $00 $00 $97 $06 $E8 $E8 $BF
.db $AD $D7 $82 $05 $15 $A0 $10 $00
.db $97 $06 $E8 $E8 $BF $AD $D7 $82
.db $05 $15 $A0 $C0 $00 $97 $06 $E8
.db $E8 $BF $AD $D7 $82 $05 $15 $A0
.db $D0 $00 $97 $06 $E8 $E8 $A0 $00
.db $00 $C8 $C8 $BF $AD $D7 $82 $97
.db $06 $C0 $0E $00 $90 $F3 $E8 $E8
.db $A0 $C0 $00 $C8 $C8 $BF $AD $D7
.db $82 $97 $06 $C0 $CE $00 $90 $F3
.db $FA $28 $60 $08 $DA $84 $15 $A9
.db $00 $7E $85 $07 $A9 $00 $30 $85
.db $06 $BD $97 $0D $18 $65 $06 $85
.db $06 $20 $C1 $D7 $FA $A5 $06 $18
.db $69 $40 $00 $18 $69 $80 $00 $1A
.db $1A $85 $06 $A0 $00 $00 $80 $12
.db $5A $B7 $03 $05 $15 $9B $97 $06
.db $7A $C8 $C8 $E8 $E8 $E0 $0E $00
.db $D0 $EE $C0 $1C $00 $F0 $0D $A2
.db $00 $00 $A5 $06 $38 $E9 $40 $00
.db $85 $06 $80 $DC $28 $60 $08 $E2
.db $20 $A9 $00 $A0 $0E $00 $A2 $00
.db $00 $9F $9F $0D $00 $E8 $88 $D0
.db $F8 $A9 $00 $A0 $0E $00 $A2 $00
.db $00 $9F $AD $0D $00 $E8 $88 $D0
.db $F8 $AD $6F $07 $8D $9B $0D $A9
.db $00 $85 $02 $A9 $0D $85 $01 $A9
.db $9F $85 $00 $AD $65 $07 $20 $FE
.db $D8 $AD $70 $07 $8D $9C $0D $A9
.db $00 $85 $02 $A9 $0D $85 $01 $A9
.db $AD $85 $00 $AD $66 $07 $20 $FE
.db $D8 $20 $66 $D9 $28 $60 $08 $A0
.db $00 $00 $C9 $1A $90 $14 $48 $A9
.db $40 $97 $00 $C8 $C0 $06 $00 $90
.db $F8 $A9 $20 $97 $00 $C8 $68 $38
.db $E9 $1A $20 $1F $D9 $28 $60 $08
.db $64 $1D $64 $1E $EB $A9 $00 $EB
.db $A2 $04 $00 $C2 $20 $8D $04 $42
.db $E2 $10 $8E $06 $42 $EA $EA $EA
.db $EA $EA $EA $EA $AD $14 $42 $C2
.db $10 $AE $16 $42 $E2 $20 $C2 $10
.db $C9 $00 $F0 $11 $85 $1D $98 $18
.db $65 $1D $85 $1D $A9 $40 $97 $00
.db $C8 $C4 $1D $90 $F9 $8A $0A $0A
.db $0A $0A $97 $00 $28 $60 $08 $C2
.db $20 $AF $11 $BD $7E $C9 $FF $FF
.db $F0 $2D $48 $E2 $20 $A9 $00 $85
.db $02 $A9 $0D $85 $01 $A9 $9F $85
.db $00 $AD $9B $0D $20 $5B $DA $A9
.db $00 $85 $05 $A9 $0D $85 $04 $A9
.db $BB $85 $03 $C2 $20 $20 $E5 $DA
.db $A2 $00 $00 $7A $20 $53 $D8 $C2
.db $20 $AF $13 $BD $7E $C9 $FF $FF
.db $F0 $2D $48 $E2 $20 $A9 $00 $85
.db $02 $A9 $0D $85 $01 $A9 $AD $85
.db $00 $AD $9C $0D $20 $5B $DA $A9
.db $00 $85 $05 $A9 $0D $85 $04 $A9
.db $D7 $85 $03 $C2 $20 $20 $E5 $DA
.db $A2 $02 $00 $7A $20 $53 $D8 $A9
.db $00 $82 $85 $01 $A9 $EA $D9 $85
.db $00 $22 $AD $8E $80 $20 $F3 $D9
.db $28 $60 $02 $00 $30 $7E $00 $08
.db $80 $00 $48 $08 $AD $9B $0D $29
.db $FF $00 $85 $15 $AD $65 $07 $29
.db $FF $00 $85 $17 $20 $FF $D3 $AA
.db $A0 $00 $00 $A9 $00 $7F $85 $01
.db $A9 $30 $51 $85 $00 $BF $E7 $BD
.db $7E $97 $00 $E8 $E8 $C8 $C8 $C0
.db $10 $00 $90 $F1 $AD $9C $0D $29
.db $FF $00 $85 $15 $AD $66 $07 $29
.db $FF $00 $85 $17 $20 $FF $D3 $18
.db $69 $10 $00 $AA $BF $E7 $BD $7E
.db $97 $00 $E8 $E8 $C8 $C8 $C0 $20
.db $00 $90 $F1 $A9 $00 $82 $85 $01
.db $A9 $9E $D3 $85 $00 $22 $AD $8E
.db $80 $28 $60 $08 $A0 $00 $00 $C9
.db $1A $90 $14 $48 $A9 $44 $97 $00
.db $C8 $C0 $06 $00 $90 $F8 $A9 $22
.db $97 $00 $C8 $68 $38 $E9 $1A $20
.db $7C $DA $28 $60 $08 $20 $CA $DA
.db $64 $1D $64 $1E $EB $A9 $00 $EB
.db $A2 $04 $00 $C2 $20 $8D $04 $42
.db $E2 $10 $8E $06 $42 $EA $EA $EA
.db $EA $EA $EA $EA $AD $14 $42 $C2
.db $10 $AE $16 $42 $E2 $20 $C2 $10
.db $85 $1D $98 $18 $65 $1D $85 $1D
.db $A9 $04 $C4 $1D $F0 $07 $17 $00
.db $97 $00 $C8 $80 $F3 $B7 $00 $29
.db $F0 $85 $1D $8A $05 $1D $97 $00
.db $28 $60 $08 $48 $5A $84 $25 $A9
.db $07 $18 $65 $25 $85 $25 $B7 $00
.db $29 $F0 $97 $00 $C8 $C4 $25 $90
.db $F5 $7A $68 $28 $60 $C2 $20 $08
.db $A0 $00 $00 $B7 $00 $29 $FF $00
.db $20 $1B $DB $5A $48 $98 $0A $A8
.db $68 $97 $03 $7A $C8 $C0 $07 $00
.db $90 $E9 $B7 $00 $29 $FF $00 $20
.db $1B $DB $5A $48 $98 $0A $A8 $68
.db $97 $03 $7A $C8 $C0 $0E $00 $90
.db $E9 $28 $60 $08 $85 $15 $29 $F0
.db $00 $D0 $07 $A5 $15 $20 $29 $DC
.db $80 $2E $C9 $40 $00 $D0 $07 $A5
.db $15 $20 $5D $DB $80 $22 $C9 $30
.db $00 $D0 $07 $A5 $15 $20 $90 $DB
.db $80 $16 $C9 $20 $00 $D0 $07 $A5
.db $15 $20 $C3 $DB $80 $0A $C9 $10
.db $00 $D0 $05 $A5 $15 $20 $F6 $DB
.db $09 $00 $20 $28 $60 $08 $29 $0F
.db $00 $F0 $28 $C9 $04 $00 $D0 $05
.db $A9 $40 $01 $80 $21 $C9 $03 $00
.db $D0 $05 $A9 $44 $01 $80 $17 $C9
.db $02 $00 $D0 $05 $A9 $45 $01 $80
.db $0D $C9 $01 $00 $D0 $05 $A9 $46
.db $01 $80 $03 $A9 $47 $01 $28 $60
.db $08 $29 $0F $00 $F0 $28 $C9 $04
.db $00 $D0 $05 $A9 $40 $01 $80 $21
.db $C9 $03 $00 $D0 $05 $A9 $41 $01
.db $80 $17 $C9 $02 $00 $D0 $05 $A9
.db $4B $01 $80 $0D $C9 $01 $00 $D0
.db $05 $A9 $4C $01 $80 $03 $A9 $48
.db $01 $28 $60 $08 $29 $0F $00 $F0
.db $28 $C9 $04 $00 $D0 $05 $A9 $40
.db $01 $80 $21 $C9 $03 $00 $D0 $05
.db $A9 $41 $01 $80 $17 $C9 $02 $00
.db $D0 $05 $A9 $42 $01 $80 $0D $C9
.db $01 $00 $D0 $05 $A9 $4D $01 $80
.db $03 $A9 $49 $01 $28 $60 $08 $29
.db $0F $00 $F0 $28 $C9 $04 $00 $D0
.db $05 $A9 $40 $01 $80 $21 $C9 $03
.db $00 $D0 $05 $A9 $41 $01 $80 $17
.db $C9 $02 $00 $D0 $05 $A9 $42 $01
.db $80 $0D $C9 $01 $00 $D0 $05 $A9
.db $43 $01 $80 $03 $A9 $4A $01 $28
.db $60 $08 $29 $0F $00 $F0 $28 $C9
.db $04 $00 $D0 $05 $A9 $40 $01 $80
.db $21 $C9 $03 $00 $D0 $05 $A9 $41
.db $01 $80 $17 $C9 $02 $00 $D0 $05
.db $A9 $42 $01 $80 $0D $C9 $01 $00
.db $D0 $05 $A9 $43 $01 $80 $03 $A9
.db $57 $01 $28 $60 $08 $9C $97 $0D
.db $9C $99 $0D $9C $9B $0D $9C $9D
.db $0D $E2 $20 $4D $D3 $07 $D0 $1B
.db $A2 $00 $00 $AD $87 $07 $38 $ED
.db $60 $08 $8F $15 $BD $7E $AD $89
.db $07 $38 $ED $61 $08 $8F $16 $BD
.db $7E $80 $19 $A2 $02 $00 $AD $88
.db $07 $38 $ED $60 $08 $8F $17 $BD
.db $7E $AD $8A $07 $38 $ED $61 $08
.db $8F $18 $BD $7E $20 $A9 $DC $28
.db $60 $08 $DA $BF $15 $BD $7E $C9
.db $08 $90 $07 $20 $F1 $DC $85 $1F
.db $80 $05 $20 $DF $DC $85 $1F $BF
.db $16 $BD $7E $C9 $08 $90 $07 $20
.db $16 $DD $85 $20 $80 $05 $20 $03
.db $DD $85 $20 $C2 $20 $A5 $1F $E2
.db $20 $20 $BE $DE $FA $28 $60 $08
.db $0A $C9 $14 $B0 $05 $18 $69 $02
.db $80 $05 $38 $E9 $09 $E6 $17 $28
.db $60 $08 $0A $C9 $0A $90 $05 $38
.db $E9 $09 $80 $05 $18 $69 $02 $E6
.db $17 $28 $60 $08 $3A $0A $C9 $14
.db $B0 $06 $18 $69 $02 $1A $80 $02
.db $A9 $17 $64 $17 $28 $60 $08 $3A
.db $0A $C9 $04 $90 $06 $38 $E9 $02
.db $1A $80 $02 $A9 $01 $64 $17 $28
.db $60 $08 $9C $97 $0D $9C $99 $0D
.db $9C $9B $0D $9C $9D $0D $E2 $20
.db $AD $87 $07 $38 $ED $60 $08 $8F
.db $15 $BD $7E $AD $88 $07 $38 $ED
.db $60 $08 $8F $17 $BD $7E $AD $89
.db $07 $38 $ED $61 $08 $8F $16 $BD
.db $7E $AD $8A $07 $38 $ED $61 $08
.db $8F $18 $BD $7E $20 $69 $DD $28
.db $60 $08 $20 $8A $DD $20 $87 $DE
.db $C2 $20 $A5 $19 $E2 $20 $A2 $00
.db $00 $20 $BE $DE $C2 $20 $A5 $1B
.db $E2 $20 $A2 $02 $00 $20 $BE $DE
.db $28 $60 $20 $94 $DD $90 $01 $60
.db $20 $28 $DE $60 $AF $16 $BD $7E
.db $38 $EF $18 $BD $7E $F0 $0E $10
.db $03 $49 $FF $1A $C9 $04 $90 $05
.db $20 $AF $DD $38 $60 $18 $60 $AD
.db $D3 $07 $F0 $3A $AF $16 $BD $7E
.db $C9 $08 $B0 $19 $A2 $00 $00 $AF
.db $16 $BD $7E $20 $E0 $DE $85 $1A
.db $A2 $02 $00 $AF $16 $BD $7E $20
.db $E0 $DE $85 $1C $60 $A2 $00 $00
.db $AF $16 $BD $7E $20 $F3 $DE $85
.db $1A $A2 $02 $00 $AF $16 $BD $7E
.db $20 $F3 $DE $85 $1C $60 $AF $18
.db $BD $7E $C9 $08 $B0 $19 $A2 $00
.db $00 $AF $18 $BD $7E $20 $E0 $DE
.db $85 $1A $A2 $02 $00 $AF $18 $BD
.db $7E $20 $E0 $DE $85 $1C $60 $A2
.db $00 $00 $AF $18 $BD $7E $20 $F3
.db $DE $85 $1A $A2 $02 $00 $AF $18
.db $BD $7E $20 $F3 $DE $85 $1C $60
.db $AF $16 $BD $7E $CF $18 $BD $7E
.db $B0 $10 $AF $16 $BD $7E $8D $F3
.db $0D $AF $18 $BD $7E $8D $F4 $0D
.db $80 $10 $AF $16 $BD $7E $8D $F4
.db $0D $AF $18 $BD $7E $8D $F3 $0D
.db $80 $00 $AD $F3 $0D $C9 $08 $B0
.db $17 $A2 $00 $00 $AD $F4 $0D $20
.db $E0 $DE $85 $1A $A2 $02 $00 $AD
.db $F4 $0D $20 $E0 $DE $85 $1C $60
.db $A2 $00 $00 $AD $F3 $0D $20 $F3
.db $DE $85 $1A $A2 $02 $00 $AD $F3
.db $0D $20 $F3 $DE $85 $1C $60 $AF
.db $15 $BD $7E $CF $17 $BD $7E $B0
.db $02 $90 $16 $A2 $02 $00 $AF $15
.db $BD $7E $20 $06 $DF $85 $1B $A2
.db $00 $00 $20 $1D $DF $85 $19 $80
.db $14 $A2 $00 $00 $AF $17 $BD $7E
.db $20 $06 $DF $85 $19 $A2 $02 $00
.db $20 $1D $DF $85 $1B $60 $08 $0A
.db $9D $97 $0D $EB $8D $02 $42 $A9
.db $40 $8D $03 $42 $EA $EA $AD $16
.db $42 $18 $7D $97 $0D $9D $97 $0D
.db $AD $17 $42 $9D $98 $0D $28 $60
.db $08 $3A $0A $C9 $14 $B0 $06 $18
.db $69 $04 $1A $80 $02 $A9 $17 $64
.db $17 $28 $60 $08 $3A $0A $C9 $04
.db $90 $06 $38 $E9 $04 $1A $80 $02
.db $A9 $01 $64 $17 $28 $60 $08 $0A
.db $C9 $0A $90 $0D $C9 $16 $B0 $05
.db $38 $E9 $09 $80 $06 $A9 $0D $80
.db $02 $A9 $02 $28 $60 $08 $18 $69
.db $09 $28 $60 $08 $C2 $30 $48 $AD
.db $D3 $07 $29 $FF $00 $AA $68 $E2
.db $20 $9D $87 $07 $EB $9D $89 $07
.db $C2 $20 $22 $91 $D2 $82 $A0 $20
.db $00 $A2 $00 $00 $BF $E0 $FF $94
.db $9F $10 $53 $7F $E8 $88 $E8 $88
.db $D0 $F2 $A9 $00 $82 $85 $01 $A9
.db $AD $A0 $85 $00 $22 $AD $8E $80
.db $E2 $20 $A9 $29 $8D $5D $07 $C2
.db $20 $A9 $80 $01 $8D $14 $0D $A0
.db $00 $00 $20 $8E $B5 $A9 $00 $82
.db $8D $CC $04 $A9 $43 $A0 $8D $CB
.db $04 $A9 $41 $00 $22 $FA $96 $80
.db $AD $CE $04 $8D $9F $08 $A9 $C7
.db $00 $22 $9E $B4 $80 $E2 $20 $A9
.db $01 $8D $DC $04 $C2 $20 $A9 $00
.db $00 $85 $50 $85 $52 $22 $4E $95
.db $80 $22 $F0 $98 $80 $22 $EA $87
.db $80 $AD $DC $04 $29 $FF $00 $D0
.db $E5 $A9 $00 $00 $8D $BE $04 $28
.db $6B $08 $E2 $20 $8D $F3 $0D $EB
.db $8D $F4 $0D $C2 $20 $22 $91 $D2
.db $82 $A0 $20 $00 $A2 $00 $00 $BF
.db $C9 $E3 $D0 $9F $10 $53 $7F $E8
.db $88 $E8 $88 $D0 $F2 $A9 $00 $82
.db $85 $01 $A9 $AD $A0 $85 $00 $22
.db $AD $8E $80 $20 $2E $E0 $A9 $00
.db $82 $8D $CC $04 $A9 $43 $A0 $8D
.db $CB $04 $E2 $20 $A9 $01 $8D $DC
.db $04 $C2 $20 $A9 $00 $00 $85 $50
.db $85 $52 $22 $4E $95 $80 $22 $F0
.db $98 $80 $22 $EA $87 $80 $AD $DC
.db $04 $29 $FF $00 $D0 $E5 $A9 $00
.db $00 $8D $BE $04 $28 $6B $08 $AD
.db $4C $07 $48 $29 $F0 $FF $8D $4C
.db $07 $20 $49 $E0 $22 $EA $87 $80
.db $68 $8D $4C $07 $20 $A0 $E0 $28
.db $60 $08 $A9 $00 $D0 $8F $72 $00
.db $00 $A9 $E9 $E3 $8F $71 $00 $00
.db $A9 $00 $00 $8F $76 $00 $00 $22
.db $18 $8F $80 $A9 $02 $00 $8F $FE
.db $BC $7E $A9 $00 $7E $8F $00 $BD
.db $7E $A9 $FE $40 $8F $FF $BC $7E
.db $A9 $00 $10 $8F $02 $BD $7E $E2
.db $20 $A9 $80 $8F $04 $BD $7E $C2
.db $20 $A9 $00 $70 $8F $05 $BD $7E
.db $A9 $00 $7E $85 $01 $A9 $FE $BC
.db $85 $00 $22 $AD $8E $80 $28 $60
.db $08 $A9 $00 $80 $85 $01 $A9 $45
.db $9E $85 $00 $22 $06 $96 $80 $A9
.db $00 $80 $85 $01 $A9 $2D $9E $85
.db $00 $22 $15 $96 $80 $A9 $00 $D0
.db $8F $72 $00 $00 $A9 $FF $DE $8F
.db $71 $00 $00 $A9 $00 $00 $8F $76
.db $00 $00 $22 $18 $8F $80 $A9 $00
.db $7E $8F $E7 $06 $00 $A9 $FE $40
.db $8F $E6 $06 $00 $20 $07 $E1 $A9
.db $00 $01 $8F $F8 $06 $00 $A9 $87
.db $00 $8F $EA $06 $00 $A0 $00 $00
.db $BB $22 $89 $96 $80 $E2 $20 $9E
.db $DC $04 $9C $FB $06 $28 $60 $08
.db $E2 $20 $AD $F4 $0D $38 $ED $61
.db $08 $30 $04 $C9 $0E $90 $07 $48
.db $A9 $01 $8D $FB $06 $68 $C2 $20
.db $29 $0F $00 $0A $0A $0A $0A $8F
.db $F0 $06 $00 $E2 $20 $AD $F3 $0D
.db $38 $ED $60 $08 $90 $0D $30 $04
.db $C9 $10 $90 $07 $48 $A9 $01 $8D
.db $FB $06 $68 $C2 $20 $29 $1F $00
.db $0A $0A $0A $0A $8F $EE $06 $00
.db $28 $60 $08 $C2 $30 $48 $AD $D3
.db $07 $29 $FF $00 $AA $68 $E2 $20
.db $9D $87 $07 $EB $9D $89 $07 $C2
.db $20 $A0 $20 $00 $A2 $00 $00 $BF
.db $E0 $FF $94 $9F $10 $53 $7F $E8
.db $88 $E8 $88 $D0 $F2 $A9 $00 $82
.db $85 $01 $A9 $AD $A0 $85 $00 $22
.db $AD $8E $80 $E2 $20 $A9 $44 $8D
.db $5F $07 $C2 $20 $A9 $80 $01 $8D
.db $14 $0D $A0 $00 $00 $20 $C9 $B6
.db $A9 $00 $00 $22 $FA $96 $80 $A5
.db $50 $85 $52 $48 $22 $4E $95 $80
.db $22 $F0 $98 $80 $22 $EA $87 $80
.db $68 $85 $50 $AD $91 $0D $89 $10
.db $00 $F0 $E4 $AD $95 $0D $29 $FF
.db $00 $C9 $02 $00 $D0 $D9 $A9 $00
.db $00 $8D $BE $04 $28 $6B $08 $C2
.db $30 $A0 $20 $00 $A2 $00 $00 $BF
.db $E0 $FF $94 $9F $10 $53 $7F $E8
.db $88 $E8 $88 $D0 $F2 $A9 $00 $82
.db $85 $01 $A9 $AD $A0 $85 $00 $22
.db $AD $8E $80 $E2 $20 $A9 $40 $8D
.db $5F $07 $8D $60 $07 $C2 $20 $A0
.db $00 $00 $20 $DC $E3 $A9 $00 $82
.db $8D $CC $04 $A9 $49 $A0 $8D $CB
.db $04 $20 $4C $E2 $A9 $01 $00 $A2
.db $00 $00 $22 $FA $96 $80 $64 $50
.db $A5 $50 $85 $52 $48 $22 $4E $95
.db $80 $22 $F0 $98 $80 $22 $EA $87
.db $80 $68 $85 $50 $AD $91 $0D $89
.db $02 $00 $F0 $E4 $A9 $00 $00 $8D
.db $BE $04 $28 $60 $08 $E2 $20 $AD
.db $D3 $07 $F0 $0E $AD $88 $07 $85
.db $17 $AD $8A $07 $85 $19 $E6 $15
.db $80 $0C $AD $87 $07 $85 $17 $AD
.db $89 $07 $85 $19 $E6 $15 $20 $37
.db $C7 $28 $60 $08 $AD $D3 $07 $29
.db $FF $00 $D0 $10 $A9 $00 $00 $8F
.db $11 $BD $7E $A9 $FF $FF $8F $13
.db $BD $7E $80 $0E $A9 $FF $FF $8F
.db $11 $BD $7E $A9 $00 $08 $8F $13
.db $BD $7E $28 $60 $08 $A2 $00 $00
.db $AD $D3 $07 $29 $FF $00 $D0 $21
.db $BF $00 $F8 $D0 $9F $E7 $BD $7E
.db $9F $F7 $BD $7E $BF $20 $F8 $D0
.db $9F $07 $BE $7E $9F $17 $BE $7E
.db $E8 $E8 $E0 $10 $00 $90 $E1 $80
.db $1F $BF $10 $F8 $D0 $9F $E7 $BD
.db $7E $9F $F7 $BD $7E $BF $30 $F8
.db $D0 $9F $07 $BE $7E $9F $17 $BE
.db $7E $E8 $E8 $E0 $10 $00 $90 $E1
.db $28 $60 $08 $DA $20 $2F $E3 $A9
.db $00 $00 $8F $11 $BD $7E $A9 $00
.db $08 $8F $13 $BD $7E $A9 $00 $82
.db $8D $CC $04 $A9 $43 $A0 $8D $CB
.db $04 $A9 $00 $82 $85 $01 $A9 $93
.db $B2 $85 $00 $22 $AD $8E $80 $20
.db $29 $DD $20 $2E $D3 $20 $A6 $D8
.db $22 $4E $95 $80 $22 $F0 $98 $80
.db $22 $EA $87 $80 $FA $28 $60 $A9
.db $60 $00 $22 $BB $B4 $80 $60 $08
.db $E2 $20 $9C $0D $0D $C2 $20 $22
.db $91 $D2 $82 $64 $52 $22 $4E $95
.db $80 $20 $A2 $B2 $20 $73 $E2 $20
.db $9C $E2 $20 $EA $B8 $A0 $20 $00
.db $20 $8E $B5 $20 $C6 $E3 $20 $D6
.db $E1 $A9 $00 $82 $85 $01 $A9 $93
.db $B2 $85 $00 $22 $AD $8E $80 $A9
.db $00 $00 $20 $5C $DC $20 $2E $D3
.db $20 $A6 $D8 $22 $4E $95 $80 $22
.db $F0 $98 $80 $22 $EA $87 $80 $A2
.db $06 $00 $DA $22 $4E $95 $80 $22
.db $F0 $98 $80 $22 $EA $87 $80 $FA
.db $CA $D0 $EF $20 $09 $E4 $20 $1A
.db $D6 $20 $D1 $E3 $22 $91 $D2 $82
.db $64 $52 $22 $4E $95 $80 $22 $DD
.db $A6 $80 $A9 $00 $82 $85 $01 $A9
.db $EA $D9 $85 $00 $22 $AD $8E $80
.db $22 $EA $87 $80 $28 $60 $AD $ED
.db $08 $29 $FF $00 $22 $7D $DB $83
.db $60 $AD $ED $08 $29 $FF $00 $22
.db $34 $DB $83 $60 $08 $8C $F3 $0D
.db $A2 $00 $00 $8E $80 $0D $20 $EA
.db $B8 $A9 $00 $01 $9D $14 $0D $A0
.db $00 $76 $A2 $00 $64 $A9 $00 $00
.db $20 $BA $CE $AC $F3 $0D $20 $6E
.db $D1 $8E $86 $0D $20 $90 $CF $28
.db $60 $08 $20 $32 $E4 $C2 $20 $AD
.db $94 $0D $29 $FF $00 $0A $AA $FC
.db $2E $E4 $E2 $20 $AD $94 $0D $1A
.db $8D $94 $0D $C9 $02 $D0 $E6 $C2
.db $20 $20 $8C $E4 $28 $60 $76 $E4
.db $8C $E4 $08 $E2 $20 $AD $D3 $07
.db $D0 $1E $AD $65 $07 $38 $ED $6F
.db $07 $85 $15 $38 $ED $A2 $07 $10
.db $07 $A5 $15 $8D $9D $0D $80 $24
.db $AD $A2 $07 $8D $9D $0D $80 $1C
.db $AD $66 $07 $38 $ED $70 $07 $85
.db $15 $38 $ED $A3 $07 $10 $07 $A5
.db $15 $8D $9E $0D $80 $06 $AD $A3
.db $07 $8D $9E $0D $28 $60 $22 $4E
.db $95 $80 $22 $F0 $98 $80 $22 $EA
.db $87 $80 $E2 $20 $20 $56 $BE $C2
.db $20 $B0 $EB $60 $A2 $08 $00 $DA
.db $22 $4E $95 $80 $22 $F0 $98 $80
.db $22 $EA $87 $80 $FA $CA $D0 $EF
.db $60 $08 $E2 $20 $A9 $01 $8F $E5
.db $BD $7E $C2 $20 $20 $E4 $E4 $A9
.db $00 $7F $85 $01 $A9 $20 $5D $85
.db $00 $20 $14 $E7 $20 $4D $E5 $90
.db $F8 $20 $C6 $E4 $28 $6B $08 $A2
.db $00 $00 $BF $0D $BD $7E $29 $FF
.db $00 $C9 $FF $00 $F0 $06 $DA $22
.db $7D $DB $83 $FA $E8 $E0 $04 $00
.db $90 $E8 $28 $60 $08 $A9 $00 $00
.db $A8 $AA $8E $80 $0D $8D $00 $0D
.db $8D $20 $0D $8D $40 $0D $8D $60
.db $0D $8D $16 $0D $8D $36 $0D $8D
.db $56 $0D $8D $76 $0D $8D $18 $0D
.db $8D $38 $0D $8D $58 $0D $8D $78
.db $0D $8F $1B $BD $7E $8F $1D $BD
.db $7E $8F $23 $BD $7E $8F $43 $BD
.db $7E $8F $63 $BD $7E $8F $83 $BD
.db $7E $E2 $20 $A9 $FF $8F $0D $BD
.db $7E $8F $0E $BD $7E $8F $0F $BD
.db $7E $8F $10 $BD $7E $A9 $C0 $1C
.db $03 $0D $1C $23 $0D $1C $43 $0D
.db $1C $63 $0D $28 $60 $08 $E0 $60
.db $00 $F0 $24 $C2 $20 $A9 $00 $7F
.db $85 $01 $A9 $20 $5D $85 $00 $8A
.db $18 $69 $20 $00 $AA $8E $80 $0D
.db $0A $0A $0A $0A $18 $65 $00 $85
.db $00 $BC $00 $0D $28 $18 $60 $28
.db $38 $60 $08 $DA $8E $80 $0D $20
.db $CC $E5 $20 $3A $ED $90 $06 $9B
.db $20 $6B $F0 $80 $3C $20 $63 $EB
.db $B0 $37 $BD $16 $0D $F0 $0C $38
.db $FD $18 $0D $B0 $29 $9D $16 $0D
.db $9E $18 $0D $BC $00 $0D $C0 $FF
.db $FF $F0 $1E $C8 $C8 $A9 $00 $7F
.db $85 $01 $A9 $20 $5D $85 $00 $8A
.db $0A $0A $0A $0A $18 $65 $00 $85
.db $00 $20 $14 $E7 $80 $03 $20 $66
.db $EC $FA $28 $6B $08 $DA $BF $21
.db $BD $7E $89 $20 $00 $F0 $4F $BD
.db $DB $04 $29 $FF $00 $D0 $47 $9B
.db $BF $1F $BD $7E $D0 $38 $A2 $00
.db $00 $E2 $20 $BF $1B $BD $7E $F0
.db $0A $E8 $E8 $BF $1B $BD $7E $F0
.db $02 $D0 $2E $DA $BB $C2 $20 $BD
.db $16 $0D $D0 $0E $BD $03 $0D $29
.db $C0 $00 $C9 $C0 $00 $F0 $03 $FA
.db $80 $17 $FA $E2 $20 $20 $2C $E6
.db $BB $20 $7D $E6 $80 $0B $20 $63
.db $E6 $20 $7D $E6 $80 $03 $20 $EF
.db $E6 $FA $28 $60 $08 $5A $5A $86
.db $25 $BB $C2 $20 $BD $11 $0D $29
.db $FF $00 $0A $AA $BF $84 $BE $80
.db $A6 $25 $9D $A1 $08 $68 $1A $9F
.db $1B $BD $7E $BB $E2 $20 $A5 $25
.db $4A $1A $9F $1F $BD $7E $20 $63
.db $E6 $A6 $25 $8A $22 $81 $B5 $80
.db $7A $28 $60 $08 $DA $C2 $20 $BF
.db $1F $BD $7E $3A $30 $0C $0A $48
.db $BD $CE $04 $29 $FF $00 $FA $9D
.db $A5 $08 $FA $28 $60 $08 $DA $C2
.db $30 $20 $CE $E6 $B0 $2D $BD $08
.db $0D $85 $15 $BD $09 $0D $85 $17
.db $64 $19 $22 $F7 $D8 $83 $A6 $19
.db $22 $3C $F6 $83 $C9 $02 $00 $F0
.db $17 $C9 $06 $00 $F0 $12 $C9 $0A
.db $00 $F0 $0D $C9 $0E $00 $F0 $08
.db $C9 $12 $00 $A9 $00 $00 $80 $03
.db $A9 $00 $20 $A8 $FA $DA $BF $1F
.db $BD $7E $3A $30 $06 $0A $AA $98
.db $9D $A9 $08 $FA $28 $60 $08 $BD
.db $11 $0D $29 $FF $00 $C9 $09 $00
.db $F0 $12 $C9 $0A $00 $F0 $0D $C9
.db $28 $00 $F0 $08 $C9 $2B $00 $F0
.db $03 $28 $18 $60 $28 $38 $60 $08
.db $DA $C2 $20 $BF $1F $BD $7E $F0
.db $18 $3A $0A $AA $A9 $00 $00 $9F
.db $1B $BD $7E $8A $22 $EC $B5 $80
.db $FA $DA $A9 $00 $00 $9F $1F $BD
.db $7E $FA $28 $60 $08 $B7 $00 $E2
.db $20 $C9 $00 $D0 $05 $20 $87 $E7
.db $80 $36 $C9 $01 $D0 $05 $20 $B8
.db $E7 $80 $2D $C9 $02 $D0 $05 $20
.db $F3 $E7 $80 $24 $C9 $03 $D0 $05
.db $20 $FC $E7 $80 $1B $C9 $04 $D0
.db $05 $20 $70 $E8 $80 $12 $C9 $05
.db $D0 $05 $20 $0E $E9 $80 $0F $C9
.db $FF $D0 $05 $20 $C9 $EA $80 $06
.db $C2 $20 $C8 $C8 $80 $B7 $C2 $20
.db $98 $9D $00 $0D $28 $60 $08 $BD
.db $16 $0D $D0 $19 $BD $03 $0D $29
.db $C0 $00 $C9 $C0 $00 $F0 $0E $A9
.db $20 $00 $49 $FF $FF $3F $21 $BD
.db $7E $9F $21 $BD $7E $28 $60 $08
.db $5A $DA $EB $89 $80 $F0 $0C $29
.db $7F $DA $C2 $20 $22 $F4 $A8 $87
.db $E2 $20 $FA $9D $12 $0D $85 $15
.db $C2 $20 $A5 $15 $29 $FF $00 $22
.db $12 $D9 $83 $FA $E2 $20 $AF $01
.db $44 $7F $9D $11 $0D $7A $28 $60
.db $08 $C2 $20 $EB $29 $FF $00 $F0
.db $09 $0A $0A $0A $0A $9D $1A $0D
.db $80 $03 $20 $CF $E7 $28 $60 $08
.db $AF $0B $44 $7F $29 $FF $00 $C9
.db $06 $00 $90 $0A $C9 $0E $00 $B0
.db $0A $A9 $00 $02 $80 $08 $A9 $00
.db $01 $80 $03 $A9 $00 $03 $9D $1A
.db $0D $28 $60 $08 $EB $29 $03 $9D
.db $0D $0D $28 $60 $08 $EB $48 $29
.db $07 $0A $0A $1D $03 $0D $9D $03
.db $0D $68 $48 $20 $19 $E8 $68 $C2
.db $20 $29 $03 $00 $20 $26 $E8 $28
.db $60 $08 $DA $29 $08 $0A $0A $9F
.db $21 $BD $7E $FA $28 $60 $08 $48
.db $C9 $01 $00 $F0 $18 $C9 $02 $00
.db $F0 $21 $C9 $03 $00 $F0 $2A $A9
.db $00 $60 $9D $1C $0D $A9 $00 $00
.db $9D $1E $0D $80 $28 $A9 $00 $68
.db $9D $1C $0D $A9 $00 $14 $9D $1E
.db $0D $80 $1A $A9 $00 $70 $9D $1C
.db $0D $A9 $00 $28 $9D $1E $0D $80
.db $0C $A9 $00 $78 $9D $1C $0D $A9
.db $00 $3C $9D $1E $0D $68 $28 $60
.db $08 $DA $5A $A9 $00 $EB $9D $0C
.db $0D $C2 $20 $C9 $FF $00 $F0 $05
.db $C9 $04 $00 $B0 $29 $20 $DD $E8
.db $9D $14 $0D $A5 $00 $48 $A5 $01
.db $48 $AD $4C $07 $48 $29 $F0 $FF
.db $8D $4C $07 $20 $5F $CD $22 $EA
.db $87 $80 $68 $8D $4C $07 $68 $85
.db $01 $68 $85 $00 $80 $2B $20 $DD
.db $E8 $18 $69 $80 $00 $9D $14 $0D
.db $A5 $00 $48 $A5 $01 $48 $AD $4C
.db $07 $48 $29 $F0 $FF $8D $4C $07
.db $20 $64 $CD $22 $EA $87 $80 $68
.db $8D $4C $07 $68 $85 $01 $68 $85
.db $00 $7A $FA $28 $60 $08 $AE $80
.db $0D $BD $03 $0D $4A $4A $29 $03
.db $00 $F0 $0F $C9 $01 $00 $F0 $0F
.db $C9 $02 $00 $F0 $0F $C9 $03 $00
.db $F0 $0F $A9 $80 $FF $80 $0D $A9
.db $00 $00 $80 $08 $A9 $80 $00 $80
.db $03 $A9 $00 $01 $28 $60 $08 $DA
.db $5A $C2 $20 $29 $00 $FF $85 $25
.db $F0 $09 $A9 $02 $00 $1D $02 $0D
.db $9D $02 $0D $E2 $20 $9E $0F $0D
.db $BD $03 $0D $29 $03 $F0 $09 $D0
.db $00 $C2 $20 $20 $5C $E9 $80 $05
.db $C2 $20 $20 $F7 $E9 $E2 $20 $9B
.db $20 $6B $F0 $9E $0F $0D $A9 $01
.db $1D $02 $0D $9D $02 $0D $A9 $01
.db $1D $03 $0D $29 $1F $9D $03 $0D
.db $7A $FA $28 $60 $08 $DA $E2 $20
.db $BD $11 $0D $C9 $29 $F0 $06 $C9
.db $2B $F0 $02 $D0 $11 $BD $02 $0D
.db $89 $01 $D0 $05 $20 $CE $E9 $80
.db $05 $A9 $35 $9D $0F $0D $BD $0C
.db $0D $C9 $FF $D0 $08 $BD $0D $0D
.db $DD $0E $0D $F0 $34 $C2 $20 $A5
.db $25 $9D $16 $0D $BD $CE $04 $EB
.db $9D $04 $0D $BD $D0 $04 $EB $9D
.db $06 $0D $20 $1B $D1 $C2 $20 $20
.db $74 $EE $E2 $20 $BD $0C $0D $C9
.db $FF $F0 $05 $9D $0E $0D $80 $06
.db $BD $0D $0D $9D $0E $0D $FA $28
.db $60 $C2 $20 $A5 $25 $18 $7D $16
.db $0D $9D $16 $0D $80 $DC $08 $DA
.db $A9 $01 $9D $DC $04 $A9 $39 $9D
.db $0F $0D $BD $11 $0D $C9 $2B $F0
.db $02 $D0 $11 $C2 $20 $A9 $63 $00
.db $48 $BD $CE $04 $8D $9F $08 $68
.db $22 $9E $B4 $80 $FA $28 $60 $08
.db $8E $80 $0D $A5 $25 $9D $16 $0D
.db $20 $8D $EA $E2 $20 $AF $10 $44
.db $7F $9D $09 $0D $AF $11 $44 $7F
.db $9D $08 $0D $BD $12 $0D $C9 $20
.db $10 $04 $A9 $00 $80 $02 $A9 $01
.db $9D $10 $0D $C2 $20 $AF $01 $44
.db $7F $20 $21 $CF $20 $79 $EA $20
.db $57 $EA $BF $CE $04 $00 $EB $9D
.db $04 $0D $BF $D0 $04 $00 $EB $9D
.db $06 $0D $E2 $20 $BD $CE $04 $9D
.db $0A $0D $BD $D0 $04 $9D $0B $0D
.db $A9 $FF $9D $0E $0D $28 $60 $08
.db $DA $E2 $20 $BD $03 $0D $89 $10
.db $D0 $04 $A9 $FF $80 $03 $BD $12
.db $0D $48 $8A $4A $4A $4A $4A $4A
.db $AA $68 $9F $0D $BD $7E $FA $28
.db $60 $E2 $20 $A9 $82 $9D $CD $04
.db $A9 $E5 $9D $CC $04 $A9 $7A $9D
.db $CB $04 $C2 $20 $60 $08 $DA $A9
.db $00 $00 $9F $1F $BD $7E $FA $DA
.db $BD $12 $0D $29 $FF $00 $22 $12
.db $D9 $83 $AE $80 $0D $E2 $20 $AF
.db $01 $44 $7F $9D $11 $0D $C9 $29
.db $F0 $06 $C9 $2B $F0 $02 $D0 $0E
.db $C2 $20 $BD $16 $0D $F0 $07 $E2
.db $20 $A9 $39 $9D $0F $0D $FA $28
.db $60 $08 $DA $C2 $20 $A8 $BD $03
.db $0D $29 $FF $00 $F0 $3A $98 $29
.db $00 $FF $C9 $00 $04 $D0 $05 $20
.db $9B $EE $80 $2C $4A $4A $E2 $20
.db $85 $27 $09 $20 $1D $03 $0D $9D
.db $03 $0D $A5 $27 $C9 $80 $D0 $08
.db $A9 $02 $1D $02 $0D $9D $02 $0D
.db $BD $11 $0D $C9 $29 $F0 $06 $C9
.db $2B $F0 $02 $D0 $03 $20 $16 $EB
.db $A0 $FF $FF $FA $28 $60 $08 $DA
.db $BD $02 $0D $89 $02 $F0 $41 $A9
.db $3D $9D $0F $0D $A9 $01 $9D $DC
.db $04 $C2 $20 $BD $CE $04 $EB $9D
.db $04 $0D $BD $D0 $04 $EB $9D $06
.db $0D $20 $1B $D1 $C2 $20 $20 $74
.db $EE $E2 $20 $BD $11 $0D $C9 $2B
.db $F0 $0D $C9 $29 $F0 $02 $D0 $10
.db $C2 $20 $A9 $69 $00 $80 $05 $C2
.db $20 $A9 $64 $00 $22 $BB $B4 $80
.db $FA $28 $60 $08 $DA $BD $DC $04
.db $29 $FF $00 $D0 $75 $BD $03 $0D
.db $89 $20 $00 $F0 $71 $C2 $20 $BD
.db $03 $0D $29 $C0 $00 $F0 $0F $C9
.db $40 $00 $F0 $2F $C9 $80 $00 $F0
.db $0F $C9 $C0 $00 $F0 $3A $20 $0C
.db $EC $E2 $20 $9E $02 $0D $80 $05
.db $20 $EA $EB $80 $45 $E2 $20 $9E
.db $03 $0D $A9 $20 $49 $FF $3F $21
.db $BD $7E $9F $21 $BD $7E $20 $EF
.db $E6 $80 $2F $A9 $20 $00 $49 $FF
.db $FF $3F $21 $BD $7E $9F $21 $BD
.db $7E $E2 $20 $20 $EF $E6 $C2 $20
.db $BD $CE $04 $20 $77 $D2 $9D $CE
.db $04 $BD $D0 $04 $20 $77 $D2 $9D
.db $D0 $04 $9E $00 $0D $E2 $20 $9E
.db $02 $0D $FA $28 $38 $60 $FA $28
.db $18 $60 $08 $20 $24 $EC $E2 $20
.db $A9 $FE $9D $D4 $04 $A9 $02 $9D
.db $D5 $04 $A9 $E0 $49 $FF $85 $15
.db $BD $03 $0D $25 $15 $09 $20 $9D
.db $03 $0D $28 $60 $08 $AE $80 $0D
.db $A9 $00 $00 $9D $BE $04 $E2 $20
.db $A9 $FE $9D $D4 $04 $A9 $02 $9D
.db $D5 $04 $28 $60 $08 $DA $BD $CE
.db $04 $20 $77 $D2 $9D $CE $04 $BD
.db $D0 $04 $20 $77 $D2 $9D $D0 $04
.db $BD $12 $0D $29 $FF $00 $22 $12
.db $D9 $83 $FA $E2 $20 $BD $09 $0D
.db $8F $10 $44 $7F $BD $08 $0D $8F
.db $11 $44 $7F $DA $BD $12 $0D $29
.db $FF $48 $22 $69 $D9 $83 $68 $22
.db $34 $DB $83 $FA $28 $60 $08 $BD
.db $0D $0D $29 $FF $00 $D0 $05 $20
.db $A2 $EC $80 $1C $C9 $01 $00 $D0
.db $05 $20 $C8 $EC $80 $12 $C9 $02
.db $00 $D0 $05 $20 $EE $EC $80 $08
.db $C9 $03 $00 $D0 $03 $20 $14 $ED
.db $20 $95 $EC $28 $60 $08 $BD $18
.db $0D $18 $7D $1A $0D $9D $18 $0D
.db $28 $60 $08 $BD $04 $0D $48 $38
.db $FD $1A $0D $9D $04 $0D $EB $29
.db $FF $00 $9D $CE $04 $29 $F0 $00
.db $85 $1D $68 $EB $29 $F0 $00 $C5
.db $1D $F0 $03 $20 $F4 $EF $28 $60
.db $08 $BD $04 $0D $48 $18 $7D $1A
.db $0D $9D $04 $0D $EB $29 $FF $00
.db $9D $CE $04 $29 $F0 $00 $85 $1D
.db $68 $EB $29 $F0 $00 $C5 $1D $F0
.db $03 $20 $F4 $EF $28 $60 $08 $BD
.db $06 $0D $48 $38 $FD $1A $0D $9D
.db $06 $0D $EB $29 $FF $00 $9D $D0
.db $04 $29 $F0 $00 $85 $1D $68 $EB
.db $29 $F0 $00 $C5 $1D $F0 $03 $20
.db $F4 $EF $28 $60 $08 $BD $06 $0D
.db $48 $18 $7D $1A $0D $9D $06 $0D
.db $EB $29 $FF $00 $9D $D0 $04 $29
.db $F0 $00 $85 $1D $68 $EB $29 $F0
.db $00 $C5 $1D $F0 $03 $20 $F4 $EF
.db $28 $60 $BD $03 $0D $29 $C0 $00
.db $C9 $C0 $00 $D0 $05 $20 $4F $ED
.db $18 $60 $9B $20 $B0 $ED $60 $08
.db $DA $86 $27 $AD $E8 $08 $29 $FF
.db $00 $C9 $08 $00 $D0 $0F $AD $E9
.db $08 $85 $19 $A5 $19 $29 $FF $00
.db $0A $AA $FC $70 $ED $FA $28 $60
.db $78 $ED $86 $ED $94 $ED $A2 $ED
.db $08 $E2 $20 $A6 $27 $BD $08 $0D
.db $3A $9D $08 $0D $28 $60 $08 $E2
.db $20 $A6 $27 $BD $08 $0D $1A $9D
.db $08 $0D $28 $60 $08 $E2 $20 $A6
.db $27 $BD $09 $0D $3A $9D $09 $0D
.db $28 $60 $08 $E2 $20 $A6 $27 $BD
.db $09 $0D $1A $9D $09 $0D $28 $60
.db $08 $DA $5A $84 $25 $86 $27 $AD
.db $E8 $08 $29 $FF $00 $F0 $40 $AD
.db $E9 $08 $85 $19 $A5 $19 $29 $FF
.db $00 $0A $AA $FC $04 $EE $A6 $27
.db $BD $CE $04 $EB $A6 $25 $9D $04
.db $0D $A6 $27 $BD $D0 $04 $EB $A6
.db $25 $9D $06 $0D $E2 $20 $A6 $27
.db $BD $CE $04 $A6 $25 $9D $0A $0D
.db $A6 $27 $BD $D0 $04 $A6 $25 $9D
.db $0B $0D $7A $FA $28 $38 $60 $7A
.db $FA $28 $18 $60 $0C $EE $26 $EE
.db $40 $EE $5A $EE $08 $AD $EA $08
.db $29 $FF $00 $85 $1D $A6 $27 $BD
.db $CE $04 $18 $6D $1D $00 $29 $FF
.db $01 $9D $CE $04 $28 $60 $08 $AD
.db $EA $08 $29 $FF $00 $85 $1D $A6
.db $27 $BD $CE $04 $38 $ED $1D $00
.db $29 $FF $01 $9D $CE $04 $28 $60
.db $08 $AD $EA $08 $29 $FF $00 $85
.db $1D $A6 $27 $BD $D0 $04 $18 $6D
.db $1D $00 $29 $FF $00 $9D $D0 $04
.db $28 $60 $08 $AD $EA $08 $29 $FF
.db $00 $85 $1D $A6 $27 $BD $D0 $04
.db $38 $ED $1D $00 $29 $FF $00 $9D
.db $D0 $04 $28 $60 $08 $5A $48 $BD
.db $CE $04 $20 $77 $D2 $9D $CE $04
.db $BD $D0 $04 $20 $77 $D2 $9D $D0
.db $04 $68 $22 $FA $96 $80 $E2 $20
.db $A9 $01 $1D $02 $0D $9D $02 $0D
.db $7A $28 $60 $08 $8E $80 $0D $E2
.db $20 $A9 $01 $9D $02 $0D $C2 $20
.db $20 $EF $E6 $20 $B0 $EE $28 $60
.db $08 $20 $DE $EE $20 $12 $EF $20
.db $75 $EF $20 $D1 $EE $A9 $00 $82
.db $85 $01 $A9 $B2 $D0 $85 $00 $22
.db $AD $8E $80 $22 $EA $87 $80 $28
.db $60 $A9 $00 $82 $9D $CC $04 $A9
.db $E6 $EF $9D $CB $04 $60 $08 $AE
.db $80 $0D $BD $03 $0D $4A $4A $29
.db $03 $00 $F0 $0F $C9 $01 $00 $F0
.db $0F $C9 $02 $00 $F0 $0F $C9 $03
.db $00 $F0 $0F $A9 $00 $00 $80 $0D
.db $A9 $80 $00 $80 $08 $A9 $00 $01
.db $80 $03 $A9 $80 $01 $9D $14 $0D
.db $28 $60 $08 $DA $A2 $00 $64 $A9
.db $00 $D0 $85 $01 $A9 $38 $C5 $85
.db $00 $AD $4C $07 $48 $29 $F0 $FF
.db $8D $4C $07 $22 $1F $D2 $82 $68
.db $8D $4C $07 $A9 $02 $00 $8F $FE
.db $BC $7E $A9 $00 $7E $8F $00 $BD
.db $7E $A9 $FE $A4 $8F $FF $BC $7E
.db $A9 $00 $04 $8F $02 $BD $7E $A9
.db $80 $00 $8F $04 $BD $7E $AE $80
.db $0D $BD $1C $0D $18 $69 $00 $06
.db $8F $05 $BD $7E $A9 $00 $7E $85
.db $01 $A9 $FE $BC $85 $00 $22 $AD
.db $8E $80 $FA $28 $60 $08 $A2 $00
.db $70 $86 $17 $A9 $00 $D0 $85 $01
.db $A9 $0C $C8 $85 $00 $22 $5A $D2
.db $82 $AE $80 $0D $20 $D1 $D1 $20
.db $A7 $CF $20 $F2 $CF $20 $A9 $EF
.db $A0 $03 $00 $AE $80 $0D $22 $89
.db $96 $80 $E2 $20 $9E $DC $04 $28
.db $60 $08 $DA $A9 $00 $94 $85 $01
.db $A9 $E0 $FF $85 $00 $A0 $00 $00
.db $20 $B9 $D0 $E2 $20 $AE $80 $0D
.db $D0 $04 $A9 $86 $80 $19 $E0 $20
.db $00 $D0 $04 $A9 $84 $80 $10 $E0
.db $40 $00 $D0 $04 $A9 $82 $80 $07
.db $E0 $60 $00 $D0 $02 $A9 $81 $8F
.db $EA $06 $00 $FA $28 $60 $08 $BD
.db $DA $04 $F0 $06 $9E $02 $0D $9E
.db $BE $04 $28 $6B $08 $BD $CE $04
.db $20 $77 $D2 $85 $17 $BD $0A $0D
.db $29 $FF $00 $20 $77 $D2 $85 $15
.db $A5 $17 $E2 $20 $20 $4B $F0 $18
.db $7D $08 $0D $9D $08 $0D $C2 $20
.db $BD $D0 $04 $20 $77 $D2 $85 $17
.db $BD $0B $0D $29 $FF $00 $20 $77
.db $D2 $85 $15 $A5 $17 $E2 $20 $20
.db $4B $F0 $18 $7D $09 $0D $9D $09
.db $0D $BD $CE $04 $9D $0A $0D $BD
.db $D0 $04 $9D $0B $0D $9B $20 $6B
.db $F0 $28 $60 $08 $38 $E5 $15 $B0
.db $0E $4A $4A $4A $4A $09 $F0 $C9
.db $F1 $D0 $0E $A9 $01 $80 $0A $4A
.db $4A $4A $4A $C9 $0F $D0 $02 $A9
.db $FF $28 $60 $08 $E2 $20 $BD $08
.db $0D $38 $ED $60 $08 $90 $1E $C9
.db $10 $B0 $1A $BD $09 $0D $38 $ED
.db $61 $08 $90 $11 $C9 $0F $B0 $0D
.db $BB $A9 $01 $49 $FF $3D $DB $04
.db $9D $DB $04 $80 $09 $BB $A9 $01
.db $1D $DB $04 $9D $DB $04 $28 $60
.db $FF
.ENDS
