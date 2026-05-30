.BANK 7
.ORG $0000

.SECTION "Bank7" FORCE

L878000:
	php
	sep #$20
	lda $0F9E
	beq L87800C
	plp
	jmp L8780F3

L87800C:
.INDEX 16
	lda #$87
	pha
	pea $802D
	rep #$20
	lda $0FAB
	ldy #$0003
	jsl L81D733
	tax
	lda.l (L878030 + 1),X
	sta $16
	lda.l L878030,X
	sta $15
	jml [$0015]
	plp
	rtl

L878030:
.dl L878033

L878033:
	sep #$20
	rep #$20
	lda $0FA9
	and #$00FF
	asl A
	tax
	sep #$20
	jsr (L878045,X)
	rtl

L878045:
.dw L87804B
.dw L8780B4
.dw L8780C6

L87804B:
.INDEX 16
	sep #$20
	lda $074A
	sta $0C17
	lda #$07
	sta $074A
	ldx #$0000
	stx $91
	stx $93
	inc $0FA9
	lda #$87
	ldx #$806C
	jsl L87816D
	rts

L87806C:
.db $03 $06 $0B $03 $08 $09 $09 $8C
.db $80 $B0 $80 $B0 $80 $B0 $80 $0A
.db $00 $02 $00 $00 $00 $0E $00 $1D
.db $04 $15 $0E $FC $00 $F4 $00 $01
.db $00 $80 $01 $00 $02 $00 $03 $04
.db $04 $FF $05 $50 $FF $02 $FF $FF
.db $00 $9D $01 $00 $02 $03 $03 $05
.db $04 $FF $05 $20 $02 $01 $05 $40
.db $FF $02 $FF $FF $FF $00 $FF $FF

L8780B4:
	sep #$20
	jsl L87817D
	lda $0FA8
	cmp #$FF
	bne L8780C5
	inc $0FA9
	rts

L8780C5:
	rts

L8780C6:
	sep #$20
	lda #$00
	sta $08DF
	lda $0C17
	sta $074A
	ldx #$0000
	stx $0FAB
	stx $0FA9
	rts

L8780DD:
	sep #$20
	ldx #$0000
	stx $0FAB
	ldx #$0000
	stx $0FA9
	lda #$01
	sta $0F9E
	jmp L878000

L8780F3:
;.ACCU 16
	rep #$20
	lda $0FA9
	and #$00FF
	sta $0FA9
	lda $0FA9
	and #$00FF
	asl
	tax
	jsr (L87810A,X)
	rtl

L87810A:
.dw L878110
.dw L878145
.dw L878157

L878110:
	sep #$20
	lda $074A
	sta $0C17
	lda #$07
	sta $074A
	lda #$01
	sta $0F9E
	ldx #$0000
	stx $91
	stx $93
	inc $0FA9
	rep #$20
	lda $0FAB
	asl
	clc
	adc $0FAB
	tax
	lda.l L8B8004,X
	pha
	lda.l (L8B8004 + 2),X
	plx
	jsl L87816D

L878145:
	sep #$20
	jsl L87817D
	lda $0FA8
	cmp #$FF
	bne L878156
	inc $0FA9
	rts

L878156:
	rts

L878157:
	sep #$20
	jsl L83FE6D
	lda $0C17
	sta $074A
	ldx #$0000
	stx $0FAB
	stx $0FA9
	rts

L87816D:
	php
	sep #$20
	sta $0FA4
	stx $0FA2
	lda #$00
	sta $0FA8
	plp
	rtl

L87817D:
	php
	sep #$20
	lda $0FA8
	cmp #$01
	bne L8781C9
	lda $0700
	beq L87818E
	plp
	rtl

L87818E:
	ldy #$0020
	ldx #$0000
L878194:
	lda.l L94D060,X
	sta $7F5310,X
	inx
	dey
	bne L878194
	rep #$20
	lda #bank100(L82A0AD)
	sta $01
	lda #L82A0AD
	sta $00
	sep #$20
	jsl L808EAD
	jsl L8087EA
	lda #$00
	sta $0FA8
	rep #$20
	inc $0FA2
	inc $0FA2
	inc $0FA2
	inc $0FA2
L8781C9:
	sep #$20
	lda $0FA4
	sta $11
	ldx $0FA2
	stx $0F
	rep #$20
	lda [$0F]
	and #$00FF
	asl
	tax
	jmp (TALK_EVENT_SCRIPT_CALLBACKS,X)

TALK_EVENT_SCRIPT_CALLBACKS:
.dw L878245
.dw L87826B
.dw L8782CD
.dw L87842B ; EV_MOVE_CAMERA
.dw L878536
.dw L878576
.dw L878590
.dw L8785D3
.dw L8785FB
.dw L878630
.dw L8786B8
.dw L8786F4
.dw L878722 ; EV_SET_UNIT_ENEMY
.dw L8787A7
.dw L87883E
.dw L87898E
.dw L8789A4
.dw L8799EB
.dw L879A01
.dw L879A17
.dw L879A3F
.dw L879A4B
.dw L879AF3
.dw L879B66
.dw L879BBE
.dw L879C41
.dw L879CF7
.dw L879D0D
.dw L879D6F
.dw L879DB0
.dw L879F86
.dw L87A012
.dw L87A061
.dw L87A077
.dw L87A0EA
.dw L87A105
.dw L87A15B
.dw L87A18C
.dw L87A1A0
.dw L87A1ED
.dw L87A672
.dw L87A6C0
.dw L87A6FA
.dw L87A765
.dw L87A7D9
.dw L87A861
.dw L87A86C
.dw L87A8B2
.dw L87A8C8
.dw L879D60

L878245:
	sep #$20
	lda $0ac7
	bne L878264
	stz $f7
	jsl L83FE6D
	rep #$20
	lda #bank100(L838848)
	sta $01
	lda #L838848
	sta $00
	sep #$20
	jsl L808EAD
L878264:
	lda #$ff
	sta $0fa8
	plp
	rtl

L87826B:
	sep #$20
	ldy #$0001
	lda [$0f],Y
	sta $0860
	iny
	lda [$0f],Y
	sta $0861
	rep #$20
	jsl L808CEA
	jsl L80884A
	lda $0860
	and #$00ff
	asl
	asl
	asl
	asl
	sta $89
	sta $8d
	sta $91
	lda $0861
	and #$00ff
	asl
	asl
	asl
	asl
	and #$00ff
	sta $8b
	sta $8f
	sta $93
	jsl L83F1D9
	jsl L8088A0
	jsl L808CB4
	stz $91
	stz $93
	lda $0860
	clc
	adc #$0608
	sta $085e
	inc $0fa2
	inc $0fa2
	inc $0fa2
	plp
	rtl

L8782CD:
	sep #$20
	lda $0f67
	beq L8782E1
	rep #$20
	inc $0fa2
	inc $0fa2
	inc $0fa2
	plp
	rtl

L8782E1:
	sep #$20
	lda $074C
	sta $0F65
	jsl L80AA09
	jsl L81E46B
	stz $0F68
	lda #$FF
	sta $0F69
	sta $0F6A
	rep #$20
	stz $50
	stz $52
	jsl L80954E
	jsl L81E475
	ldx #$00F0
	stx $50
	stx $52
	jsl L809374
	jsl L81E46B
	ldx #$0000
	stx $50
	stx $52
	ldy #$0020
	ldx #$0000
L878326:
	lda.l L94D080,X
	sta $7F5130,X
	inx
	dey
	inx
	dey
	bne L878326
	ldy #$0010
	ldx #$0000
L87833A:
	lda.l L94D0E0,X
	sta $7F5140,X
	inx
	dey
	inx
	dey
	bne L87833A
	lda #bank100(L878424)
	sta $01
	lda #L878424
	sta $00
	jsl L808EAD
	lda #bank100(L838848)
	sta $01
	lda #L838848
	sta $00
	jsl L808EAD
	lda #bank100(DIALOGUES_POINTER_TABLE)
	sta $01
	ldy #$0001
	lda [$0F],Y
	asl
	clc
	adc [$0F],Y
	clc
	adc #DIALOGUES_POINTER_TABLE
	sta $00
	lda [$00]
	pha
	lda [$00],Y
	sta $01
	pla
	sta $00
	jsl L87AC47
	jsl L81E475
L87838A:
	jsl L87B932
	jsl L87B45E
	jsl L87B468
	ldx #$00F0
	stx $50
	stx $52
	jsl L809374
	lda.l $000F09
	and #$00FF
	bne L87838A
	sep #$20
	stz $0FA1
	stz $F7
	rep #$20
	stz $91
	stz $93
	lda #bank100(L878412)
	sta $01
	lda #L878412
	sta $00
	jsl L808EAD
	jsl L8087EA
	lda #bank100(L87841B)
	sta $01
	lda #L87841B
	sta $00
	jsl L808EAD
	jsl L8087EA
	ldy #$0020
	ldx #$0000
L8783E1:
	lda.l L94D080,X
	sta $7F5130,X
	inx
	dey
	inx
	dey
	bne L8783E1
	lda #bank100(L878424)
	sta $01
	lda #L878424
	sta $00
	jsl L808EAD
	sep #$20
	lda $0F65
	sta $074C
	rep #$20
	inc $0FA2
	inc $0FA2
	inc $0FA2
	plp
	rtl

L878412:
.db $02 $00 $80 $94 $00 $10 $80 $00 $50
L87841B:
.db $02 $00 $90 $94 $00 $10 $80 $00 $58
L878424:
.db $01 $30 $51 $7F $20 $00 $00

L87842B:
	rep #$20
	ldy #$0001
	lda [$0f],Y
	and #$00ff
	sta $15
	lda $0860
	and #$00ff
	sta $17
	cmp $15
	beq L878475
	bcs L87845E
	ldy #$0003
	lda [$0f],Y
	and #$00ff
	pha
	lda $15
	sec
	sbc $17
	tay
	ldx #$0006
	pla
	jsl L8784E7
	bra L878475
L87845E:
	ldy #$0003
	lda [$0f],Y
	and #$00ff
	pha
	lda $17
	sec
	sbc $15
	tay
	ldx #$0004
	pla
	jsl L8784E7
L878475:
	ldy #$0002
	lda [$0f],Y
	and #$00ff
	sta $15
	lda $0861
	and #$00ff
	sta $17
	cmp $15
	beq L8784BD
	bcs L8784A6
	ldy #$0003
	lda [$0f],Y
	and #$00ff
	pha
	lda $15
	sec
	sbc $17
	tay
	ldx #$0002
	pla
	jsl L8784E7
	bra L8784BD
L8784A6:
	ldy #$0003
	lda [$0f],Y
	and #$00ff
	pha
	lda $17
	sec
	sbc $15
	tay
	ldx #$0000
	pla
	jsl L8784E7
L8784BD:
	sep #$20
	lda #$02
	sta $08ea
	lda #$00
	sta $08df
	rep #$20
	lda $0860
	clc
	adc #$0608
	sta $085e
	stz $91
	stz $93
	inc $0fa2
	inc $0fa2
	inc $0fa2
	inc $0fa2
	plp
	rtl

L8784E7:
	php
	sep #$20
	sta $08ea
	stx $0f84
	sty $0f86
	lda #$12
	sta $08df
L8784F8:
	ldx $0f84
	jmp (L8784FE,X)

L8784FE:
.dw L878506
.dw L87850C
.dw L878512
.dw L878518

L878506:
	jsl L83D7E9
	bra L87851C
L87850C:
	jsl L83D7F6
	bra L87851C
L878512:
	jsl L83D7CF
	bra L87851C
L878518:
	jsl L83D7DC
L87851C:
	jsl L83E061
	jsl L809374
	lda $08de
	and #$ff
	bne L87851C
	lda $0f86
	dec A
	sta $0f86
	bne L8784F8
	plp
	rtl

L878536:
	rep #$20
	ldy #$0001
	lda [$0f],Y
	jsl L87A8F4
	lda $7f4441,X
	and #$00ff
	sta $15
	lda $7f4440,X
	and #$00ff
	sta $17
	ldy #$0003
	lda [$0f],Y
	and #$00ff
	tax
	ldy #$0002
	lda [$0f],Y
	and #$00ff
	jsl L879EC9
	inc $0fa2
	inc $0fa2
	inc $0fa2
	inc $0fa2
	plp
	rtl

L878576:
	rep #$20
	inc $0f
	lda [$0f]
	jsl L83F201
	jsl L93D32F
	jsl L8087EA
	inc $0fa2
	inc $0fa2
	plp
	rtl

L878590:
	rep #$20
	ldy #$0002
	lda [$0f],Y
	jsl L82DFC1
	jsl L8087EA
	ldy #$0020
	ldx #$0000
L8785A5:
	lda.l L94D060,X
	sta $7f5310,X
	inx
	dey
	inx
	dey
	bne L8785A5
	lda #bank100(L82A0AD)
	sta $01
	lda #L82A0AD
	sta $00
	jsl L808EAD
	jsl L8087EA
	inc $0fa2
	inc $0fa2
	inc $0fa2
	inc $0fa2
	plp
	rtl

L8785D3:
	rep #$20
	ldy #$0001
	lda [$0f],Y
	and #$00ff
	asl
	tax
	lda.l L8785EF,X
	jsl L80B467
	inc $0fa2
	inc $0fa2
	plp
	rtl

L8785EF:
.db $2C $00 $7C $00 $BE $00
.db $2A $00 $2B $00 $2D $00

L8785FB:
	sep #$20
	lda $0f67
	beq L87860F
	rep #$20
	inc $0fa2
	inc $0fa2
	inc $0fa2
	plp
	rtl

L87860F:
	rep #$20
	ldy #$0001
	lda [$0f],Y
	cmp #$ffff
	beq L878621
	jsl L80AA3A
	bra L878625
L878621:
	jsl L83F312
L878625:
	inc $0fa2
	inc $0fa2
	inc $0fa2
	plp
	rtl

L878630:
	rep #$20
	lda #$0000
	jsr L87865E
	lda #$0001
	jsr L87865E
	lda #$0002
	jsr L87865E
	lda #$0003
	jsr L87865E
	lda $0fa2
	clc
	adc #$0009
	sta $0fa2
	jsl L8087EA
	jsl L82E4A1
	plp
	rtl

L87865E:
	php
	rep #$20
	and #$00ff
	pha
	asl
	asl
	asl
	asl
	asl
	asl
	asl
	asl
	asl
	tax
	pla
	sta $15
	inc A
	clc
	adc $15
	tay
	lda [$0f],Y
	sta $0c
	sep #$20
	lda $0fa4
	sta $0e
	rep #$20
L878684:
	lda [$0c]
	and #$00ff
	cmp #$0000
	beq L8786A3
	lda [$0c]
	cmp #$ffff
	beq L8786A1
L878695:
	sta $7f5d20,X
	inx
	inx
	inc $0c
	inc $0c
	bra L878684
L8786A1:
	plp
	rts

L8786A3:
	phx
	lda [$0c]
	xba
	and #$00ff
	jsl L87A8F4
	sep #$20
	xba
	lda [$0c]
	plx
	rep #$20
	bra L878695

L8786B8:
	sep #$20
	ldx #$0000
	lda $0d02,X
	bne L8786F2
	ldx #$0020
	lda $0d02,X
	bne L8786F2
	ldx #$0040
	lda $0d02,X
	bne L8786F2
	ldx #$0060
	lda $0d02,X
	bne L8786F2
	rep #$20
	ldy #$0001
	lda [$0f],Y
	and #$00ff
	bne L8786EA
	jsl L838851
L8786EA:
	inc $0fa2
	inc $0fa2
	plp
	rtl

L8786F2:
	plp
	rtl

L8786F4:
	rep #$20
	ldy #$0001
	lda [$0f],Y
	and #$00ff
	sta $0f84
L878701:
	lda $0f84
	jsl L87A8F4
	bcs L87871A
	pha
	jsl L83DB7D
	pla
	jsl L83D9C0
	jsl L8087EA
	bra L878701
L87871A:
	inc $0fa2
	inc $0fa2
	plp
	rtl

L878722:
	rep #$20
	jsl L87875B
	ldy #$0001
	lda [$0f],Y
	and #$00ff
	bne L878742
	sep #$20
	lda #$00
	sta.l ActiveUnit.EXP
	rep #$20
	jsl L83DBE5
	bra L878746
L878742:
	jsl L83DBED
L878746:
	pha
	jsl L83D969
	pla
	jsl L83DB34
	inc $0fa2
	inc $0fa2
	inc $0fa2
	plp
	rtl

L87875B:
	lda #bank100(L888000)
	sta $01
	lda $07CE
	and #$00FF
	asl A
	tax
	lda.l L888000,X
	sta $00
	ldy #$0002
	lda [$0F],Y
	and #$00FF
	sta $15
L878778:
	lda [$00]
	and #$00FF
	cmp #$00FF
	beq L878795
	cmp $15
	beq L878790
	lda $00
	clc
	adc #$0013
	sta $00
	bra L878778
L878790:
	jsl L83DCBE
	rtl
L878795:
	sep #$20
	pla
	pla
	pla
	rep #$20
	inc $0FA2
	inc $0FA2
	inc $0FA2
	plp
	rtl

L8787A7:
	rep #$20
	ldy #$0003
	lda [$0F],Y
	jsl L87A8F4
	pha
	lda $7F4440,X
	sta $0F84
	lda $7F4431,X
	and #$00FF
	cmp #$002B
	bne L8787EE
	lda #$001C
	sta $0A9B
	phx
	jsl L83FBA4
	plx
	sep #$20
	lda $7F4434,X
	lsr A
	sta $0F87
	lda $7F4433,X
	lsr A
	cmp #$00
	beq L8787EA
L8787E5:
	sta $0F86
	bra L8787F5
L8787EA:
	lda #$01
	bra L8787E5
L8787EE:
	lda $7F4433,X
	sta $0F86
L8787F5:
	rep #$20
	pla
	pha
	jsl L83DB7D
	jsl L8087EA
	pla
	jsl L83D9C0
	jsl L87875B
	sep #$20
	lda #$00
	sta $7F4405
	rep #$20
	lda $0F84
	sta $7F4410
	lda $0F86
	sta $7F4403
	jsl L83DBE5
	pha
	jsl L83D969
	pla
	jsl L83DB34
	inc $0FA2
	inc $0FA2
	inc $0FA2
	inc $0FA2
	plp
	rtl

L87883E:
	sep #$20
	ldy #$0001
	lda [$0F],Y
	and #$80
	beq L87884F
	lda [$0F],Y
	and #$7F
	bra L878855
L87884F:
	lda [$0F],Y
	jsl L87A8F4
L878855:
	jsl L83D912
	jsl L83AF1C
	ldy #$0002
	lda [$0F],Y
	and #$80
	beq L87886C
	lda [$0F],Y
	and #$7F
	bra L878872

L87886C:
	lda [$0F],Y
	jsl L87A8F4
L878872:
	jsl L83D912
	jsl L83AF3F
	jsl L83B0A3
	stz $0797
	stz $0798
	stz $0799
	stz $079A
	stz $079B
	stz $079F
	stz $079D
	stz $07A1
	stz $07A2
	stz $0795
	stz $0791
	stz $07A3
	stz $07BD
	stz $07BE
	stz $07BF
	ldy #$0003
	lda [$0F],Y
	sta $07B7
	iny
	lda [$0F],Y
	sta $07B9
	iny
	lda [$0F],Y
	sta $07BB
	iny
	lda [$0F],Y
	sta $07B8
	iny
	lda [$0F],Y
	sta $07BA
	iny
	lda [$0F],Y
	sta $07BC
	iny
	lda [$0F],Y
	sta $078F
	iny
	lda [$0F],Y
	sta $0790
	jsl L808CEA
	ldy #$0009
	lda [$0F],Y
	and #$01
	bne L8788EA
L8788EA:
	ldy #$0002
	lda [$0F],Y
	and #$80
	beq L8788F9
	lda [$0F],Y
	and #$7F
	bra L8788FF
L8788F9:
	lda [$0F],Y
	jsl L87A8F4
L8788FF:
	pha
	jsl L83DB7D
	pla
	jsl L83D9C0
	jsl L80AA09
	stz $91
	stz $93
	jsl L86CA9B
	jsl L80884A
	jsl L80A61A
	jsl L81D845
	jsl L83878B
	jsl L80AA09
	jsl L838820
	jsl L838851
	jsl L83899D
	jsl L838A73
	jsl L83F142
	sep #$20
	stz $074D
	stz $074F
	lda #$12
	sta $08DF
	rep #$20
	lda $0860
	and #$00FF
	asl A
	asl A
	asl A
	asl A
	sta $89
	sta $8D
	sta $91
	lda $0861
	and #$00FF
	asl A
	asl A
	asl A
	asl A
	sta $8B
	sta $8F
	sta $93
	jsl L83F312
	jsl L83F1D9
	jsl L80A9FC
	jsl L8088A0
	jsl L808CB4
	rep #$20
	lda $0FA2
	clc
	adc #$000B
	sta $0FA2
	plp
	rtl

L87898E:
	rep #$20
	lda #bank100(L8C8004)
	sta $0FA3
	lda $08F1
	asl A
	tax
	lda.l L8C8004,X
	sta $0FA2
	plp
	rtl

L8789A4:
	rep #$20
	jsl L81E46B
	jsl L80AA09
	lda #$0000
	sta $50
	sta $52
	jsl L80954E
	jsr L8798F9
	sep #$20
	lda $08ED
	jsl L83D912
	stz $0C13
	lda #$01
	sta $0C15
	rep #$20
	ldy #$0002
	lda [$0F],Y
	and #$00FF
	ldy #$0017
	jsl L81D733
	sta $0F9C
	jsl L8087EA
	ldy #$0002
	lda [$0F],Y
	and #$00FF
	asl A
	tax
	lda $90ED,X
	ldx #$0000
	jsl L81D10F
	jsl L8087EA
	lda $7F4417
	ldy #$6800
	jsl L81D12B
	ldy #$0001
	jsl L81D14D
	jsl L8087EA
	rep #$20
	ldy #$0002
	lda [$0F],Y
	and #$00FF
	asl A
	tax
	lda $90ED,X
	sep #$20
	sta $0F2D
	ldx #$0202
	stx $0F2E
	ldx #$0000
	stx $0F30
	rep #$20
	lda $7F4410
	xba
	sec
	sbc $0860
	asl A
	asl A
	asl A
	asl A
	sta $0AAC
	lda #$1010
	sta $0AAE
	sep #$20
	lda #$81
	sta $0F75
	lda #$03
	sta $0F78
	lda #$00
	sta $0F79
	lda #$01
	sta $0C1C
	ldx #$0000
	stx $0F76
	ldx #$0028
	stx $50
	stx $52
	jsl L87AEA9
	ldx $50
	stx $0BC7
	rep #$20
	jsr L87935C
	jsl L81E475
	jsl L87B0E5
	jsl L8087EA
	lda #$0000
	jsl L8795C7
L878A8F:
	lda #$0001
	jsl L8795EB
	lda #$0000
	jsl L879641
	bcs L878AA2
	jmp L878B6C

L878AA2:
	lda $0BB6
	and #$00FF
	cmp #$000C
	beq L878AB0
	jmp L878E00

L878AB0:
	lda $7F4400
	and #$00FF
	cmp #$0000
	beq L878AC1
	cmp #$0081
	bne L878AF2
L878AC1:
	lda #$0003
	jsl L8795EB
	lda #$0002
	jsl L879641
	bcs L878AD4
	jmp L878B48

L878AD4:
	lda $0BB6
	and #$00FF
	cmp #$000C
	beq L878AF0
	sep #$20
	lda #$01
	sta $0F95
	rep #$20
	ldx #$0C0A
	stx $0BBD
	bra L878B01

L878AF0:
	bra L878AF2

L878AF2:
	sep #$20
	stz $0F95
	rep #$20
	ldx #$0C0A
	stx $0BBD
	bra L878B01

L878B01:
	lda #$0002
	jsl L8795EB
L878B08:
	jsl L879140
	bcs L878B11
	jmp L878B48

L878B11:
	sep #$20
	lda #$28
	sta $0C04
	lda $0F96
	jsl L819770
	bcs L878B26
	stz $0C14
	bra L878B2B

L878B26:
	lda #$01
	sta $0C14
L878B2B:
	rep #$20
	jsr L87971B
	ldx #$0D0F
	stx $0C1B
	lda $0F96
	jsl L879394
	jsl L87B0E5
	jsl L8087EA
	jmp L878C40

L878B48:
	lda #$0004
	jsl L8795EB
	lda #$0001
	jsl L879641
	bcc L878B69
	lda $0BB6
	and #$00FF
	cmp #$000C
	bne L878B69
	jsr L8798F9
	jmp L878A8F

L878B69:
	jmp L878B6C

L878B6C:
	lda #$000D
	jsl L8795EB
L878B73:
	jsl L8087EA
	lda $0127
	bit #$0080
	bne L878B86
	bit #$8000
	bne L878B86
	bra L878B73

L878B86:
	rep #$20
	ldx #$0B01
	stx $0C1B
	ldx #$0608
	stx $0C1D
	lda #$0001
	jsl L81D35F
	jsl L81D4EE
	jsl L87B0E5
	jsl L809374
	lda $7F4410
	xba
	sec
	sbc $0860
	asl A
	asl A
	asl A
	asl A
	sta $0AAE
	lda #$1010
	sta $0AAC
	sep #$20
	lda #$01
	sta $0C1C
	lda #$00
	lda $0F79
	ldx #$0028
	stx $0F76
	jsl L87B016
	lda $08ED
	jsl L83D969
	stz $0C14
	stz $0C16
	stz $0F95
	stz $0FA1
	rep #$20
	sep #$20
	lda #$08
	eor #$FF
	and $F7
	sta $F7
	rep #$20
	jsl L81D853
	lda #$0000
	sta $50
	sta $52
	sta $0BC1
	jsl L80954E
	jsl L87B0E5
	jsl L8087EA
	lda #bank100(L878412)
	sta $01
	lda #L878412
	sta $00
	jsl L808EAD
	jsl L8087EA
	lda #bank100(L87841B)
	sta $01
	lda #L87841B
	sta $00
	jsl L808EAD
	jsl L83F312
	inc $0FA2
	inc $0FA2
	inc $0FA2
	inc $0FA2
	plp
	rtl

L878C40:
	rep #$20
	lda $0F96
	and #$00FF
	sta $0F4B
	lda $0F9A
	sta $0F4D
	lda #$0005
	jsl L8795EB
	lda #$0001
	jsl L879641
	bcc L878C6C
	lda $0BB6
	and #$00FF
	cmp #$000C
	beq L878C6F
L878C6C:
	jmp L878DBC

L878C6F:
	lda $07F1
	sec
	sbc $0F9A
	bcs L878C7B
	jmp L878DCA

L878C7B:
	lda $0F95
	and #$00FF
	beq L878C86
	jmp L878CA3

L878C86:
	jsl L8790F3
	bcs L878C97
	jsl L878CBE
	jsl L878D0B
	jmp L878DBC

L878C97:
	jsl L87AC1E
	bcc L878CA0
	jmp L878DD4

L878CA0:
	jmp L878D5E

L878CA3:
	jsl L87AC1E
	bcc L878CAC
	jmp L878DEA

L878CAC:
	jsl L878CBE
	jsl L878D0B
	lda #$000C
	jsl L8795EB
	jmp L878DBC

L878CBE:
	lda $0F95
	and #$00FF
	beq L878CDE
	lda $0F96
	jsl L87ABB4
	lda #$FFFF
	sta $0F96
	lda $07F1
	sec
	sbc $0F9A
	sta $07F1
	rtl

L878CDE:
	jsl L8790F3
	sep #$20
	lda $0F96
	sta [$0C],Y
	rep #$20
	tya
	clc
	adc #$0004
	tay
	lda $0F97
	sep #$20
	sta [$0C],Y
	rep #$20
	lda #$FFFF
	sta $0F96
	lda $07F1
	sec
	sbc $0F9A
	sta $07F1
	rtl

L878D0B:
	jsl L81E46B
	lda $0F9F
	sta $50
	sta $52
	jsl L8796FF
	lda $0C14
	and #$00FF
	jsl L81D1C0
	lda #$1212
	sta $0C1B
	lda $0C14
	and #$00FF
	jsl L81C8E3
	ldx #$0D0F
	stx $0C1B
	lda $0F96
	jsl L879394
	jsr L87935C
	lda $50
	sta $52
	sep #$20
	lda #$01
	sta $0C13
	rep #$20
	jsl L87B0E5
	jsl L81E475
	jsl L8087EA
	rtl

L878D5E:
	lda $7F4416
	and #$00FF
	sta $0F49
	lda #$0007
	jsl L8795EB
	lda $0F96
	jsl L87979F
	rep #$20
	lda $0BB6
	and #$00FF
	cmp #$000E
	bne L878D9C
	lda $0F96
L878D86:
	jsl L87ABD4
	lda #$FFFF
	sta $0F96
	lda $07F1
	sec
	sbc $0F9A
	sta $07F1
	bra L878DB5
L878D9C:
	jsr L8798C6
	pha
	sep #$20
	lda $0F97
	sta [$0C],Y
	dey
	dey
	dey
	dey
	lda $0F96
	sta [$0C],Y
	rep #$20
	pla
	bra L878D86
L878DB5:
	jsl L878D0B
	jmp L878DBC

L878DBC:
	lda #$0009
	jsl L8795EB
	jsl L879110
	jmp L878B08

L878DCA:
	lda #$0006
	jsl L8795EB
	jmp L878DBC

L878DD4:
	jsl L879110
	jsl L87B0E5
	jsl L8087EA
	lda #$0008
	jsl L8795EB
	jmp L878B48

L878DEA:
	jsl L879110
	jsl L87B0E5
	jsl L8087EA
	lda #$000B
	jsl L8795EB
	jmp L878B48

L878E00:
	lda $7F4400
	and #$00FF
	cmp #$0000
	beq L878E11
	cmp #$0081
	bne L878E23
L878E11:
	ldx #$0000
	lda $7F5030,X
	and #$00FF
	cmp #$00FF
	beq L878E23
	jmp L878E6C

L878E23:
	stz $15
	lda $7F4420
	and #$00FF
	cmp #$00FF
	beq L878E36
	lda #$FFFF
	sta $15
L878E36:
	lda $7F4428
	and #$00FF
	cmp #$00FF
	beq L878E58
	lda $15
	cmp #$FFFF
	beq L878E55
	sep #$20
	lda #$01
	sta $0C14
	rep #$20
	jmp L878EEF

L878E55:
	jmp L878E9A

L878E58:
	lda $15
	cmp #$FFFF
	bne L878E69
	sep #$20
	stz $0C14
	rep #$20
	jmp L878EEF

L878E69:
	jmp L878E90

L878E6C:
	lda #$0011
	jsl L8795EB
	lda #$0002
	jsl L879641
	bcs L878E7F
	jmp L878ECE

L878E7F:
	lda $0BB6
	and #$00FF
	cmp #$000C
	bne L878E8D
	jmp L878E23

L878E8D:
	jmp L878FC9

L878E90:
	lda #$0010
	jsl L8795EB
	jmp L878B48

L878E9A:
	lda #$000E
	jsl L8795EB
	lda #$0003
	jsl L879641
	bcs L878EAD
	jmp L878ECE

L878EAD:
	lda $0BB6
	and #$00FF
	cmp #$000C
	bne L878EC2
	sep #$20
	stz $0C14
	rep #$20
	jmp L878EEF

L878EC2:
	sep #$20
	lda #$01
	sta $0C14
	rep #$20
	jmp L878EEF

L878ECE:
	lda #$000F
	jsl L8795EB
	lda #$0001
	jsl L879641
	bcc L878EEC
	lda $0BB6
	and #$00FF
	cmp #$000C
	bne L878EEC
	jmp L878E00

L878EEC:
	jmp L878B48

L878EEF:
	lda #$0016
	jsl L8795EB
	jsr L87971B
	clc
L878EFA:
	jsl L87977A
	bcc L878F07
	jsl L879110
	jmp L878B48

L878F07:
	jsr L8798C6
	sta $0F84
	jsr L87953D
	bcc L878F1C
	lda #$0013
	jsl L8795EB
	sec
	bra L878EFA
L878F1C:
	lda $0BB5
	sta $0F86
	lda #$0014
	jsl L8795EB
	lda #$0001
	jsl L879641
	bcc L878F3D
	lda $0BB6
	and #$00FF
	cmp #$000E
	bne L878F40
L878F3D:
	jmp L878FB8

L878F40:
	lda $0F86
	sta $0BB5
	jsr L8798C6
	sep #$20
	lda #$FF
	sta [$0C],Y
	dey
	dey
	dey
	dey
	sta [$0C],Y
	jsl L81979B
	lda #$01
	sta $0C13
	rep #$20
	lda $0F9A
	jsl L87A8DE
	lda [$0C]
	and #$00FF
	cmp #$00FF
	beq L878F82
	jsr L87971B
	jsr L87935C
	jsl L87B0E5
	jsl L809374
	jmp L878FB8

L878F82:
	lda $7F4420
	and #$00FF
	cmp #$00FF
	bne L878FA9
	lda $7F4428
	and #$00FF
	cmp #$00FF
	bne L878FA9
	jsl L879110
	jsl L87B0E5
	jsl L809374
	jmp L878B48

L878FA9:
	jsl L879110
	jsl L87B0E5
	jsl L809374
	jmp L878ECE

L878FB8:
	lda #$0015
	jsl L8795EB
	lda $0F86
	sta $0BB5
	sec
	jmp L878EFA

L878FC9:
	lda #$0012
	jsl L8795EB
	jsl L81E46B
	lda $0BC7
	sta $50
	sta $52
	sep #$20
	lda #$06
	sta $0C07
	rep #$20
	ldx #$3187
	stx $0C08
	ldx #$0D10
	stx $0C05
	jsl L81D77B
	ldx $50
	stx $0BCD
	ldx #$0B10
	stx $0C1B
	ldx #$100F
	stx $0C1D
	jsl L81D4EE
	lda #$0D12
	sta $0C1B
	lda #$0006
	sta $0BA1
	stz $0BD1
	jsl L81AEB2
	lda #$0001
	jsl L81AFB0
	ldx #$0D10
	stx $0BB5
	stx $0BB3
	jsl L81D2C6
	jsl L809374
	jsl L81E475
	jsl L87B0E5
L87903C:
	jsl L879409
	bcc L879049
	jsl L879110
	jmp L878ECE

L879049:
	sta $0F84
	jsr L87953D
	bcc L87905B
	lda #$0013
	jsl L8795EB
	jmp L87903C

L87905B:
	ldx $0BB5
	stx $0BB7
	jmp L879064

L879064:
	lda #$0014
	jsl L8795EB
	lda #$0001
	jsl L879641
	bcc L87907F
	lda $0BB6
	and #$00FF
	cmp #$000E
	bne L879082
L87907F:
	jmp L8790D8

L879082:
	lda $0F9A
	jsl L87A8DE
	ldx $0BB7
	stx $0BB5
	stx $0BB3
	jsl L81B8DE
	lda #$FFFF
	sta $7F5030,X
	jsl L81D9C6
	sep #$20
	lda #$01
	sta $0C13
	rep #$20
	jsl L81E46B
	jsr L87935C
	jsl L81B83E
	jsl L81E475
	ldx #$0000
	lda $7F5030,X
	and #$00FF
	cmp #$00FF
	bne L8790CF
	jsl L879110
	jmp L878ECE

L8790CF:
	ldx $0BB5
	stx $0BB7
	jmp L8790D8

L8790D8:
	rep #$20
	lda #$0015
	jsl L8795EB
	ldx $0BB7
	stx $0BB5
	stx $0BB3
	jmp L87903C

L8790ED:
.db $6E $00 $70 $00 $71 $00

L8790F3:
	rep #$20
	jsl L8796FF
	ldy #$0000
L8790FC:
	lda [$0C],Y
	and #$00FF
	cmp #$00FF
	beq L87910E
	iny
	cpy #$0004
	bne L8790FC
	sec
	rtl

L87910E:
	clc
	rtl

L879110:
	rep #$20
	ldx #$0B01
	stx $0C1B
	ldx #$111E
	stx $0C1D
	lda #$0001
	jsl L81D35F
	jsl L81D4EE
	jsr L87935C
	ldx $0BC7
	stx $50
	stx $52
	jsl L80954E
	jsl L87B0E5
	jsl L8087EA
	rtl

L879140:
	rep #$20
	jsl L8087EA
	lda $0BC7
	sta $50
	sta $52
	jsl L81E46B
	lda $0F94
	and #$00FF
	asl A
	inc A
	inc A
	xba
	ora #$0016
	sta $0C1D
	lda #$0B09
	sta $0C1B
	lda #$0000
	jsl L81D35F
	jsl L81D4EE
	ldx $0BBD
	stx $0BB5
	stx $0BB3
	jsl L81D2C6
	sep #$20
	ldx #$0C0A
	stx $0C05
	ldx #$3189
	stx $0C08
	lda $0F94
	sta $0C07
	jsl L81D77B
	rep #$20
	ldx #$0318
	stx $0BD5
	stz $0BD1
L8791A2:
	ldy $0BD1
	lda $0B36,Y
	and #$00FF
	cmp #$00FE
	beq L879220
	ldy #$000E
	jsl L81D733
	tax
	phx
	lda.l (ITEMS_DATA + 8),X
	xba
	sep #$20
	ldy $0BD1
	lda $0B36,Y
	rep #$20
	pha
	jsl L83EE65
	bcs L8791D4
	ldy #$0000
	bra L8791D7
L8791D4:
	ldy #$0001
L8791D7:
	ldx $0BD5
	lda $0BD1
	sta $0B9E
	lda #$0040
	sta $0BA1
	pla
	jsl L81C736
	plx
	lda.l (ITEMS_DATA + 9),X
	jsr L879323
	lda $0BD5
	clc
	adc #$001A
	tax
	lda $0F9A
	jsl L81D686
	lda #$2500
	sta $7E3000,X
	lda #$2510
	sta $7E3040,X
	lda $0BD5
	clc
	adc #$0080
	sta $0BD5
	inc $0BD1
	brl L8791A2
L879220:
	jsl L81E475
	jsl L87B0E5
L879228:
	jsl L8087EA
	lda $0129
	and #$0800
	bne L879259
	lda $0129
	and #$0400
	bne L87927C
	lda $0127
	and #$8000
	bne L8792AA
	lda $0127
	and #$0080
	bne L8792AD
	lda $0127
	and #$0040
	bne L879256
	bra L879228
L879256:
	jmp L8792F5

L879259:
	dec $0BB6
	dec $0BB6
	lda $0BB6
	and #$00FF
	cmp #$000A
	bne L879299
	lda $0F94
	and #$00FF
	dec A
	asl A
	xba
	clc
	adc #$0C0A
	sta $0BB5
	bra L879299
L87927C:
	inc $0BB6
	inc $0BB6
	lda $0F94
	and #$00FF
	asl A
	xba
	clc
	adc #$0C0A
	cmp $0BB5
	bne L879299
	lda #$0C0A
	sta $0BB5
L879299:
	jsl L81D2C6
	lda $0BB5
	sta $0BB3
	jsl L87B0E5
	brl L879228
L8792AA:
	clc
	bra L8792E6
L8792AD:
	rep #$20
	lda $0BB5
	sta $0BBD
	xba
	and #$00FF
	sec
	sbc #$000C
	lsr A
	tax
	lda $0B36,X
	and #$00FF
	sta $0F96
	ldy #$000E
	jsl L81D733
	tax
	lda.l (ITEMS_DATA + 8),X
	xba
	and #$FF00
	ora $0F96
	sta $0F96
	lda.l (ITEMS_DATA + 9),X
	jsr L879323
	sec
L8792E6:
	php
	jsl L879110
	jsl L87B0E5
	jsl L8087EA
	plp
	rtl

L8792F5:
	rep #$20
	lda $0BB5
	sta $0BBD
	xba
	and #$00FF
	sec
	sbc #$000C
	lsr A
	tax
	lda $0B36,X
	and #$00FF
	sta $0F96
	lda #$0D12
	sta $0B30
	sta $0B32
	lda $0F96
	jsl L81E6A6
	jmp L879228

L879323:
	php
	rep #$20
	phx
	phy
	pha
	lda #$007B
	jsl L87AA6C
	bcs L879354
	pla
	ldx #$0002
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
	sta $0F9A
	bra L879358
L879354:
	pla
	sta $0F9A
L879358:
	ply
	plx
	plp
	rts

L87935C:
	php
	rep #$20
	ldx #$0B01
	stx $0C1B
	ldx #$0608
	stx $0C1D
	lda #$0000
	jsl L81D35F
	jsl L81D4EE
	ldx #$0304
	ldy #$BCCA
	lda #$0000
	jsl L81E21F
	lda $07F1
	beq L879392
	ldx #$0384
	lda $07F1
	jsl L81D5E1
L879392:
	plp
	rts

L879394:
	rep #$20
	ldx #$0410
	stx $0C1D
	lda #$0000
	jsl L81D35F
	jsl L81D4EE
	sep #$20
	lda $0C1B
	inc A
	sta $0C05
	lda $0C1C
	inc A
	sta $0C06
	ldx #$3189
	stx $0C08
	lda #$01
	sta $0C07
	jsl L81D77B
	rep #$20
	lda $0F96
	and #$00FF
	cmp #$00FF
	bne L8793D4
	rtl

L8793D4:
	jsl L83EE65
	bcs L8793DF
	ldy #$0000
	bra L8793E2
L8793DF:
	ldy #$0001
L8793E2:
	lda $0C1B
	clc
	adc #$0003
	sta $0C1B
	inc $0C1C
	jsl L81D5A8
	ldx $15
	lda #$0000
	sta $0B9E
	lda #$01C0
	sta $0BA1
	lda $0F96
	jsl L81C736
	rtl

L879409:
	rep #$20
	jsl L809374
	lda $0129
	ldx #$94AA
	bit #$0800
	bne L87944F
	ldx #$94D2
	bit #$0400
	bne L87944F
	ldx #$9454
	bit #$0200
	bne L87944F
	ldx #$946F
	bit #$0100
	bne L87944F
	lda $0127
	ldx #$950B
	bit #$8000
	bne L87944F
	ldx #$950F
	bit #$0080
	bne L87944F
	ldx #$9517
	bit #$0040
	bne L87944F
	bra L879409
L87944F:
	stx $15
	jmp ($0015)

L879454:
	sep #$20
	ldx $0BD1
	cpx #$0000
	bne L879460
	bra L879409
L879460:
	lda #$0D
	sta $0BB6
	jsl L81B8FF
	jsl L87B0E5
	bra L879409
	sep #$20
	lda $0BB6
	pha
	lda #$17
	sta $0BB6
	jsl L81B8DE
	cpx #$00FE
	beq L8794A3
	cpx #$0106
	beq L8794A3
	inx
	inx
	lda $7F5030,X
	cmp #$FF
	beq L8794A3
	pla
	lda #$0D
	sta $0BB6
	jsl L81B94B
	jsl L87B0E5
	brl L879409
L8794A3:
	pla
	sta $0BB6
	brl L879409
	sep #$20
	lda $0BB6
	cmp #$0D
	bne L8794C9
	ldx $0BD1
	cpx #$0000
	bne L8794BE
	brl L879409
L8794BE:
	jsl L81B8F6
	jsl L87B0E5
	brl L879409
L8794C9:
	dec $0BB6
	dec $0BB6
	jmp L87952A

L8794D2:
	rep #$20
	jsl L81B8DE
	cpx #$00FE
	beq L879508
	inx
	inx
	lda $7F5030,X
	and #$00FF
	cmp #$00FF
	beq L879508
	sep #$20
	lda $0BB6
	cmp #$17
	bne L8794FF
	jsl L81B942
	jsl L87B0E5
	jmp L879409

L8794FF:
	inc $0BB6
	inc $0BB6
	jmp L87952A

L879508:
	jmp L879409

L87950B:
	rep #$20
	sec
	rtl

L87950F:
	rep #$20
	jsl L81B8DE
	clc
	rtl

L879517:
	rep #$20
	lda #$0F03
	sta $0B30
	jsl L81B8DE
	jsl L81E6A6
	jmp L879409

L87952A:
	rep #$20
	jsl L81D2C6
	ldx $0BB5
	stx $0BB3
	jsl L87B0E5
	jmp L879409

L87953D:
	php
	rep #$20
	lda $0F84
	and #$00FF
	ldy #$000E
	jsl L81D733
	tax
	lda.l (ITEMS_DATA + 11),X
	and #$0080
	beq L87955A
	plp
	sec
	rts

L87955A:
	lda.l (ITEMS_DATA + 9),X
	tay
	lda.l (ITEMS_DATA + 8),X
	and #$00FF
	sta $17
	jsl L81D718
	sta $15
	lda #$000A
	jsl L81D733
	tay
	lda $17
	jsl L81D718
	sta $17
	lda $0F85
	and #$00FF
	ldy $15
	jsl L81D733
	sta $15
	lda $0F85
	and #$00FF
	ldy $17
	jsl L81D733
	tay
	lda #$000A
	jsl L81D718
	sta $17
	lda $15
	clc
	adc $17
	tay
	lda #$0002
	jsl L81D718
	cmp #$0000
	bne L8795B5
	inc A
L8795B5:
	sta $0F4D
	sta $0F9A
	lda $0F84
	and #$00FF
	sta $0F4B
	plp
	clc
	rts

L8795C7:
	rep #$20
	jsl L87961A
	jsl L87AC47
L8795D1:
	jsl L87B932
	jsl L87B468
	jsl L87B45E
	jsl L8087EA
	lda.l $000F09
	and #$00FF
	bne L8795D1
	rtl

L8795EB:
	jsl L87961A
L8795EF:
	lda $01
	sta $0F03
	lda $00
	sta $0F02
	jsl L87B903
	lda #$0001
	sta.l $000F09
	lda #$0010
	tsb $0F05
	jsl L8087EA
	lda #$0000
	sta $0125
	sta $0127
	jmp L8795D1

L87961A:
	rep #$20
	pha
	lda #bank100(L8E81C4)
	sta $01
	pla
	clc
	adc $0F9C
	sta $15
	asl A
	clc
	adc $15
	clc
	adc #L8E81C4
	sta $00
	lda [$00]
	pha
	ldy #$0001
	lda [$00],Y
	sta $01
	pla
	sta $00
	rtl

L879641:
	rep #$20
	pha
	lda $50
	sta $0BC1
	lda #$0006
	ldx #$000B
	ldy #$0000
	jsl L87A9A3
	ldx #$02D2
	ldy #$BCCA
	pla
	inc A
	jsl L81E21F
	sep #$20
	ldx #$0C09
	stx $0C05
	ldx #$3187
	stx $0C08
	lda #$02
	sta $0C07
	jsl L81D77B
	rep #$20
	ldx #$0C09
	stx $0BB3
	stx $0BB5
	jsl L81D2C6
	jsl L87B0E5
L87968C:
	jsl L8087EA
	lda $0127
	and #$0080
	bne L8796D8
	lda $0127
	and #$8000
	bne L8796DB
	lda $0129
	and #$0800
	bne L8796B2
	lda $0129
	and #$0400
	bne L8796B2
	bra L87968C
L8796B2:
	lda $0BB6
	and #$00FF
	cmp #$000E
	beq L8796C2
	ldx #$0E09
	bra L8796C5
L8796C2:
	ldx #$0C09
L8796C5:
	stx $0BB5
	jsl L81D2C6
	lda $0BB5
	sta $0BB3
	jsl L87B0E5
	bra L87968C
L8796D8:
	sec
	bra L8796DC
L8796DB:
	clc
L8796DC:
	php
	lda #$0006
	ldx #$000B
	ldy #$0001
	jsl L87A9A3
	lda $0BC1
	sta $50
	sta $52
	jsl L80954E
	jsl L87B0E5
	jsl L8087EA
	plp
	rtl

L8796FF:
	php
	rep #$20
	lda #$7F00
	sta $0D
	lda $0C14
	and #$00FF
	bne L879714
	lda #$4420
	bra L879717
L879714:
	lda #$4428
L879717:
	sta $0C
	plp
	rtl

L87971B:
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
	jsl L8087EA
	lda #$7C00
	sta $27
	ldy #$0000
	lda $0F96
	jsl L81D1F4
	sep #$20
	lda #$82
	sta $5C
	lda $0C14
	sta $0C16
	rep #$20
	lda #$0080
	sta $5E
	lda #$1101
	sta $0C1B
	jsl L8796FF
	lda $0C16
	and #$00FF
	jsl L81CB0B
	ldx $50
	stx $52
	rts

L87977A:
	bcs L879793
	rep #$20
	lda $0C14
	and #$00FF
	bne L87978B
	ldx #$1210
	bra L87978E
L87978B:
	ldx #$1310
L87978E:
	lda #$0000
	bra L8797A6
L879793:
	sep #$20
	jsr L8798E5
	ldx $0BB5
	lda #$00
	bra L8797A6
L87979F:
	sep #$20
	lda #$01
	ldx #$0E10
L8797A6:
	sep #$20
	sta $0F93
	stx $0BB3
	stx $0BB5
	rep #$20
	lda $0C14
	and #$00FF
	bne L8797C0
	lda #$1812
	bra L8797C3
L8797C0:
	lda #$1913
L8797C3:
	sta $0B9E
	jsl L81D2C6
	jsl L87B0E5
L8797CE:
	rep #$20
	jsl L8087EA
	lda $0129
	and #$0800
	bne L87981A
	lda $0129
	and #$0400
	bne L879847
	lda $0127
	and #$0040
	bne L8797FF
	lda $0127
	and #$0080
	bne L879802
	lda $0127
	and #$8000
	bne L879805
	jmp L8797CE

L8797FF:
	jmp L879878

L879802:
	jmp L8798AC

L879805:
	jmp L87989D

L879808:
	rep #$20
	jsl L81D2C6
	lda $0BB5
	sta $0BB3
	jsl L87B0E5
	bra L8797CE
L87981A:
	sep #$20
	lda $0BB6
	cmp #$0E
	beq L87983C
	cmp $0B9E
	beq L879830
	dec $0BB6
	dec $0BB6
	bra L879808
L879830:
	lda $0F93
	beq L87983C
	lda #$0E
	sta $0BB6
	bra L879808
L87983C:
	lda $0B9F
	sta $0BB6
	jsr L8798E5
	bra L879808
L879847:
	sep #$20
	lda $0BB6
	cmp #$0E
	beq L879864
	cmp $0B9F
	beq L87986C
	inc $0BB6
	inc $0BB6
	jsr L8798C6
	cmp #$FF
	beq L87986C
	bra L879808
L879864:
	lda $0B9E
	sta $0BB6
	bra L879808
L87986C:
	lda $0F93
	beq L879864
	lda #$0E
	sta $0BB6
	bra L879808

L879878:
	rep #$20
	lda $0BB6
	and #$00FF
	cmp #$000E
	bne L879898
	lda $0F96
L879888:
	ldx #$0F03
	stx $0B30
	stx $0B32
	jsl L81E6A6
	jmp L8797CE

L879898:
	jsr L8798C6
	bra L879888

L87989D:
	rep #$20
	lda $0F93
	and #$00FF
	bne L8798A9
	sec
	rtl

L8798A9:
	jmp L8797CE

L8798AC:
	sep #$20
	jsr L8798C6
	cmp #$3D
	beq L8798B9
	cmp #$3F
	bne L8798C2
L8798B9:
	lda #$08
	jsl L81E3E6
	brl L8797CE
L8798C2:
	rep #$20
	clc
	rtl

L8798C6:
	php
	sep #$20
	lda #$00
	xba
	lda $0BB6
	sec
	sbc $0B9E
	lsr A
	tay
	jsl L8796FF
	lda [$0C],Y
	xba
	iny
	iny
	iny
	iny
	lda [$0C],Y
	xba
	plp
	rts

L8798E5:
	php
	sep #$20
L8798E8:
	jsr L8798C6
	cmp #$FF
	bne L8798F7
	dec $0BB6
	dec $0BB6
	bra L8798E8
L8798F7:
	plp
	rts

L8798F9:
	php
	sep #$20
	lda $0FA4
	sta $11
	ldx $0FA2
	stx $0F
	rep #$20
	lda #bank100(L8C9041)
	sta $0D
	ldy #$0001
	lda [$0F],Y
	and #$00FF
	asl A
	asl A
	asl A
	clc
	adc #L8C9041
	sta $0C
	ldy #$0000
	sep #$20
L879923:
	lda [$0C],Y
	sta $0B36,Y
	cmp #$FE
	beq L87992F
	iny
	bra L879923
L87992F:
	tya
	sta $0F94
	ldy #$6400
	jsl L81E47D
	plp
	rts

L87993C:
	php
	rep #$20
	sta $0F96
	jsl L81E46B
	stz $50
	stz $52
	jsl L80954E
	jsl L81D853
	jsl L8087EA
	lda $7F4417
	ldy #$6800
	jsl L81D12B
	ldy #$0001
	jsl L81D14D
	jsl L8087EA
	sep #$20
	lda #$28
	sta $0C04
	lda $0F96
	jsl L819770
	bcs L879981
	stz $0C14
	bra L879986
L879981:
	lda #$01
	sta $0C14
L879986:
	rep #$20
	jsr L87971B
	ldx #$00CC
	ldy #$B522
	lda #$0001
	jsl L81E21F
	ldx #$0D0F
	stx $0C1B
	lda $0F96
	jsl L879394
	jsl L81E475
	jsl L87979F
	rep #$20
	lda $0BB6
	and #$00FF
	cmp #$000E
	bne L8799C3
	lda $0F96
	jsl L87ABD4
	bra L8799DE
L8799C3:
	jsr L8798C6
	pha
	sep #$20
	lda $0F97
	sta [$0C],Y
	dey
	dey
	dey
	dey
	lda $0F96
	sta [$0C],Y
	rep #$20
	pla
	jsl L87ABD4
L8799DE:
	lda #$002D
	jsl L80AA16
	jsl L8196BD
	plp
	rtl

L8799EB:
	rep #$20
	ldy #$0001
	lda [$0F],Y
	jsl L87AA28
	inc $0FA2
	inc $0FA2
	inc $0FA2
	plp
	rtl

L879A01:
	rep #$20
	ldy #$0001
	lda [$0F],Y
	jsl L87AA49
	inc $0FA2
	inc $0FA2
	inc $0FA2
	plp
	rtl

L879A17:
	rep #$20
	ldy #$0001
	lda [$0F],Y
	jsl L87A9FC
	bcs L879A35
	inc $0FA2
	inc $0FA2
	inc $0FA2
	inc $0FA2
	inc $0FA2
	plp
	rtl

L879A35:
	ldy #$0003
	lda [$0F],Y
	sta $0FA2
	plp
	rtl

L879A3F:
	rep #$20
	ldy #$0001
	lda [$0F],Y
	sta $0FA2
	plp
	rtl

L879A4B:
	rep #$20
	lda $08ED
	and #$00FF
	cmp #$0020
	bcs L879A7D
	ldy #$0003
	lda [$0F],Y
	and #$00FF
	bne L879A66
	jsl L879A96
L879A66:
	ldy #$0001
	lda [$0F],Y
	jsl L87A8DE
L879A6F:
	inc $0FA2
	inc $0FA2
	inc $0FA2
	inc $0FA2
	plp
	rtl

L879A7D:
	lda $08ED
	jsl L83D912
	ldy #$0001
	lda [$0F],Y
	jsl L93D714
	lda $08ED
	jsl L83D969
	bra L879A6F

L879A96:
	php
	rep #$20
	ldx #$028E
	ldy #$B522
	lda #$0017
	jsl L81E21F
	ldx #$0350
	ldy #$0001
	lda [$0F],Y
	jsl L81D686
	ldy #$0001
	lda [$0F],Y
	cmp #$03E8
	bcs L879AC9
	ldx #$028E
	ldy #$B522
	lda #$0018
	jsl L81E21F
L879AC9:
	rep #$20
	lda #$80B2
	sta $0876
	ldx #$1110
	stx $0F91
	ldx #$318B
	stx $0F8C
	ldx #$A0F1
	stx $0F8A
	ldx #$0080
	lda #$0007
	jsl L87AC7B
	jsl L8196BD
	plp
	rtl

L879AF3:
	rep #$20
	lda $08ED
	and #$00FF
	cmp #$00FF
	beq L879B05
	cmp #$0020
	bcs L879B18
L879B05:
	ldy #$0004
	lda [$0F],Y
	and #$00FF
	bne L879B18
	ldy #$0001
	lda [$0F],Y
	jsl L87ADAD
L879B18:
	ldy #$0003
	lda [$0F],Y
	and #$00FF
	cmp #$00FF
	beq L879B3E
	jsl L87A8F4
	pha
	jsl L83D912
	ldy #$0001
	lda [$0F],Y
	jsl L83FBBE
	pla
	jsl L83D969
	bra L879B55

L879B3E:
	lda $08ED
	jsl L83D912
	ldy #$0001
	lda [$0F],Y
	jsl L83FBBE
	lda $08ED
	jsl L83D969
L879B55:
	inc $0FA2
	inc $0FA2
	inc $0FA2
	inc $0FA2
	inc $0FA2
	plp
	rtl

L879B66:
	rep #$20
	lda #bank100(L8CA119)
	sta $01
	lda $07CE
	and #$00FF
	asl A
	tax
	lda.l L8CA119,X
	sta $00
	ldy #$0000
L879B7E:
	lda [$00],Y
	cmp #$FFFF
	beq L879BA7
	cmp $0856
	beq L879B92
	tya
	clc
	adc #$0006
	tay
	bra L879B7E
L879B92:
	sep #$20
	iny
	iny
	lda [$00],Y
	cmp $07D3
	beq L879BAE
	rep #$20
	tya
	clc
	adc #$0004
	tay
	bra L879B7E
L879BA7:
	rep #$20
	inc $0FA2
	plp
	rtl

L879BAE:
	rep #$20
	iny
	lda [$00],Y
	sta $0FA2
	iny
	lda [$00],Y
	sta $0FA3
	plp
	rtl

L879BBE:
	rep #$20
	lda #$0004
	sta $0F84
L879BC6:
	ldy $0F84
	lda [$0F],Y
	and #$00FF
	cmp #$00FF
	beq L879C08
	cmp #$00FE
	beq L879BF7
	ldx #$0000
L879BDB:
	ldy $0F84
	lda [$0F],Y
	jsl L87A8F7
	bcs L879BF2
	phx
	jsr L879C15
	pla
	clc
	adc #$0020
	tax
	bra L879BDB

L879BF2:
	inc $0F84
	bra L879BC6
L879BF7:
	lda #$0020
L879BFA:
	pha
	jsr L879C15
	pla
	inc A
	cmp #$0040
	bne L879BFA
	inc $0F84
L879C08:
	lda $0FA2
	clc
	adc $0F84
	inc A
	sta $0FA2
	plp
	rtl

L879C15:
	pha
	jsl L83D912
	ldy #$0001
	lda [$0F],Y
	and #$00FF
	sta $7F4418
	iny
	lda [$0F],Y
	and #$00FF
	sta $7F441A
	iny
	lda [$0F],Y
	and #$00FF
	xba
	sta $7F441B
	pla
	jsl L83D969
	rts

L879C41:
	rep #$20
	lda #bank100(L8B802E)
	sta $01
	lda $07CE
	and #$00FF
	asl A
	tax
	lda.l L8B802E,X
	sta $00
	lda $08ED
	and #$00FF
	cmp #$00FF
	beq L879CB6
	asl A
	asl A
	asl A
	asl A
	asl A
	sta $0F84
L879C69:
	rep #$20
	ldy #$0000
	lda [$00],Y
	and #$00FF
	sta $15
	ldy #$0001
	lda [$00],Y
	sta $17
	ldy #$0003
	lda [$00],Y
	sta $19
	sep #$20
	lda $15
	cmp #$FF
	beq L879CB6
	cmp #$FE
	beq L879CC9
	cmp #$FD
	beq L879CA4
	cmp #$FC
	beq L879CAD
	ldx $0F84
	lda $7F4430,X
	cmp $15
	beq L879CC9
	bra L879CBD

L879CA4:
	lda $08ED
	cmp #$20
	bcs L879CC9
	bra L879CBD
L879CAD:
	lda $08ED
	cmp #$20
	bcc L879CC9
	bra L879CBD
L879CB6:
	rep #$20
	inc $0FA2
	plp
	rtl

L879CBD:
	rep #$20
	lda $00
	clc
	adc #$0008
	sta $00
	bra L879C69
L879CC9:
	sep #$20
	lda $08EE
	cmp $17
	bcc L879CBD
	cmp $18
	beq L879CD8
	bcs L879CBD
L879CD8:
	lda $08EF
	cmp $19
	bcc L879CBD
	cmp $1A
	beq L879CE5
	bcs L879CBD
L879CE5:
	rep #$20
	ldy #$0005
	lda [$00],Y
	sta $0FA2
	iny
	lda [$00],Y
	sta $0FA3
	plp
	rtl

L879CF7:
	rep #$20
	lda #bank100(L8B8A93)
	sta $0FA3
	lda $08F1
	asl A
	tax
	lda.l L8B8A93,X
	sta $0FA2
	plp
	rtl

L879D0D:
	rep #$20
	lda #bank100(L8B85E0)
	sta $01
	sta $0FA6
	lda $07CE
	and #$00FF
	asl A
	tax
	lda.l L8B85E0,X
	sta $00
	sta $0FA5
L879D28:
	rep #$20
	lda $0FA6
	sta $01
	lda $0FA5
	sta $00
	ldy #$0000
L879D37:
	lda [$00],Y
	and #$00FF
	cmp #$00FF
	beq L879D5D
	jsl L87A8F4
	bcs L879D4F
	tya
	clc
	adc #$0004
	tay
	bra L879D37
L879D4F:
	iny
	lda [$00],Y
	sta $0FA2
	iny
	lda [$00],Y
	sta $0FA3
	plp
	rtl

L879D5D:
	jmp L878245

L879D60:
	rep #$20
	lda $0FA5
	clc
	adc #$0004
	sta $0FA5
	jmp L879D28

L879D6F:
	sep #$20
	ldy #$0001
	lda [$0F],Y
	xba
	lda #$05
	rep #$20
	sta.l WRMPYA
	nop
	nop
	nop
	lda.l RDMPYL
	sep #$20
	rep #$20
	tax
	iny
	lda [$0F],Y
	sta $7F5CD0,X
	iny
	iny
	inx
	inx
	lda [$0F],Y
	sta $7F5CD0,X
	iny
	inx
	lda [$0F],Y
	sta $7F5CD0,X
	lda $0FA2
	clc
	adc #$0007
	sta $0FA2
	plp
	rtl

L879DB0:
	rep #$20
	lda #$7F00
	sta $10
	lda #$5CD0
	sta $0F
	stz $0F84
	stz $0F86
L879DC2:
	ldy $0F84
	cpy #$0032
	bne L879DCD
	jmp L879E92

L879DCD:
	lda [$0F],Y
	and #$00FF
	bne L879DD7
	jmp L879E85

L879DD7:
	jsl L83DBED
	bcc L879DE0
	jmp L879E85

L879DE0:
	ldy $0F84
	iny
	lda [$0F],Y
	and #$00FF
	sta $15
	lda #$0064
	sta $23
	jsl L83F684
	cmp $15
	bcc L879DFB
	jmp L879E85

L879DFB:
	jsr L879E99
	jsl L879EAE
	bcc L879E07
	jmp L879E85

L879E07:
	lda $0F86
	bne L879E0F
	jsr L879F12
L879E0F:
	jsr L879E99
	lda #$0004
	ldx #$0012
	jsl L879EC9
	lda #bank100(L889D6D)
	sta $01
	lda $0F84
	clc
	adc #$0004
	tay
	lda [$0F],Y
	xba
	sep #$20
	lda #$13
	rep #$20
	sta.l WRMPYA
	nop
	nop
	nop
	lda.l RDMPYL
	sep #$20
	rep #$20
	clc
	adc #L889D6D
	sta $00
	jsl L83DCBE
	lda $0F84
	clc
	adc #$0002
	tay
	lda [$0F],Y
	xba
	sta $7F4410
	jsr L879E99
	jsl L83D8F7
	ldx $19
	lda $7F2800,X
	sta $7F4406
	jsl L83DBED
	pha
	jsl L83D969
	pla
	jsl L83DB34
	jsl L8087EA
	ldy $0F84
	lda [$0F],Y
	dec A
	sta [$0F],Y
L879E85:
	lda $0F84
	clc
	adc #$0005
	sta $0F84
	jmp L879DC2

L879E92:
	stz $17
	inc $0FA2
	plp
	rtl

L879E99:
	ldy $0F84
	iny
	iny
	lda [$0F],Y
	and #$00FF
	sta $15
	iny
	lda [$0F],Y
	and #$00FF
	sta $17
	rts

L879EAE:
	php
	rep #$20
	stz $19
	jsl L83D8F7
	ldx $19
	lda $7F2800,X
	sec
	sbc #$0400
	bcs L879EC6
	plp
	clc
	rtl

L879EC6:
	plp
	sec
	rtl

L879EC9:
	php
	sep #$20
	phx
	ldx #$0000
	stx $50
	stx $52
	sta $08EA
	plx
	txa
	sta $08DF
	lda $15
	sta $08E6
	lda $17
	sta $08E7
L879EE6:
	sep #$20
	ldx #$0000
	stx $50
	stx $52
	jsl L80954E
	phb
	lda #$83
	pha
	plb
	jsl L83E061
	jsl L83E06A
	plb
	bcs L879F09
	jsl L8087EA
	bra L879EE6
L879F09:
	ldx #$0000
	stx $50
	stx $52
	plp
	rtl

L879F12:
	php
	rep #$20
	lda #bank100(L889D6D)
	sta $01
	lda $0F84
	clc
	adc #$0004
	tay
	lda [$0F],Y
	xba
	sep #$20
	lda #$13
	rep #$20
	sta.l WRMPYA
	nop
	nop
	nop
	lda.l RDMPYL
	sep #$20
	rep #$20
	clc
	adc #L889D6D
	sta $00
	ldy #$0003
	lda [$00],Y
	sep #$20
	sta $0F81
	ldx #$D662
	stx $0F7D
	lda #$08
	sta $0F7C
	ldx #$B522
	stx $0F7F
	lda #$11
	sta $0F82
	lda #$80
	sta $0F83
	ldx #$0001
	stx $0F86
	rep #$20
	lda #bank100(L8BD662)
	sta $01
	lda $0F81
	and #$00FF
	asl A
	tax
	lda.l L8BD662,X
	sta $00
	jsl L87B101
	plp
	rts

L879F86:
	rep #$20
	lda #bank100(L8B993D)
	sta $01
	lda $07CE
	and #$00FF
	asl A
	tax
	lda.l L8B993D,X
	sta $00
	lda [$00]
	and #$00FF
	cmp #$00FF
	beq L87A00B
	ldy #$0002
	lda [$00],Y
	and #$00FF
	beq L879FD9
	cmp #$0001
	beq L879FD1
	jsl L83DBE5
	bcc L879FBD
	jsr L879FCD
L879FBD:
	sta $15
	jsl L83DBED
	bcc L879FC8
	jsr L879FCD
L879FC8:
	clc
	adc $15
	bra L879FE4
L879FCD:
	lda #$0020
	rts

L879FD1:
	jsl L83DBED
	bcs L879FE1
	bra L879FE4
L879FD9:
	jsl L83DBE5
	bcs L879FE1
	bra L879FE4
L879FE1:
	lda #$0020
L879FE4:
	sta $0F84
	sep #$20
	ldy #$0000
	lda $0F84
	cmp [$00],Y
	bcc L87A00B
	iny
	cmp [$00],Y
	beq L879FFA
	bcs L87A00B
L879FFA:
	rep #$20
	iny
	iny
	lda [$00],Y
	sta $0FA2
	iny
	lda [$00],Y
	sta $0FA3
	plp
	rtl

L87A00B:
	rep #$20
	inc $0FA2
	plp
	rtl

L87A012:
	rep #$20
	ldy #$0002
	lda [$0F],Y
	and #$00FF
	beq L87A02E
	ldx #$0400
	ldy #$0001
	lda [$0F],Y
	jsl L87A8F4
	bcs L87A050
	bra L87A046
L87A02E:
	ldy #$0001
	lda [$0F],Y
	jsl L87A923
	bcc L87A046
	ldy #$0001
	lda [$0F],Y
	jsl L87A8F4
	bcc L87A046
	bra L87A050
L87A046:
	ldy #$0003
	lda [$0F],Y
	sta $0FA2
	plp
	rtl

L87A050:
	inc $0FA2
	inc $0FA2
	inc $0FA2
	inc $0FA2
	inc $0FA2
	plp
	rtl

L87A061:
	rep #$20
	lda #bank100(L8B91F7)
	sta $0FA3
	lda $08F1
	asl A
	tax
	lda.l L8B91F7,X
	sta $0FA2
	plp
	rtl

L87A077:
	rep #$20
	ldy #$0002
	lda [$0F],Y
	and #$00FF
	sta $15
	ldy #$0003
	lda [$0F],Y
	and #$00FF
	sta $17
	jsl L879EAE
	bcc L87A0BD
	sta $15
	ldy #$0001
	lda [$0F],Y
	and #$00FF
	beq L87A0DE
	lda $15
	jsl L83D912
	ldy #$0004
	lda [$0F],Y
	sta $7F4406
	lda $15
	jsl L83D969
	ldx $19
	ldy #$0004
	lda [$0F],Y
	bra L87A0C8
L87A0BD:
	ldy #$0004
	lda [$0F],Y
	ldx $19
	sta $7F2800,X
L87A0C8:
	sta $15
	ldy #$0001
	lda [$0F],Y
	and #$0002
	bne L87A0DA
	lda $15
	jsl L83FF49
L87A0DA:
	jsl L83F1D9
L87A0DE:
	lda $0FA2
	clc
	adc #$0006
	sta $0FA2
	plp
	rtl

L87A0EA:
	sep #$20
	stz $0AB9
	rep #$20
	ldy #$0001
	lda [$0F],Y
	and #$00FF
	jsl L93DB8F
	inc $0FA2
	inc $0FA2
	plp
	rtl

L87A105:
	rep #$20
	lda #$0000
	sta $0F84
	ldx #$0000
	lda $0F84
	jsl L81EEC2
	jsl L87B0E5
L87A11B:
	jsl L8087EA
	lda $0129
	bit #$0800
	bne L87A12E
	bit #$0400
	bne L87A141
	bra L87A11B
L87A12E:
	dec $0F84
	lda $0F84
	ldx #$0000
	jsl L81EEC2
	jsl L87B0E5
	bra L87A11B
L87A141:
	inc $0F84
	lda $0F84
	ldx #$0000
	jsl L81EEC2
	jsl L87B0E5
	bra L87A11B
	rep #$20
	inc $0FA2
	plp
	rtl

L87A15B:
	rep #$20
	ldy #$0001
	lda [$0F],Y
	cmp #$FFFF
	beq L87A16A
	sta $0856
L87A16A:
	ldy #$0003
	lda [$0F],Y
	and #$00FF
	cmp #$00FF
	beq L87A17C
	sep #$20
	sta $07D3
L87A17C:
	rep #$20
	inc $0FA2
	inc $0FA2
	inc $0FA2
	inc $0FA2
	plp
	rtl

L87A18C:
	sep #$20
	ldy #$0001
	lda [$0F],Y
	sta $074C
	rep #$20
	inc $0FA2
	inc $0FA2
	plp
	rtl

L87A1A0:
	rep #$20
	ldy #$0002
	lda [$0F],Y
	sta $0C1B
	jsl L81D5A8
	ldy #$0001
	lda [$0F],Y
	ldx $15
	ldy #$F936
	jsl L81E21F
	ldy #$0004
	lda [$0F],Y
	and #$00FF
	sta $0B9E
	jsl L87B0E5
L87A1CB:
	jsl L809374
	dec $0B9E
	bne L87A1CB
	jsl L81D853
	jsl L87B0E5
	inc $0FA2
	inc $0FA2
	inc $0FA2
	inc $0FA2
	inc $0FA2
	plp
	rtl

L87A1ED:
	rep #$20
	jsl L81E46B
	jsl L80AA09
	ldx #$0000
	stx $50
	stx $52
	jsl L80954E
	lda $08ED
	jsl L83D912
	jsl L81D901
	lda #$0000
	ldy #$0020
	ldx #$0000
L87A216:
	sta $7F4400,X
	inx
	dey
	inx
	dey
	bne L87A216
	lda #$FFFF
	ldy #$0010
	ldx #$0000
L87A229:
	sta $7F4420,X
	inx
	dey
	inx
	dey
	bne L87A229
	sep #$20
	lda $0B6F
	sta $7F4401
	lda $0B70
	sta $7F4402
	lda #$58
	sta $7F4416
	lda #$45
	sta $7F4400
	lda #$74
	sta $7F4417
	jsl L83DD66
	lda $7F4409
	clc
	adc $7F440C
	clc
	adc $7F440A
	clc
	adc $7F440B
	clc
	adc $7F440D
	sta $15
	lda $0B77
	clc
	adc $0B7A
	clc
	adc $0B78
	clc
	adc $0B79
	clc
	adc $0B7B
	sta $16
	lda $16
	cmp $15
	bcs L87A29D
	lda $15
	sec
	sbc $16
	cmp #$0F
	bcs L87A2BC
	cmp #$05
	bcs L87A2B8
	bra L87A2B4
L87A29D:
	lda $16
	sec
	sbc $15
	cmp #$0F
	bcs L87A2AC
	cmp #$05
	bcs L87A2B0
	bra L87A2B4
L87A2AC:
	lda #$04
	bra L87A2BE

L87A2B0:
	lda #$03
	bra L87A2BE
L87A2B4:
	lda #$02
	bra L87A2BE
L87A2B8:
	lda #$01
	bra L87A2BE
L87A2BC:
	lda #$00
L87A2BE:
	sta $0F66
	rep #$20
	lda #$0000
	ldy #$0020
	ldx #$0000
L87A2CC:
	sta $7F4400,X
	inx
	dey
	inx
	dey
	bne L87A2CC
	lda #$FFFF
	ldy #$0010
	ldx #$0000
L87A2DF:
	sta $7F4420,X
	inx
	dey
	inx
	dey
	bne L87A2DF
	lda #bank100(L8B99B6)
	sta $01
	lda $0B6F
	and #$00FF
	asl A
	tax
	lda.l L8B99B6,X
	sta $00
	ldy #$0000
L87A2FF:
	lda [$00],Y
	and #$00FF
	cmp #$00FF
	beq L87A30C
	iny
	bra L87A2FF
L87A30C:
	sty $23
	jsl L83F684
	tay
	lda [$00],Y
	sep #$20
	sta $7F4401
	sep #$20
	ldx #$0005
	stx $23
	jsl L83F684
	clc
	adc $0B70
	sta $7F4402
	lda #$58
	sta $7F4416
	lda #$45
	sta $7F4400
	lda #$74
	sta $7F4417
	jsl L83DD66
	lda $7F4402
	cmp #$15
	bcc L87A34E
	lda #$14
L87A34E:
	sta $7F4402
	rep #$20
	lda #bank100(L8B9A92)
	sta $01
	lda $7F4401
	and #$00FF
	asl A
	tax
	lda.l L8B9A92,X
	sta $00
	sep #$20
	lda $7F4402
	dec A
	xba
	lda #$01
	rep #$20
	sta.l WRMPYA
	nop
	nop
	nop
	lda.l RDMPYL
	sep #$20
	rep #$20
	clc
	adc [$00]
	sta $0F84
	sep #$20
	lda $7F4402
	sec
	sbc $0B70
	rep #$20
	and #$00FF
	tax
	lda.l L87A3EA,X
	and #$00FF
	clc
	adc $0F84
	sta $0F84
	sta $0F4D
	sep #$20
	lda #$6D
	sta $0F2D
	ldx #$0202
	stx $0F2E
	lda #$00
	sta $0F30
	jsr L87A52C
	rep #$20
	lda #$0000
	jsl L87A478
	jsl L87AC47
	jsl L8795D1
	lda #$0001
	jsl L879641
	bcc L87A3E7
	lda $0BB6
	and #$00FF
	cmp #$000C
	bne L87A3E7
	jmp L87A3F0

L87A3E7:
	jmp L87A456

L87A3EA:
.db $00 $03 $06 $0C $18 $30

L87A3F0:
	rep #$20
	lda $07F1
	sec
	sbc $0F84
	bcs L87A419
	sep #$20
	stz $0C13
	rep #$20
	lda #$0008
	jsl L87A478
	jsl L8795EF
	jsr L87A492
	jsl L83F312
	inc $0FA2
	plp
	rtl

L87A419:
	sta $07F1
	jsr L87935C
	lda $7F4401
	and #$00FF
	sta $0F49
	lda $7F4402
	and #$00FF
	sta $0F4F
	lda $0F84
	asl A
	sta $0F4D
	lda #$0002
	jsl L87A478
	jsl L8795EF
	sep #$20
	lda #$01
	sta $0C13
	jsr L87A492
	rep #$20
	inc $0FA2
	plp
	rtl

L87A456:
	sep #$20
	lda #$00
	sta $0C13
	rep #$20
	lda #$0001
	jsl L87A478
	jsl L8795EF
	jsr L87A492
	jsl L83F312
	rep #$20
	inc $0FA2
	plp
	rtl

L87A478:
	php
	rep #$20
	and #$00FF
	pha
	lda #bank100(L8E8000)
	sta $01
	pla
	jsl L87A9E8
	tax
	lda.l L8E8000,X
	sta $00
	plp
	rtl

L87A492:
	php
	rep #$20
	ldx #$0B01
	stx $0C1B
	ldx #$0608
	stx $0C1D
	lda #$0001
	jsl L81D35F
	jsl L81D4EE
	jsl L87B0E5
	jsl L809374
	lda $0B7E
	xba
	sec
	sbc $0860
	asl A
	asl A
	asl A
	asl A
	sta $0AAE
	lda #$1010
	sta $0AAC
	sep #$20
	lda #$01
	sta $0C1C
	lda #$00
	lda $0F79
	ldx #$0028
	stx $0F76
	jsl L87B016
	stz $0FA1
	rep #$20
	sep #$20
	lda #$08
	eor #$FF
	and $F7
	sta $F7
	rep #$20
	jsl L81D853
	lda #$0000
	sta $50
	sta $52
	sta $0BC1
	jsl L80954E
	jsl L87B0E5
	jsl L8087EA
	lda #bank100(L878412)
	sta $01
	lda #L878412
	sta $00
	jsl L808EAD
	jsl L8087EA
	lda #bank100(L87841B)
	sta $01
	lda #L87841B
	sta $00
	jsl L808EAD
	plp
	rts

L87A52C:
	php
	rep #$20
	jsl L8087EA
	lda #$006D
	ldy #$6000
	jsl L81D12B
	ldy #$0000
	jsl L81D14D
	jsl L8087EA
	lda $0B7E
	xba
	sec
	sbc $0860
	asl A
	asl A
	asl A
	asl A
	sta $0AAC
	lda #$1010
	sta $0AAE
	sep #$20
	lda #$81
	sta $0F75
	lda #$03
	sta $0F78
	lda #$00
	sta $0F79
	lda #$01
	sta $0C1C
	ldx #$0000
	stx $0F76
	ldx #$0028
	stx $50
	stx $52
	jsl L87AEA9
	ldx $50
	stx $0BC7
	jsr L87935C
	jsl L81E475
	ldx #$00F0
	stx $50
	stx $52
	jsl L87B0E5
	jsl L8087EA
	plp
	rts

L87A5A1:
	php
	rep #$20
	stz $91
	stz $93
	jsl L81E46B
	lda #$0000
	ldy #$0400
	ldx #$0000
L87A5B5:
	sta.l $001B00,X
	inx
	dey
	inx
	dey
	bne L87A5B5
	jsl L8087EA
	jsr L87A52C
	jsl L8087EA
	lda $0C0A
	and #$00FF
	cmp #$0002
	beq L87A622
	cmp #$0001
	beq L87A653
	lda #$0003
	jsl L87A478
	jsl L87AC47
	jsl L8795D1
	lda #$0001
	jsl L879641
	bcc L87A60B
	lda $0BB6
	and #$00FF
	cmp #$000C
	bne L87A60B
	lda #$0006
	jsl L87A478
	jsl L8795EF
	jmp L87A662

L87A60B:
	lda #$0007
	jsl L87A478
	jsl L8795EF
	sep #$20
	lda #$01
	sta $0C0A
	jsr L87A492
	plp
	rtl

L87A622:
	rep #$20
	lda $0F84
	asl A
	sta $0F4D
	lda #$0004
	jsl L87A478
	jsl L87AC47
	jsl L8795D1
	lda $0F84
	asl A
	jsl L87A8DE
	jsr L87935C
	lda #$0009
	jsl L87A478
	jsl L8795EF
	jmp L87A662

L87A653:
	lda #$0005
	jsl L87A478
	jsl L87AC47
	jsl L8795D1
L87A662:
	sep #$20
	lda #$00
	sta $0C0A
	jsr L87A492
	jsl L83F312
	plp
	rtl

L87A672:
	sep #$20
	ldx #$D662
	stx $0F7D
	ldy #$0001
	lda [$0F],Y
	sta $0F81
	lda #$0A
	sta $0F7C
	ldx #$B522
	stx $0F7F
	lda #$10
	sta $0F82
	lda #$80
	sta $0F83
	ldx #$80B1
	stx $0876
	rep #$20
	lda #bank100(L8BD662)
	sta $01
	ldy #$0001
	lda [$0F],Y
	and #$00FF
	asl A
	tax
	lda.l L8BD662,X
	sta $00
	jsl L87B101
	inc $0FA2
	inc $0FA2
	plp
	rtl

L87A6C0:
	rep #$20
	lda $0AB9
	and #$FF00
	ora #$0001
	sta $0AB9
	ldy #$0001
	lda [$0F],Y
	and #$00FF
	jsl L93DB8F
	lda $0ABA
	and #$00FF
	bne L87A6EC
	ldy #$0002
	lda [$0F],Y
	sta $0FA2
	plp
	rtl

L87A6EC:
	inc $0FA2
	inc $0FA2
	inc $0FA2
	inc $0FA2
	plp
	rtl

L87A6FA:
	rep #$20
	jsl L87A705
	inc $0FA2
	plp
	rtl

L87A705:
	php
	rep #$20
	lda #$001D
	jsl L80AA24
	sep #$20
	lda #$00
	sta $A1
	lda #$02
	sta $A4
	lda #$3B
	sta $A5
	lda #$E0
	sta $A6
	lda #$00
	sta $15
L87A725:
	lda $A6
	and #$E0
	ora $15
	sta $A6
	jsl L8087EA
	inc $15
	inc $15
	inc $15
	inc $15
	lda $15
	bit #$E0
	beq L87A725
	sep #$20
	lda #$1F
	sta $15
L87A745:
	lda $A6
	and #$E0
	ora $15
	sta $A6
	jsl L8087EA
	dec $15
	lda $15
	bne L87A745
	lda #$00
	sta $A4
	lda #$00
	sta $A5
	lda #$00
	sta $A6
	plp
	rtl

L87A765:
	sep #$20
	lda #$01
	sta $0AC7
	inc $07DF
	rep #$20
	ldy #$0001
	lda [$0F],Y
	and #$00FF
	cmp #$0001
	bne L87A785
	lda #$10F0
	jsl L80B4E3
L87A785:
	jsl L93EDF4
	jsl L80AA09
	jsl L93C1BC
	sep #$20
	dec $07DF
	rep #$20
	ldy #$0001
	lda [$0F],Y
	and #$00FF
	cmp #$0001
	beq L87A7B4
	cmp #$0002
	beq L87A7AF
	lda #$0001
	bra L87A7B7
L87A7AF:
	lda #$0002
	bra L87A7B7
L87A7B4:
	lda #$0003
L87A7B7:
	jsl L96941D
	bcs L87A7C5
	lda #$0001
	sta $0F84
	bra L87A7C8
L87A7C5:
	stz $0F84
L87A7C8:
	sep #$20
	lda #$01
	sta $0C10
	rep #$20
	inc $0FA2
	inc $0FA2
	plp
	rtl

L87A7D9:
	rep #$20
	jsl L80AA09
	lda #$8044
	jsl L80AA3A
	jsl L93EDF4
	jsl L8DC7B8
	jsl L80884A
	jsl L80A61A
	jsl L81D845
	jsl L83878B
	jsl L80AA09
	jsl L838820
	jsl L838851
	jsl L83899D
	jsl L838A73
	jsl L83F142
	sep #$20
	stz $074D
	stz $074F
	lda #$12
	sta $08DF
	rep #$20
	lda $0860
	and #$00FF
	asl A
	asl A
	asl A
	asl A
	sta $89
	sta $8D
	lda $0861
	and #$00FF
	asl A
	asl A
	asl A
	asl A
	and #$00FF
	sta $8B
	sta $8F
	sep #$20
	stz $91
	stz $93
	jsl L83F1D9
	jsl L80A9FC
	jsl L8088A0
	jsl L93EDBE
	rep #$20
	inc $0FA2
	plp
	rtl

L87A861:
	rep #$20
	jsl L93E35E
	inc $0FA2
	plp
	rtl

L87A86C:
	sep #$20
	ldy #$0001
	lda [$0F],Y
	jsl L87A8F4
	sta $08ED
	lda #$04
	sta $08F1
	jsl L83CF5D
	lda #$02
	sta $1006
	rep #$20
	lda #$FFFF
	sta $07C6
	sta $07C8
	lda #$01F0
	jsl L80B4E3
	jsl L93CC31
	jsl L80AA09
	jsl L86CA9B
	jsl L93D55D
	inc $0FA2
	inc $0FA2
	plp
	rtl

L87A8B2:
	rep #$20
	ldy #$0001
	lda [$0F],Y
	jsl L80B467
	inc $0FA2
	inc $0FA2
	inc $0FA2
	plp
	rtl

L87A8C8:
	rep #$20
	ldy #$0001
	lda [$0F],Y
	jsl L80B4BB
	inc $0FA2
	inc $0FA2
	inc $0FA2
	plp
	rtl

L87A8DE:
	php
	rep #$20
	clc
	adc $07F1
	bcs L87A8EC
	sta $07F1
	bra L87A8F2
L87A8EC:
	lda #$FFFF
	sta $07F1
L87A8F2:
	plp
	rtl

L87A8F4:
	ldx #$0000
L87A8F7:
	php
	rep #$20
	and #$00FF
	sta $15
L87A8FF:
	lda $7F4430,X
	and #$00FF
	cmp $15
	beq L87A917
	txa
	clc
	adc #$0020
	cmp #$0800
	beq L87A920
	tax
	bra L87A8FF
L87A917:
	txa
	lsr A
	lsr A
	lsr A
	lsr A
	lsr A
	plp
	clc
	rtl

L87A920:
	plp
	sec
	rtl

L87A923:
	php
	rep #$20
	and #$00FF
	sta $15
	ldx #$0000
L87A92E:
	lda $7F5330,X
	and #$00FF
	cmp $15
	beq L87A946
	txa
	clc
	adc #$0020
	cmp #$05A0
	beq L87A95B
	tax
	bra L87A92E
L87A946:
	lda $7F5330,X
	and #$00FF
	cmp #$00FF
	beq L87A95B
	txa
	lsr A
	lsr A
	lsr A
	lsr A
	lsr A
	plp
	clc
	rtl

L87A95B:
	plp
	sec
	rtl

L87A95E:
	ldx #$0000
	php
	rep #$20
	and #$00FF
	sta $15
L87A969:
	lda $7F4447,X
	and #$00FF
	cmp $15
	beq L87A981
	txa
	clc
	adc #$0020
	cmp #$0800
	beq L87A98A
	tax
	bra L87A969
L87A981:
	txa
	lsr A
	lsr A
	lsr A
	lsr A
	lsr A
	plp
	clc
	rtl

L87A98A:
	plp
	sec
	rtl

L87A98D:
	php
	sty $15
L87A990:
	sep #$20
	lda #$F0
	sta $0211,X
	rep #$20
	inx
	inx
	inx
	inx
	cpx $15
	bne L87A990
	plp
	rtl

L87A9A3:
	php
	rep #$20
	and #$00FF
	asl A
	asl A
	asl A
	asl A
	asl A
	asl A
	pha
	lda #$7E7E
	sta $15
	txa
	asl A
	asl A
	asl A
	asl A
	asl A
	asl A
	tax
	cpy #$0000
	bne L87A9D5
	txa
	clc
	adc #$3800
	tay
	txa
	clc
	adc #$3000
	tax
	pla
	jsl L81D98A
	bra L87A9E6
L87A9D5:
	txa
	clc
	adc #$3000
	tay
	txa
	clc
	adc #$3800
	tax
	pla
	jsl L81D98A
L87A9E6:
	plp
	rtl

L87A9E8:
	php
	rep #$20
	phx
	ldx $15
	and #$00FF
	sta $15
	asl A
	clc
	adc $15
	stx $15
	plx
	plp
	rtl

L87A9FC:
	php
	rep #$20
	tay
	lda #$0008
	jsl L81D718
	pha
	phy
	sep #$20
	plx
	lda.l L87AA20,X
	sta $15
	plx
	lda $07E1,X
	and $15
	beq L87AA1D
	plp
	sec
	rtl

L87AA1D:
	plp
	clc
	rtl

L87AA20:
FLAGS_87AA20:
.db FLAG_0 FLAG_1 FLAG_2 FLAG_3
.db FLAG_4 FLAG_5 FLAG_6 FLAG_7

L87AA28:
	php
	rep #$20
	tay
	lda #$0008
	jsl L81D718
	pha
	phy
	sep #$20
	plx
	lda.l L87AA20,X
	sta $15
	plx
	lda $07E1,X
	ora $15
	sta $07E1,X
	plp
	rtl

L87AA49:
	php
	rep #$20
	tay
	lda #$0008
	jsl L81D718
	pha
	phy
	sep #$20
	plx
	lda.l L87AA20,X
	eor #$FF
	sta $15
	plx
	lda $07E1,X
	and $15
	sta $07E1,X
	plp
	rtl

L87AA6C:
	php
	rep #$20
	and #$00FF
	sta $15
	ldy #$0001
	ldx #$0003
	sep #$20
L87AA7C:
	lda $7F4420,X
	cmp $15
	beq L87AA98
	dex
	bpl L87AA7C
	ldx #$0003
L87AA8A:
	lda $7F4428,X
	cmp $15
	beq L87AA98
	dex
	bpl L87AA8A
	plp
	sec
	rtl

L87AA98:
	plp
	clc
	rtl

L87AA9B:
	php
	rep #$20
	and #$00FF
	pha
	lda #bank100(L8CA04C)
	sta $01
	pla
	jsl L87A9E8
	clc
	adc #L8CA04C
	sta $00
	lda [$00]
	sta $00
L87AAB6:
	rep #$20
	lda [$00]
	and #$00FF
	beq L87AB3A
	cmp #$00FF
	beq L87AADC
	dec A
	beq L87AADF
	dec A
	beq L87AAF2
	dec A
	beq L87AB0A
	dec A
	bne L87AAD3
	brl L87AB6E
L87AAD3:
	dec A
L87AAD4:
	bne L87AAD4
	brl L87AB9B
L87AAD9:
	plp
	sec
	rtl

L87AADC:
	plp
	clc
	rtl

L87AADF:
	ldy #$0001
	lda [$00],Y
	jsl L87A9FC
	bcs L87AAD9
	inc $00
	inc $00
	inc $00
	bra L87AAB6
L87AAF2:
	sep #$20
	ldy #$0001
	lda [$00],Y
	jsl L87A8F4
	bcc L87AB01
	bra L87AAD9
L87AB01:
	rep #$20
	inc $00
	inc $00
	brl L87AAB6
L87AB0A:
	sep #$20
	ldy #$0001
	lda [$00],Y
	jsl L87A923
	bcc L87AB25
	ldy #$0001
	lda [$00],Y
	jsl L87A8F4
	bcc L87AB31
L87AB22:
	brl L87AAD9
L87AB25:
	jsl L81D86F
	lda $7F4412
	bit #$80
	bne L87AB22
L87AB31:
	rep #$20
	inc $00
	inc $00
	brl L87AAB6
L87AB3A:
	sep #$20
	lda $08ED
	jsl L83D912
	ldy #$0001
	ldx #$0003
L87AB49:
	lda $7F4420,X
	cmp [$00],Y
	beq L87AB65
	dex
	bpl L87AB49
	ldx #$0003
L87AB57:
	lda $7F4428,X
	cmp [$00],Y
	beq L87AB65
	dex
	bpl L87AB57
	brl L87AAD9
L87AB65:
	rep #$20
	inc $00
	inc $00
	brl L87AAB6
L87AB6E:
	sep #$20
	lda $02
	pha
	ldx $00
	phx
	lda #$01
	sta $0AB9
	ldy #$0001
	lda [$00],Y
	jsl L93DB8F
	plx
	stx $00
	pla
	sta $02
	lda $0ABA
	bne L87AB92
	brl L87AAD9
L87AB92:
	rep #$20
	inc $00
	inc $00
	brl L87AAB6
L87AB9B:
	sep #$20
	ldy #$0001
	lda [$00],Y
	dec A
	cmp $07DF
	bcc L87ABAB
	brl L87AAD9
L87ABAB:
	rep #$20
	inc $00
	inc $00
	brl L87AAB6
L87ABB4:
	php
	sep #$20
	sta $15
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
	lda.l (ITEMS_DATA + 8),X
	sta $16
	bra L87ABD9
L87ABD4:
	php
	rep #$20
	sta $15
L87ABD9:
	rep #$20
	jsl L87AC1E
	bcc L87AC0E
	sep #$20
	lda #$01
	sta $0B08
	ldx $15
	stx $0B0B
	rep #$20
	jsl L8196BD
	jsl L81A8CB
	lda $0B09
	cmp #$FFFF
	beq L87AC07
	tax
	lda $0B0B
	sta $7F5030,X
L87AC07:
	jsl L81D9C6
	plp
	sec
	rtl

L87AC0E:
	rep #$20
	lda $15
	sta $7F5030,X
	inx
	inx
	stx $0BDB
	plp
	clc
	rtl

L87AC1E:
	php
	rep #$20
	ldx #$0000
L87AC24:
	lda $7F5030,X
	lda $7F5030,X
	and #$00FF
	cmp #$00FF
	beq L87AC41
	inx
	inx
	cpx #$0100
	bne L87AC24
	stx $0BDB
	plp
	sec
	rtl

L87AC41:
	stx $0BDB
	plp
	clc
	rtl

L87AC47:
	jsl L87B858
	lda #$0000
	sta $0F23
	lda #$0010
	tsb $0F05
	lda #$0000
	sta $0125
	sta $0127
	rtl

L87AC61:
	jsl L87B858
	lda #$4000
	sta $0F23
	rtl

L87AC6C:
	php
	sep #$20
	sta $0F8E
	ldx #$FFFF
	stx $0F8F
	plp
	bra L87AC90
L87AC7B:
	php
	sep #$20
	sta $0F8E
	stx $0F8F
	plp
	bra L87AC90
L87AC87:
	php
	sep #$20
	sta $0F8E
	plp
	bra L87AC90
L87AC90:
	php
	rep #$20
	lda $50
	pha
	lda $0C1B
	pha
	sep #$20
	phb
	lda #$87
	pha
	plb
	rep #$20
	ldx $50
	lda $0F91
	asl A
	asl A
	asl A
	sta $0210,X
	lda $0F8C
	sta $0212,X
	txa
	lsr A
	lsr A
	lsr A
	lsr A
	tax
	lda $50
	lsr A
	lsr A
	and #$0003
	tay
	sep #$20
	lda $0410,X
	and $ADA9,Y
	sta $0410,X
	plb
	rep #$20
	lda $50
	clc
	adc #$0004
	sta $50
	sta $52
	lda $0F91
	sta $0C1B
	jsl L81D5A8
	ldx $15
	stx $0F44
	stz $0F42
L87ACEC:
	jsl L809374
	lda $0127
	bit #$0080
	bne L87AD17
	bit #$8000
	bne L87AD24
	bit #$0040
	bne L87AD31
	lda $0F8F
	cmp #$FFFF
	beq L87AD12
	dec $0F8F
	lda $0F8F
	beq L87AD3E
L87AD12:
	jsr L87AD73
	bra L87ACEC
L87AD17:
	sep #$20
	lda $0F8E
	and #$01
	bne L87AD3E
	rep #$20
	bra L87AD12
L87AD24:
	sep #$20
	lda $0F8E
	and #$02
	bne L87AD3E
	rep #$20
	bra L87AD12
L87AD31:
	sep #$20
	lda $0F8E
	and #$04
	bne L87AD3E
	rep #$20
	bra L87AD12
L87AD3E:
	rep #$20
	lda $0F8A
	ldx $0F44
	sta $7E3000,X
	lda $50
	sec
	sbc #$0004
	tax
	lda #$F400
	sta $0210,X
	sta $0214,X
	sta $0218,X
	sta $021C,X
	pla
	sta $0C1B
	pla
	sta $50
	sta $52
	jsl L87B0E5
	jsl L809374
	plp
	rtl

L87AD73:
	lda $0F42
	cmp #$0010
	bpl L87AD8A
	lda #$00FF
	ldx $0F44
	sta $7E3000,X
	inc $0F42
	bra L87ADA4
L87AD8A:
	lda $0F8A
	ldx $0F44
	sta $7E3000,X
	inc $0F42
	lda $0F42
	cmp #$0020
	bmi L87ADA4
	stz $0F42
	bra L87ADA4
L87ADA4:
	jsl L87B0E5
	rts

L87ADA9:
.db $FD $F7 $DF $7F

L87ADAD:
	php
	rep #$20
	and #$00FF
	sta $0BB0
	jsl L81E46B
	sep #$20
	lda $0BB0
	sta $0B36
	lda #$FE
	sta $0B37
	ldy #$6400
	jsl L81E47D
	jsl L81E46B
	lda #$01
	sta $0C07
	rep #$20
	lda $0BB0
	and #$00FF
	cmp #$003D
	bne L87ADF8
	jsr L87AE15
	jsl L81E475
	jsl L87B0E5
	lda #$805D
	jsl L87AE7D
	bra L87AE0F
L87ADF8:
	lda #$80B2
	sta $0876
	jsl L8087EA
	jsr L87AE15
	jsl L81E475
	ldx #$100F
	jsr L87AE60
L87AE0F:
	jsl L8196BD
	plp
	rtl

L87AE15:
	php
	sep #$20
	ldx #$0907
	stx $0C1B
	jsl L81D5A8
	ldx $15
	lda $0BB0
	cmp #$3D
	bne L87AE2F
	lda #$14
	bra L87AE31
L87AE2F:
	lda #$00
L87AE31:
	ldy #$B522
	jsl L81E21F
	ldx #$0C0A
	stx $0C1B
	jsl L81D5A8
	ldx $15
	ldy #$DF58
	lda $0BB0
	jsl L81E21F
	ldx #$0C08
	stx $0C05
	ldx #$3640
	stx $0C08
	jsl L81D77B
	plp
	rts

L87AE60:
	php
	sep #$20
	stx $0F91
	ldx #$318B
	stx $0F8C
	ldx #$A0F1
	stx $0F8A
	ldx #$0080
	lda #$07
	jsl L87AC7B
	plp
	rts

L87AE7D:
	php
	rep #$20
	sta $0876
L87AE83:
	jsl L8087EA
	lda $0876
	cmp #$FFFF
	bne L87AE83
L87AE8F:
	jsl L8087EA
	lda $0886
	and #$0003
	beq L87AE8F
L87AE9B:
	jsl L8087EA
	lda $0886
	and #$0003
	bne L87AE9B
	plp
	rtl

L87AEA9:
	php
	sep #$20
	jsl L81E475
	ldx $50
	phx
	ldx #$00F0
	stx $50
	stx $52
	lda #$00
	jsl L93D75A
	plx
	stx $50
	stx $52
	jsl L8087EA
	jsl L81E46B
	lda #$01
	sta $0C1B
	clc
	adc #$07
	sta $0F7A
	ldx $0C1B
	phx
	lda #$00
	pha
	lda $0F79
	beq L87AEF9
	pla
	plx
	lda #$17
	sta $0C1B
	dec A
	sta $0F7A
	ldx $0C1B
	phx
	dec $0C1B
	lda #$03
	pha
L87AEF9:
	jsl L81D5A8
	ldx $15
	ldy #$C0B8
	pla
	jsl L81E21F
	plx
	stx $0C1B
	lda $0F75
	sta $5C
	lda $0F78
	sta $5A
	ldx $0F76
	stx $5E
	rep #$20
	lda $0C1B
	clc
	adc #$0101
	asl A
	asl A
	asl A
	pha
	and #$00FF
	sta $56
	pla
	xba
	and #$00FF
	sta $58
	lda #bank100(L838000)
	sta $63
	lda #L838000
	sta $62
	jsl L8093A4
	ldx $50
	stx $52
	sep #$20
	lda $0C1C
	inc A
	xba
	lda $0F7A
	rep #$20
	tay
	lda $0F79
	jsl L87AFD2
	ldx $50
	phx
	sep #$20
	jsl L81E475
	ldx #$00F0
	stx $50
	stx $52
	lda $0F79
	beq L87AF71
	jmp L87AF9B

L87AF71:
	lda #$0A
	sta $0C1B
L87AF76:
	jsl L81D5A8
	ldx $15
	ldy #$C0B8
	lda #$01
	jsl L81E21F
	inc $0C1B
	lda $0C1B
	cmp #$1E
	beq L87AF99
	jsl L87B0E5
	jsl L809374
	bra L87AF76
L87AF99:
	bra L87AFC3

L87AF9B:
	lda #$13
	sta $0C1B
L87AFA0:
	jsl L81D5A8
	ldx $15
	ldy #$C0B8
	lda #$02
	jsl L81E21F
	dec $0C1B
	lda $0C1B
	cmp #$FF
	beq L87AF99
	jsl L87B0E5
	jsl L809374
	bra L87AFA0
L87AFC3:
	jsl L87B0E5
	jsl L809374
	plx
	stx $50
	stx $52
	plp
	rtl

L87AFD2:
	php
	sep #$20
	cmp #$01
	beq L87AFDE
	ldx #$318E
	bra L87AFE1
L87AFDE:
	ldx #$718E
L87AFE1:
	stx $0C08
	lda #$01
	sta $0C07
	rep #$20
	tya
	clc
	adc #$0300
	sta $0C05
	jsl L81D77B
	sep #$20
	lda #$04
	sta $0C07
	rep #$20
	lda #$31CB
	sta $0C08
	lda $0C05
	sec
	sbc #$0300
	sta $0C05
	jsl L81D77B
	plp
	rtl

L87B016:
	php
	sep #$20
	ldx $50
	phx
	jsl L81E46B
	ldx #$00F0
	stx $50
	stx $52
	lda $0F79
	beq L87B02F
	jmp L87B059

L87B02F:
	lda #$1D
	sta $0C1B
L87B034:
	jsl L81D5A8
	ldx $15
	ldy #$C0B8
	lda #$01
	jsl L81E21F
	dec $0C1B
	lda $0C1B
	cmp #$09
	beq L87B057
	jsl L87B0E5
	jsl L809374
	bra L87B034
L87B057:
	bra L87B081

L87B059:
	lda #$00
	sta $0C1B
L87B05E:
	jsl L81D5A8
	ldx $15
	ldy #$C0B8
	lda #$02
	jsl L81E21F
	inc $0C1B
	lda $0C1B
	cmp #$15
	beq L87B057
	jsl L87B0E5
	jsl L809374
	bra L87B05E
L87B081:
	lda #$01
	jsl L81D35F
	lda #$01
	sta $0C1B
	ldx #$0A1E
	stx $0C1D
	jsl L81D4EE
	ldx #$0000
	ldy #$0028
	jsl L87A98D
	rep #$20
	lda $0F76
	clc
	adc #$0064
	tay
	ldx $0F76
	jsl L87A98D
	jsl L81E475
	jsl L87B0E5
	ldx #$00F0
	stx $50
	stx $52
	lda #$0001
	jsl L93D75A
	jsl L81E46B
	ldx #$00F0
	stx $50
	stx $52
	jsl L80954E
	jsl L81E475
	jsl L809374
	plx
	stx $50
	stx $52
	plp
	rtl

L87B0E5:
	php
	rep #$20
	lda #bank100(L87B0F8)
	sta $01
	lda #L87B0F8
	sta $00
	jsl L808EAD
	plp
	rtl

L87B0F8:
.db $02 $00 $30 $7E $00 $08 $80 $00
.db $48

L87B101:
	php
	rep #$20
	ldy #$0000
L87B107:
	lda [$00],Y
	cmp #$FFFF
	beq L87B112
	iny
	iny
	bra L87B107
L87B112:
	tya
	lsr A
	sep #$20
	sta $0F7B
	clc
	adc $0F7C
	inc A
	inc A
	inc A
	inc A
	sta $15
	lda #$20
	sec
	sbc $15
	lsr A
	sta $0C1B
	lda #$0A
	sta $0C1C
	lda $15
	sta $0C1D
	lda #$08
	sta $0C1E
	lda #$00
	jsl L81D35F
	jsl L81D4EE
	rep #$20
	lda $0C1B
	clc
	adc #$0302
	sta $0C1B
	jsl L81D5A8
	ldx $15
	ldy $0F7D
	lda $0F81
	jsl L81E21F
	sep #$20
	lda $0C1B
	clc
	adc $0F7B
	sta $0C1B
	jsl L81D5A8
	ldx $15
	ldy $0F7F
	lda $0F82
	jsl L81E21F
	jsl L87B0E5
L87B181:
	sep #$20
	jsl L809374
	dec $0F83
	bne L87B181
	jsl L81D853
	jsl L87B0E5
	jsl L809374
	plp
	rtl

L87B19A:
	php
	sep #$20
	phx
	pha
	jsl L81E46B
	rep #$20
	lda #$01FF
	ldy #$0800
	ldx #$0000
L87B1AE:
	sta $7F5D20,X
	inx
	dey
	inx
	dey
	bne L87B1AE
	sep #$20
	lda #$00
	sta $7F5D20
	pla
	sta $7F5D21
	lda #$01
	sta $7F5D22
	lda #$00
	sta $7F5D23
	lda #$02
	sta $7F5D24
	plx
	txa
	sta $7F5D25
	lda #$03
	sta $7F5D26
	lda #$06
	sta $7F5D27
	lda #$04
	sta $7F5D28
	lda #$FF
	sta $7F5D29
	lda #$05
	sta $7F5D2A
	lda #$00
	sta $7F5D2B
	jsl L82E4A1
	jsl L81E475
	rep #$20
L87B20B:
	ldx #$00F0
	stx $50
	stx $52
	jsl L809374
	ldx #$0000
	lda $0D02,X
	and #$00FF
	bne L87B20B
	plp
	rtl

L87B223:
	php
	sep #$20
	ldx #$00F0
	stx $50
	stx $52
	lda #$FF
	sta $7F5D20
	lda #$02
	sta $7F5D21
	jsl L82E4A1
	rep #$20
L87B23F:
	ldx #$00F0
	stx $50
	stx $52
	jsl L809374
	ldx #$0000
	lda $0D02,X
	and #$00FF
	bne L87B23F
	plp
	rtl

L87B257:
	php
	rep #$20
	lda $085D
	and #$00FF
	tax
	lda $701FFB,X
	and #$00FF
	sta $15
	lda $07DF
	and #$00FF
	cmp $15
	beq L87B27D
	bcc L87B27D
	sep #$20
	stz $0F67
	plp
	rtl

L87B27D:
	rep #$20
	lda #$0A09
	sta $0C1B
	jsl L81D5A8
	ldx $15
	ldy #$B522
	lda #$0012
	jsl L81E21F
	sep #$20
	lda #$01
	sta $0C07
	rep #$20
	lda #$0D0A
	sta $0C05
	lda #$3189
	sta $0C08
	jsl L81D77B
	lda #$0D11
	sta $0C05
	jsl L81D77B
	lda #$0D0A
	sta $0BB5
	sta $0BB3
	jsl L81D2C6
	jsl L87B0E5
L87B2C9:
	jsl L8087EA
	lda $0129
	and #$0300
	bne L87B2E4
	lda $0127
	bit #$0080
	bne L87B319
	bit #$8000
	bne L87B307
	bra L87B2C9
L87B2E4:
	lda $0BB5
	cmp #$0D0A
	beq L87B2F1
	lda #$0D0A
	bra L87B2F4
L87B2F1:
	lda #$0D11
L87B2F4:
	sta $0BB5
	jsl L81D2C6
	lda $0BB5
	sta $0BB3
	jsl L87B0E5
	bra L87B2C9
L87B307:
	rep #$20
	lda #$00BE
	jsl L80AA16
	sep #$20
	lda #$01
	sta $0F67
	bra L87B32F
L87B319:
	rep #$20
	lda $0BB5
	cmp #$0D11
	beq L87B307
	lda #$002D
	jsl L80AA16
	sep #$20
	stz $0F67
L87B32F:
	jsl L81E46B
	jsl L81D853
	ldx #$0000
	stx $50
	stx $52
	jsl L80954E
	jsl L81E475
	jsl L87B0E5
	jsl L8087EA
	plp
	rtl

L87B350:
	php
	rep #$20
	pha
	lda #bank100(L8E9213)
	sta $01
	pla
	ldy #$0003
	jsl L81D733
	clc
	adc #L8E9213
	sta $00
	lda [$00]
	pha
	inc $00
	lda [$00]
	sta $01
	pla
	sta $00
	ldy #$0000
L87B376:
	lda [$00],Y
	cmp #$8400
	beq L87B380
	iny
	bra L87B376
L87B380:
	sep #$20
	iny
	iny
	lda [$00],Y
	sta $1064
	plp
	rtl

L87B38B:
	php
	rep #$20
	pha
	lda #bank100(L8E9213)
	sta $01
	pla
	ldy #$0003
	jsl L81D733
	clc
	adc #L8E9213
	sta $00
	lda [$00]
	pha
	inc $00
	lda [$00]
	sta $01
	pla
	sta $00
	ldy #$0000
L87B3B1:
	lda [$00],Y
	cmp #$8900
	beq L87B3BB
	iny
	bra L87B3B1
L87B3BB:
	iny
	iny
	lda [$00],Y
	sta $1065
	plp
	rtl

L87B3C4:
	php
	sep #$20
	ldx #$0B07
	stx $0C1B
	jsl L81D5A8
	ldx $15
	ldy #$D13A
	lda #$0E
	jsl L81E21F
	ldx #$0E0F
	stx $0F91
	ldx #$318B
	stx $0F8C
	ldx #$A0F1
	stx $0F8A
	ldx #$0080
	lda #$07
	jsl L87AC7B
	jsl L8196BD
	plp
	rtl

L87B3FD:
	php
	rep #$20
	sta $0F84
	stx $0F86
	jsl L81E46B
	jsl L8087EA
	ldx #$0000
	lda $0F84
	jsl L81D10F
	sep #$20
	lda #$03
	sta $5A
	lda $0F85
	beq L87B427
	lda #$0C
	sta $5A
L87B427:
	lda #$81
	sta $5C
	rep #$20
	lda #$0000
	sta $5E
	lda $0F86
	and #$00FF
	sta $56
	lda $0F87
	and #$00FF
	sta $58
	lda #bank100(L838000)
	sta $63
	lda #L838000
	sta $62
	jsl L8093A4
	lda $50
	sta $52
	jsl L81E475
	jsl L8087EA
	plp
	rtl

L87B45E:
	php
	sep #$20
	lda #$01
	sta $0FA1
	plp
	rtl

L87B468:
	php
	sep #$20
	lda #$02
	sta $0F5B
	lda #$80
	sta $0F61
	rep #$20
	ldx $0F00
	lda $0F26,X
	and #$00FF
	ldy #$0040
	jsl L81D733
	sta $0F5F
	ldx $0F00
	lda $0F20,X
	sta $0F5C
	lda $0F21,X
	sta $0F5D
	lda $0F5C
	sec
	sbc #$3000
	lsr A
	clc
	adc #$4800
	sta $0F62
	lda #$0000
	sta $01
	lda #$0F5B
	sta $00
	jsl L808EAD
	plp
	rtl

L87B4B8:
.db $0B $0A $0B $0B $0B $0C $0A $0A
.db $0B $0A $0A $0A $0B $0B $0A $0B
.db $0A $0B $0B $0A $0C $0B $0C $0C
.db $0B $0B $0C $0B $0C $0B $09 $0C
.db $0C $0B $0A $0B $0B $0A $09 $0A
.db $0A $0B $0A $0B $0B $0B $0D $0B
.db $0B $0C $0B $0B $0A $0B $0C $0B
.db $0B $0A $0C $0B $0A $0C $0D $0B
.db $0C $0C $0C $0D $0B $0C $0C $09
.db $08 $07 $08 $09 $09 $09 $09 $08
.db $0B $0B $0A $0B $0B $0A $0C $0A
.db $0C $0A $0C $0C $0B $0B $0B $0A
.db $0C $0A $0C $0A $0C $0C $0A $0B
.db $0B $0B $0A $0A $0C $0B $0C $0A
.db $0B $0B $0B $0C $0C $0A $0B $0A
.db $0C $0B $0A $0A $0B $0B $0C $0B
.db $0B $0B $0C $0C $0B $0C $0C $0B
.db $0B $0B $0B $0B $0C $0B $0B $0B
.db $0B $0C $0B $0C $0B $0C $08 $08
.db $08 $09 $09 $09 $08 $09 $07 $09
.db $09 $09 $09 $0A $09 $09 $09 $0A
.db $09 $0D $0D $0D $0D $0C $0B $0D
.db $0D $0C $0D $0D $0D $0C $0B $0C
.db $0A $0C $0C $0B $0C $0C $0C $0B
.db $0B $0B $0B $0A $08 $0D $0D $0B
.db $0D $0D $0D $0D $0C $0D $0D $0D
.db $0D $0C $0D $0D $0C $0D $0C $0D
.db $0D $0B $0C $0D $0C $0C $0D $0B
.db $0D $0D $0D $0B $0B $0C $0C $0D
.db $0D $0B $0D $0D $0D $0C $0D $0D
.db $0D $0D $0C $0D $0D $0D $0D $0C
.db $09 $0C $0C $0D $0D $0C $0C $0D
.db $0D $0D $0C $0B $0D $0D $0C $0D
.db $0D $0C $0D $0D $0C $0D $0C $0D
.db $0C $0A $0C $0B $0B $0D $0C $0D
.db $0C $0D $0D $0B $0C $0C $0D $0C
.db $0D $0C $0D $0C $0C $0D $0C $0C
.db $0D $0D $0C $0B $0D $0D $0B $0B
.db $0C $0C $0D $0A $0D $0C $0D $0C
.db $0C $0C $0C $0B $0D $0C $0D $0C
.db $0B $0C $0D $0B $0C $0D $0D $0C
.db $0B $0C $0D $0C $0C $0D $0C $0C
.db $0D $0D $0C $0D $0C $0D $0C $0B
.db $0C $0D $0C $0C $0C $0B $0D $0D
.db $0D $0C $0C $0B $0D $0D $0B $0B
.db $0C $0D $0C $0C $0B $0C $0C $0C
.db $0D $0D $0C $0C $0C $0B $0C $0C
.db $0D $0B $0C $0C $0D $0D $0C $0D
.db $0D $0D $0D $0E $0D $0D $0C $0C
.db $0C $0D $0C $0D $0D $0D $0D $0C
.db $0D $0D $0C $0C $0D $0D $0C $0D
.db $0D $0D $0D $0B $0C $0D $0D $0C
.db $0C $0D $0D $0C $0D $0C $0C $0D
.db $0C $0D $0D $0C $0C $0C $0C $0D
.db $0D $0D $0C $0C $0B $0C $0D $0C
.db $0C $0B $0C $0C $0D $0D $0C $0D
.db $0D $0B $0D $0C $0D $0D $0C $0D
.db $0C $0D $0B $0B $0D $0B $0C $0C
.db $0D $0C $0B $0C $0C $0C $0C $0C
.db $0D $0D $0C $0D $0C $0D $0D $0C
.db $0C $0C $0D $0D $08 $0B $0D $0D
.db $0B $0B $0C $0C $0D $0C $0D $0D
.db $0D $0D $0C $0C $0C $0D $0C $0C
.db $0D $0C $0C $0D $0D $0C $0D $0C
.db $0A $0C $0D $0D $0D $0C $0D $0C
.db $0C $0C $0D $0D $0C $0D $0D $0D
.db $0D $0C $0C $0D $0D $0D $0D $0C
.db $0D $0C $0C $0C $0C $0D $0C $0D
.db $0D $0D $0D $0C $0C $0D $0B $0D
.db $0C $0C $09 $0C $0D $0D $0C $0C
.db $0D $0D $0D $0D $0C $0C $0D $0D
.db $0C $0D $0C $0D $0D $0D $0D $0D
.db $0B $0C $0B $0D $0C $0C $0D $0D
.db $0D $0D $0D $0D $0D $0D $0B $0C
.db $0D $0C $0D $0C $0C $0C $0D $0D
.db $0C $0D $0D $0D $0C $0D $0D $0C
.db $0D $0D $0D $0C $0D $0C $0C $0C
.db $0D $0A $0D $0C $0D $0D $0D $0C
.db $0D $0D $0C $0D $0D $0C $0D $0C
.db $0D $0B $0D $0D $0C $0D $0D $0C
.db $0D $0D $0C $0D $0C $0C $0B $0B
.db $0C $0C $0D $0D $0C $0B $0D $0D
.db $0D $0A $0C $0D $0C $0A $0D $0C
.db $0C $0D $0C $0D $0C $0D $0C $0D
.db $0D $0D $0C $0D $0C $0D $0D $0B
.db $0D $0D $0C $0D $0D $0D $0D $0D
.db $0D $0D $0D $0D $0D $0B $0D $0C
.db $0D $0D $0D $0C $0D $0C $0D $0C
.db $0D $0C $0C $0D $0C $0B $0C $0D
.db $0C $0D $0D $0D $0C $0D $0C $0D
.db $0C $0C $0D $0D $0D $0D $0D $0D
.db $0C $0C $0D $0D $0C $0C $0D $0B
.db $0D $0C $0D $0C $0D $0D $0D $0D
.db $0C $0D $0D $0C $0D $0D $0D $0D
.db $0D $0B $0D $0D $0C $0D $0C $0D
.db $0C $0D $0C $0D $0D $0E $0C $0C
.db $0D $0D $0C $0D $0D $0D $0D $0D
.db $0D $0D $0C $0C $0C $0C $0D $0D
.db $0D $0D $0C $0C $0E $0C $0D $0C
.db $0B $0D $0C $0D $0C $0B $0D $0B
.db $0D $0D $0D $0D $0B $0D $0C $0C
.db $0B $0D $0D $0D $0C $0D $0D $0B
.db $0D $0C $0D $0C $0D $0C $0B $0C
.db $0D $0C $0D $0A $0B $09 $0D $0C
.db $0D $0D $0C $0D $0C $0C $0D $0D
.db $0B $0D $0C $0D $0C $0C $0D $0D
.db $0C $0C $0C $0D $0C $0D $0D $0C
.db $0D $0D $0D $0C $0D $0D $0D $0C
.db $0D $0D $0C $0C $0C $0C $0D $0B
.db $0A $0D $0D $0C $0C $0D $0C $0C
.db $0D $0D $0C $0C $0C $0D $0D $0C
.db $0C $0B $0D $0D $0D $0C $0D $0D
.db $0C $0C $0C $0C $0D $0C $0D $0D
.db $0D $0D $0D $0D $0D $0D $0D $0D
.db $0C $0C $0D $0D $0D $0C $0C $0D
.db $0C $0D $0D $0D $0C $0D $0C $0C

L87B858:
	jsl L87B860
	jsr L87CE0B
	rtl

L87B860:
	php
	sep #$20
	stz $0F0D
	stz $0F10
	rep #$20
	lda #$0000
	sta $0F00
	lda $00
	sta $0F02
	lda $01
	sta $0F03
	lda #$0001
	sta $0F07
	sta $0F09
	stz $0F0B
	stz $0F0E
	stz $0F27
	stz $0F29
	stz $0F14
	lda #$20FE
	sta $0F12
	lda #$0001
	sta $0F05
	ldx #$0000
	lda #$FFFF
L87B8A5:
	sta $7F5BD0,X
	inx
	inx
	cpx #$0100
	bcc L87B8A5
	lda #$7E00
	sta $0F21
	lda #$3154
	sta $0F20
	lda #bank100(LD88000)
	sta $0F17
	lda #LD88000
	sta $0F16
	lda #bank100(L87B4B8)
	sta $0F1A
	lda #L87B4B8
	sta $0F19
	lda #$5000
	sta $0F23
	lda #$0808
	sta $0F25
	stz $0F36
	stz $0F2B
	stz $0F3C
	lda #$0814
	sta $1B00
	plp
	rtl

L87B8F1:
	rep #$30
	lda #$0000
	sta.l $000F00
	sta.l $000F2B
	sta.l $000F09
	rtl

L87B903:
	lda #$0004
	trb $0F05
	lda $0F09
	beq L87B91A
	lda $0F07
	sta $0F09
	lda #$0000
	sta $0F0B
L87B91A:
	rtl

L87B91B:
	lda $0F09
	beq L87B931
	cmp #$00FF
	beq L87B931
	lda #$00FF
	sta $0F09
	lda #$0000
	sta $0F0B
L87B931:
	rtl

L87B932:
	php
	rep #$30
	lda #$0000
	sta $0F1C
	ldx $0F00
	lda $0F2B,X
	and #$000F
	bne L87B9A6
	lda $0F09
	bne L87B94E
	brl L87B9DA
L87B94E:
	cmp #$00FF
	beq L87B973
	lda $0F05
	bit #$0088
	bne L87B966
	lda $0127
	beq L87B966
	jsl L87B91B
	bra L87B973
L87B966:
	lda $0F05
	bit #$0004
	bne L87B9DA
	dec $0F09
	bne L87B9DA
L87B973:
	jsr L87D9E1
	ldx $0F00
	lda $0F02
	sta $00
	lda $0F03
	sta $01
	ldy #$0000
	lda [$00],Y
	and #$00FF
	cmp #$0000
	bne L87B99F
	inc $00
	lda [$00],Y
	and #$00FF
	iny
	jsr L87C9CC
	bcc L87B973
	bra L87B9DA
L87B99F:
	jsr L87B9E3
	bcc L87B973
	bra L87B9DA
L87B9A6:
	lda $0F2B,X
	inc A
	sta $0F2B,X
	and #$000F
	beq L87B9CC
	lda $0F09
	cmp #$00FF
	bne L87B9CC
	lda $0F2B,X
	and #$000F
	cmp #$000F
	beq L87B9CC
	lda $0F2B,X
	inc A
	sta $0F2B,X
L87B9CC:
	lda $0F2B,X
	and #$000F
	cmp #$000F
	bne L87B9DA
	jsr L87C94F
L87B9DA:
	jsr L87C0AA
	jsl L87CC08
	plp
	rtl

L87B9E3:
	lda #$0002
	tsb $0F05
	jsr L87BACD
	jsr L87BA6E
	inc $0F02
	lda $0F09
	cmp #$00FF
	beq L87BA02
	lda $0F07
	sta $0F09
L87BA00:
	sec
	rts

L87BA02:
	lda $0F05
	bit #$0100
	beq L87BA15
	inc $0F0B
	lda $0F0B
	cmp #$0003
	bcc L87BA1A
L87BA15:
	stz $0F0B
	bra L87BA00
L87BA1A:
	clc
	rts

L87BA1C:
	lda $0F29,X
	clc
	adc #$0002
	sta $0F29,X
L87BA26:
	lda $0F25,X
	sta.l WRMPYA
	nop
	nop
	nop
	lda.l RDMPYL
	dec A
	cmp $0F29,X
	bcs L87BA40
	lda #$0000
	sta $0F29,X
L87BA40:
	rts

L87BA41:
	lda $0F27,X
	clc
	adc #$0002
	sta $0F27,X
L87BA4B:
	lda $0F05
	bit #$0040
	bne L87BA6D
	lda $0F26,X
	and #$00FF
	lsr A
	asl A
	asl A
	asl A
	asl A
	asl A
	asl A
	asl A
	dec A
	cmp $0F27,X
	bcs L87BA6D
	lda #$0000
	sta $0F27,X
L87BA6D:
	rts

L87BA6E:
	lda $0F05
	bit #$0008
	bne L87BACC
	lda $0F21,X
	sta $04
	lda $0F20,X
	clc
	adc $0F27,X
	sta $03
	lda $0F23,X
	sec
	sbc $0F23
	lsr A
	lsr A
	lsr A
	sta $15
	lda $0F29,X
	clc
	adc $15
	adc $0F14
	sta $15
	lda $0F0E
	dec A
	lsr A
	lsr A
	lsr A
L87BAA2:
	pha
	lda $15
	ldy #$0000
	sta [$03],Y
	inc A
	ldy #$0040
	sta [$03],Y
	lda $15
	and #$FC00
	sta $17
	lda $15
	clc
	adc #$0002
	and #$03FF
	ora $17
	sta $15
	inc $03
	inc $03
	pla
	dec A
	bpl L87BAA2
L87BACC:
	rts

L87BACD:
	phy
	phx
	lda $0F0E
	beq L87BB4B
	lda $0F0B
	beq L87BADC
	brl L87BB79
L87BADC:
	lda $0F0E
	beq L87BB4B
	cmp #$0008
	bcs L87BAE9
	brl L87BB79
L87BAE9:
	tax
	and #$0007
	sta $0F0E
	txa
	lsr A
	lsr A
	lsr A
	tay
	txa
	and #$00F8
	asl A
	asl A
	tax
	dex
	dex
L87BAFE:
	phy
	ldy #$0010
L87BB02:
	lda $7F5BF0,X
	sta $7F5BD0,X
	dex
	dex
	dey
	bne L87BB02
	phx
	lda $0F00
	tax
	jsr L87BA1C
	jsr L87BA41
	plx
	ply
	dey
	bne L87BAFE
	ldx #$0000
	ldy #$0010
L87BB25:
	lda #$FFFF
	sta $7F5BF0,X
	sta $7F5C10,X
	sta $7F5C30,X
	sta $7F5C50,X
	sta $7F5C70,X
	sta $7F5C90,X
	sta $7F5CB0,X
	inx
	inx
	dey
	bne L87BB25
	bra L87BB79
L87BB4B:
	ldx #$0000
	ldy #$0010
L87BB51:
	lda #$FFFF
	sta $7F5BD0,X
	sta $7F5BF0,X
	sta $7F5C10,X
	sta $7F5C30,X
	sta $7F5C50,X
	sta $7F5C70,X
	sta $7F5C90,X
	sta $7F5CB0,X
	inx
	inx
	dey
	bne L87BB51
L87BB79:
	lda $0F0D
	and #$00FF
	sta $15
	xba
	sta $17
	ldy #$0000
	lda [$00],Y
	and #$00FF
	dec A
	clc
	adc $17
	sec
	sbc $15
	pha
	and #$FE00
	lsr A
	clc
	adc $0F17
	sta $04
	pla
	and #$01FF
	asl A
	pha
	and #$000F
	asl A
	asl A
	asl A
	asl A
	sta $03
	pla
	and #$FFF0
	asl A
	asl A
	asl A
	asl A
	asl A
	clc
	adc $03
	adc $0F16
	sta $03
	lda $0F0E
	and #$00F8
	asl A
	asl A
	tax
	ldy #$0000
L87BBCA:
	lda [$03],Y
	jsr L87C826
	lda $7F5BD0,X
	and $15
	sta $7F5BD0,X
	lda $7F5BF0,X
	and $17
	sta $7F5BF0,X
	inx
	inx
	iny
	iny
	cpy #$0010
	bne L87BBCA
	lda $0F0E
	and #$00F8
	asl A
	asl A
	tax
	ldy #$0100
L87BBF8:
	lda [$03],Y
	jsr L87C826
	lda $7F5BE0,X
	and $15
	sta $7F5BE0,X
	lda $7F5C00,X
	and $17
	sta $7F5C00,X
	inx
	inx
	iny
	iny
	cpy #$0110
	bne L87BBF8
	lda $0F0E
	and #$00F8
	asl A
	asl A
	tax
	ldy #$0010
L87BC26:
	lda [$03],Y
	jsr L87C826
	lda $7F5BF0,X
	and $15
	sta $7F5BF0,X
	lda $7F5C10,X
	and $17
	sta $7F5C10,X
	inx
	inx
	iny
	iny
	cpy #$0020
	bne L87BC26
	lda $0F0E
	and #$00F8
	asl A
	asl A
	tax
	ldy #$0110
L87BC54:
	lda [$03],Y
	jsr L87C826
	lda $7F5C00,X
	and $15
	sta $7F5C00,X
	lda $7F5C20,X
	and $17
	sta $7F5C20,X
	inx
	inx
	iny
	iny
	cpy #$0120
	bne L87BC54
	lda $0F0D
	and #$00FF
	sta $15
	xba
	sta $17
	ldy #$0000
	lda [$00],Y
	and #$00FF
	dec A
	clc
	adc $17
	sec
	sbc $15
	tay
	lda $0F1A
	sta $04
	lda $0F19
	sta $03
	lda [$03],Y
	and #$00FF
	clc
	adc $0F0E
	sta $0F0E
	lda $0F0E
	dec A
	and #$00F8
	asl A
	asl A
	clc
	adc #$0020
	sta $0F1C
	ldx $0F00
	lda $0F29,X
	asl A
	asl A
	asl A
	clc
	adc $0F23,X
	sta $0F1E
	plx
	ply
	rts

L87BCCA:
.db $0B $0A $0B $0B $0B $0C $0A $0A
.db $0B $0A $0A $0A $0B $0B $0A $0B
.db $0A $0B $0B $0A $0C $0B $0C $0C
.db $0B $0B $0C $0B $0C $0B $09 $0C
.db $0C $0B $0A $0B $0B $0A $09 $0A
.db $0A $0B $0A $0B $0B $0B $0D $0B
.db $0B $0C $0B $0B $0A $0B $0C $0B
.db $0B $0A $0C $0B $0A $0C $0D $0B
.db $0C $0C $0C $0D $0B $0C $0C $09
.db $08 $07 $08 $09 $09 $09 $09 $08
.db $0A $0A $09 $0A $0B $09 $0B $09
.db $0B $09 $0B $0B $0A $0A $0A $09
.db $0B $09 $0B $09 $0B $0B $09 $0A
.db $0A $0A $09 $09 $0B $0A $0B $09
.db $0A $0A $0A $0B $0B $09 $0A $09
.db $0B $0A $09 $09 $0A $0A $0B $0A
.db $0A $0A $0B $0B $0A $0B $0B $0A
.db $0A $0A $0A $0A $0B $0A $0A $0A
.db $0A $0B $0A $0B $0A $0B $07 $07
.db $07 $08 $08 $08 $07 $08 $06 $0A
.db $0A $0A $0A $0A $0A $0A $0A $0A
.db $0A $0D $0D $0D $0D $0C $0B $0D
.db $0D $0C $0D $0D $0D $0C $0B $0C
.db $0A $0C $0C $0B $0C $0C $0C $0B
.db $0B $0B $0B $0A $08 $0D $0D $0B
.db $0D $0D $0D $0D $0C $0D $0D $0D
.db $0D $0C $0D $0D $0C $0D $0C $0D
.db $0D $0B $0C $0D $0C $0C $0D $0B
.db $0D $0D $0D $0B $0B $0C $0C $0D
.db $0D $0B $0D $0D $0D $0C $0D $0D
.db $0D $0D $0C $0D $0D $0D $0D $0C
.db $09 $0C $0C $0D $0D $0C $0C $0D
.db $0D $0D $0C $0B $0D $0D $0C $0D
.db $0D $0C $0D $0D $0C $0D $0C $0D
.db $0C $0A $0C $0B $0B $0D $0C $0D
.db $0C $0D $0D $0B $0C $0C $0D $0C
.db $0D $0C $0D $0C $0C $0D $0C $0C
.db $0D $0D $0C $0B $0D $0D $0B $0B
.db $0C $0C $0D $0A $0D $0C $0D $0C
.db $0C $0C $0C $0B $0D $0C $0D $0C
.db $0B $0C $0D $0B $0C $0D $0D $0C
.db $0B $0C $0D $0C $0C $0D $0C $0C
.db $0D $0D $0C $0D $0C $0D $0C $0B
.db $0C $0D $0C $0C $0C $0B $0D $0D
.db $0D $0C $0C $0B $0D $0D $0B $0B
.db $0C $0D $0C $0C $0B $0C $0C $0C
.db $0D $0D $0C $0C $0C $0B $0C $0C
.db $0D $0B $0C $0C $0D $0D $0C $0D
.db $0D $0D $0D $0E $0D $0D $0C $0C
.db $0C $0D $0C $0D $0D $0D $0D $0C
.db $0D $0D $0C $0C $0D $0D $0C $0D
.db $0D $0D $0D $0B $0C $0D $0D $0C
.db $0C $0D $0D $0C $0D $0C $0C $0D
.db $0C $0D $0D $0C $0C $0C $0C $0D
.db $0D $0D $0C $0C $0B $0C $0D $0C
.db $0C $0B $0C $0C $0D $0D $0C $0D
.db $0D $0B $0D $0C $0D $0D $0C $0D
.db $0C $0D $0B $0B $0D $0B $0C $0C
.db $0D $0C $0B $0C $0C $0C $0C $0C
.db $0D $0D $0C $0D $0C $0D $0D $0C
.db $0C $0C $0D $0D $08 $0B $0D $0D
.db $0B $0B $0C $0C $0D $0C $0D $0D
.db $0D $0D $0C $0C $0C $0D $0C $0C
.db $0D $0C $0C $0D $0D $0C $0D $0C
.db $0A $0C $0D $0D $0D $0C $0D $0C
.db $0C $0C $0D $0D $0C $0D $0D $0D
.db $0D $0C $0C $0D $0D $0D $0D $0C
.db $0D $0C $0C $0C $0C $0D $0C $0D
.db $0D $0D $0D $0C $0C $0D $0B $0D
.db $0C $0C $09 $0C $0D $0D $0C $0C
.db $0D $0D $0D $0D $0C $0C $0D $0D
.db $0C $0D $0C $0D $0D $0D $0D $0D
.db $0B $0C $0B $0D $0C $0C $0D $0D
.db $0D $0D $0D $0D $0D $0D $0B $0C
.db $0D $0C $0D $0C $0C $0C $0D $0D
.db $0C $0D $0D $0D $0C $0D $0D $0C
.db $0D $0D $0D $0C $0D $0C $0C $0C
.db $0D $0A $0D $0C $0D $0D $0D $0C
.db $0D $0D $0C $0D $0D $0C $0D $0C
.db $0D $0B $0D $0D $0C $0D $0D $0C
.db $0D $0D $0C $0D $0C $0C $0B $0B
.db $0C $0C $0D $0D $0C $0B $0D $0D
.db $0D $0A $0C $0D $0C $0A $0D $0C
.db $0C $0D $0C $0D $0C $0D $0C $0D
.db $0D $0D $0C $0D $0C $0D $0D $0B
.db $0D $0D $0C $0D $0D $0D $0D $0D
.db $0D $0D $0D $0D $0D $0B $0D $0C
.db $0D $0D $0D $0C $0D $0C $0D $0C
.db $0D $0C $0C $0D $0C $0B $0C $0D
.db $0C $0D $0D $0D $0C $0D $0C $0D
.db $0C $0C $0D $0D $0D $0D $0D $0D
.db $0C $0C $0D $0D $0C $0C $0D $0B
.db $0D $0C $0D $0C $0D $0D $0D $0D
.db $0C $0D $0D $0C $0D $0D $0D $0D
.db $0D $0B $0D $0D $0C $0D $0C $0D
.db $0C $0D $0C $0D $0D $0E $0C $0C
.db $0D $0D $0C $0D $0D $0D $0D $0D
.db $0D $0D $0C $0C $0C $0C $0D $0D
.db $0D $0D $0C $0C $0E $0C $0D $0C
.db $0B $0D $0C $0D $0C $0B $0D $0B
.db $0D $0D $0D $0D $0B $0D $0C $0C
.db $0B $0D $0D $0D $0C $0D $0D $0B
.db $0D $0C $0D $0C $0D $0C $0B $0C
.db $0D $0C $0D $0A $0B $09 $0D $0C
.db $0D $0D $0C $0D $0C $0C $0D $0D
.db $0B $0D $0C $0D $0C $0C $0D $0D
.db $0C $0C $0C $0D $0C $0D $0D $0C
.db $0D $0D $0D $0C $0D $0D $0D $0C
.db $0D $0D $0C $0C $0C $0C $0D $0B
.db $0A $0D $0D $0C $0C $0D $0C $0C
.db $0D $0D $0C $0C $0C $0D $0D $0C
.db $0C $0B $0D $0D $0D $0C $0D $0D
.db $0C $0C $0C $0C $0D $0C $0D $0D
.db $0D $0D $0D $0D $0D $0D $0D $0D
.db $0C $0C $0D $0D $0D $0C $0D $0D
.db $0D $0D $0D $0D $0C $0D $0C $0C
.db $0C $0C $0C $0C $0C $0C $0C $0C
.db $0C $0C $0C $0C $0C $0C $0C $0C
.db $0C $0C $0C $0C $0C $0C $0C $0C
.db $0C $0C $0C $0C $0C $0C $0C $0C
.db $0C $0C $0C $0C $0C $0C $0C $0C
.db $0C $0C $0C $0C $0C $0C $0C $0C
.db $0C $0C $0C $0C $0C $0C $0C $0C
.db $0C $0C $0C $0C $0C $0C $0C $0C

L87C0AA:
	lda $0F1C
	bne L87C0B0
	rts

L87C0B0:
	jsr L87C97E
	lda $0F05
	bit #$0008
	beq L87C0BE
	brl L87C16F
L87C0BE:
	ldx $0F00
	lda $0F29,X
	asl A
	asl A
	asl A
	lda $0F1E
	sec
	sbc $0F23,X
	lsr A
	lsr A
	lsr A
	sta $15
	lda $0F1C
	lsr A
	lsr A
	lsr A
	lsr A
	clc
	adc $15
	sec
	sbc #$0400
	bcs L87C0E6
	lda #$0000
L87C0E6:
	sta $15
	tay
	lda $0F1C
	lsr A
	lsr A
	lsr A
	lsr A
	sec
	sbc $15
	tax
	phy
	phx
	lda #$0002
	sta $17
	lda #$5BD0
	sta $18
	lda #$007F
	sta $1A
	tya
	asl A
	asl A
	asl A
	asl A
	sta $15
	lda $0F1C
	sec
	sbc $15
	sta $1B
	lda #$0080
	sta $1D
	lda $0F1E
	sta $1E
	lda #$0000
	sta $01
	lda #$0017
	sta $00
	jsl L808EAD
	plx
	ply
	tya
	beq L87C16E
	lda #$0002
	sta $17
	txa
	asl A
	asl A
	asl A
	asl A
	clc
	adc #$5BD0
	sta $18
	lda #$007F
	sta $1A
	tya
	asl A
	asl A
	asl A
	asl A
	sta $1B
	lda #$0080
	sta $1D
	txa
	asl A
	asl A
	asl A
	clc
	adc $0F1E
	sec
	sbc #$2000
	sta $1E
	lda #$0000
	sta $01
	lda #$0017
	sta $00
	jsl L808EAD
L87C16E:
	rts

L87C16F:
	lda #$0000
	sta $7FF010
	sta $7FF012
	sta $7FF014
	sta $7FF016
	sta $7FF018
	sta $7FF01A
	sta $7FF01C
	sta $7FF01E
	lda #$0000
	sta $7FF090
	sta $7FF092
	sta $7FF094
	sta $7FF096
	sta $7FF098
	sta $7FF09A
	sta $7FF09C
	sta $7FF09E
	lda #$0000
	sta $7FF030
	sta $7FF032
	sta $7FF034
	sta $7FF036
	sta $7FF038
	sta $7FF03A
	sta $7FF03C
	sta $7FF03E
	lda #$0000
	sta $7FF0B0
	sta $7FF0B2
	sta $7FF0B4
	sta $7FF0B6
	sta $7FF0B8
	sta $7FF0BA
	sta $7FF0BC
	sta $7FF0BE
	lda #$0000
	sta $7FF050
	sta $7FF052
	sta $7FF054
	sta $7FF056
	sta $7FF058
	sta $7FF05A
	sta $7FF05C
	sta $7FF05E
	lda #$0000
	sta $7FF0D0
	sta $7FF0D2
	sta $7FF0D4
	sta $7FF0D6
	sta $7FF0D8
	sta $7FF0DA
	sta $7FF0DC
	sta $7FF0DE
	lda #$FFFF
	sta $7FF060
	sta $7FF062
	sta $7FF064
	sta $7FF066
	sta $7FF068
	sta $7FF06A
	sta $7FF06C
	sta $7FF06E
	lda #$FFFF
	sta $7FF0E0
	sta $7FF0E2
	sta $7FF0E4
	sta $7FF0E6
	sta $7FF0E8
	sta $7FF0EA
	sta $7FF0EC
	sta $7FF0EE
	lda #$0000
	sta $7FF070
	sta $7FF072
	sta $7FF074
	sta $7FF076
	sta $7FF078
	sta $7FF07A
	sta $7FF07C
	sta $7FF07E
	lda #$0000
	sta $7FF0F0
	sta $7FF0F2
	sta $7FF0F4
	sta $7FF0F6
	sta $7FF0F8
	sta $7FF0FA
	sta $7FF0FC
	sta $7FF0FE
	lda $7F5BD0
	sta $7FF000
	lda $7F5BD2
	sta $7FF002
	lda $7F5BD4
	sta $7FF004
	lda $7F5BD6
	sta $7FF006
	lda $7F5BD8
	sta $7FF008
	lda $7F5BDA
	sta $7FF00A
	lda $7F5BDC
	sta $7FF00C
	lda $7F5BDE
	sta $7FF00E
	lda $7F5BE0
	sta $7FF080
	lda $7F5BE2
	sta $7FF082
	lda $7F5BE4
	sta $7FF084
	lda $7F5BE6
	sta $7FF086
	lda $7F5BE8
	sta $7FF088
	lda $7F5BEA
	sta $7FF08A
	lda $7F5BEC
	sta $7FF08C
	lda $7F5BEE
	sta $7FF08E
	lda $7F5BF0
	sta $7FF020
	lda $7F5BF2
	sta $7FF022
	lda $7F5BF4
	sta $7FF024
	lda $7F5BF6
	sta $7FF026
	lda $7F5BF8
	sta $7FF028
	lda $7F5BFA
	sta $7FF02A
	lda $7F5BFC
	sta $7FF02C
	lda $7F5BFE
	sta $7FF02E
	lda $7F5C00
	sta $7FF0A0
	lda $7F5C02
	sta $7FF0A2
	lda $7F5C04
	sta $7FF0A4
	lda $7F5C06
	sta $7FF0A6
	lda $7F5C08
	sta $7FF0A8
	lda $7F5C0A
	sta $7FF0AA
	lda $7F5C0C
	sta $7FF0AC
	lda $7F5C0E
	sta $7FF0AE
	lda $7F5C10
	sta $7FF040
	lda $7F5C12
	sta $7FF042
	lda $7F5C14
	sta $7FF044
	lda $7F5C16
	sta $7FF046
	lda $7F5C18
	sta $7FF048
	lda $7F5C1A
	sta $7FF04A
	lda $7F5C1C
	sta $7FF04C
	lda $7F5C1E
	sta $7FF04E
	lda $7F5C20
	sta $7FF0C0
	lda $7F5C22
	sta $7FF0C2
	lda $7F5C24
	sta $7FF0C4
	lda $7F5C26
	sta $7FF0C6
	lda $7F5C28
	sta $7FF0C8
	lda $7F5C2A
	sta $7FF0CA
	lda $7F5C2C
	sta $7FF0CC
	lda $7F5C2E
	sta $7FF0CE
	lda $0F05
	bit #$0020
	bne L87C458
	brl L87C718
L87C458:
	lda $7FF000
	eor #$FFFF
	sta $7FF000
	lda $7FF002
	eor #$FFFF
	sta $7FF002
	lda $7FF004
	eor #$FFFF
	sta $7FF004
	lda $7FF006
	eor #$FFFF
	sta $7FF006
	lda $7FF008
	eor #$FFFF
	sta $7FF008
	lda $7FF00A
	eor #$FFFF
	sta $7FF00A
	lda $7FF00C
	eor #$FFFF
	sta $7FF00C
	lda $7FF00E
	eor #$FFFF
	sta $7FF00E
	lda $7FF080
	eor #$FFFF
	sta $7FF080
	lda $7FF082
	eor #$FFFF
	sta $7FF082
	lda $7FF084
	eor #$FFFF
	sta $7FF084
	lda $7FF086
	eor #$FFFF
	sta $7FF086
	lda $7FF088
	eor #$FFFF
	sta $7FF088
	lda $7FF08A
	eor #$FFFF
	sta $7FF08A
	lda $7FF08C
	eor #$FFFF
	sta $7FF08C
	lda $7FF08E
	eor #$FFFF
	sta $7FF08E
	lda $7FF020
	eor #$FFFF
	sta $7FF020
	lda $7FF022
	eor #$FFFF
	sta $7FF022
	lda $7FF024
	eor #$FFFF
	sta $7FF024
	lda $7FF026
	eor #$FFFF
	sta $7FF026
	lda $7FF028
	eor #$FFFF
	sta $7FF028
	lda $7FF02A
	eor #$FFFF
	sta $7FF02A
	lda $7FF02C
	eor #$FFFF
	sta $7FF02C
	lda $7FF02E
	eor #$FFFF
	sta $7FF02E
	lda $7FF0A0
	eor #$FFFF
	sta $7FF0A0
	lda $7FF0A2
	eor #$FFFF
	sta $7FF0A2
	lda $7FF0A4
	eor #$FFFF
	sta $7FF0A4
	lda $7FF0A6
	eor #$FFFF
	sta $7FF0A6
	lda $7FF0A8
	eor #$FFFF
	sta $7FF0A8
	lda $7FF0AA
	eor #$FFFF
	sta $7FF0AA
	lda $7FF0AC
	eor #$FFFF
	sta $7FF0AC
	lda $7FF0AE
	eor #$FFFF
	sta $7FF0AE
	lda $7FF040
	eor #$FFFF
	sta $7FF040
	lda $7FF042
	eor #$FFFF
	sta $7FF042
	lda $7FF044
	eor #$FFFF
	sta $7FF044
	lda $7FF046
	eor #$FFFF
	sta $7FF046
	lda $7FF048
	eor #$FFFF
	sta $7FF048
	lda $7FF04A
	eor #$FFFF
	sta $7FF04A
	lda $7FF04C
	eor #$FFFF
	sta $7FF04C
	lda $7FF04E
	eor #$FFFF
	sta $7FF04E
	lda $7FF0C0
	eor #$FFFF
	sta $7FF0C0
	lda $7FF0C2
	eor #$FFFF
	sta $7FF0C2
	lda $7FF0C4
	eor #$FFFF
	sta $7FF0C4
	lda $7FF0C6
	eor #$FFFF
	sta $7FF0C6
	lda $7FF0C8
	eor #$FFFF
	sta $7FF0C8
	lda $7FF0CA
	eor #$FFFF
	sta $7FF0CA
	lda $7FF0CC
	eor #$FFFF
	sta $7FF0CC
	lda $7FF0CE
	eor #$FFFF
	sta $7FF0CE
	lda $7FF060
	eor #$FFFF
	sta $7FF060
	lda $7FF062
	eor #$FFFF
	sta $7FF062
	lda $7FF064
	eor #$FFFF
	sta $7FF064
	lda $7FF066
	eor #$FFFF
	sta $7FF066
	lda $7FF068
	eor #$FFFF
	sta $7FF068
	lda $7FF06A
	eor #$FFFF
	sta $7FF06A
	lda $7FF06C
	eor #$FFFF
	sta $7FF06C
	lda $7FF06E
	eor #$FFFF
	sta $7FF06E
	lda $7FF0E0
	eor #$FFFF
	sta $7FF0E0
	lda $7FF0E2
	eor #$FFFF
	sta $7FF0E2
	lda $7FF0E4
	eor #$FFFF
	sta $7FF0E4
	lda $7FF0E6
	eor #$FFFF
	sta $7FF0E6
	lda $7FF0E8
	eor #$FFFF
	sta $7FF0E8
	lda $7FF0EA
	eor #$FFFF
	sta $7FF0EA
	lda $7FF0EC
	eor #$FFFF
	sta $7FF0EC
	lda $7FF0EE
	eor #$FFFF
	sta $7FF0EE
L87C718:
	ldx $0F00
	lda $0F1E
	sec
	sbc $0F23,X
	lsr A
	lsr A
	lsr A
	pha
	pha
	pha
	and #$001F
	lsr A
	sta $15
	pla
	and #$FFE0
	clc
	adc $15
	asl A
	asl A
	asl A
	asl A
	clc
	adc $0F23,X
	sta $15
	adc #$0010
	sta $17
	adc #$0010
	sta $19
	adc #$0010
	sta $1B
	pla
	and #$001F
	cmp #$001A
	beq L87C771
	cmp #$001C
	beq L87C769
	cmp #$001E
	bne L87C779
	lda $17
	clc
	adc #$0100
	sta $17
L87C769:
	lda $19
	clc
	adc #$0100
	sta $19
L87C771:
	lda $1B
	clc
	adc #$0100
	sta $1B
L87C779:
	ldx #$F000
	ldy $15
	jsr L87C7FF
	ldx #$F080
	lda $15
	clc
	adc #$0100
	tay
	jsr L87C7FF
	lda $0F1C
	cmp #$0040
	bcc L87C7CA
	ldx #$F020
	lda $17
	tay
	jsr L87C7FF
	ldx #$F0A0
	lda $17
	clc
	adc #$0100
	tay
	jsr L87C7FF
	lda $0F1C
	cmp #$0060
	bcc L87C7CA
	ldx #$F040
	lda $19
	tay
	jsr L87C7FF
	ldx #$F0C0
	lda $19
	clc
	adc #$0100
	tay
	jsr L87C7FF
L87C7CA:
	pla
	lsr A
	sta $00
	lda $0F1C
	lsr A
	lsr A
	lsr A
	lsr A
	lsr A
	clc
	adc $00
	bit #$0001
	beq L87C7FE
	lda $0F1C
	lsr A
	lsr A
	lsr A
	lsr A
	lsr A
	asl A
	tax
	lda $15,X
	pha
	tay
	ldx #$F060
	jsr L87C7FF
	pla
	clc
	adc #$0100
	tay
	ldx #$F060
	jsr L87C7FF
L87C7FE:
	rts

L87C7FF:
	lda #$0002
	sta $1D
	stx $1E
	lda #$007F
	sta $20
	lda #$0020
	sta $21
	lda #$0080
	sta $23
	sty $24
	lda #$0000
	sta $01
	lda #$001D
	sta $00
	jsl L808EAD
	rts

L87C826:
	phx
	pha
	xba
	and #$FF00
	ora #$00FF
	sta $19
	pla
	and #$FF00
	ora #$00FF
	sta $1B
	lda $0F0E
	and #$0007
	tax
	beq L87C84C
L87C843:
	sec
	ror $19
	sec
	ror $1B
	dex
	bne L87C843
L87C84C:
	lda $19
	xba
	and #$00FF
	sta $15
	lda $1B
	and #$FF00
	ora $15
	sta $15
	lda $19
	and #$00FF
	sta $17
	lda $1B
	xba
	and #$FF00
	ora $17
	sta $17
	plx
	rts

L87C870:
	lda $0F27,X
	and #$FF80
	clc
	adc #$0080
	sta $0F27,X
	jsr L87BA4B
	lda $0F05
	bit #$0008
	bne L87C8DE
	lda $0F05
	bit #$0040
	bne L87C8C9
	lda $0F29,X
	lsr A
	sta $4204
	sep #$20
	lda $0F25,X
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
	inc A
	cmp $0F26,X
	bcc L87C8B2
	lda #$00
L87C8B2:
	xba
	lda $0F25,X
	rep #$20
	sta.l WRMPYA
	nop
	nop
	nop
	lda.l RDMPYL
	asl A
	sta $0F29,X
	bra L87C8D9
L87C8C9:
	lda $0F0E
	beq L87C8EE
	lsr A
	lsr A
	lsr A
L87C8D1:
	pha
	jsr L87BA1C
	pla
	dec A
	bpl L87C8D1
L87C8D9:
	jsr L87BA26
	bra L87C8FD
L87C8DE:
	lda $0F0E
	beq L87C8EE
	lsr A
	lsr A
	lsr A
L87C8E6:
	pha
	jsr L87BA1C
	pla
	dec A
	bpl L87C8E6
L87C8EE:
	lda $0F29,X
	bit #$0002
	beq L87C8FB
	inc A
	inc A
	sta $0F29,X
L87C8FB:
	bra L87C904
L87C8FD:
	lda $0F2B,X
	inc A
	sta $0F2B,X
L87C904:
	lda #$0000
	sta $0F0E
	sta $0F0B
	rts

L87C90E:
	phx
	lda $0F21,X
	sta $04
	lda $0F20,X
	sta $03
	lda $0F26,X
	and #$00FF
	lsr A
L87C920:
	pha
	lda $0F25,X
	and #$00FF
	tax
	phx
	lda $0F12
	ldy #$0000
L87C92F:
	sta [$03],Y
	iny
	iny
	dex
	bne L87C92F
	plx
	ldy #$0040
L87C93A:
	sta [$03],Y
	iny
	iny
	dex
	bne L87C93A
	lda $03
	clc
	adc #$0080
	sta $03
	pla
	dec A
	bne L87C920
	plx
	rts

L87C94F:
	phx
	lda $0F21,X
	sta $04
	sta $07
	lda $0F20,X
	clc
	adc $0F27,X
	sta $03
	clc
	adc #$0040
	sta $06
	lda $0F25,X
	and #$00FF
	tax
	lda $0F12
	ldy #$0000
L87C973:
	sta [$03],Y
	sta [$06],Y
	iny
	iny
	dex
	bne L87C973
	plx
	rts

L87C97E:
	lda $0F09
	cmp #$00FF
	beq L87C98B
	cmp #$0001
	bne L87C993
L87C98B:
	lda $0137
	bit #$0001
	bne L87C9CB
L87C993:
	lda $0F10
	and #$00FF
	asl A
	tax
	jmp (L87C99E,X)

L87C99E:
.dw L87C9CB
.dw L87C9B4
.dw L87C9BC
.dw L87C9C4
.dw L87C9B4
.dw L87C9B4
.dw L87C9B4
.dw L87C9B4
.dw L87C9B4
.dw L87C9B4
.dw L87C9B4

L87C9B4:
	lda #$0079
	jsl L80AA16
	rts

L87C9BC:
	lda #$0025
	jsl L80AA16
	rts

L87C9C4:
	lda #$0079
	jsl L80AA16
L87C9CB:
	rts

L87C9CC:
	inc $0F02
	cmp #$0080
	bcc L87C9DA
	and #$007F
	jmp L87CE29

L87C9DA:
	cmp #$0018
L87C9DD:
	bcs L87C9DD
	asl A
	tax
	jsr (COMMANDS_00_JUMP_TABLE,X)
	clc
	rts

COMMANDS_00_JUMP_TABLE:
	.dw SCRIPT_COMMAND_00
	.dw SCRIPT_COMMAND_01
	.dw SCRIPT_COMMAND_02
	.dw SCRIPT_COMMAND_03
	.dw SCRIPT_COMMAND_04
	.dw SCRIPT_COMMAND_05
	.dw SCRIPT_COMMAND_06
	.dw SCRIPT_COMMAND_07
	.dw SCRIPT_COMMAND_08
	.dw SCRIPT_COMMAND_09
	.dw SCRIPT_COMMAND_0A
	.dw SCRIPT_COMMAND_0B
	.dw SCRIPT_COMMAND_0C
	.dw SCRIPT_COMMAND_0D
	.dw SCRIPT_COMMAND_0E
	.dw SCRIPT_COMMAND_0F
	.dw SCRIPT_COMMAND_10
	.dw SCRIPT_COMMAND_11
	.dw SCRIPT_COMMAND_12
	.dw SCRIPT_COMMAND_13
	.dw SCRIPT_COMMAND_14
	.dw SCRIPT_COMMAND_15
	.dw SCRIPT_COMMAND_16
	.dw SCRIPT_COMMAND_17

SCRIPT_COMMAND_00:
	sep #$20
	stz $0FA1
	rep #$20
	stz $0F05
	stz $0F09
	pla
	sec
	rts

SCRIPT_COMMAND_01:
	lda $0F00
	tax
	jsr L87C870
	lda $0F09
	cmp.w #$00FF
	beq L87CA3B
	lda $0F07
	sta $0F09
L87CA3B:
	lda $0F02
	inc A
	sta $0F02
	pla
	sec
	rts

SCRIPT_COMMAND_02:
	ldx $0F00
	jsr L87C90E
	lda #$0000
	sta $0F27,X
	sta $0F29,X
	sta $0F2B,X
	lda #$0000
	sta $0F0E
	sta $0F0B
	inc $0F02
	rts

SCRIPT_COMMAND_0E:
	ldx $0F00
	lda [$00],Y
	sta $0F20,X
	iny
	lda [$00],Y
	sta $0F21,X
	inc $0F02
	inc $0F02
	inc $0F02
	inc $0F02
	rts

SCRIPT_COMMAND_03:
	lda [$00],Y
	sta $0C1B
	jsl L81D5A8
	ldx $0F00
	lda #$7E00
	sta $0F21,X
	lda #$3000
	clc
	adc $15
	sta $0F20,X
	inc $0F02
	inc $0F02
	inc $0F02
	rts

SCRIPT_COMMAND_04:
	ldx $0F00
	lda [$00],Y
	sta $0F25,X
	inc $0F02
	inc $0F02
	inc $0F02
	rts

SCRIPT_COMMAND_05:
	lda [$00],Y
	and #$00FF
	sta $0F07
	inc $0F02
	inc $0F02
	rts

SCRIPT_COMMAND_06:
	lda [$00],Y
	and #$00FF
	sta $0F10
	inc $0F02
	inc $0F02
	rts

SCRIPT_COMMAND_07:
	lda [$00],Y
	sta $0F14
	inc $0F02
	inc $0F02
	inc $0F02
	rts

SCRIPT_COMMAND_08:
	lda [$00],Y
	sta $0F12
	inc $0F02
	inc $0F02
	inc $0F02
	rts

SCRIPT_COMMAND_09:
	ldx $0F00
	jsr L87C90E
	lda #$0000
	sta $0F27,X
	sta $0F29,X
	sta $0F2B,X
	lda #$0000
	sta $0F0E
	sta $0F0B
SCRIPT_COMMAND_0A:
	lda #$0002
	trb $0F05
	lda #$0004
	tsb $0F05
	lda #$00FE
	sta $0F09
	stz $0F42
	inc $0F02
	pla
	sec
	rts

SCRIPT_COMMAND_0B:
	ldx $0F00
	lda [$00],Y
	sta $0F27,X
	inc $0F02
	inc $0F02
	inc $0F02
	rts

SCRIPT_COMMAND_0C:
	lda [$00],Y
	and #$00FF
	ora #$1100
	sta.l WRMPYA
	nop
	nop
	nop
	lda.l RDMPYL
	sta $0F00
	tax
	inc $0F02
	inc $0F02
	rts

SCRIPT_COMMAND_0D:
	ldx $0F00
	lda [$00],Y
	sta $0F23,X
	inc $0F02
	inc $0F02
	inc $0F02
	rts

SCRIPT_COMMAND_0F:
	lda [$00],Y
	and #$00FF
	sta $15
	lda $0F0E
	lsr
	lsr
	lsr
	inc A
	clc
	adc $15
L87CB7B:
	pha
	lda $0F00
	tax
	jsr L87BA1C
	jsr L87BA41
	pla
	dec A
	bne L87CB7B
	stz $0F0E
	inc $0F02
	inc $0F02
	lda $0F07
	sta $0F09
	pla
	sec
	rts

SCRIPT_COMMAND_10:
	lda [$00],Y
	and #$00FF
	sta $0F09
	inc $0F02
	inc $0F02
	pla
	sec
	rts

SCRIPT_COMMAND_11
	lda #$0000
	bra L87CBBF

SCRIPT_COMMAND_12
	lda #$0001
	bra L87CBBF

SCRIPT_COMMAND_13
	lda #$0002
	bra L87CBBF

SCRIPT_COMMAND_14
	lda #$0003
L87CBBF:
	sep #$20
	sta $0F0D
	rep #$20
	inc $0F02
	rts

SCRIPT_COMMAND_15
	lda [$00],Y
	sta $0F05
	inc $0F02
	inc $0F02
	inc $0F02
	rts

SCRIPT_COMMAND_16
	lda [$00],Y
	ora $0F05
	sta $0F05
	inc $0F02
	inc $0F02
	inc $0F02
	rts

SCRIPT_COMMAND_17
	lda [$00],Y
	and $0F05
	sta $0F05
	inc $0F02
	inc $0F02
	inc $0F02
	rts

L87CBFD:
	sep #$20
	lda $F7
	ora #$08
	sta $F7
	rep #$20
	rts

L87CC08:
	php
	lda $0F05
	bit #$0008
	beq L87CC14
	jmp L87CDCA

L87CC14:
	sep #$20
	lda #$01
	sta $0F64
	rep #$30
	ldy #$0000
	lda #$7F00
	sta $01
	lda #$67DC
	sta $00
	lda $0F20
	sec
	sbc #$3000
	lsr A
	lsr A
	lsr A
	lsr A
	lsr A
	lsr A
	pha
	asl A
	asl A
	asl A
	cmp #$007F
	bcc L87CC56
	beq L87CC56
	pha
	lda $91
	sta $15
	lda $93
	sta $17
	lda #$007F
	jsr L87CDCC
	pla
	sec
	sbc #$007F
L87CC56:
	pha
	lda $91
	sta $15
	lda $93
	sta $17
	pla
	jsr L87CDCC
	jsr L87CDDD
	sta $03
	sec
	sbc #$0010
	cmp $0F2B
	bcs L87CCE1
	sta $09
	lda $91
	clc
	adc #$0000
	sta $15
	lda $03
	tax
	lda $0F2B
	sec
	sbc $09
	jsr L87CDF1
	txa
	beq L87CCE1
	sta $06
	clc
	adc $93
	sta $17
	lda $03
	sec
	sbc $06
	jsr L87CDCC
	lda $06
	cmp #$0010
	bcc L87CCBA
	lda $91
	clc
	adc #$0000
	sta $15
	lda $06
	sec
	sbc $03
	clc
	adc $93
	sta $17
	lda $06
	and #$FFF0
	jsr L87CDCC
L87CCBA:
	lda $06
	and #$000F
	sta $06
	beq L87CCF2
L87CCC3:
	lda $91
	clc
	adc #$0000
	sta $15
	lda $06
	sec
	sbc $03
	clc
	adc $93
	sta $17
	lda #$0001
	jsr L87CDCC
	dec $06
	bne L87CCC3
	bra L87CCF2
L87CCE1:
	lda $91
	clc
	adc #$0000
	sta $15
	lda $93
	sta $17
	lda $03
	jsr L87CDCC
L87CCF2:
	pla
	clc
	adc $0F26
	sta $15
	lda $0F36
	bne L87CD01
	jmp L87CDB0

L87CD01:
	lda $0F31
	sec
	sbc #$3000
	lsr A
	lsr A
	lsr A
	lsr A
	lsr A
	lsr A
	sec
	sbc $15
	asl A
	asl A
	asl A
	pha
	lda $91
	sta $15
	lda $93
	sta $17
	pla
	jsr L87CDCC
	jsr L87CDE7
	sta $03
	sec
	sbc #$0010
	cmp $0F3C
	bcs L87CD9F
	sta $09
	lda $91
	clc
	adc #$0000
	sta $15
	lda $03
	tax
	lda $0F3C
	sec
	sbc $09
	jsr L87CDF1
	txa
	beq L87CD9F
	sta $06
	clc
	adc $93
	sta $17
	lda $03
	sec
	sbc $06
	jsr L87CDCC
	lda $06
	cmp #$0010
	bcc L87CD78
	lda $91
	clc
	adc #$0000
	sta $15
	lda $06
	sec
	sbc $03
	clc
	adc $93
	sta $17
	lda $06
	and #$FFF0
	jsr L87CDCC
L87CD78:
	lda $06
	and #$000F
	sta $06
	beq L87CDB0
L87CD81:
	lda $91
	clc
	adc #$0000
	sta $15
	lda $06
	sec
	sbc $03
	clc
	adc $93
	sta $17
	lda #$0001
	jsr L87CDCC
	dec $06
	bne L87CD81
	bra L87CDB0
L87CD9F:
	lda $91
	clc
	adc #$0000
	sta $15
	lda $93
	sta $17
	lda $03
	jsr L87CDCC
L87CDB0:
	lda #$0001
	pha
	lda $91
	sta $15
	lda $93
	sta $17
	pla
	jsr L87CDCC
	lda #$0000
	sta [$00],Y
	sep #$20
	stz $0F64
L87CDCA:
	plp
	rtl

L87CDCC:
	sta [$00],Y
	iny
	lda $15
	sta [$00],Y
	iny
	iny
	lda $17
	dec A
	sta [$00],Y
	iny
	iny
	rts

L87CDDD:
	lda $0F26
	and.w #$00FF
	asl A
	asl A
	asl A
	rts

L87CDE7:
	lda $0F37
	and.w #$00FF
	asl A
	asl A
	asl A
	rts

L87CDF1:
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
	rts

L87CE0B:
	sep #$20
	lda #$03
	sta $4330
	lda #$11
	sta $4331
	lda #$00
	sta $4332
	lda #$1B
	sta $4333
	lda #$00
	sta $4334
	rep #$20
	rts

L87CE29:
	cmp #$0016
L87CE2C:
	bcs L87CE2C
	asl
	tax
	jsr (COMMANDS_80_JUMP_TABLE,X)
	rts

COMMANDS_80_JUMP_TABLE:
	.dw SCRIPT_COMMAND_80
	.dw SCRIPT_COMMAND_81
	.dw SCRIPT_COMMAND_82
	.dw SCRIPT_COMMAND_83
	.dw SHOW_PORTRAIT_CMD
	.dw CLOSE_FRAME_CMD
	.dw SCRIPT_COMMAND_86
	.dw SCRIPT_COMMAND_87
	.dw START_DIALOGUE_CMD
	.dw PLAY_SONG_CMD
	.dw WAIT_FOR_A_CMD
	.dw SCRIPT_COMMAND_8B
	.dw SCRIPT_COMMAND_8C
	.dw SCRIPT_COMMAND_8D
	.dw SCRIPT_COMMAND_8E
	.dw SCRIPT_COMMAND_8F
	.dw SCRIPT_COMMAND_90
	.dw SCRIPT_COMMAND_91
	.dw SWITCH_FRAME_CMD
	.dw SCRIPT_COMMAND_93
	.dw SCRIPT_COMMAND_94
	.dw SCRIPT_COMMAND_95

SCRIPT_COMMAND_95:
	jsl L8087EA
	lda.w #$0000
	sta $0125
	sta $0127
	inc $0F02
	clc
	rts

SCRIPT_COMMAND_93:
	jsl L87A705
	inc $0F02
	clc
	rts

SWITCH_FRAME_CMD:
	sep #$20
	lda $1002
	and #$02
	beq L87CE8E
	rep #$20
	inc $0F02
	inc $0F02
	clc
	rts

L87CE8E:
	rep #$20
	lda $0F02
	sta $00
	lda $0F03
	sta $01
	ldy.w #$0001
	lda [$00],Y
	and.w #$00FF
	ora #$1100
	sta.l WRMPYA
	nop
	nop
	nop
	lda.l RDMPYL
	sta $0F00
	sep #$20
	lda $0F00
	cmp #$11
	beq L87CEC0
	lda #$00
	bra L87CEC2
L87CEC0:
	lda #$01
L87CEC2:
	jsr L87D377
	rep #$20
	ldx $0F00
	inc $0F02
	inc $0F02
	clc
	rts

SCRIPT_COMMAND_90:
	lda $0F05
	ora.w #$0010
	sta $0F05
	inc $0F02
	clc
	rts

SCRIPT_COMMAND_91:
	lda.w #$0010
	eor #$FFFF
	and $0F05
	sta $0F05
	ldx.w #$0000
	ldy.w #$0028
	jsl L87A98D
	inc $0F02
	clc
	rts

SCRIPT_COMMAND_8F:
	sep #$20
	lda [$00],Y
	bit #$80
	bne L87CF0A
	lda $07DC
	asl
	inc A
	bra L87CF0C
L87CF0A:
	and #$7F
L87CF0C:
	sta $0F07
	rep #$20
	inc $0F02
	inc $0F02
	clc
	rts

SCRIPT_COMMAND_8D:
	sep #$20
	lda [$00],Y
	jsl L87A8F4
	pha
	lda.w #$EB00
	ldy.w #$0002
	lda [$00],Y
	tax
	pla
	jsl L87B19A
	rep #$20
	inc $0F02
	inc $0F02
	inc $0F02
	clc
	rts

SCRIPT_COMMAND_8E:
	sep #$20
	lda [$00],Y
	jsl L87A8F4
	pha
	lda.w #$EB00
	ldy.w #$0002
	lda [$00],Y
	tax
	pla
	jsl L87B223
	rep #$20
	inc $0F02
	inc $0F02
	inc $0F02
	clc
	rts

SCRIPT_COMMAND_8B:
	inc $0F02
	lda $0F03
	sta $0F47
	lda $0F02
	sta $0F46
	lda.w #$8E00
	sta $01
	lda $0F49
	asl
	clc
	adc #$8AEF
	sta $00
	lda [$00]
	sta $00
	lda $01
	sta $0F03
	lda $00
	sta $0F02
	clc
	rts

SCRIPT_COMMAND_8C:
	inc $0F02
	lda $0F03
	sta $0F47
	lda $0F02
	sta $0F46
	lda $0F4F
	jmp L87D53F

SCRIPT_COMMAND_94:
	jsr L87D3A5
	ldy.w #$0001
	lda [$00],Y
	sta $0F8F
	inc $0F02
	inc $0F02
	inc $0F02
	bra L87CFC5

WAIT_FOR_A_CMD:
	lda.w #$FFFF
	sta $0F8F
	inc $0F02
	bra L87CFC5

L87CFC5:
	sep #$20
	lda $1002
	and #$02
	beq L87CFD2
	rep #$20
	clc
	rts

L87CFD2:
	rep #$20
	lda.w #$0002
	trb $0F05
	lda.w #$0004
	tsb $0F05
	jsr L87C0AA
	ldx.w #$0000
	ldy.w #$0028
	jsl L87A98D
	ldx.w #$00F0
	stx $50
	stx $52
	lda #bank100(L87B0F8)
	sta $01
	lda #L87B0F8
	sta $00
	jsl L808EAD
	jsl L809374
	ldx $0F00
	lda $0F20,X
	sec
	sbc #$3000
	tay
	lda.w #$0040
	jsl L81D718
	xba
	sta $15
	lda.w #$0002
	jsl L81D718
	dec A
	ora $15
	sta $15
	sep #$20
	ldx $0F00
	lda $0F25,X
	lsr
	clc
	adc $15
	sta $0F91
	lda $0F26,X
	clc
	adc $16
	sta $0F92
	lda #$03
	sta $0F8E
	rep #$20
	lda #$318B
	sta $0F8C
	lda #$A0F1
	sta $0F8A
	ldx.w #$00F0
	stx $50
	stx $52
	lda.w #$0007
	jsl L87AC87
	jsl L87B903
	clc
	rts

PLAY_SONG_CMD:
	sep #$20
	lda $1002
	and #$02
	bne L87D082
	rep #$20
	lda [$00],Y
	cmp #$FFFF
	beq L87D07E
	jsl L80AA3A
	bra L87D082
L87D07E:
	jsl L83F312
L87D082:
	rep #$20
	inc $0F02
	inc $0F02
	inc $0F02
	clc
	rts

START_DIALOGUE_CMD:
	sep #$20
	lda.w $1002
	and #$02
	beq L87D0A2
	rep #$20
	inc $0F02
	inc $0F02
	clc
	rts

L87D0A2:
	rep #$20
	inc $0F02
	inc $0F02
	lda $0F03
	sta $0F47
	lda $0F02
	sta $0F46
	lda #bank100(L8E913C)
	sta $0F03
	sta $04
	ldy #$0001
	lda [$00],Y
	and #$00FF
	asl
	clc
	adc #L8E913C
	sta $03
	lda [$03]
	sta $0F02
	clc
	rts

SCRIPT_COMMAND_86:
	lda.w #$0000
	pha
L87D0D8:
	jsl L8087EA
	lda.w #$0010
	eor #$FFFF
	and $0F05
	sta $0F05
	lda #$0705
	sta $0C1B
	lda #$0E16
	sta $0C1D
	pla
	jsl L81D35F
	jsl L81D4EE
	lda #bank100(L81D6D5)
	sta $01
	lda #L81D6D5
	sta $00
	jsl L808EAD
	jsl L8087EA
	inc $0F02
	clc
	rts

SCRIPT_COMMAND_87:
	lda.w #$0001
	pha
	bra L87D0D8

SHOW_PORTRAIT_CMD:
	sep #$20
	lda $1002
	and #$02
	beq L87D130
	rep #$20
	inc $0F02
	inc $0F02
	inc $0F02
	clc
	rts

L87D130:
	rep #$20
	jsl L81E46B
	lda #$F000
	sta $0210
	sta $0214
	sta $0218
	sta $021C
	ldx $0F00
	stz $0F27,X
	stz $0F29,X
	stz $0F2B,X
	stz $0F0E
	stz $0F0B
	sep #$20
	ldy.w #$0001
	lda [$00],Y
	sta $0F2D,X
	rep #$20
	iny
	lda [$00],Y
	and.w #$0003
	ldy.w #$0003
	jsl L81D733
	tax
	phx
	lda.l L87D275,X
	ldx $0F00
	sta $0F2E,X
	plx
	lda.l (L87D275 + 1),X
	ldx $0F00
	sta $0F2F,X
	sep #$20
	ldy #$0002
	lda [$00],Y
	lsr
	bcs L87D198
	lda #$02
	clc
	adc #$08
	bra L87D19D
L87D198:
	lda #$18
	sec
	sbc #$16
L87D19D:
	sta $0C1B
	lda [$00],Y
	lsr
	lsr
	bcs L87D1AA
	lda #$02
	bra L87D1AC
L87D1AA:
	lda #$12
L87D1AC:
	sta $0C1C
	rep #$20
	jsl L81D5A8
	ldx $0F00
	lda #$7E00
	sta $0F21,X
	lda #$3000
	clc
	adc $15
	sta $0F20,X
	ldx #$00F0
	stx $50
	stx $52
	jsl L809374
	lda $0F02
	sta $00
	lda $0F03
	sta $01
	ldy #$0002
	lda [$00],Y
	lsr
	and #$0001
	tax
	ldy #$0001
	lda [$00],Y
	jsl L81D10F
	jsl L809374
	sep #$20
	jsr L87D3A5
	ldy #$0001
	lda [$00],Y
	jsl L87A95E
	bcc L87D216
	lda $08F7
	cmp #$02
	beq L87D213
	cmp #$05
	beq L87D213
	jsr L87D33F
	bra L87D233
L87D213:
	lda $08ED
L87D216:
	rep #$20
	jsl L83D912
	lda.l ActiveUnit.XPosition
	xba
	sec
	sbc $0860
	asl
	asl
	asl
	asl
	sta $0AAC
	jsr L87D2A1
	jsl L87AEA9
L87D233:
	sep #$20
	jsr L87D3A5
	ldy.w #$0002
	lda [$00],Y
	and #$02
	lsr
	jsr L87D377
	rep #$20
	ldx.w #$00F0
	stx $50
	stx $52
	jsl L809374
	lda #bank100(L81D6D5)
	sta $01
	lda #L81D6D5
	sta $00
	jsl L808EAD
	jsl L81E475
	jsl L809374
	inc $0F02
	inc $0F02
	inc $0F02
	jsl L87B903
	clc
	rts

L87D275:
.db $02 $02 $01 $18 $02 $00 $02 $12
.db $01 $18 $12 $00

L87D281:
.db $81 $00 $00 $0C $00 $01 $10 $10
.db $81 $00 $00 $03 $01 $01 $C0 $10
.db $82 $40 $00 $0C $00 $11 $10 $90
.db $82 $40 $00 $03 $01 $11 $C0 $90

L87D2A1:
	php
	rep #$20
	ldy #$0002
	lda [$00],Y
	and #$0003
	asl
	asl
	asl
	tax
	sep #$20
	lda.l L87D281,X
	sta $0F75
	lda.l L87D281+1,X
	sta $0F76
	lda.l L87D281+2,X
	sta $0F77
	lda.l L87D281+3,X
	sta $0F78
	lda.l L87D281+4,X
	sta $0F79
	lda.l L87D281+5,X
	sta $0C1C
	lda.l L87D281+6,X
	sta $0AAE
	lda.l L87D281+7,X
	sta $0AAF
	ldy #$0002
	lda [$00],Y
	and #$02
	bne L87D319
	lda.l ActiveUnit.PortraitID
	jsl L87A95E
	sta $0F69
	ldx #$0028
	stx $50
	stx $52
	lda $0F79
	sta $0F6F
	ldx $0AAC
	stx $0F6B
	ldx $0AAE
	stx $0F6D
	bra L87D33D
L87D319:
	lda.l ActiveUnit.PortraitID
	jsl L87A95E
	sta $0F6A
	ldx #$008C
	stx $50
	stx $52
	lda $0F79
	sta $0F74
	ldx $0AAC
	stx $0F70
	ldx $0AAE
	stx $0F72
L87D33D:
	plp
	rts

L87D33F:
	php
	sep #$20
	ldy #$0002
	lda [$00],Y
	and #$02
	bne L87D35B
	lda #$FF
	sta $0F69
	ldx #$FFFF
	stx $0F6B
	ldx #$0028
	bra L87D369
L87D35B:
	lda #$FF
	sta $0F69
	ldx #$FFFF
	stx $0F70
	ldx.w #$008C
L87D369:
	stx $50
	stx $52
	lda [$00],Y
	and #$03
	jsl L81D430
	plp
	rts

L87D377:
	php
	sep #$20
	cmp #$01
	beq L87D383
	lda $0F69
	bra L87D386
L87D383:
	lda $0F6A
L87D386:
	cmp #$FF
	bne L87D38C
	plp
	rts

L87D38C:
	pha
	lda $0F68
	beq L87D396
	jsl L87B223
L87D396:
	pla
	ldx #$0000
	jsl L87B19A
	lda #$01
	sta $0F68
	plp
	rts

L87D3A5:
	php
	rep #$20
	lda $0F02
	sta $00
	lda $0F03
	sta $01
	plp
	rts

CLOSE_FRAME_CMD:
	sep #$20
	lda $1002
	and #$02
	beq L87D3C7
	rep #$20
	inc $0F02
	inc $0F02
	clc
	rts

L87D3C7:
	sep #$20
	ldx.w #$0000
	ldy.w #$0028
	jsl L87A98D
	ldy.w #$0001
	lda [$00],Y
	and #$01
	bne L87D3E1
	ldx $0F6B
	bra L87D3E4

L87D3E1:
	ldx $0F70
L87D3E4:
	cpx #$FFFF
	bne L87D3EC
	jmp L87D46B

L87D3EC:
	ldy.w #$0001
	lda [$00],Y
	lsr
	bcs L87D430
	lda $0F6F
	sta $0F79
	ldx $0F6D
	stx $0AAC
	ldx $0F6B
	stx $0AAE
	ldx.w #$0028
	stx $0F76
	lda #$01
	sta $0C1C
	jsl L87B016
	ldx.w #$0028
	ldy.w #$008C
	jsl L87A98D
	jsl L87B223
	lda #$00
	sta $0F68
	lda #$FF
	sta $0F69
	brl L87D4BC
L87D430:
	lda $0F74
	sta $0F79
	ldx $0F72
	stx $0AAC
	ldx $0F70
	stx $0AAE
	ldx.w #$008C
	stx $0F76
	lda #$11
	sta $0C1C
	jsl L87B016
	ldx.w #$008C
	ldy.w #$00F0
	jsl L87A98D
	jsl L87B223
	lda #$00
	sta $0F68
	lda #$FF
	sta $0F6A
	bra L87D4BC

L87D46B:
	ldy #$0001
	lda [$00],Y
	lsr
	bcs L87D481
	ldx.w #$0028
	ldy.w #$008C
	jsl L87A98D
	lda #$02
	bra L87D48D
L87D481:
	ldx.w #$008C
	ldy.w #$00F0
	jsl L87A98D
	lda #$12
L87D48D:
	dec A
	sta $0C1C
	lda #$01
	sta $0C1B
	ldx #$0A1E
	stx $0C1D
	lda #$01
	jsl L81D35F
	jsl L81D4EE
	rep #$20
	lda #bank100(L81D6D5)
	sta $01
	lda #L81D6D5
	sta $00
	sep #$20
	jsl L808EAD
	jsl L809374
L87D4BC:
	rep #$20
	inc $0F02
	inc $0F02
	ldx.w #$00F0
	stx $50
	stx $52
	jsl L87B903
	clc
	rts

SCRIPT_COMMAND_80:
	inc $0F02
	lda $0F03
	sta $0F47
	lda $0F02
	sta $0F46
	lda #bank100(L8E865E)
	sta $01
	lda $0F49
	asl
	clc
	adc #L8E865E
	sta $00
	lda [$00]
	sta $00
	lda $01
	sta $0F03
	lda $00
	sta $0F02
	clc
	rts

SCRIPT_COMMAND_81:
	inc $0F02
	lda $0F03
	sta $0F47
	lda $0F02
	sta $0F46
	lda #bank100(L8E8C4A)
	sta $01
	lda $0F4B
	asl
	clc
	adc #L8E8C4A
	sta $00
	lda [$00]
	sta $00
	lda $01
	sta $0F03
	lda $00
	sta $0F02
	clc
	rts

SCRIPT_COMMAND_82:
	inc $0F02
	lda $0F03
	sta $0F47
	lda $0F02
	sta $0F46
	lda $0F4D
L87D53F:
	tay
	lda #$0064
	jsl L81D718
	phy
	tay
	lda #$000A
	jsl L81D718
	sta $15
	sty $17
	ply
	lda #$000A
	jsl L81D718
	sta $19
	sty $1B
	lda #$0000
	sta $01
	lda #$0F51
	sta $00
	ldy #$0000
	sep #$20
	lda $15
	and #$FF
	beq L87D57B
	clc
	adc #$A0
	sta [$00],Y
	iny
L87D57B:
	lda $17
	and #$FF
	bne L87D587
	lda $15
	and #$FF
	beq L87D58F
L87D587:
	lda $17
	clc
	adc #$A0
	sta [$00],Y
	iny
L87D58F:
	lda $19
	and #$FF
	bne L87D59C
	lda $15
	clc
	adc $17
	beq L87D5A4
L87D59C:
	lda $19
	clc
	adc #$A0
	sta [$00],Y
	iny
L87D5A4:
	lda $1B
	clc
	adc #$A0
	sta [$00],Y
	iny
	lda #$00
	sta [$00],Y
	iny
	lda #$83
	sta [$00],Y
	rep #$20
	lda #$0000
	sta $0F03
	lda #$0F51
	sta $0F02
	clc
	rts

SCRIPT_COMMAND_83:
	lda $0F47
	sta $0F03
	lda $0F46
	sta $0F02
	clc
	rts

L87D5D3:
	rtl

L87D5D4:
	lda.l $0004C7,X
	sta $01
	lda.l $0004C2,X
	sta $00
	ldy #$0000
	lda [$00],Y
	sep #$20
	cmp #$80
	beq L87D65E
	cmp #$81
	beq L87D640
	pha
	lda.l $0004C9,X
	bit #$10
	beq L87D603
	pla
	eor #$FF
	inc A
	clc
	adc.l $0004CE,X
	bra L87D609
L87D603:
	pla
	clc
	adc.l $0004CE,X
L87D609:
	sta.l $0004CE,X
	xba
	pha
	lda.l $0004C9,X
	bit #$20
	beq L87D622
	pla
	eor #$FF
	inc A
	clc
	adc.l $0004D0,X
	bra L87D628
L87D622:
	pla
	clc
	adc.l $0004D0,X
L87D628:
	sta.l $0004D0,X
L87D62C:
	rep #$20
	lda.l $0004C2,X
	sta $00
	clc
	adc #$0002
	sta.l $0004C2,X
	sep #$20
	bra L87D667
L87D640:
	xba
	tay
	lda.l $0004D7,X
	beq L87D653
	cmp #$01
	beq L87D62C
	dec A
	sta.l $0004D7,X
	bra L87D66D
L87D653:
	tya
	cmp #$01
	beq L87D62C
	sta.l $0004D7,X
	bra L87D66D
L87D65E:
	lda.l $0006FE
	inc A
	sta.l $0006FE
L87D667:
	lda #$00
	sta.l $0004D7,X
L87D66D:
	rtl

.db $D4 $D5 $D3 $D5 $08 $8B $4B $AB

L87D676:
	rep #$30
	lda $50
	lsr A
	lsr A
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
	asl A
	tay
	lda [$00],Y
	clc
	adc $00
	sta $03
	lda $7B
	and #$00E0
	asl A
	asl A
	asl A
	xba
	tax
	sep #$20
	lda.w L87D7FE,X
	sta $60
	lda.w L87D804,X
	sta $61
	lda $4214
	sta $54
	lda $4216
	asl A
	sta $55
	ldy #$0000
	lda [$03],Y
	iny
	sta $26
L87D6C6:
	lda [$03],Y
	iny
	sta $27
	lda #$08
	sta $28
L87D6CF:
	rep #$20
	lda $50
	cmp #$01FD
	bcc L87D6DB
	plb
	plp
	rtl

L87D6DB:
	lda #$0000
	sep #$20
	lda $27
	cmp #$80
	inc $55
	phy
	jsr L87D80A
	ply
	dec $55
	stz $16
	lda $5D
	bit #$20
	bne L87D773
	lda [$03],Y
L87D6F7:
	sta $15
	bpl L87D6FD
	dec $16
L87D6FD:
	stz $1E
	iny
	lda $5D
	bit #$10
	bne L87D776
	lda [$03],Y
L87D708:
	sta $1D
	bpl L87D70E
	dec $1E
L87D70E:
	asl $27
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
	sep #$20
	lda $15
	ldx $50
	sta $020D,X
	lda $1E
	cmp #$01
	phy
	jsr L87D80A
	ply
	lda $1D
	ldx $50
	sta $020C,X
	lda $5C
	bmi L87D7B0
L87D751:
	lda $5D
	bmi L87D7C8
L87D755:
	lda $5D
	asl A
	bmi L87D7C6
L87D75A:
	inc $55
	inc $55
	lda $55
	cmp #$08
	bcc L87D768
	stz $55
	inc $54
L87D768:
	dec $26
	beq L87D7AD
	dec $28
	beq L87D7AA
	jmp L87D6CF

L87D773:
	bra L87D790
	pha
L87D776:
	lda $27
	cmp #$80
	lda #$00
	rol A
	tax
	lda [$03],Y
	bpl L87D787
	dec A
	eor #$FF
	bra L87D78A
L87D787:
	eor #$FF
	inc A
L87D78A:
	clc
	adc $60,X
	jmp L87D708

L87D790:
	lda $27
	cmp #$80
	lda #$00
	rol A
	tax
	lda [$03],Y
	bpl L87D7A1
	dec A
	eor #$FF
	bra L87D7A4
L87D7A1:
	eor #$FF
	inc A
L87D7A4:
	clc
	adc $60,X
	jmp L87D6F7

L87D7AA:
	jmp L87D6C6

L87D7AD:
	plb
	plp
	rtl

L87D7B0:
	asl A
	and #$0E
	sta $15
	lda $020F,X
	bit #$0E
	beq L87D7C3
	and #$F1
	ora $15
	sta $020F,X
L87D7C3:
	jmp L87D751

L87D7C6:
	bra L87D7EA

L87D7C8:
	asl A
	asl A
	asl A
	asl A
	and #$C0
	sta $15
	eor #$FF
	sta $17
	lda $020F,X
	eor $15
	and $15
	sta $15
	lda $020F,X
	and $17
	ora $15
	sta $020F,X
	jmp L87D755

L87D7EA:
	asl A
	asl A
	asl A
	and #$30
	sta $15
	lda $020F,X
	and #$CF
	ora $15
	sta $020F,X
	jmp L87D75A

L87D7FE:
.db $F8 $F8 $F8 $F0 $F0 $E0

L87D804:
.db $F0 $E0 $C0 $E0 $C0 $C0

L87D80A:
	sep #$10
	ldy $55
	bcs L87D81E
	ldx $54
	lda $0410,X
	and $D82F,Y
	sta $0410,X
	rep #$10
	rts

L87D81E:
	ldx $54
	lda $0410,X
	and.w L87D82F,Y
	ora.w L87D837,Y
	sta $0410,X
	rep #$10
	rts

L87D82F:
.db $FE $FD $FB $F7 $EF $DF $BF $7F

L87D837:
.db $01 $02 $04 $08 $10 $20 $40 $80

L87D83F:
.db $9F $D9 $9F $D9 $C0 $D9 $C0 $D9
.db $C0 $D9 $C0 $D9 $C0 $D9 $C0 $D9
.db $C0 $D9 $C0 $D9 $C0 $D9 $C0 $D9
.db $C0 $D9 $C0 $D9 $C0 $D9 $C0 $D9
.db $C0 $D9 $C0 $D9 $C0 $D9 $C0 $D9
.db $C0 $D9 $C0 $D9 $C0 $D9 $C0 $D9
.db $C0 $D9 $C0 $D9 $C0 $D9 $C0 $D9
.db $C0 $D9 $C0 $D9 $C0 $D9 $C0 $D9
.db $C0 $D9 $C0 $D9 $C0 $D9 $C0 $D9
.db $C0 $D9 $C0 $D9 $C0 $D9 $C0 $D9
.db $C0 $D9 $C0 $D9 $C0 $D9 $C0 $D9
.db $C0 $D9 $C0 $D9 $C0 $D9 $C0 $D9
.db $C0 $D9 $C0 $D9 $C0 $D9 $C0 $D9
.db $C0 $D9 $C0 $D9 $C0 $D9 $C0 $D9
.db $C0 $D9 $C0 $D9 $C0 $D9 $C0 $D9
.db $C0 $D9 $C0 $D9 $C0 $D9 $C0 $D9
.db $C0 $D9 $C0 $D9 $C0 $D9 $C0 $D9
.db $C0 $D9 $C0 $D9 $C0 $D9 $C0 $D9
.db $C0 $D9 $C0 $D9 $C0 $D9 $C0 $D9
.db $C0 $D9 $C0 $D9 $C0 $D9 $C0 $D9
.db $C0 $D9 $C0 $D9 $C0 $D9 $C0 $D9
.db $C0 $D9 $C0 $D9 $C0 $D9 $C0 $D9
.db $C0 $D9 $C0 $D9 $C0 $D9 $C0 $D9
.db $C0 $D9 $C0 $D9 $C0 $D9 $C0 $D9
.db $C0 $D9 $C0 $D9 $C0 $D9 $C0 $D9
.db $C0 $D9 $C0 $D9 $C0 $D9 $C0 $D9
.db $C0 $D9 $C0 $D9 $C0 $D9 $C0 $D9
.db $C0 $D9 $C0 $D9 $C0 $D9 $C0 $D9
.db $C0 $D9 $C0 $D9 $C0 $D9 $C0 $D9
.db $C0 $D9 $C0 $D9 $C0 $D9 $C0 $D9
.db $C0 $D9 $C0 $D9 $C0 $D9 $C0 $D9
.db $C0 $D9 $C0 $D9 $C0 $D9 $C0 $D9
.db $C0 $D9 $C0 $D9 $C0 $D9 $C0 $D9
.db $C0 $D9 $C0 $D9 $C0 $D9 $C0 $D9
.db $C0 $D9 $C0 $D9 $C0 $D9 $C0 $D9
.db $C0 $D9 $C0 $D9 $C0 $D9 $C0 $D9
.db $C0 $D9 $C0 $D9 $C0 $D9 $C0 $D9
.db $C0 $D9 $C0 $D9 $C0 $D9 $C0 $D9
.db $C0 $D9 $C0 $D9 $C0 $D9 $C0 $D9
.db $C0 $D9 $C0 $D9 $C0 $D9 $C0 $D9
.db $C0 $D9 $C0 $D9 $C0 $D9 $C0 $D9
.db $C0 $D9 $C0 $D9 $C0 $D9 $C0 $D9
.db $C0 $D9 $C0 $D9 $C0 $D9 $C0 $D9
.db $C0 $D9 $C0 $D9 $C0 $D9 $C0 $D9
.db $03 $0D $17 $02 $C0 $20 $10 $08
.db $32 $20 $00 $06 $32 $02 $C0 $20
.db $10 $0E $32 $20 $00 $0C $32 $02
.db $C0 $20 $10 $2E $32 $20 $00 $2C
.db $32 $03 $0D $17 $02 $C0 $20 $10
.db $08 $32 $20 $00 $06 $32 $02 $C0
.db $20 $10 $0E $32 $20 $00 $0C $32
.db $02 $C0 $20 $10 $2E $32 $20 $00
.db $2C $32

L87D9E1:
	php
	sep #$20
	lda $1002
	and #$02
	beq L87D9F1
	jsl L86C9D6
	plp
	rts

L87D9F1:
	rep #$20
	lda $0F05
	bit #$0010
	beq L87DA2B
	lda #$F000
	sta $0210
	sta $0214
	sta $0218
	sta $021C
	sep #$20
	lda #$00
	sta $0410
	rep #$20
	lda $0F05
	bit #$0002
	beq L87DA2B
	lda.l $000050
	pha
	jsr L87DA2D
	jsr L87DACE
	pla
	sta.l $000050
L87DA2B:
	plp
	rts

L87DA2D:
	lda #$0000
	sta.l $000050
	jsr L87DA97
	sep #$20
	lda #$81
	ldx #$0000
	sta $5C
	stx $5E
	ldx $0F00
	beq L87DA50
	lda #$82
	ldx #$0040
	sta $5C
	stx $5E
L87DA50:
	rep #$20
	ldx $0F00
	lda #bank100(L87D83F)
	sta $04
	ldx $0F00
	lda $0F2D,X
	and #$00FF
	asl A
	tax
	lda.l L87D83F,X
	sta $03
	jsr L87DA7D
	lda [$03],Y
	and #$00FF
	clc
	adc $03
	sta $03
	jsl L80939A
	rts

L87DA7D:
	lda $0137
	and #$000F
	ldy #$0000
	cmp #$0006
	bcc L87DA96
	ldy #$0001
	cmp #$000A
	bcc L87DA96
	ldy #$0002
L87DA96:
	rts

L87DA97:
	ldx $0F00
	lda $0F2E,X
	pha
	xba
	and #$00FF
	and #$00FF
	ora #$0800
	sta.l $004202
	nop
	nop
	nop
	lda.l $004216
	sta.l $000058
	pla
	and #$00FF
	ora #$0800
	sta.l $004202
	nop
	nop
	nop
	lda.l $004216
	sta.l $000056
	rts

L87DACE:
	ldx $0F00
	lda $0F30,X
	bit #$0001
	beq L87DAF8
	ldx #$0000
	lda $0214,X
	clc
	adc #$0020
	sta $0214,X
	lda $0213,X
	ora #$0040
	sta $0213,X
	lda $0217,X
	ora #$0040
	sta $0217,X
L87DAF8:
	rts

.ENDS
