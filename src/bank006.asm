.BANK 6
.ORG $0000

.SECTION "Bank6" FORCE

L868000:
	rep #$30
L868002:
	jsl L808875
	sep #$20
	stz $10AF
	stz $10B0
	stz $10B1
	ldx #$0000
L868014:
	stz $10F4,X
	inx
	cpx #$0008
	bcc L868014
	stz $10B1
L868020:
	rep #$20
	stz $A4
	sep #$20
	lda $10B3
	cmp #$C7
	beq L868043
	ldx #$0000
L868030:
	lda.l L95ED53,X
	sta.l $0010B8,X
	inx
	cpx #$003C
	bcc L868030
	lda #$C7
	sta $10B3
L868043:
	rep #$20
	jsl L808875
	jsr L86892C
	jsr L868716
	jsr L868743
	jsl L8088A0
	jsl L808CB4
	lda $10AF
	bit #$0080
	beq L86806E
	sep #$20
	and #$7F
	sta $10AF
	rep #$20
	jmp L8682FF

L86806E:
	sep #$20
	lda $10AF
	sta $10B2
	sep #$20
	stz $93
	stz $91
	stz $10B6
	stz $10B7
	rep #$20
	jsr L86861E
L868087:
	jsl L8087EA
	jsr L86827C
	jsr L8685C6
	jsr L8680CE
	jsr L868218
	jsr L86827C
	jsr L8685BA
	jsl L808E8D
	lda $10B7
	and #$00FF
	cmp #$0002
	beq L8680B4
	cmp #$0001
	beq L8680C1
	jmp L868087

L8680B4:
	sep #$20
	lda $10B2
	sta $10AF
	rep #$20
	jmp L8682FF

L8680C1:
	sep #$20
	lda $10B2
	sta $10AF
	rep #$20
	jmp L8687AD

L8680CE:
	jsr L8685E0
	lda $0127
	bit #$0200
	beq L8680DE
	jsr L868138
	bra L8680FA

L8680DE:
	bit #$0100
	beq L8680E8
	jsr L868145
	bra L8680FA

L8680E8:
	bit #$0800
	beq L8680F2
	jsr L868152
	bra L8680FA

L8680F2:
	bit #$0400
	beq L8680FA
	jsr L868163
L8680FA:
	bit #$0080
	beq L868102
	jmp L868177

L868102:
	bit #$8000
	beq L86810A
	jmp L8681C7

L86810A:
	bit #$0040
	beq L868112
	jmp L86819D

L868112:
	bit #$4000
	beq L86811A
	jmp L8681EF

L86811A:
	bit #$1000
	beq L868129
	sep #$20
	lda #$01
	sta $10B7
	rep #$20
	rts

L868129:
	bit #$2000
	beq L868137
	sep #$20
	lda #$02
	sta $10B7
	rep #$20
L868137:
	rts

L868138:
	sep #$20
	lda $10B2
	and #$FE
	sta $10B2
	rep #$20
	rts

L868145:
	sep #$20
	lda $10B2
	ora #$01
	sta $10B2
	rep #$20
	rts

L868152:
	sep #$20
	lda $10B2
	cmp #$02
	bcc L868160
	sbc #$02
	sta $10B2
L868160:
	rep #$20
	rts

L868163:
	sep #$20
	lda $10B2
	clc
	adc #$02
	cmp #$24
	bcc L868171
	sbc #$02
L868171:
	sta $10B2
	rep #$20
	rts

L868177:
	sep #$30
	lda $10B2
	tay
	lsr
	tax
	lda.l L95EDC3,X
	bne L86818B
	lda $10B8,Y
	ina
	bra L868197

L86818B:
	lda $10B8,Y
	ina
	cmp.l L95EDC3,X
	bcc L868197
	lda #$00
L868197:
	sta $10B8,Y
	rep #$30
	rts

L86819D:
	sep #$30
	lda $10B2
	tay
	lsr
	tax
	lda.l L95EDC3,X
	bne L8681B3
	lda $10B8,Y
	clc
	adc #$10
	bra L8681C1

L8681B3:
	lda $10B8,Y
	clc
	adc #$10
	cmp.l L95EDC3,X
	bcc L8681C1
	lda #$00
L8681C1:
	sta $10B8,Y
	rep #$30
	rts

L8681C7:
	sep #$30
	lda $10B2
	tay
	lsr
	tax
	lda.l L95EDC3,X
	bne L8681DA
	lda $10B8,Y
	bra L8681E8

L8681DA:
	lda $10B8,Y
	dea
	cmp.l L95EDC3,X
	bcc L8681E9
	lda.l L95EDC3,X
L8681E8:
	dea
L8681E9:
	sta $10B8,Y
	rep #$30
	rts

L8681EF:
	sep #$30
	lda $10B2
	tay
	lsr
	tax
	lda.l L95EDC3,X
	bne L868205
	lda $10B8,Y
	sec
	sbc #$10
	bra L868212

L868205:
	lda $10B8,Y
	sec
	sbc #$10
	bcs L868212
	lda.l L95EDC3,X
	dea
L868212:
	sta $10B8,Y
	rep #$30
	rts

L868218:
	sep #$30
	ldx $10B2
	lda.l $0010B8,X
	sta $0F
	cpx #$1E
	bne L868232
	pha
	lda $0F
	clc
	adc #$02
	sta $0F
	pla
	bra L86824B

L868232:
	cpx #$01
	beq L86824A
	cpx #$00
	beq L86824A
	cpx #$03
	beq L86824A
	cpx #$02
	beq L86824A
	cpx #$20
	bcc L86824B
	cpx #$24
	bcs L86824B
L86824A:
	dea
L86824B:
	sta $10A6
	rep #$30
	jsr L86827C
	jsr L8682DC
	jsr L868671
	lda $0F
	sta $10A6
	jsr L8682A2
	lda $15
	cmp #$FFFF
	beq L86827B
	sep #$20
	lda $10A4
	clc
	adc #$03
	sta $10A4
	rep #$20
	jsr L8682DC
	jsr L868653
L86827B:
	rts

L86827C:
	sep #$20
	lda $10B2
	and #$01
	sta $4202
	lda #$0D
	sta $4203
	nop
	nop
	nop
	lda $4216
	clc
	adc #$07
	sta $10A4
	lda $10B2
	lsr
	clc
	adc #$01
	sta $10A5
	rts

L8682A2:
	sep #$30
	lda $10B2
	and #$FE
	tax
	rep #$20
	lda.l L95ED8F,X
	sta $15
	rep #$10
	cmp #$FFFF
	beq L8682CA
	sep #$20
	lda $10A6
	rep #$20
	and #$00FF
	asl
	asl
	asl
	adc $15
	sta $15
L8682CA:
	rts

L8682CB:
	sep #$20
	lda $10B2
	and #$FE
	tax
	rep #$20
	lda.l L95EDC3,X
	sta $15
	rts

L8682DC:
	sep #$20
	lda $10A5
	sta $4202
	lda #$40
	sta $4203
	nop
	nop
	lda $10A4
	asl
	rep #$20
	and #$00FF
	clc
	adc $4216
	adc #$3000
	sta $2181
	rts

L8682FF:
	sep #$20
	lda #$10
	sta $93
	stz $10B6
	stz $10B7
	lda $10B0
	sta $10B2
	rep #$20
	jsr L86861E
L868316:
	rep #$20
	jsl L8087EA
	jsr L868539
	jsr L8685A0
	jsr L86836A
	jsr L8684E5
	jsr L86878F
	jsr L86827C
	jsr L868594
	jsl L808E8D
	lda $10B7
	and #$00FF
	cmp #$0002
	beq L868348
	cmp #$0001
	beq L868355
	jmp L868316

L868348:
	sep #$20
	lda $10B2
	sta $10B0
	rep #$20
	jmp L86806E

L868355:
	sep #$20
	lda $10B2
	sta $10B0
	lda $10B2
	ora #$80
	sta $10AF
	rep #$20
	jmp L8687AD

L86836A:
	jsr L8685E0
	lda $0127
	bit #$0200
	beq L86837A
	jsr L8683D4
	bra L868396

L86837A:
	bit #$0100
	beq L868384
	jsr L8683F2
	bra L868396

L868384:
	bit #$0800
	beq L86838E
	jsr L868410
	bra L868396

L86838E:
	bit #$0400
	beq L868396
	jsr L868422
L868396:
	bit #$0080
	beq L86839E
	jmp L868434

L86839E:
	bit #$8000
	beq L8683A6
	jmp L86848C

L8683A6:
	bit #$0040
	beq L8683AE
	jmp L86845E

L8683AE:
	bit #$4000
	beq L8683B6
	jmp L8684B8

L8683B6:
	bit #$1000
	beq L8683C5
	sep #$20
	lda #$01
	sta $10B7
	rep #$20
	rts

L8683C5:
	bit #$2000
	beq L8683D3
	sep #$20
	lda #$02
	sta $10B7
	rep #$20
L8683D3:
	rts

L8683D4:
	sep #$30
	lda $10B2
	jsr L868638
	cmp #$00
	beq L8683EF
	rep #$10
	lda $10B2
	dea
	cmp #$FF
	bne L8683EC
	lda #$02
L8683EC:
	sta $10B2
L8683EF:
	rep #$20
	rts

L8683F2:
	sep #$30
	lda $10B2
	jsr L868638
	cmp #$02
	beq L86840D
	rep #$10
	lda $10B2
	ina
	cmp #$03
	bne L86840A
	lda #$00
L86840A:
	sta $10B2
L86840D:
	rep #$20
	rts

L868410:
	sep #$20
	lda $10B2
	cmp #$03
	bcc L86841F
	sec
	sbc #$03
	sta $10B2
L86841F:
	rep #$20
	rts

L868422:
	sep #$20
	lda $10B2
	cmp #$15
	bcs L868431
	clc
	adc #$03
	sta $10B2
L868431:
	rep #$20
	rts

L868434:
	sep #$30
	lda $10B2
	jsr L868638
	tyx
	ldy $10B2
	lda.l L95EDD5,X
	bne L86844C
	lda $10DC,Y
	ina
	bra L868458

L86844C:
	lda $10DC,Y
	ina
	cmp.l L95EDD5,X
	bcc L868458
	lda #$00
L868458:
	sta $10DC,Y
	rep #$30
	rts

L86845E:
	sep #$30
	lda $10B2
	jsr L868638
	tyx
	ldy $10B2
	lda.l L95EDD5,X
	bne L868478
	lda $10DC,Y
	clc
	adc #$0A
	bra L868486

L868478:
	lda $10DC,Y
	clc
	adc #$0A
	cmp.l L95EDD5,X
	bcc L868486
	lda #$00
L868486:
	sta $10DC,Y
	rep #$30
	rts

L86848C:
	sep #$30
	lda $10B2
	jsr L868638
	tyx
	ldy $10B2
	lda.l L95EDD5,X
	bne L8684A3
	lda $10DC,Y
	bra L8684B1

L8684A3:
	lda $10DC,Y
	dea
	cmp.l L95EDD5,X
	bcc L8684B2
	lda.l L95EDD5,X
L8684B1:
	dea
L8684B2:
	sta $10DC,Y
	rep #$30
	rts

L8684B8:
	sep #$30
	lda $10B2
	jsr L868638
	tyx
	ldy $10B2
	lda.l L95EDD5,X
	bne L8684D2
	lda $10DC,Y
	sec
	sbc #$0A
	bra L8684DF

L8684D2:
	lda $10DC,Y
	sec
	sbc #$0A
	bcs L8684DF
	lda.l L95EDD5,X
	dea
L8684DF:
	sta $10DC,Y
	rep #$30
	rts

L8684E5:
	sep #$20
	lda $10E2
	cmp $10E3
	bne L868504
	sep #$10
	lda $10B2
	jsr L868638
	eor #$01
	tax
	lda $10E2,X
	eor #$01
	sta $10E2,X
	rep #$10
L868504:
	rep #$20
	sep #$20
	lda #$01
	sta $10E7
	rep #$20
	rts

L868510:
	sep #$30
	lda $10B2
	tax
	lda.l $0010DC,X
	sta $10A6
	rep #$30
	jsr L868539
	jsr L8682DC
	jsr L868569
	jsr L868697
	lda $15
	cmp #$FFFF
	beq L868538
	jsr L8682DC
	jsr L86864D
L868538:
	rts

L868539:
	sep #$30
	lda $10B2
	jsr L868638
	sta $4202
	lda #$06
	sta $4203
	nop
	nop
	nop
	lda $4216
	clc
	adc #$0A
	sta $10A4
	sep #$10
	lda $10B2
	jsr L868638
	tya
	rep #$10
	clc
	adc #$14
	sta $10A5
	rep #$20
	rts

L868569:
	sep #$30
	lda $10B2
	jsr L868638
	tya
	asl
	tax
	rep #$20
	lda.l L95EDB3,X
	sta $15
	rep #$10
	cmp #$FFFF
	beq L868593
	sep #$20
	lda $10A6
	rep #$20
	and #$00FF
	asl
	asl
	adc $15
	sta $15
L868593:
	rts

L868594:
	jsr L868539
	jsr L8682DC
	sep #$30
	lda #$04
	bra L8685AA

L8685A0:
	jsr L868539
	jsr L8682DC
	sep #$30
	lda #$00
L8685AA:
	ldy #$00
L8685AC:
	ldx $2180
	sta $2180
	iny
	cpy #$05
	bcc L8685AC
	rep #$30
	rts

L8685BA:
	jsr L86827C
	jsr L8682DC
	sep #$30
	lda #$04
	bra L8685D0

L8685C6:
	jsr L86827C
	jsr L8682DC
	sep #$30
	lda #$00
L8685D0:
	ldy #$00
L8685D2:
	ldx $2180
	sta $2180
	iny
	cpy #$0B
	bcc L8685D2
	rep #$30
	rts

L8685E0:
	lda $0127
	bit #$FFF0
	beq L8685F1
	sep #$20
	lda #$0A
	sta $10B6
	rep #$20
L8685F1:
	lda $0125
	bit #$FFF0
	bne L868600
	sep #$20
	stz $10B6
	bra L86861B

L868600:
	sep #$20
	lda $10B6
	beq L86861B
	cmp #$01
	bne L868618
	ldx $0125
	stx $0127
	lda #$02
	sta $10B6
	bra L86861B

L868618:
	dec $10B6
L86861B:
	rep #$20
	rts

L86861E:
	lda #$3000
	sta $2181
	sep #$20
	stz $2183
	ldx #$0400
L86862C:
	lda $2180
	stz $2180
	dex
	bne L86862C
	rep #$20
	rts

L868638:
	sta $4204
	stz $4205
	lda #$8D03
	asl $42
	jsr L868710
	ldy $4214
	lda $4216
	rts

L86864D:
	sep #$30
	lda #$04
	bra L868657

L868653:
	sep #$30
	lda #$08
L868657:
	sta $17
	phb
	lda #$95
	pha
	plb
	ldy #$00
L868660:
	lda ($15),Y
	sta $2180
	stz $2180
	iny
	cpy $17
	bcc L868660
	rep #$30
	plb
	rts

L868671:
	jsr L8682DC
	sep #$20
	lda $10A6
	lsr
	lsr
	lsr
	lsr
	clc
	adc #$60
	sta $2180
	stz $2180
	lda $10A6
	and #$0F
	clc
	adc #$60
	sta $2180
	stz $2180
	rep #$20
	rts

L868697:
	jsr L8682DC
	sep #$20
	lda $10A6
	bpl L8686AB
	eor #$FF
	ina
	sta $10A6
	lda #$3F
	bra L8686AD

L8686AB:
	lda #$FF
L8686AD:
	sta $2180
	stz $2180
	lda #$64
	xba
	lda $10A6
	jsr L868702
	lda $10A6
	cmp #$64
	bcs L8686C7
	lda #$FF
	bra L8686CD

L8686C7:
	lda $4214
	clc
	adc #$60
L8686CD:
	sta $2180
	stz $2180
	lda #$0A
	xba
	lda $4216
	jsr L868702
	lda $10A6
	cmp #$0A
	bcs L8686E7
	lda #$FF
	bra L8686ED

L8686E7:
	lda $4214
	clc
	adc #$60
L8686ED:
	sta $2180
	stz $2180
	lda $4216
	clc
	adc #$60
	sta $2180
	stz $2180
	rep #$20
	rts

L868702:
	sta $4204
	stz $4205
	xba
	sta $4206
	jsr L868710
	rts

L868710:
.ACCU 8
	lda #$08
L868712:
	dea
	bne L868712
	rts

L868716:
.ACCU 16
	lda #bank100(L868733)
	sta $01
	lda #L868733
	sta $00
	jsl L808EAD
	lda #bank100(L86873C)
	sta $01
	lda #L86873C
	sta $00
	jsl L808EAD
	rts

L868733:
DMA_DATA L85E800 $1000 $80 $5000
L86873C:
DMA_DATA L85E000 $0200 $00

L868743:
	sep #$20
	lda #$04
	sta $A0
	lda #$00
	sta $A1
	rep #$20
	sep #$20
	ldx #$3000
	stx $2181
	stz $2183
	ldx #$0000
L86875D:
	lda.l L95EDDD,X
	sta $2180
	stz $2180
	inx
	cpx #$03C0
	bcc L86875D
	rep #$20
	sep #$20
	lda #$23
	sta $10B2
L868776:
	rep #$20
	jsr L868218
	sep #$20
	dec $10B2
	bpl L868776
	stz $10B2
	rep #$20
	jsr L86878F
	jsl L808E8D
	rts

L86878F:
	sep #$20
	lda $10B2
	pha
	lda #$17
	sta $10B2
L86879A:
	rep #$20
	jsr L868510
	sep #$20
	dec $10B2
	bpl L86879A
	pla
	sta $10B2
	rep #$20
	rts

L8687AD:
	sep #$20
	stz $1B
	lda $10B8
	sta $10A6
	lda $10BA
	sta $10A7
	rep #$20
	sep #$20
	lda $10B9
	sta $10A6
	lda $10BB
	sta $10A7
	rep #$20
	sep #$20
	lda $1B
	beq L8687D5
L8687D5:
	sep #$30
	lda $10B9
	dea
	sta $075D
	lda $10B8
	dea
	sta $075E
	lda $10BB
	dea
	sta $075F
	lda $10BA
	dea
	sta $0760
	lda $10BD
	sta $0761
	lda $10BC
	sta $0762
	lda $10BF
	sta $0763
	lda $10BE
	sta $0764
	lda $10C1
	sta $0771
	lda $10C0
	sta $0772
	lda $10C3
	sta $0765
	lda $10C2
	sta $0766
	lda $10C5
	sta $076F
	lda $10C4
	sta $0770
	lda $10C7
	sta $0767
	lda $10C6
	sta $0768
	lda $10C9
	sta $0769
	lda $10C8
	sta $076A
	lda $10CB
	sta $076D
	lda $10CA
	sta $076E
	lda $10CD
	sta $076B
	lda $10CC
	sta $076C
	lda $10CF
	sta $0773
	lda $10D1
	sta $0798
	lda $10D3
	sta $07A2
	lda $10D2
	sta $07A3
	lda $10D0
	sta $07CC
	lda $10D6
	ina
	sta $1006
	lda $10D8
	dea
	sta $0791
	lda $10D9
	dea
	sta $0792
	lda $10DA
	dea
	sta $0793
	lda $10DB
	dea
	sta $0794
	stz $078F
	lda $10D7
	lsr
	rol $078F
	lda $10D5
	lsr
	rol $078F
	stz $0790
	lda $10D6
	lsr
	rol $0790
	lda $10D4
	lsr
	rol $0790
	lda $10DC
	sta $07B8
	lda $10DD
	sta $07BA
	lda $10DE
	sta $07BC
	stz $15
	stz $17
	stz $19
	ldy #$00
L8688DC:
	ldx #$00
L8688DE:
	lda $10DF,Y
	lsr
	rol $15,X
	iny
	inx
	inx
	cpx #$06
	bcc L8688DE
	cpy #$11
	bcc L8688DC
	lda $15
	sta $07B7
	lda $17
	sta $07B9
	lda $19
	sta $07BB
	lda $10F1
	sta $07BD
	lda $10F2
	sta $07BE
	lda $10F3
	sta $07BF
	rep #$30
	jsr L86898A
	jsl L808CEA
	lda #$FFFF
	sta $07C6
	sta $07C8
	jsl L86CA9B
	jsr L86D693
	jmp L868020

L86892C:
	sep #$20
	lda #$03
	sta $7B
	stz $7C
	lda #$80
	sta $7D
	lda #$09
	sta $7E
	stz $7F
	lda #$29
	sta $80
	lda #$39
	sta $81
	lda #$48
	sta $82
	lda #$00
	stz $83
	lda #$00
	sta $84
	lda #$05
	sta $85
	stz $91
	stz $93
	stz $2115
	lda #$00
	sta $87
	lda #$00
	sta $88
	stz $99
	stz $9C
	stz $9D
	stz $9E
	stz $9F
	lda #$11
	sta $A0
	sta $A2
	lda #$02
	sta $A1
	sta $A3
	lda #$02
	sta $A4
	lda #$A1
	sta $A5
	lda #$00
	sta $A9
	rep #$20
	rts

L86898A:
	ldx #$0407
	stx $10A4
	jsr L868B02
	sep #$20
	lda $10B1
	sta $10B2
	rep #$20
L86899D:
	jsl L8087EA
	jsl L808E8D
	jsr L868B4A
	jsr L8685E0
	lda $0127
	bit #$2000
	beq L8689C5
	jsl L8087EA
	jsr L868743
	jsl L808E8D
	pla
	lda #$8059
	pha
	bra L8689F8

L8689C5:
	bit #$0800
	beq L8689CF
	jsr L868A84
	bra L8689D7

L8689CF:
	bit #$0400
	beq L8689D7
	jsr L868A91
L8689D7:
	bit #$0080
	beq L8689E1
	jsr L868AA0
	bra L8689F0

L8689E1:
	bit #$8000
	beq L8689EB
	jsr L868AD1
	bra L8689F0

L8689EB:
	bit #$1000
	bne L8689F8
L8689F0:
	jsr L868B42
	jsr L868B68
	bra L86899D

L8689F8:
	sep #$20
	lda $10B2
	sta $10B1
	lda $10F4
	sta $0797
	lda $10F5
	sta $0799
	lda $10F6
	sta $079A
	lda $10F7
	sta $079B
	lda $10F8
	sta $079F
	lda $10F9
	sta $079D
	lda $10FA
	sta $07A0
	lda $10FB
	sta $079E
	lda $10FC
	sta $079C
	lda $10FD
	sta $07A1
	lda $10FE
	sta $0795
	lda $1102
	and #$01
	asl
	asl
	sta $15
	lda $1101
	and #$01
	ora $15
	asl
	sta $15
	lda $1100
	and #$01
	ora $15
	asl
	sta $15
	lda $10FF
	and #$01
	ora $15
	asl
	asl
	asl
	sta $15
	lda $078F
	and #$47
	ora $15
	sta $078F
	lda $1103
	sta $07CD
	lda $1104
	sta $07DC
	rep #$20
	rts

L868A84:
	sep #$20
	lda $10B2
	beq L868A8E
	dec $10B2
L868A8E:
	rep #$20
	rts

L868A91:
	sep #$20
	lda $10B2
	cmp #$10
	bcs L868A9D
	inc $10B2
L868A9D:
	rep #$20
	rts

L868AA0:
	lda $10B2
	and #$00FF
	tax
	cmp #$0010
	beq L868ABF
	sep #$20
	lda $10F4,X
	ina
	cmp #$0A
	bne L868AB8
	lda #$F7
L868AB8:
	sta $10F4,X
	rep #$20
	bra L868AD0

L868ABF:
	sep #$20
	lda $10F4,X
	ina
	cmp #$05
	bcc L868ACB
	lda #$00
L868ACB:
	sta $10F4,X
	rep #$20
L868AD0:
	rts

L868AD1:
	lda $10B2
	and #$00FF
	tax
	cmp #$0010
	beq L868AF0
	sep #$20
	lda $10F4,X
	dea
	cmp #$F6
	bne L868AE9
	lda #$09
L868AE9:
	sta $10F4,X
	rep #$20
	bra L868B01

L868AF0:
	sep #$20
	lda $10F4,X
	dea
	cmp #$FF
	bcc L868AFC
	lda #$04
L868AFC:
	sta $10F4,X
	rep #$20
L868B01:
	rts

L868B02:
	ldx #$0000
	sep #$20
	lda #$15
L868B09:
	pha
	rep #$20
	jsr L8682DC
	sep #$20
	ldy #$0000
L868B14:
	lda.l L95DCCE,X
	sta $2180
	lda #$00
	sta $2180
	inx
	iny
	cpy #$000D
	bcc L868B14
	inc $10A5
	pla
	dea
	bne L868B09
	stz $10B2
	rep #$20
	ldx #$0011
L868B36:
	phx
	jsr L868B68
	inc $10B2
	plx
	dex
	bne L868B36
	rts

L868B42:
	lda #$0004
	sta $15
	jmp L868B4C

L868B4A:
	stz $15
L868B4C:
	lda $10B2
	and #$00FF
	xba
	lsr
	lsr
	adc #$01A0
	tax
	sep #$20
	lda $15
	sta $7E3001,X
	sta $7E3003,X
	rep #$20
	rts

L868B68:
	lda $10B2
	and #$00FF
	xba
	lsr
	lsr
	adc #$01A0
	tax
	lda $10B2
	and #$00FF
	tay
	sep #$20
	lda $10F4,Y
	bpl L868B8B
	eor #$FF
	ina
	pha
	lda #$3F
	bra L868B8E

L868B8B:
	pha
	lda #$FF
L868B8E:
	sta $7E3000,X
	pla
	clc
	adc #$60
	sta $7E3002,X
	rep #$20
	rts

L868B9D:
	sep #$20
	lda $07B7
	bit #$10
	bne L868BAB
	lda $075D
	bra L868BAE

L868BAB:
	lda $075E
L868BAE:
	cmp #$FF
	beq L868BC0
	lda $07BD
	bne L868BC0
	lda $07B7
	jsr L868C05
	sta $07BD
L868BC0:
	lda $07B9
	bit #$10
	bne L868BCC
	lda $075D
	bra L868BCF

L868BCC:
	lda $075E
L868BCF:
	cmp #$FF
	beq L868BE1
	lda $07BE
	bne L868BE1
	lda $07B9
	jsr L868C05
	sta $07BE
L868BE1:
	lda $07BB
	bit #$10
	bne L868BED
	lda $075D
	bra L868BF0

L868BED:
	lda $075E
L868BF0:
	cmp #$FF
	beq L868C02
	lda $07BF
	bne L868C02
	lda $07BB
	jsr L868C05
	sta $07BF
L868C02:
	rep #$20
	rts

L868C05:
	bit #$D010
	asl
	lda $075D
	sta $15
	lda $075F
	bra L868C1E

L868C13:
	lda $075E
	sta $15
	lda $0760
	jmp L868CA3

L868C1E:
	rep #$20
	jsr L8690B9
	sep #$20
	sta $17
	cmp #$66
	bne L868C2E
	jmp L868C96

L868C2E:
	cmp #$FF
	beq L868C93
	jsr L868D28
	cmp #$01
	beq L868C99
	lda $17
	cmp #$40
	beq L868C96
	cmp #$13
	beq L868C55
	cmp #$20
	beq L868C55
	cmp #$09
	beq L868C55
	cmp #$2D
	beq L868C55
	cmp #$29
	beq L868C55
	bra L868C57

L868C55:
	bra L868C96

L868C57:
	cmp #$0F
	beq L868C6D
	cmp #$00
	beq L868C6D
	cmp #$0B
	beq L868C6D
	cmp #$03
	beq L868C6D
	cmp #$1E
	beq L868C6D
	bra L868C77

L868C6D:
	lda $078F
	bit #$02
	beq L868C96
	lda #$01
	rts

L868C77:
	cmp #$18
	beq L868C83
	cmp #$24
	bcc L868C8D
	cmp #$29
	bcs L868C8D
L868C83:
	lda $078F
	bit #$02
	bne L868C96
	lda #$01
	rts

L868C8D:
	cmp #$4F
	beq L868C93
	bra L868C99

L868C93:
	lda #$01
	rts

L868C96:
	lda #$00
	rts

L868C99:
	stz $075D
	stz $075F
	dec $075F
	rts

L868CA3:
	rep #$20
	jsr L8690B9
	sep #$20
	sta $17
	cmp #$66
	beq L868D1B
	cmp #$FF
	beq L868D17
	jsr L868D28
	cmp #$01
	beq L868D1E
	lda $17
	cmp #$40
	beq L868D1B
	cmp #$13
	beq L868CD7
	cmp #$20
	beq L868CD7
	cmp #$09
	beq L868CD7
	cmp #$2D
	beq L868CD7
	cmp #$29
	beq L868CD7
	bra L868CD9

L868CD7:
	bra L868D1B

L868CD9:
	cmp #$0F
	beq L868CEF
	cmp #$00
	beq L868CEF
	cmp #$0B
	beq L868CEF
	cmp #$03
	beq L868CEF
	cmp #$1E
	beq L868CEF
	bra L868CFA

L868CEF:
	lda $078F
	bit #$02
	beq L868D1B
	lda #$01
	bra L868D27

L868CFA:
	cmp #$18
	beq L868D06
	cmp #$24
	bcc L868D11
	cmp #$29
	bcs L868D11
L868D06:
	lda $078F
	bit #$02
	bne L868D1B
	lda #$01
	bra L868D27

L868D11:
	cmp #$4F
	beq L868D17
	bra L868D1E

L868D17:
	lda #$01
	bra L868D27

L868D1B:
	lda #$00
	rts

L868D1E:
	stz $075E
	stz $0760
	dec $0760
L868D27:
	rts

L868D28:
	sep #$20
	ldx #$0000
	ldy #$0000
L868D30:
	lda.l L958C36,X
	cmp #$FF
	beq L868D49
	cmp $15
	bne L868D44
	lda.l (L958C36 + 1),X
	cmp $17
	beq L868D4D
L868D44:
	iny
	inx
	inx
	bra L868D30

L868D49:
	lda #$01
	bra L868D4F

L868D4D:
	lda #$00
L868D4F:
	rts

L868D50:
.dw L86D8CC
.dw L86DB6B

L868D54:
.dw L86D935
.dw L86DB86

L868D58:
.db $90 $E8 $1C
.db $90 $E8 $1C
.db $90 $E8 $1C
.db $90 $E8 $1C
.db $90 $E8 $1C
.db $90 $E8 $1C
.db $90 $E8 $1C
.db $90 $E8 $1C
.db $01 $B0 $1C

L868D73:
.db $00

L868D74:
.db $90 $08 $1D
.db $90 $08 $1D
.db $90 $08 $1D
.db $90 $08 $1D
.db $90 $08 $1D
.db $90 $08 $1D
.db $90 $08 $1D
.db $90 $08 $1D
.db $01 $B0 $1C
.db $00

L868D90:
.db $09 $08 $1D
.db $10 $0A $1D
.db $08 $0E $1D
.db $08 $10 $1D
.db $08 $12 $1D
.db $08 $14 $1D
.db $08 $16 $1D
.db $08 $18 $1D
.db $06 $1A $1D
.db $90 $E8 $1C
.db $90 $E8 $1C
.db $90 $E8 $1C
.db $01 $B0 $1C
.db $00

L868DB8:
.db $C0 $80 $1B
.db $C0 $C0 $1B
.db $01 $B0 $1C
.db $00

L868DC2:
.db $64 $B0 $1C
.db $1C $B0 $1C
.db $88 $28 $1D
.db $88 $28 $1D
.db $88 $28 $1D
.db $88 $28 $1D
.db $88 $28 $1D
.db $88 $28 $1D
.db $88 $28 $1D
.db $88 $28 $1D
.db $88 $28 $1D
.db $88 $28 $1D
.db $88 $28 $1D
.db $00

L868DEA:
.db $40 $B2 $1C
.db $4A $B2 $1C
.db $01 $52 $10
.db $00

L868DF4:
.db $40 $B2 $1C
.db $4A $B2 $1C
.db $A0 $42 $1D
.db $08 $62 $1D
.db $00

L868E01:
.db $40 $B2 $1C
.db $7A $B2 $1C
.db $98 $42 $1D
.db $00

L868E0B:
.db $19 $B0 $1C
.db $A0 $42 $1D
.db $08 $62 $1D
.db $01 $B0 $1C
.db $00

L868E18:
.db $C0 $00 $1B
.db $B8 $40 $1B
.db $00 $08 $8F
.db $01 $0F $00
.db $00

L868E25:
.db $01 $04 $00
.db $00

L868E29:
.db $07 $02 $05 $00 $01 $06 $03 $04

L868E31:
.ACCU 16
	php
	lda $1003
	bit #$0001
	beq L868E3C
	bra L868E40

L868E3C:
	jsl L808875
L868E40:
	jsr L868B9D
	jsr L86E2A5
	jsr L86E367
	jsr L86EEC8
	jsr L86F265
	jsr L869438
	jsr L869B20
	jsr L869A5A
	jsr L86E47A
	jsr L86F291
	jsl L8095AF
	lda #bank100(L86FD81)
	sta $01
	lda #L86FD81
	sta $00
	jsl L809606
	lda #bank100(L86FC9C)
	sta $01
	lda #L86FC9C
	sta $00
	jsl L809615
	jsr L8691C8
	jsr L86B3D2
	jsr L869185
	sep #$20
	lda #$01
	sta $0708
	rep #$20
	jsr L869723
	jsr L869979
	jsr L86ED7B
	jsr L86EE92
	jsr L86F729
	jsr L86D9F6
	jsr L86C2D6
	jsr L86D4A6
L868EA8:
	lda $1061
	and #$00FF
	bne L868EA8
	jsl L8087EA
	sep #$20
	lda $1003
	bit #$08
	beq L868EC3
	lda $7A
	and #$F0
	sta $7A
L868EC3:
	rep #$20
	lda $1003
	and #$FFFD
	sta $1003
	lda $1003
	bit #$0001
	beq L868ED9
	jsr L86E094
L868ED9:
	jsl L8088A0
	jsr L86D820
	lda $1003
	bit #$0001
	beq L868EEB
	jsr L86CD1D
L868EEB:
	sep #$20
	lda $1003
	and #$DF
	sta $1003
	rep #$20
L868EF7:
	jsr L86F75D
	jsr L86CF57
	jsr L86D7A4
	jsr L86C1C5
	jsr L869A22
	jsr L86AF03
	jsr L86CA68
	jsr L86C881
	lda $1002
	bit #$0002
	bne L868F7E
	jsr L86DC5E
	jsr L86BC4E
	jsr L86C07E
	jsr L86B47C
	jsr L86B6C6
	jsr L86D89B
	jsr L86C184
	jsr L86D75B
	jsr L86E006
	jsr L86DCBF
	jsr L86C12A
	jsr L86DD85
	jsr L86E06D
	jsr L86D213
	jsr L86CFD2
	lda $1004
	bit #$0004
	beq L868F57
	sep #$20
	and #$FB
	sta $1004
	rep #$20
	bra L868F6A

L868F57:
	lda $1002
	bit #$0040
	bne L868F6A
	lda $1004
	bit #$0002
	bne L868F6A
	jsr L869185
L868F6A:
	jsr L86BCF2
	jsr L86B983
	lda $1002
	bit #$0020
	beq L868F7E
	jsr L86F870
	jsr L86D393
L868F7E:
	jsr L8698FC
	jsr L869644
	jsr L86D80A
	jsr L86BE46
	jsr L86F70B
	lda $1002
	bit #$0002
	bne L868F98
	jsr L86E094
L868F98:
	jsr L8699A0
	sep #$20
	lda $1002
	bit #$02
	bne L868FAB
	lda $1004
	bit #$02
	bne L868FAF
L868FAB:
	lda #$00
	bra L868FB1

L868FAF:
	lda #$01
L868FB1:
	sta $0C10
	rep #$20
	lda $1004
	bit #$0008
	beq L868FCE
	sep #$20
	stz $F7
	lda #$80
	sta $7A
	rep #$20
	jsl L8087EA
	bra L869020

L868FCE:
	jsl L8087EA
	sep #$20
	lda $1000
	and #$BF
	sta $1000
	rep #$20
	lda $04B2
	and #$0080
	bne L868FEE
	jsr L86991B
	bcc L868FEE
	jsr L86D862
L868FEE:
	lda $04B2
	and #$00FF
	cmp #$0080
	beq L869003
	sep #$20
	inc $1005
	rep #$20
	jmp L868EF7

L869003:
	lda $1003
	bit #$0001
	beq L869010
	bit #$0010
	beq L869020
L869010:
	sep #$20
	lda #$FF
	eor #$FF
	and $F7
	sta $F7
	rep #$20
	jsl L808875
L869020:
	plp
	rtl

L869022:
	lda $1012
	sta $15
	lda $075F
	jsr L86907E
	pha
	sep #$20
	lda $15
	sta $1012
	rep #$20
	pla
	rts

L869039:
	lda $1013
	sta $15
	lda $0760
	jsr L86907E
	pha
	sep #$20
	lda $15
	sta $1013
	rep #$20
	pla
	rts

L869050:
	lda $075D
	sta $15
	lda $075F
	jsr L86907E
	pha
	sep #$20
	lda $15
	sta $075D
	rep #$20
	pla
	rts

L869067:
	lda $075E
	sta $15
	lda $0760
	jsr L86907E
	pha
	sep #$20
	lda $15
	sta $075E
	rep #$20
	pla
	rts

L86907E:
	jsr L8690B9
	sta $17
	phy
	sep #$20
	ldx #$0000
	ldy #$0000
L86908C:
	lda.l L958C36,X
	cmp #$FF
	beq L8690AF
	cmp $15
	bne L8690AA
	lda $17
	cmp #$FF
	beq L8690B4
	cmp #$66
	beq L8690B4
	lda.l (L958C36 + 1),X
	cmp $17
	beq L8690B4
L8690AA:
	iny
	inx
	inx
	bra L86908C

L8690AF:
	ldy #$0000
	sty $15
L8690B4:
	rep #$20
	tya
	ply
	rts

L8690B9:
	and #$00FF
	pha
	lda $078F
	bit #$0002
	bne L8690C8
	pla
	bra L8690E4

L8690C8:
	pla
	cmp #$0020
	bne L8690D1
	jmp L869184

L8690D1:
	cmp #$0017
	bne L8690DC
	lda #$0013
	jmp L869184

L8690DC:
	cmp #$0013
	bne L8690E4
	jmp L869184

L8690E4:
	cmp #$000F
	bcc L8690F4
	cmp #$0018
	bcs L8690F4
	lda #$000F
	jmp L869184

L8690F4:
	cmp #$0018
	bcc L869104
	cmp #$001E
	bcs L869104
	lda #$0018
	jmp L869184

L869104:
	cmp #$002D
	bcc L869113
	cmp #$003C
	bcs L869113
	lda #$002D
	bra L869184

L869113:
	cmp #$0040
	bcc L869122
	cmp #$004F
	bcs L869122
	lda #$0040
	bra L869184

L869122:
	cmp #$0009
	bne L86912A
	jmp L869184

L86912A:
	cmp #$001E
	bcc L869139
	cmp #$0024
	bcs L869139
	lda #$001E
	bra L869184

L869139:
	cmp #$0024
	bcc L869145
	cmp #$0029
	bcs L869145
	bra L869184

L869145:
	cmp #$0029
	bcc L869154
	cmp #$002D
	bcs L869154
	lda #$0029
	bra L869184

L869154:
	cmp #$004F
	bcc L869163
	cmp #$0057
	bcs L869163
	lda #$004F
	bra L869184

L869163:
	cmp #$0066
	bcc L869172
	cmp #$006B
	bcs L869172
	lda #$0066
	bra L869184

L869172:
	cmp #$00FF
	beq L869184
	cmp #$0003
	beq L869184
	cmp #$000B
	beq L869184
	lda #$0000
L869184:
	rts

L869185:
	sep #$20
	lda #$01
	sta $070A
	rep #$20
	jsl L80954E
	lda #$0200
	sta $1046
	jsl L8098F0
	sep #$20
	lda $070A
	bne L8691A8
	stz $103D
	bra L8691C5

L8691A8:
	lda $1037
	bne L8691C5
	lda $0708
	bne L8691C5
	lda $103D
	bne L8691C5
	lda.l $000708
	ina
	sta.l $000708
	lda #$01
	sta $103D
L8691C5:
	rep #$20
	rts

L8691C8:
	lda $075F
	jsr L8690B9
	cmp #$0040
	beq L8691EE
	lda $07B7
	bit #$0010
	bne L8691EE
	jsr L8692D8
	stz $15
	jsr L86928F
	sep #$20
	lda #$00
	sta $103B
	rep #$20
	bra L8691FF

L8691EE:
	stz $15
	jsr L86928F
	jsr L8692D8
	sep #$20
	lda #$01
	sta $103B
	rep #$20
L8691FF:
	rts

L869200:
	ldx #$0000
L869203:
	lda.l $0004DE,X
	pha
	lda.l $0004BE,X
	sta.l $0004DE,X
	pla
	sta.l $0004BE,X
	inx
	inx
	cpx #$0020
	bcc L869203
	sep #$20
	lda $103B
	eor #$01
	sta $103B
	rep #$20
	rts

L869229:
	lda $075F
	jsr L8690B9
	cmp #$0040
	beq L86923C
	lda $103B
	bit #$0001
	beq L869241
L86923C:
	ldx #$0000
	bra L869263

L869241:
	ldx #$0020
	bra L869263

L869246:
	lda $075F
	jsr L8690B9
	cmp #$0040
	beq L86925E
	lda $103B
	bit #$0001
	bne L86925E
	ldx #$0000
	bra L869263

L86925E:
	ldx #$0020
	bra L869263

L869263:
	ldy $1039
	lda $1DB4,Y
	and #$00FF
	jsl L8096FA
	sep #$20
	lda #$00
	sta.l $0004DA,X
	rep #$20
	inc $1039
	rts

L86927E:
	ldy $1039
	lda $1DB4,Y
	and #$00FF
	tay
	inc $1039
	stz $15
	bra L86929E

L86928F:
	lda $075D
	and #$00FF
	cmp #$00FF
	bne L86929B
	rts

L86929B:
	ldy #$0000
L86929E:
	lda $1001
	bit #$0020
	beq L8692B3
	lda $07B7
	bit #$0010
	beq L8692B3
	lda #$4C4E
	bra L8692B6

L8692B3:
	lda $1062
L8692B6:
	clc
	adc $15
	sta $101A
	stz $101C
	jsr L869050
	lda #$7AFE
	jsr L8693DA
	rts

L8692C9:
	ldy $1039
	lda $1DB4,Y
	and #$00FF
	tay
	inc $1039
	bra L8692F0

L8692D8:
	lda $075E
	and #$00FF
	cmp #$00FF
	bne L8692E4
	rts

L8692E4:
	lda $1001
	bit #$0004
	beq L8692ED
	rts

L8692ED:
	ldy #$0000
L8692F0:
	lda $07B7
	bit #$0010
	beq L86930F
	lda $0760
	and #$00FF
	cmp #$0024
	bcc L86930F
	cmp #$0029
	bcs L86930F
	lda #$0018
	sta $15
	bra L869311

L86930F:
	stz $15
L869311:
	lda $1001
	bit #$0020
	beq L869326
	lda $07B7
	bit #$0010
	bne L869326
	lda $1062
	bra L869329

L869326:
	lda #$4C4E
L869329:
	sec
	sbc $15
	sta $101A
	lda #$0001
	sta $101C
	jsr L869067
	lda #$89FE
	jsr L8693DA
	rts

L86933F:
	phy
	tay
	jsr L869353
	ply
	rtl

L869346:
	ldy $1039
	lda $1DB4,Y
	and #$00FF
	tay
	inc $1039
L869353:
	lda $1062
	sta $101A
	stz $101C
	lda $075F
	and #$00FF
	sec
	sbc #$002D
	lda #$98FE
	jsr L8693CE
	rts

L86936D:
	tay
	jsr L86937F
	rtl

L869372:
	ldy $1039
	lda $1DB4,Y
	and #$00FF
	tay
	inc $1039
L86937F:
	lda #$4C4E
	sta $101A
	lda #$0001
	sta $101C
	lda $0760
	and #$00FF
	sec
	sbc #$002D
	lda #$ACFE
	jsr L8693CE
	rts

L86939C:
	ldy #$0000
	lda #$4C4E
	sta $101A
	lda #$0001
	sta $101C
	jsr L869039
	lda #$ACFE
	jsr L8693DA
	rts

L8693B5:
	ldy #$0000
	lda #$4C4E
	sta $101A
	lda #$0001
	sta $101C
	jsr L869039
	lda #$89FE
	jsr L8693DA
	rts

L8693CE:
	pha
	lda #$7E00
	sta $01
	pla
	sta $00
	jmp L8693E6

L8693DA:
	pha
	lda #$7E00
	sta $01
	pla
	sta $00
	jmp L8693E6

L8693E6:
	lda $101A
	jsl L869411
	sep #$20
	lda $101C
	bne L869402
	lda #$00
	sta.l $0004C9,X
	lda #$00
	sta.l $0004CA,X
	bra L86940E

L869402:
	lda #$94
	sta.l $0004C9,X
	lda #$80
	sta.l $0004CA,X
L86940E:
	rep #$20
	rts

L869411:
	ldx #bank100(L869420)
	stx $04
	ldx #L869420
	stx $03
	jsl L809633
	rtl

L869420:
	lda.l $0004CE,X
	lda.l $0004D0,X
	lda $04DA,X
	and #$00FF
	bne L869437
	sep #$20
	stz $070A
	rep #$20
L869437:
	rtl

L869438:
	sep #$20
	lda #$00
	sta $2121
	lda #$00
	sta $2122
	sta $2122
	rep #$20
	lda $1003
	bit #$0001
	beq L869461
	lda #bank100(L869502)
	sta $01
	lda #L869502
	sta $00
	jsl L808EAD
	bra L869475

L869461:
	jsr L869531
	jsr L86951B
	lda #bank100(L8694FB)
	sta $01
	lda #L8694FB
	sta $00
	jsl L808EAD
L869475:
	rts

L869476:
	lda $1003
	bit #$0001
	bne L8694BE
	lda #$1400
	sta $15
	ldy $15
	ldx #$0000
L869488:
	lda.l L948000,X
	sta.l DecompressionLocation,X
	inx
	dey
	inx
	dey
	bne L869488
	lda #$0400
	sta $15
	ldy $15
	ldx #$0000
L8694A0:
	lda.l L94A000,X
	sta $7E54FE,X
	inx
	dey
	inx
	dey
	bne L8694A0
	lda #bank100(L869509)
	sta $01
	lda #L869509
	sta $00
	jsl L808EAD
	bra L8694FA

L8694BE:
	lda #$1600
	sta $15
	ldy $15
	ldx #$0000
L8694C8:
	lda.l L948000,X
	sta.l DecompressionLocation,X
	inx
	dey
	inx
	dey
	bne L8694C8
	sep #$20
	lda #$CA
	sta $73
	rep #$20
	lda #$9EC0
	sta $71
	lda #$1800
	sta $76
	jsl DECOMPRESS_ASSET
	lda #bank100(L869512)
	sta $01
	lda #L869512
	sta $00
	jsl L808EAD
L8694FA:
	rts

L8694FB:
DMA_DATA L94D0C0 $0020 $10
L869502:
DMA_DATA L85FBC2 $003E $01
L869509:
DMA_DATA DecompressionLocation $1800 $80 $1000
L869512:
DMA_DATA DecompressionLocation $1E00 $80 $4000

L86951B:
	lda #bank100(L86952A)
	sta $01
	lda #L86952A
	sta $00
	jsl L808EAD
	rts

L86952A:
DMA_DATA (L94D0A0 + 2) $000E $01

L869531:
	lda $1001
	bit #$0014
	bne L869549
	lda #bank100(L869558)
	sta $01
	lda #L869558
	sta $00
	jsl L808EAD
	bra L869557

L869549:
	lda #bank100(L86955F)
	sta $01
	lda #L86955F
	sta $00
	jsl L808EAD
L869557:
	rts

L869558:
DMA_DATA (L94D0B0 + 2) $000E $09
L86955F:
.db $01 $A2 $D0 $94 $0E $00 $09 $60

L869567:
	lda #$00FF
	ldx #$40FE
	ldy #$0800
	jsl L808C8E
	lda #$014A
	sta $15
	ldy $15
	ldx #$0000
L86957E:
	lda.l L85F800,X
	sta $7E48FE,X
	inx
	dey
	inx
	dey
	bne L86957E
	lda #$7E00
	sta $01
	lda #$48FE
	sta $00
	lda $1001
	bit #$0020
	beq L8695A6
	lda $07B7
	bit #$0010
	beq L8695C0
L8695A6:
	lda $075E
	and #$00FF
	cmp #$00FF
	beq L8695C0
	lda #$0800
	ldx #$0002
	jsr L8695F5
	jsr L869744
	jsr L86B598
L8695C0:
	lda #$7E00
	sta $01
	lda #$48FE
	sta $00
	lda $1001
	bit #$0020
	beq L8695DA
	lda $07B7
	bit #$0010
	bne L8695F4
L8695DA:
	lda $075D
	and #$00FF
	cmp #$00FF
	beq L8695F4
	lda #$0000
	ldx #$0020
	jsr L8695F5
	jsr L8697A7
	jsr L86B5B6
L8695F4:
	rts

L8695F5:
	sta $15
	ldy #$0000
	lda #$000B
	sta $101A
L869600:
	lda #$000F
	sta $101C
L869606:
	lda [$00],Y
	ora $15
	and #$DFFF
	sta.l DecompressionLocation,X
	inx
	inx
	iny
	iny
	dec $101C
	bne L869606
	txa
	clc
	adc #$0022
	tax
	dec $101A
	bne L869600
	rts

L869626:
	lda #bank100(L8696CC)
	sta $01
	lda #L8696CC
	sta $00
	jsl L808EAD
	rts

L869635:
	lda #bank100(L8696E7)
	sta $01
	lda #L8696E7
	sta $00
	jsl L808EAD
	rts

L869644:
	lda $1003
	bit #$0001
	bne L869635
	lda $1002
	bit #$0002
	bne L8696C9
	lda $1004
	bit #$0002
	beq L86966B
	lda #bank100(L8696DE)
	sta $01
	lda #L8696DE
	sta $00
	jsl L808EAD
	rts

L86966B:
	lda $1002
	bit #$0004
	beq L869683
	lda #bank100(L8696F9)
	sta $01
	lda #L8696F9
	sta $00
	jsl L808EAD
	bra L869691

L869683:
	lda #bank100(L869702)
	sta $01
	lda #L869702
	sta $00
	jsl L808EAD
L869691:
	lda $1002
	bit #$0020
	beq L86969C
	jmp L869626

L86969C:
	lda $1001
	bit #$0004
	bne L8696C9
	lda $1002
	bit #$0004
	bne L8696C9
	lda #bank100(L8696F0)
	sta $01
	lda #L8696F0
	sta $00
	jsl L808EAD
	lda #bank100(L8696D5)
	sta $01
	lda #L8696D5
	sta $00
	jsl L808EAD
	rts

L8696C9:
	jmp L869635

L8696CC:
DMA_DATA $7E3000 $0440 $80 $1C00
L8696D5:
DMA_DATA $7E30C0 $0380 $80 $1C60
L8696DE:
DMA_DATA $7E2100 $0300 $80 $7880
L8696E7:
DMA_DATA $7E3442 $02BC $80 $1E21
L8696F0:
DMA_DATA $7E35C4 $0078 $80 $1EE2
L8696F9:
DMA_DATA $7E2C84 $023A $80 $7E42
L869702:
DMA_DATA $7E2C84 $00F8 $80 $7E42

L86970B:
	lda #bank100(L86971A)
	sta $01
	lda #L86971A
	sta $00
	jsl L808EAD
	rts

L86971A:
DMA_DATA $7E3000 $0800 $80 $1C00

L869723:
	lda $1003
	bit #$0001
	bne L869743
	jsr L869567
	ldx #$0000
L869731:
	lda.l DecompressionLocation,X
	sta $7E3440,X
	inx
	inx
	cpx #$02C0
	bcc L869731
	jsr L869635
L869743:
	rts

L869744:
	lda #$8B00
	sta $01
	lda $0764
	ldx #$0044
	ldy #$D662
	jsr L86B1BB
	lda $075E
	jsr L86980A
	ldx #$0054
	jsr L86B1BB
	lda #$8B00
	sta $01
	lda $0760
	and #$00FF
	cmp #$00FF
	beq L86977A
	ldx #$00C4
	ldy #$DF58
	jsr L86B1BB
L86977A:
	lda $0768
	ldx #$020A
	jsr L869882
	lda $076A
	ldx #$024A
	jsr L869882
	lda $076C
	ldx #$0218
	jsr L869882
	lda $076E
	ldx #$0258
	jsr L869882
	lda $0772
	ldx #$00DA
	jmp L869895

L8697A7:
	lda #$8B00
	sta $01
	lda $0763
	ldx #$0062
	ldy #$D662
	jsr L86B1BB
	lda $075D
	jsr L86980A
	ldx #$0072
	jsr L86B1BB
	lda #$8B00
	sta $01
	lda $075F
	and #$00FF
	cmp #$00FF
	beq L8697DD
	ldx #$00E2
	ldy #$DF58
	jsr L86B1BB
L8697DD:
	lda $0767
	ldx #$0228
	jsr L869882
	lda $0769
	ldx #$0268
	jsr L869882
	lda $076B
	ldx #$0236
	jsr L869882
	lda $076D
	ldx #$0276
	jsr L869882
	lda $0771
	ldx #$00F8
	jmp L869895

L86980A:
	sep #$20
	sta $15
	ldx #$0000
L869811:
	lda.l L95D6D4,X
	cmp #$FF
	beq L86982B
	cmp $15
	beq L869820
	inx
	bra L869811

L869820:
	lda #$88
	sta $02
	ldy #$B297
	rep #$20
	txa
	rts

.ACCU 8
L86982B:
	lda #$8B
	sta $02
	lda $15
	ldy #$DD30
	rep #$20
	and #$00FF
	rts

L86983A:
	sep #$20
	sta $15
	ldx #$0000
L869841:
	lda.l L95D6DE,X
	cmp #$FF
	beq L86985D
	cmp $15
	beq L869850
	inx
	bra L869841

L869850:
	lda #$88
	sta $02
	ldy #$B30B
	sty $00
	rep #$20
	txa
	rts

.ACCU 8
L86985D:
	lda #$8B
	sta $02
	lda $15
	ldy #$DD30
	sty $00
	rep #$20
	and #$00FF
	rts

L86986E:
	jsr L869873
	inx
	inx
L869873:
	lda $7E4100,X
	and #$FE00
	ora #$00FD
	sta $7E4100,X
	rts

L869882:
	and #$00FF
	cmp #$00FF
	beq L86986E
	ldy #$0140
	sty $101C
	ldy #$0000
	bra L86989E

L869895:
	ldy #$0100
	sty $101C
	ldy #$0001
L86989E:
	sty $15
	phx
	and #$00FF
	sta $33
	lda #$000A
	sta $35
	jsl L808DBA
	plx
	lda $33
	cmp #$000A
	bcs L8698C6
	ldy $15
	bne L8698BD
	inx
	inx
L8698BD:
	cmp #$0000
	bne L8698D3
	inx
	inx
	bra L8698D6

L8698C6:
	pha
	lda #$0001
	jsr L8698D8
	pla
	sec
	sec
	sbc #$000A
L8698D3:
	jsr L8698D8
L8698D6:
	lda $2D
L8698D8:
	clc
	adc $101C
	sta $101A
	lda.l DecompressionLocation,X
	and #$FE00
	ora $101A
	sta.l DecompressionLocation,X
	ldy $15
	beq L8698F9
	clc
	adc #$0010
	sta $7E413E,X
L8698F9:
	inx
	inx
	rts

L8698FC:
	lda $1000
	bit #$0020
	bne L869918
	lda $0125
	bit #$0F80
	beq L869918
	sep #$20
	lda $1037
	beq L869918
	lda #$01
	sta $1037
L869918:
	rep #$20
	rts

L86991B:
	lda $1001
	bit #$0002
	beq L86993A
	lda $0125
	bit #$8000
	beq L86993A
	sep #$20
	lda $1001
	ora #$80
	sta $1001
	rep #$20
	sec
	bra L86993B

L86993A:
	clc
L86993B:
	rts

L86993C:
	sta $15
	asl
	clc
	adc $15
	tax
	lda.l L95D9D8,X
	sta $00
	lda.l (L95D9D8 + 1),X
	sta $01
	ldy #$0000
	lda [$00],Y
	and #$FF00
	lsr
	lsr
	sta $15
	lda [$00],Y
	and #$00FF
	asl
	adc $15
	tax
	ldy #$0002
L869967:
	lda [$00],Y
	cmp #$FFFF
	beq L869978
	sta $7E3000,X
	inx
	inx
	iny
	iny
	bra L869967

L869978:
	rts

L869979:
	lda $1001
	bit #$0020
	beq L869995
	sep #$20
	ldx #$0000
	lda $A0
	and #$0F
L86998A:
	sta $1B00,X
	inx
	cpx #$0080
	bcc L86998A
	rep #$20
L869995:
	rts

L869996:
	sep #$20
	lda #$20
	sta $106D
	rep #$20
	rts

L8699A0:
	lda $106D
	and #$00FF
	beq L8699B0
	cmp #$0021
	bne L8699B1
	dec $106D
L8699B0:
	rts

L8699B1:
	cmp #$0020
	beq L8699BE
	lda $1005
	bit #$0003
	bne L8699F8
L8699BE:
	dec $106D
	ldx #$0000
L8699C4:
	lda $1B08,X
	sta $1B00,X
	inx
	inx
	cpx #$0078
	bcc L8699C4
	lda $1005
	bit #$0004
	beq L869A21
	lda $106D
	lsr
	and #$0007
	tax
	lda.l L868E29,X
	and #$00FF
	clc
	adc #$0078
	tax
	sep #$20
	lda $A0
	ora #$10
	sta $1B00,X
	rep #$20
L8699F8:
	sep #$20
	lda #$40
	sta $4330
	lda #$2C
	sta $4331
	lda #lobyte(L868E18)
	sta $4332
	lda #hibyte(L868E18)
	sta $4333
	lda #bankbyte(L868E18)
	sta $4334
	lda #$00
	sta $4337
	rep #$20
	lda $F7
	ora #$0008
	sta $F7
L869A21:
	rts

L869A22:
	sep #$20
	lda $1000
	bit #$01
	bne L869A57
	lda $1002
	bit #$04
	beq L869A57
	lda $1037
	bne L869A57
	lda $1014
	ora $1015
	and #$7F
	bne L869A57
	lda $1016
	and #$7F
	bne L869A57
	lda $1000
	bit #$20
	bne L869A57
	lda $0708
	bne L869A57
	inc $0708
L869A57:
	rep #$20
	rts

L869A5A:
	sep #$20
	lda $075D
	sta $15
	lda $0763
	sta $16
	lda $078B
	sta $17
	lda $075F
	sta $18
	lda $078D
	sta $19
	jsr L869AA1
	lda $15
	sta $1012
	lda $075E
	sta $15
	lda $0764
	sta $16
	lda $078C
	sta $17
	lda $0760
	sta $18
	lda $078E
	sta $19
	jsr L869AA1
	lda $15
	sta $1013
	rep #$20
	rts

L869AA1:
.ACCU 8
	lda $15
	cmp #$05
	bne L869AB2
	lda $19
	cmp #$04
	bne L869AB2
	lda #$2D
	sta $15
	rts

L869AB2:
	lda $15
	cmp #$09
	bne L869AC3
	lda $17
	cmp #$00
	bne L869AC3
	lda #$2E
	sta $15
	rts

L869AC3:
	lda $15
	cmp #$0A
	bne L869AD4
	lda $17
	cmp #$00
	bne L869AD4
	lda #$2F
	sta $15
	rts

L869AD4:
	lda $07DF
	cmp #$15
	bcc L869AEC
	lda $15
	cmp #$2B
	bne L869AEC
	lda $16
	cmp #$30
	bne L869AEC
	lda #$30
	sta $15
	rts

L869AEC:
	lda $15
	cmp #$13
	bne L869AFD
	lda $16
	cmp #$0F
	bne L869AFD
	lda #$31
	sta $15
	rts

L869AFD:
	lda $15
	cmp #$17
	bne L869B0E
	lda $18
	cmp #$35
	bne L869B0E
	lda #$32
	sta $15
	rts

L869B0E:
	lda $15
	cmp #$15
	bne L869B1F
	lda $1002
	bit #$08
	beq L869B1F
	lda #$33
	sta $15
L869B1F:
	rts

L869B20:
.ACCU 16
	lda $1003
	bit #$0001
	bne L869B54
	lda $1002
	bit #$0008
	bne L869B57
	lda $1001
	bit #$0020
	bne L869B51
	bit #$0004
	bne L869B4E
	lda $075F
	jsr L8690B9
	cmp #$0040
	bne L869B4B
	jmp L869D07

L869B4B:
	jmp L86A204

L869B4E:
	jmp L869C7F

L869B51:
	jmp L869BD8

L869B54:
	jmp L869B96

L869B57:
	jmp L869B5A

L869B5A:
	sep #$20
	ldx #$0000
	lda #$81
	jsr L86F789
	stz $27
	lda #$11
	jsr L86F789
	lda #$01
	jsr L86F789
	lda #$FE
	jsr L86F789
	lda #$FE
	jsr L86F789
	jsr L86A15A
	lda #$03
	jsr L86F789
	lda $0764
	jsr L86F789
	lda #$37
	jsr L86F789
	jsr L86A8E4
	jsr L869EB4
	jmp L86A19D

L869B96:
	sep #$20
	ldx #$0000
	lda #$12
	jsr L86F789
	lda $105F
	jsr L86F789
	lda #$FE
	jsr L86F789
	lda #$44
	jsr L86F789
	lda $1060
	jsr L86F789
	lda #$F4
	jsr L86F789
	lda #$41
	jsr L86F789
	lda #$FE
	jsr L86F789
	lda #$1D
	jsr L86F789
	lda #$FF
	jsr L86F789
	stz $1037
	rep #$20
	stz $1039
	rts

L869BD8:
	sep #$20
	ldx #$0000
	lda #$81
	jsr L86F789
	stz $27
	jsr L869BFA
	lda #$1D
	jsr L86F789
	lda #$FF
	jsr L86F789
	stz $1037
	rep #$20
	stz $1039
	rts

L869BFA:
.ACCU 8
	lda $07B7
	bit #$10
	bne L869C0F
	lda $0763
	sta $21
	lda $075E
	sta $22
	lda #$15
	bra L869C1B

L869C0F:
	lda $0764
	sta $21
	lda $075D
	sta $22
	lda #$16
L869C1B:
	jsr L86F789
	lda #$00
	jsr L86F789
	lda $07B7
	bit #$10
	beq L869C42
	lda $0764
	cmp #$4F
	bne L869C42
	lda $075D
	cmp #$29
	bne L869C42
	lda #$11
	jsr L86F789
	lda #$0D
	jsr L86F789
L869C42:
	lda #$FE
	jsr L86F789
	lda #$FE
	jsr L86F789
	jsr L86A15A
	lda #$36
	jsr L86F789
	lda $21
	jsr L86F789
	lda #$05
	jsr L86F789
	lda $22
	jsr L86F789
	lda #$2D
	jsr L86F789
	jsr L86A8E4
	lda #$02
	jsr L86F789
	lda #$2E
	jsr L86F789
	jsr L86A8E4
	jsr L86A1E9
	jsr L86F7B7
	rts

L869C7F:
	sep #$20
	ldx #$0000
	lda #$81
	jsr L86F789
	stz $27
	jsr L869CA4
	lda $078F
	bit #$20
	beq L869C9A
	jsr L869EB4
	bra L869CA1

L869C9A:
	lda #$02
	sta $05
	jsr L86AE67
L869CA1:
	jmp L86A19D

L869CA4:
	lda #$35
	jsr L86F789
	lda #$FE
	jsr L86F789
	lda #$37
	jsr L86F789
	lda #$16
	jsr L86F789
	lda #$01
	jsr L86F789
	lda #$FE
	jsr L86F789
	lda #$FE
	jsr L86F789
	jsr L86A15A
	lda #$36
	jsr L86F789
	lda $0763
	jsr L86F789
	lda #$05
	jsr L86F789
	lda $075E
	jsr L86F789
	lda #$2D
	jsr L86F789
	jsr L86A8E4
	lda #$02
	jsr L86F789
	lda $078F
	bit #$20
	beq L869CFB
	lda #$2E
	jsr L86F789
	bra L869D00

L869CFB:
	lda #$2F
	jsr L86F789
L869D00:
	jsr L86A8E4
	jsr L86F7B7
	rts

L869D07:
	sep #$20
	ldx #$0000
	lda #$81
	jsr L86F789
	lda $1006
	cmp #$02
	bne L869D56
	lda #$26
	jsr L86F789
	lda #$FE
	jsr L86F789
	lda #$00
	jsr L86F789
	lda #$28
	jsr L86F789
	lda $0763
	jsr L86F789
	lda #$05
	jsr L86F789
	lda $075F
	jsr L86F789
	lda #$0A
	jsr L86F789
	lda #$27
	jsr L86F789
	lda #$FE
	jsr L86F789
	lda #$8A
	jsr L86F789
	lda #$FE
	jsr L86F789
L869D56:
	stz $27
	phx
	lda $075F
	sec
	sbc #$40
	asl
	rep #$20
	and #$00FF
	tax
	lda.l L95DC92,X
	sta $15
	plx
	lda #$9D77
	dea
	pha
	sep #$20
	jmp ($0015)

L869D77:
	phx
	lda $075F
	sec
	sbc #$40
	asl
	rep #$20
	and #$00FF
	tax
	lda.l L95DCB0,X
	sta $15
	plx
	lda #$9D96
	dea
	pha
	sep #$20
	jmp ($0015)

L869D96:
	jmp L86A19D

L869D99:
	jsr L86A15A
	lda #$03
	jsr L86F789
	lda $0763
	jsr L86F789
	lda #$05
	jsr L86F789
	jsr L86A8E4
	lda #$03
	jsr L86F789
	lda $0764
	jsr L86F789
	lda #$38
	jsr L86F789
	jsr L86A8E4
	jmp L869EB4

L869DC5:
	jsr L86A15A
	lda #$03
	jsr L86F789
	lda $0763
	jsr L86F789
	lda #$39
	jsr L86F789
	jsr L86A8E4
	jmp L869EB4

L869DDE:
	jsr L86A15A
	lda #$03
	jsr L86F789
	lda $0763
	jsr L86F789
	lda #$05
	jsr L86F789
	jsr L86A8E4
	lda #$03
	jsr L86F789
	lda $0764
	jsr L86F789
	lda #$3A
	jsr L86F789
	jsr L86A8E4
	jmp L869EB4

L869E0A:
	jsr L86A15A
	lda #$03
	jsr L86F789
	lda $0763
	jsr L86F789
	lda #$3B
	jsr L86F789
	jsr L86A8E4
	jmp L869EB4

L869E23:
	jsr L86A15A
	lda #$02
	jsr L86F789
	lda #$3C
	jsr L86F789
	jsr L86A8E4
	lda #$02
	jsr L86F789
	lda #$3D
	jsr L86F789
	jsr L86A8E4
	jmp L869EB4

L869E43:
	jsr L86A15A
	lda #$03
	jsr L86F789
	lda $0763
	jsr L86F789
	lda #$3E
	jsr L86F789
	jsr L86A8E4
	lda #$02
	jsr L86F789
	lda #$3F
	jsr L86F789
	jsr L86A8E4
	jmp L869EB4

L869E69:
	rts

L869E6A:
	jmp L869E7C

L869E6D:
	jsr L869E7C
	jsr L86A13E
	jsr L86A614
	jsr L86A69C
	jmp L869EB4

L869E7C:
	lda #$11
	jsr L86F789
	lda #$09
	jsr L86F789
	lda #$FE
	jsr L86F789
	lda #$15
	jsr L86F789
	lda #$00
	jsr L86F789
	lda #$FE
	jsr L86F789
	lda #$11
	jsr L86F789
	lda #$0F
	jsr L86F789
	lda #$FE
	jsr L86F789
	lda #$3A
	jsr L86F789
	lda #$FE
	jsr L86F789
	rts

L869EB4:
	jsr L86A1E9
	jmp L86A17C

L869EBA:
	jsr L869E7C
	jsr L86A15A
	jsr L869EC6
	jmp L869EB4

L869EC6:
	lda #$3B
	jsr L86F789
	lda #$31
	jsr L86F789
	lda $07A3
	jsr L86F789
	lda #$0D
	jsr L86F789
	jmp L86A8E4

L869EDE:
	lda #$11
	jsr L86F789
	lda #$09
	jsr L86F789
	lda #$FE
	jsr L86F789
	lda #$15
	jsr L86F789
	lda #$00
	jsr L86F789
	lda #$FE
	jsr L86F789
	lda #$11
	jsr L86F789
	lda #$0F
	jsr L86F789
	lda #$FE
	jsr L86F789
	lda #$11
	jsr L86F789
	lda #$15
	jsr L86F789
	lda #$FE
	jsr L86F789
	jsr L869F20
	jmp L86A17C

L869F20:
	lda $07A3
	bne L869F37
	jsr L86A15A
	lda #$02
	jsr L86F789
	lda #$29
	jsr L86F789
	jsr L86A8E4
	bra L869F63

L869F37:
	lda #$07
	jsr L86F789
	lda $07A3
	jsr L86F789
	jsr L86A15A
	lda #$04
	jsr L86F789
	lda $0764
	jsr L86F789
	lda #$0C
	jsr L86F789
	lda $07A3
	jsr L86F789
	lda #$0D
	jsr L86F789
	jsr L86A8E4
L869F63:
	jmp L86A1E9

L869F66:
	lda #$11
	jsr L86F789
	lda #$09
	jsr L86F789
	lda #$FE
	jsr L86F789
	lda #$15
	jsr L86F789
	lda #$00
	jsr L86F789
	lda #$FE
	jsr L86F789
	lda #$11
	jsr L86F789
	lda #$0F
	jsr L86F789
	lda #$FE
	jsr L86F789
	lda #$FE
	jsr L86F789
	lda #$11
	jsr L86F789
	lda #$15
	jsr L86F789
	lda #$FE
	jsr L86F789
	jsr L869FAD
	jmp L86A17C

L869FAD:
	jsr L86A15A
	lda #$05
	jsr L86F789
	lda $0764
	jsr L86F789
	lda #$06
	jsr L86F789
	lda $0760
	jsr L86F789
	lda #$24
	jsr L86F789
	jsr L86A8E4
	jsr L86A1E9
	rts

L869FD2:
	lda #$11
	jsr L86F789
	lda #$09
	jsr L86F789
	lda #$FE
	jsr L86F789
	lda #$15
	jsr L86F789
	lda #$00
	jsr L86F789
	lda #$FE
	jsr L86F789
	lda #$11
	jsr L86F789
	lda #$0F
	jsr L86F789
	lda #$FE
	jsr L86F789
	lda #$FE
	jsr L86F789
	lda #$11
	jsr L86F789
	lda #$15
	jsr L86F789
	lda #$FE
	jsr L86F789
	jsr L86A019
	jmp L86A17C

L86A019:
	jsr L86A15A
	lda #$03
	jsr L86F789
	lda $0764
	jsr L86F789
	lda #$25
	jsr L86F789
	jsr L86A8E4
	lda #$02
	jsr L86F789
	lda #$26
	jsr L86F789
	jsr L86A8E4
	jsr L86A1E9
	rts

L86A040:
	lda #$11
	jsr L86F789
	lda #$09
	jsr L86F789
	lda #$FE
	jsr L86F789
	lda #$15
	jsr L86F789
	lda #$00
	jsr L86F789
	lda #$FE
	jsr L86F789
	lda #$11
	jsr L86F789
	lda #$0F
	jsr L86F789
	lda #$FE
	jsr L86F789
	lda #$2C
	jsr L86F789
	lda #$FE
	jsr L86F789
	lda #$11
	jsr L86F789
	lda #$15
	jsr L86F789
	lda #$FE
	jsr L86F789
	rts

L86A087:
	lda #$11
	jsr L86F789
	lda #$09
	jsr L86F789
	lda #$FE
	jsr L86F789
	lda #$15
	jsr L86F789
	lda #$00
	jsr L86F789
	lda #$FE
	jsr L86F789
	lda #$11
	jsr L86F789
	lda #$0F
	jsr L86F789
	lda #$FE
	jsr L86F789
	lda #$2D
	jsr L86F789
	lda #$FE
	jsr L86F789
	lda #$11
	jsr L86F789
	lda #$15
	jsr L86F789
	lda #$FE
	jsr L86F789
	rts

L86A0CE:
	lda #$11
	jsr L86F789
	lda #$09
	jsr L86F789
	lda #$FE
	jsr L86F789
	lda #$15
	jsr L86F789
	lda #$00
	jsr L86F789
	lda #$FE
	jsr L86F789
	lda #$11
	jsr L86F789
	lda #$0F
	jsr L86F789
	lda #$FE
	jsr L86F789
	lda #$2D
	jsr L86F789
	lda #$FE
	jsr L86F789
	lda #$11
	jsr L86F789
	lda #$15
	jsr L86F789
	lda #$FE
	jsr L86F789
	jsr L86A11A
	jmp L86A17C

L86A11A:
	lda #$F8
	jsr L86F789
	lda #$FE
	jsr L86F789
	jsr L86A15A
	lda #$03
	jsr L86F789
	lda $0764
	jsr L86F789
	lda #$28
	jsr L86F789
	jsr L86A8E4
	jsr L86A1E9
	rts

L86A13E:
	lda $0798
	bne L86A15A
	lda $07B7
	bit #$04
	beq L86A15A
	lda $0791
	cmp #$FF
	bne L86A15A
	lda $07A4
	ora $07A5
	bne L86A15A
	rts

L86A15A:
	lda #$FD
	jsr L86F789
	lda #$A8
	jsr L86F789
	lda #$26
	jsr L86F789
	lda #$FE
	jsr L86F789
	lda #$25
	jsr L86F789
	jsr L86F7C2
	lda #$FE
	jsr L86F789
	rts

L86A17C:
	jsr L86A83F
	jsr L86AE61
	lda $1DB2,X
	cmp #$FA
	bne L86A18B
	dex
	dex
L86A18B:
	lda $1DB2,X
	cmp #$FB
	beq L86A19A
	cmp #$FA
	bcs L86A19C
	bit #$80
	beq L86A19C
L86A19A:
	dex
	dex
L86A19C:
	rts

L86A19D:
	lda $27
	bne L86A1B9
	lda $1DB0,X
	cmp #$26
	bne L86A1AD
	dex
	dex
	dex
	dex
	dex
L86A1AD:
	lda #$39
	jsr L86F789
	lda #$FE
	jsr L86F789
	bra L86A1D6

L86A1B9:
	lda $1DB2,X
	cmp #$FA
	bne L86A1C2
	dex
	dex
L86A1C2:
	lda $1DB2,X
	cmp #$FB
	beq L86A1D1
	cmp #$FA
	bcs L86A1D3
	bit #$80
	beq L86A1D3
L86A1D1:
	dex
	dex
L86A1D3:
	jsr L86F7B7
L86A1D6:
	lda #$1D
	jsr L86F789
	lda #$FF
	jsr L86F789
	stz $1037
	rep #$20
	stz $1039
	rts

L86A1E9:
.ACCU 8
	lda $07B7
	bit #$04
	bne L86A203
	lda #$06
	jsr L86F789
	lda $075F
	jsr L86F789
	lda #$0F
	jsr L86F789
	jsr L86A8E4
L86A203:
	rts

L86A204:
	stz $23
	sep #$20
	stz $21
	ldx #$0000
	stz $00
	stz $26
	lda #$81
	jsr L86F789
	jsr L86A344
	jsr L86A39B
	lda #$00
	sta $25
	lda $07B7
	sta $101A
	lda $07BD
	sta $101E
	lda $07B8
	jsr L86A434
	bne L86A26A
	lda #$13
	jsr L86F789
	lda $26
	sta $25
	lda $07B9
	sta $101A
	lda $07BE
	sta $101E
	lda $07BA
	jsr L86A434
	bne L86A26A
	jsr L86A2EB
	lda $26
	sta $25
	lda $07BB
	sta $101A
	lda $07BF
	sta $101E
	lda $07BC
	jsr L86A434
L86A26A:
	stz $27
	lda #$FD
	jsr L86F789
	lda #$A8
	jsr L86F789
	lda #$26
	jsr L86F789
	lda #$FE
	jsr L86F789
	lda #$25
	jsr L86F789
	lda #$FE
	jsr L86F789
	jsr L86ACED
	jsr L86A799
	jsr L86A83F
	jsr L86AE61
	jsr L86A614
	jsr L86A69C
	lda $27
	bne L86A2B8
	lda $1DB0,X
	cmp #$26
	bne L86A2AC
	dex
	dex
	dex
	dex
	dex
L86A2AC:
	lda #$39
	jsr L86F789
	lda #$FE
	jsr L86F789
	bra L86A2D5

L86A2B8:
	lda $1DB2,X
	cmp #$FA
	bne L86A2C1
	dex
	dex
L86A2C1:
	lda $1DB2,X
	cmp #$FB
	beq L86A2D0
	cmp #$FA
	bcs L86A2D2
	bit #$80
	beq L86A2D2
L86A2D0:
	dex
	dex
L86A2D2:
	jsr L86F7B7
L86A2D5:
	jsr L86A372
	lda #$1D
	jsr L86F789
	lda #$FF
	jsr L86F789
	stz $1037
	rep #$20
	stz $1039
	rts

L86A2EB:
.ACCU 8
	lda $07B9
	and #$10
	sta $15
	lda $07BB
	and #$10
	cmp $15
	beq L86A300
	lda #$13
	jsr L86F789
L86A300:
	rts

L86A301:
	lda #$26
	jsr L86F789
	lda #$FE
	jsr L86F789
	lda #$00
	jsr L86F789
	lda #$22
	jsr L86F789
	lda #$2C
	jsr L86F789
	lda #$27
	jsr L86F789
	lda #$FE
	jsr L86F789
	lda #$8A
	jsr L86F789
	lda #$FE
	jsr L86F789
	lda $00
	cmp #$02
	bcs L86A343
	lda #$34
	jsr L86F789
	lda #$81
	jsr L86F789
	lda #$FE
	jsr L86F789
L86A343:
	rts

L86A344:
	ldy $07C6
	cpy #$FFFF
	beq L86A371
	lda #$3D
	jsr L86F789
	lda #$81
	jsr L86F789
	lda #$45
	jsr L86F789
	lda $07C6
	jsr L86F789
	lda $07C7
	jsr L86F789
	lda #$F8
	jsr L86F789
	lda #$3E
	jsr L86F789
L86A371:
	rts

L86A372:
	ldy $07C8
	cpy #$FFFF
	beq L86A39A
	lda #$3F
	jsr L86F789
	lda #$81
	jsr L86F789
	lda #$45
	jsr L86F789
	lda $07C8
	jsr L86F789
	lda $07C9
	jsr L86F789
	lda #$F8
	jsr L86F789
L86A39A:
	rts

L86A39B:
	lda $078F
	bit #$08
	bne L86A3A5
	jmp L86A433

L86A3A5:
	lda #$2F
	jsr L86F789
	lda #$FE
	jsr L86F789
	lda #$2E
	jsr L86F789
	lda #$FE
	jsr L86F789
	lda #$33
	jsr L86F789
	lda #$2A
	jsr L86F789
	lda $07CC
	cmp #$64
	bcc L86A3CC
	lda #$63
L86A3CC:
	jsr L86F789
	lda #$30
	jsr L86F789
	lda #$FE
	jsr L86F789
	lda #$9E
	jsr L86F789
	lda #$FE
	jsr L86F789
	lda #$2F
	jsr L86F789
	lda #$FE
	jsr L86F789
	lda #$81
	jsr L86F789
	lda #$2E
	jsr L86F789
	lda #$FE
	jsr L86F789
	lda #$32
	jsr L86F789
	lda #$2B
	jsr L86F789
	lda #$30
	jsr L86F789
	lda #$FE
	jsr L86F789
	lda #$9E
	jsr L86F789
	lda #$FE
	jsr L86F789
	lda #$2F
	jsr L86F789
	lda #$FE
	jsr L86F789
	lda #$81
	jsr L86F789
	lda #$31
	jsr L86F789
	lda #$FE
	jsr L86F789
L86A433:
	rts

L86A434:
	sta $101B
	lda $101E
	beq L86A442
	jsr L86A51E
	jmp L86A497

L86A442:
	jsr L86A4B9
	lda $101D
	rep #$20
	jsr L8690B9
	sep #$20
	cmp #$2D
	beq L86A479
	cmp #$09
	beq L86A479
	cmp #$29
	beq L86A47E
	cmp #$18
	beq L86A474
	cmp #$13
	beq L86A474
	cmp #$20
	beq L86A474
	cmp #$24
	bcc L86A46F
	cmp #$29
	bcc L86A474
L86A46F:
	jsr L86A9AA
	bra L86A483

L86A474:
	jsr L86AB49
	bra L86A483

L86A479:
	jsr L86A9E7
	bra L86A48F

L86A47E:
	jsr L86AAEE
	bra L86A48F

L86A483:
	jsr L86ABB6
	jsr L86AC03
	jsr L86AC40
	jsr L86AD32
L86A48F:
	jsr L86A504
	jsr L86A4A0
	bra L86A49A

L86A497:
	jsr L86A4B3
L86A49A:
	inc $00
	jsr L86AD19
	rts

L86A4A0:
	lda $1DB3,X
	cmp #$FE
	bne L86A4A8
	dex
L86A4A8:
	lda #$FC
	jsr L86F789
	lda #$FE
	jsr L86F789
	rts

L86A4B3:
	lda #$FC
	jsr L86F789
	rts

L86A4B9:
	lda #$11
	sta $27
	sta $28
	lda $101A
	bit #$10
	beq L86A4CD
	inc $27
	lda $0760
	bra L86A4D2

L86A4CD:
	inc $28
	lda $075F
L86A4D2:
	sta $101D
	cmp #$09
	beq L86A4EC
	cmp #$29
	bcc L86A4E1
	cmp #$4F
	bcc L86A4EC
L86A4E1:
	lda $078F
	bit #$02
	bne L86A4EC
	lda #$01
	sta $26
L86A4EC:
	lda $101A
	bit #$10
	beq L86A4FB
	lda $24
	sta $21
	lda $23
	bra L86A501

L86A4FB:
	lda $23
	sta $21
	lda $24
L86A501:
	sta $22
	rts

L86A504:
	lda $101A
	bit #$10
	beq L86A515
	lda $21
	sta $24
	lda $22
	sta $23
	bra L86A51D

L86A515:
	lda $21
	sta $23
	lda $22
	sta $24
L86A51D:
	rts

L86A51E:
	cmp #$03
	bne L86A555
	lda $1006
	cmp #$02
	bne L86A555
	lda #$26
	jsr L86F789
	lda #$FE
	jsr L86F789
	lda #$00
	jsr L86F789
	lda #$23
	jsr L86F789
	lda $101A
	jsr L86AD1F
	lda #$32
	jsr L86F789
	lda #$27
	jsr L86F789
	lda #$FE
	jsr L86F789
	jsr L86F78E
L86A555:
	rts

L86A556:
	cmp #$03
	bne L86A55D
	jmp L86A5FA

L86A55D:
	cmp #$00
	beq L86A564
	jmp L86A613

L86A564:
	lda $15
	bit #$10
	bne L86A574
	lda $0764
	sta $17
	lda $07A3
	bra L86A57C

L86A574:
	lda $0763
	sta $17
	lda $07A2
L86A57C:
	sta $18
	lda $15
	bit #$01
	bne L86A5D7
	lda $16
	beq L86A5B2
	lda $15
	eor $07BB
	bit #$10
	bne L86A593
	inc $19
L86A593:
	lda $18
	beq L86A613
	lda #$04
	jsr L86F789
	lda $17
	jsr L86F789
	lda #$05
	jsr L86F789
	lda $18
	jsr L86F789
	lda #$07
	jsr L86F789
	bra L86A610

L86A5B2:
	lda $18
	bne L86A613
	lda $15
	eor $07BB
	bit #$10
	bne L86A5C6
	lda $07BC
	bne L86A5C6
	inc $19
L86A5C6:
	lda #$03
	jsr L86F789
	lda $17
	jsr L86F789
	lda #$10
	jsr L86F789
	bra L86A610

L86A5D7:
	lda $15
	eor $07BB
	bit #$10
	bne L86A5E9
	lda $07BB
	bit #$01
	beq L86A5E9
	inc $19
L86A5E9:
	lda #$03
	jsr L86F789
	lda $17
	jsr L86F789
	lda #$04
	jsr L86F789
	bra L86A610

L86A5FA:
	lda $1006
	cmp #$02
	beq L86A613
	lda #$03
	jsr L86F789
	lda $15
	jsr L86AD1F
	lda #$32
	jsr L86F789
L86A610:
	jsr L86A8E4
L86A613:
	rts

L86A614:
	lda $07A4
	ora $07A5
	bne L86A61F
	jmp L86A69B

L86A61F:
	lda $27
	bit #$01
	bne L86A628
	jsr L86F7C2
L86A628:
	lda $27
	bit #$80
	beq L86A63C
	and #$7F
	sta $27
	lda #$29
	jsr L86F789
	lda #$FE
	jsr L86F789
L86A63C:
	lda $075E
	cmp #$FF
	beq L86A66F
	lda #$03
	jsr L86F789
	lda $0764
	jsr L86F789
	lda #$05
	jsr L86F789
	jsr L86A8E4
	lda #$43
	jsr L86F789
	lda $07A4
	jsr L86F789
	lda $07A5
	jsr L86F789
	lda #$35
	jsr L86F789
	jsr L86A8E4
L86A66F:
	lda #$03
	jsr L86F789
	lda $0763
	jsr L86F789
	lda #$05
	jsr L86F789
	jsr L86A8E4
	lda #$43
	jsr L86F789
	lda $07A4
	jsr L86F789
	lda $07A5
	jsr L86F789
	lda #$36
	jsr L86F789
	jsr L86A8E4
L86A69B:
	rts

L86A69C:
	lda #$FF
	cmp $0791
	bne L86A6A6
	jmp L86A798

L86A6A6:
	lda $27
	bit #$01
	bne L86A6AF
	jsr L86F7C2
L86A6AF:
	lda $27
	bit #$80
	beq L86A6BF
	lda #$29
	jsr L86F789
	lda #$FE
	jsr L86F789
L86A6BF:
	ldy #$0001
	lda #$FF
	cmp $0792
	beq L86A6D6
	iny
	cmp $0793
	beq L86A6D6
	iny
	cmp $0794
	beq L86A6D6
	iny
L86A6D6:
	stz $07
L86A6D8:
	phx
	rep #$20
	lda $07
	and #$00FF
	tax
	lda.l L95D6CC,X
	tax
	sep #$20
	inc $07
	inc $07
	lda $00,X
	sta $06
	plx
	cmp #$FF
	bne L86A6F8
	jmp L86A792

L86A6F8:
	lda $075E
	cmp #$FF
	beq L86A724
	lda #$03
	jsr L86F789
	lda $0764
	jsr L86F789
	lda #$05
	jsr L86F789
	jsr L86A8E4
	lda #$06
	jsr L86F789
	lda $06
	jsr L86F789
	lda #$13
	jsr L86F789
	jsr L86A8E4
L86A724:
	lda #$03
	jsr L86F789
	lda $0763
	jsr L86F789
	lda #$05
	jsr L86F789
	jsr L86A8E4
	lda #$06
	jsr L86F789
	lda $06
	jsr L86F789
	lda #$14
	jsr L86F789
	lda $06
	cmp #$0B
	bne L86A75B
	lda #$46
	jsr L86F789
	lda #$81
	jsr L86F789
	lda #$FE
	jsr L86F789
L86A75B:
	cmp #$3C
	beq L86A76F
	cmp #$3E
	beq L86A76F
	cmp #$6C
	beq L86A76F
	cmp #$7D
	beq L86A76F
	cmp #$7E
	bne L86A77E
L86A76F:
	lda #$47
	jsr L86F789
	lda #$81
	jsr L86F789
	lda #$FE
	jsr L86F789
L86A77E:
	lda $075E
	cmp #$FF
	beq L86A78A
	cpy #$0001
	beq L86A78F
L86A78A:
	jsr L86A8E4
	bra L86A792

L86A78F:
	jsr L86F7B7
L86A792:
	dey
	beq L86A798
	jmp L86A6D8

L86A798:
	rts

L86A799:
	lda $1006
	cmp #$01
	bne L86A7EF
	lda $27
	bne L86A7A7
	jsr L86F7C2
L86A7A7:
	stz $19
	lda $07B7
	sta $15
	lda $07B8
	sta $16
	lda $07BD
	jsr L86A556
	lda $07B7
	bit #$08
	bne L86A7EF
	lda $07B9
	sta $15
	lda $07BA
	sta $16
	lda $07BE
	jsr L86A556
	lda $07B9
	bit #$08
	bne L86A7EF
	lda $19
	bne L86A7EF
	lda $07BB
	sta $15
	lda $07BC
	sta $16
	lda $07BF
	cmp #$03
	beq L86A7EF
	jsr L86A556
L86A7EF:
	lda $078F
	bit #$01
	beq L86A80D
	lda $27
	bne L86A7FD
	jsr L86F7C2
L86A7FD:
	lda #$17
	jsr L86F789
	lda #$03
	jsr L86F789
	lda #$10
	eor #$FF
	bra L86A827

L86A80D:
	lda $0790
	bit #$01
	beq L86A83E
	lda $27
	bne L86A81B
	jsr L86F7C2
L86A81B:
	lda #$18
	jsr L86F789
	lda #$03
	jsr L86F789
	lda #$10
L86A827:
	jsr L86AD1F
	lda #$0E
	jsr L86F789
	lda #$81
	jsr L86F789
	lda #$FE
	jsr L86F789
	jsr L86A8E4
	bra L86A83E

L86A83E:
	rts

L86A83F:
	lda $0798
	bne L86A847
	jmp L86A8E3

L86A847:
	lda $1006
	cmp #$02
	beq L86A84E
L86A84E:
	lda $27
	bne L86A855
	jsr L86F7C2
L86A855:
	lda #$04
	jsr L86F789
	lda $0763
	jsr L86F789
	lda #$05
	jsr L86F789
	lda $0798
	bpl L86A86D
	eor #$FF
	ina
L86A86D:
	jsr L86F789
	lda $0798
	bpl L86A87C
	lda #$20
	jsr L86F789
	bra L86A881

L86A87C:
	lda #$09
	jsr L86F789
L86A881:
	jsr L86A8E4
	lda #$98
	jsr L86F789
	lda #$FE
	jsr L86F789
	lda #$09
	jsr L86F789
	lda #$2A
	jsr L86F789
	lda #$FE
	jsr L86F789
	lda #$98
	jsr L86F789
	lda #$FE
	jsr L86F789
	lda $27
	ora #$80
	sta $27
	lda #$03
	sec
	sbc $02
	bmi L86A8C8
	beq L86A8C8
L86A8B6:
	pha
	lda #$02
	jsr L86F789
	lda #$23
	jsr L86F789
	jsr L86A90E
	pla
	dea
	bne L86A8B6
L86A8C8:
	lda #$03
	sta $05
	lda #$14
	jsr L86F789
	lda #$81
	jsr L86F789
	lda #$FE
	jsr L86F789
	lda #$FD
	jsr L86F789
	jsr L86F7B7
L86A8E3:
	rts

L86A8E4:
	lda $02
	cmp #$03
	bcs L86A8F1
	inc $02
	jsr L86F78E
	bra L86A90D

L86A8F1:
	lda $05
	beq L86A8FC
	dec $05
	jsr L86F7A3
	bra L86A903

L86A8FC:
	jsr L86F7B7
	lda #$03
	sta $05
L86A903:
	lda #$FA
	jsr L86F789
	lda #$FE
	jsr L86F789
L86A90D:
	rts

L86A90E:
	lda $02
	cmp #$03
	bcs L86A918
	inc $02
	bra L86A931

L86A918:
	lda $05
	beq L86A920
	dec $05
	bra L86A927

L86A920:
	jsr L86F7B7
	lda #$03
	sta $05
L86A927:
	lda #$FA
	jsr L86F789
	lda #$FE
	jsr L86F789
L86A931:
	rts

L86A932:
	lda $078F
	bit #$10
	beq L86A96C
	lda $101A
	bit #$10
	beq L86A967
	lda $1006
	cmp #$02
	beq L86A96C
	lda #$26
	jsr L86F789
	lda #$FE
	jsr L86F789
	lda #$3C
	jsr L86F789
	lda #$FE
	jsr L86F789
	lda #$81
	jsr L86F789
	lda #$FE
	jsr L86F789
	bra L86A9A9

L86A967:
	jsr L86A301
	bra L86A9A9

L86A96C:
	lda $1006
	cmp #$02
	bne L86A9A9
	lda #$26
	jsr L86F789
	lda #$FE
	jsr L86F789
	lda #$00
	jsr L86F789
	lda #$23
	jsr L86F789
	lda $101A
	jsr L86AD1F
	lda $00
	clc
	adc #$01
	jsr L86F789
	lda #$27
	jsr L86F789
	lda #$FE
	jsr L86F789
	lda #$8A
	jsr L86F789
	lda #$FE
	jsr L86F789
L86A9A9:
	rts

L86A9AA:
	jsr L86A932
	lda $27
	jsr L86F789
	lda $21
	bit #$01
	beq L86A9BC
	lda #$0B
	bra L86A9C1

L86A9BC:
	lda $25
	clc
	adc #$09
L86A9C1:
	xba
	lda $21
	bit #$02
	beq L86A9CD
	xba
	clc
	adc #$03
	xba
L86A9CD:
	lda $101A
	bit #$02
	beq L86A9D9
	xba
	clc
	adc #$06
	xba
L86A9D9:
	xba
	jsr L86F789
	lda #$05
	sta $21
	lda #$FE
	jsr L86F789
	rts

L86A9E7:
	lda $078F
	bit #$10
	beq L86A9FA
	lda $101A
	bit #$10
	bne L86A9FA
	jsr L86A301
	bra L86AA5B

L86A9FA:
	lda $1006
	cmp #$02
	bne L86AA5B
	lda #$26
	jsr L86F789
	lda #$FE
	jsr L86F789
	lda #$00
	jsr L86F789
	lda $101D
	cmp #$09
	beq L86AA34
	lda #$28
	jsr L86F789
	lda $101A
	jsr L86AD1F
	lda #$05
	jsr L86F789
	lda $101D
	jsr L86F789
	lda #$0B
	jsr L86F789
	bra L86AA47

L86AA34:
	lda #$23
	jsr L86F789
	lda $101A
	jsr L86AD1F
	lda $00
	clc
	adc #$01
	jsr L86F789
L86AA47:
	lda #$27
	jsr L86F789
	lda #$FE
	jsr L86F789
	lda #$8A
	jsr L86F789
	lda #$FE
	jsr L86F789
L86AA5B:
	lda $27
	jsr L86F789
	lda $21
	bit #$01
	beq L86AA6A
	lda #$0B
	bra L86AA6F

L86AA6A:
	lda $25
	clc
	adc #$09
L86AA6F:
	xba
	lda $21
	bit #$02
	beq L86AA7B
	xba
	clc
	adc #$03
	xba
L86AA7B:
	xba
	sta $0F
	jsr L86F789
	lda #$05
	sta $21
	lda #$FE
	jsr L86F789
	lda $101A
	bit #$10
	bne L86AA98
	lda #$15
	jsr L86F789
	bra L86AA9D

L86AA98:
	lda #$16
	jsr L86F789
L86AA9D:
	lda $101A
	bit #$01
	beq L86AAA8
	lda #$02
	bra L86AAAA

L86AAA8:
	lda #$00
L86AAAA:
	clc
	adc $25
	jsr L86F789
	lda #$FE
	jsr L86F789
	jsr L86AAC8
	jsr L86ABDF
	jsr L86AC40
	jsr L86AD32
	jsr L86AADB
	jsr L86AC03
	rts

L86AAC8:
	lda $27
	jsr L86F789
	lda $0F
	clc
	adc #$06
	jsr L86F789
	lda #$FE
	jsr L86F789
	rts

L86AADB:
	lda $27
	jsr L86F789
	lda $0F
	clc
	adc #$0C
	jsr L86F789
	lda #$FE
	jsr L86F789
	rts

L86AAEE:
	jsr L86A932
	lda $27
	jsr L86F789
	lda $25
	clc
	adc #$09
	sta $0F
	jsr L86F789
	lda #$05
	sta $21
	lda #$FE
	jsr L86F789
	lda $101A
	bit #$10
	bne L86AB17
	lda #$15
	jsr L86F789
	bra L86AB1C

L86AB17:
	lda #$16
	jsr L86F789
L86AB1C:
	lda $25
	jsr L86F789
	lda #$FE
	jsr L86F789
	jsr L86ABB6
	jsr L86AC40
	jsr L86AD32
	jsr L86AB36
	jsr L86AC03
	rts

L86AB36:
	lda $27
	jsr L86F789
	lda $0F
	clc
	adc #$02
	jsr L86F789
	lda #$FE
	jsr L86F789
	rts

L86AB49:
	jsr L86A932
	lda $27
	jsr L86F789
	lda $21
	bit #$01
	beq L86AB5B
	lda #$0A
	bra L86AB5D

L86AB5B:
	lda #$09
L86AB5D:
	xba
	lda $21
	bit #$02
	beq L86AB69
	xba
	clc
	adc #$02
	xba
L86AB69:
	lda $101A
	bit #$02
	beq L86AB75
	xba
	clc
	adc #$04
	xba
L86AB75:
	xba
	jsr L86F789
	lda #$05
	sta $21
	lda #$FE
	jsr L86F789
	lda $101A
	bit #$10
	bne L86AB8D
	lda #$19
	bra L86AB8F

L86AB8D:
	lda #$1A
L86AB8F:
	jsr L86F789
	lda $101A
	bit #$01
	bne L86AB9D
	lda #$11
	bra L86AB9F

L86AB9D:
	lda #$12
L86AB9F:
	pha
	lda $101D
	cmp #$1D
	bne L86ABAC
	pla
	clc
	adc #$02
	pha
L86ABAC:
	pla
	jsr L86F789
	lda #$FE
	jsr L86F789
	rts

L86ABB6:
	lda $101A
	bit #$01
	beq L86ABD9
	lda $28
	jsr L86F789
	lda $22
	and #$03
	ina
	sta $10
	jsr L86F789
	lda #$FE
	jsr L86F789
	lda $22
	and #$03
	ora #$02
	sta $22
L86ABD9:
	lda #$FE
	jsr L86F789
	rts

L86ABDF:
	lda $101A
	bit #$01
	beq L86ABFD
	lda $28
	jsr L86F789
	lda $22
	and #$03
	ina
	sta $10
	jsr L86F789
	lda $22
	and #$03
	ora #$02
	sta $22
L86ABFD:
	lda #$FE
	jsr L86F789
	rts

L86AC03:
	lda $1006
	cmp #$02
	bne L86AC2B
	lda $101A
	bit #$20
	beq L86AC2B
	lda #$00
	jsr L86F789
	lda #$38
	jsr L86F789
	lda $101D
	jsr L86F789
	lda #$30
	jsr L86F789
	lda #$A0
	jsr L86F789
L86AC2B:
	lda $101A
	bit #$01
	beq L86AC3F
	lda $28
	jsr L86F789
	lda $10
	clc
	adc #$04
	jsr L86F789
L86AC3F:
	rts

L86AC40:
	lda $101A
	bit #$01
	beq L86AC4A
	jmp L86ACEC

L86AC4A:
	bit #$20
	beq L86AC61
	lda #$0F
	jsr L86F789
	lda #$18
	jsr L86F789
	lda $101A
	bit #$10
	beq L86AC9E
	bra L86AC68

L86AC61:
	lda $101A
	bit #$10
	bne L86AC9E
L86AC68:
	lda $101B
	bne L86AC7D
	lda #$20
	jsr L86F789
	lda #$40
	jsr L86F789
	lda #$FE
	jsr L86F789
	rts

L86AC7D:
	lda #$1C
	jsr L86F789
	lda $101D
	cmp #$39
	bne L86AC97
	lda #$08
	jsr L86F789
	lda $101B
	eor #$FF
	ina
	jsr L86F789
L86AC97:
	lda #$07
	jsr L86F789
	bra L86ACE6

L86AC9E:
	lda $101B
	bne L86ACB4
	lda #$1F
	jsr L86F789
	lda #$40
	jsr L86F789
	lda #$FE
	jsr L86F789
	bra L86ACEC

L86ACB4:
	lda #$1B
	jsr L86F789
	lda $101D
	cmp #$39
	bne L86ACD0
	lda #$07
	jsr L86F789
	lda $101B
	eor #$FF
	ina
	jsr L86F789
	bra L86ACE1

L86ACD0:
	lda $07BE
	cmp #$04
	bne L86ACE1
	lda #$07
	jsr L86F789
	lda #$0D
	jsr L86F789
L86ACE1:
	lda #$08
	jsr L86F789
L86ACE6:
	lda $101B
	jsr L86F789
L86ACEC:
	rts

L86ACED:
	lda $07B7
	bit #$15
	beq L86AD02
	lda $07B9
	bit #$15
	beq L86AD02
	lda $07BB
	bit #$15
	bne L86AD18
L86AD02:
	jsr L86F7C2
	lda #$06
	jsr L86F789
	lda $075F
	jsr L86F789
	lda #$0F
	jsr L86F789
	jsr L86A8E4
L86AD18:
	rts

L86AD19:
	lda $101A
	bit #$08
	rts

L86AD1F:
	bit #$10
	beq L86AD2B
	lda $0764
	jsr L86F789
	bra L86AD31

L86AD2B:
	lda $0763
	jsr L86F789
L86AD31:
	rts

L86AD32:
	lda $101A
	bit #$01
	beq L86AD6C
	lda $1006
	cmp #$02
	bne L86AD69
	lda #$81
	jsr L86F789
	lda #$FE
	jsr L86F789
	lda #$00
	jsr L86F789
	lda #$23
	jsr L86F789
	lda $101A
	eor #$FF
	jsr L86AD1F
	lda #$04
	jsr L86F789
	lda #$98
	jsr L86F789
	jmp L86AE60

L86AD69:
	jmp L86AE5B

L86AD6C:
	lda $101B
	bne L86AD97
	lda $1006
	cmp #$02
	bne L86AD94
	lda #$00
	jsr L86F789
	lda #$23
	jsr L86F789
	lda $101A
	eor #$FF
	jsr L86AD1F
	lda #$10
	jsr L86F789
	lda #$98
	jsr L86F789
L86AD94:
	jmp L86AE60

L86AD97:
	lda #$1E
	jsr L86F789
	lda $078F
	bit #$10
	beq L86ADAA
	lda $101A
	bit #$10
	beq L86ADB1
L86ADAA:
	lda $101A
	bit #$02
	beq L86ADEF
L86ADB1:
	lda #$0E
	jsr L86F789
	phx
	lda $101D
	rep #$20
	and #$00FF
	tax
	sep #$20
	lda.l L959550,X
	plx
	jsr L86F789
	lda $1006
	cmp #$02
	beq L86ADD4
	jmp L86AE5B

L86ADD4:
	lda $101A
	bit #$02
	beq L86ADEF
	lda #$00
	jsr L86F789
	lda #$22
	jsr L86F789
	lda #$00
	jsr L86F789
	lda #$A0
	jsr L86F789
L86ADEF:
	lda $1006
	cmp #$02
	beq L86ADF8
	bra L86AE5B

L86ADF8:
	lda $101D
	cmp #$39
	bne L86AE1B
	lda #$00
	jsr L86F789
	lda #$24
	jsr L86F789
	lda $101B
	jsr L86F789
	lda #$34
	jsr L86F789
	lda #$98
	jsr L86F789
	bra L86AE5B

L86AE1B:
	lda $101A
	bit #$20
	beq L86AE3E
	lda #$00
	jsr L86F789
	lda #$24
	jsr L86F789
	lda $101B
	jsr L86F789
	lda #$07
	jsr L86F789
	lda #$98
	jsr L86F789
	bra L86AE5B

L86AE3E:
	lda #$00
	jsr L86F789
	lda #$24
	jsr L86F789
	lda $101B
	eor #$FF
	ina
	jsr L86F789
	lda #$08
	jsr L86F789
	lda #$98
	jsr L86F789
L86AE5B:
	lda #$FE
	jsr L86F789
L86AE60:
	rts

L86AE61:
	lda $0797
	bne L86AE67
	rts

L86AE67:
	lda $27
	bit #$01
	bne L86AE70
	jsr L86F7C2
L86AE70:
	lda $27
	bit #$80
	beq L86AE84
	and #$7F
	sta $27
	lda #$29
	jsr L86F789
	lda #$FE
	jsr L86F789
L86AE84:
	lda $0797
	beq L86AEB5
	lda #$2B
	jsr L86F789
	lda #$04
	jsr L86F789
	lda $0763
	jsr L86F789
	lda #$1E
	jsr L86F789
	lda $0771
	clc
	adc $0797
	jsr L86F789
	lda #$1F
	jsr L86F789
	lda #$DA
	jsr L86F789
	jsr L86A8E4
L86AEB5:
	ldy #$0000
L86AEB8:
	phx
	tyx
	lda.l L95D6C3,X
	sta $07
	rep #$20
	tya
	asl
	tax
	lda.l L95D6B1,X
	tax
	sep #$20
	lda $00,X
	sta $06
	plx
	cmp #$00
	beq L86AEFC
	lda #$0B
	jsr L86F789
	lda $07
	jsr L86F789
	lda #$21
	jsr L86F789
	lda $06
	jsr L86F789
	lda $06
	bmi L86AEF4
	lda #$1D
	jsr L86F789
	bra L86AEF9

L86AEF4:
	lda #$22
	jsr L86F789
L86AEF9:
	jsr L86A8E4
L86AEFC:
	iny
	cpy #$0009
	bcc L86AEB8
	rts

L86AF03:
	sep #$20
	lda $1000
	bit #$21
	beq L86AF0F
	jmp L86AFEE

L86AF0F:
	lda $1051
	beq L86AF17
	jmp L86AFEE

L86AF17:
	lda $1000
	bit #$02
	beq L86AF21
	jmp L86AFEE

L86AF21:
	lda $1009
	cmp #$5B
	bcs L86AF2B
	jmp L86AFEE

L86AF2B:
	lda $105A
	beq L86AF33
	jmp L86AFEE

L86AF33:
	lda $105E
	bit #$80
	beq L86AF3D
	jmp L86AFEE

L86AF3D:
	rep #$20
	lda $104D
	cmp #$0000
	beq L86AF4A
	jmp L86AFEE

L86AF4A:
	sep #$20
	ldx $1039
	lda $1DB4,X
	cmp #$FD
	beq L86AF76
	lda $1037
	beq L86AF6C
	dec $1037
	beq L86AF63
	jmp L86AFEE

L86AF63:
	stz $103D
	inc $0708
	jmp L86AFEE

L86AF6C:
	lda $0708
	beq L86AFEE
	dec $0708
	bra L86AF91

L86AF76:
	lda $1015
	bne L86AFEE
	lda $1014
	bne L86AFEE
	lda $1016
	bne L86AFEE
	rep #$20
	inc $1039
	sep #$20
	inc $0708
	bra L86AFEE

L86AF91:
	ldx $1039
	lda $1DB4,X
	cmp #$FF
	beq L86AFEE
	cmp #$FD
	beq L86AF76
	rep #$20
	inc $1039
	sep #$20
	cmp #$FC
	bne L86AFAF
	inc $103C
	bra L86AFEC

L86AFAF:
	cmp #$FE
	beq L86AFEE
	cmp #$FA
	bcs L86AFCD
	bit #$80
	beq L86AFCD
	and #$7F
	ina
	sta $1037
	lda $1003
	bit #$20
	beq L86AFCB
	stz $1037
L86AFCB:
	bra L86AFEE

L86AFCD:
	cmp #$FB
	bne L86AFD3
	lda #$0C
L86AFD3:
	cmp #$FA
	bne L86AFD9
	lda #$0D
L86AFD9:
	rep #$20
	and #$00FF
	sta $15
	lda $15
	and #$00FF
	asl
	tax
	jsr (L86BDB6,X)
	sep #$20
L86AFEC:
	bra L86AF91

L86AFEE:
	rep #$20
	rts

L86AFF1:
	jsr L86B09B
	jmp L86B08D

L86AFF7:
	jsr L86B0BA
	jsr L86B09B
	jmp L86B08D

L86B000:
	jsr L86B0BA
	jsr L86B09B
	jsr L86B11E
	jsr L86B09B
	jmp L86B08D

L86B00F:
	jsr L86B0BA
	jsr L86B09B
	jsr L86B0D9
	jsr L86B09B
	jmp L86B08D

L86B01E:
	jsr L86B0D9
	jsr L86B09B
	jmp L86B08D

L86B027:
	jsr L86B11E
	jsr L86B09B
	jmp L86B08D

L86B030:
	jsr L86B09B
	jsr L86B09B
	jsr L86B11E
	jsr L86B09B
	jmp L86B08D

L86B03F:
	jsr L86B0BA
	jsr L86B09B
	jsr L86B0FF
	jsr L86B09B
	jmp L86B08D

L86B04E:
	jsr L86B09B
	jsr L86B11E
	jsr L86B09B
	jmp L86B08D

L86B05A:
	jsr L86B12E
	jsr L86B09B
	jmp L86B08D

L86B063:
	jmp L86B09B

L86B066:
	jsr L86B0BA
	jmp L86B09B

L86B06C:
	jsr L86B11E
	jmp L86B09B

L86B072:
	jsr L86B0BA
	jsr L86B09B
	jsr L86B0D9
	jmp L86B09B

L86B07E:
	jsr L86B0D9
	jmp L86B09B

L86B084:
	jmp L86B141

L86B087:
	jsr L86B141
	jmp L86B160

L86B08D:
	lda $101E
	clc
	adc #$0080
	sta $101E
	sta $1018
	rts

L86B09B:
	lda #$8800
	sta $01
	lda #$ADDB
	sta $00
	lda #$2400
	sta $06
	ldx $1039
	lda $1DB4,X
	ldx $1018
	jsr L86B1E7
	inc $1039
	rts

L86B0BA:
	lda #bank100(CHARACTERS_NAMES)
	sta $01
	lda #CHARACTERS_NAMES
	sta $00
	lda #$2400
	sta $06
	ldx $1039
	lda $1DB4,X
	ldx $1018
	jsr L86B1E7
	inc $1039
	rts

L86B0D9:
	lda #$2400
	sta $06
	bra L86B0E5

L86B0E0:
	lda #$2800
	sta $06
L86B0E5:
	lda #bank100(ITEMS_NAMES)
	sta $01
	lda #ITEMS_NAMES
	sta $00
	ldx $1039
	lda $1DB4,X
	ldx $1018
	jsr L86B1E7
	inc $1039
	rts

L86B0FF:
	lda #bank100(CLASSES_NAMES)
	sta $01
	lda #CLASSES_NAMES
	sta $00
	lda #$2400
	sta $06
	ldx $1039
	lda $1DB4,X
	ldx $1018
	jsr L86B1E7
	inc $1039
	rts

L86B11E:
	ldx $1039
	lda $1DB4,X
	ldx $1018
	jsr L86B233
	inc $1039
	rts

L86B12E:
	ldx $1039
	lda $1DB4,X
	ldx $1018
	jsr L86B27B
	inc $1039
	inc $1039
	rts

L86B141:
	lda #bank100(L88ADDB)
	sta $01
	lda #L88ADDB
	sta $00
	lda #$3400
	sta $06
	ldx $1039
	lda $1DB4,X
	ldx $1018
	jsr L86B20D
	inc $1039
	rts

L86B160:
	lda #$3500
	sta $17
	ldx $1039
	lda $1DB4,X
	ldx $1018
	jsr L86B2E3
	inc $1039
	rts

L86B175:
	phx
	phy
	asl
	asl
	tax
	ldy #$0000
	lda.l L8B9AF8,X
	and #$C3FF
	ora $06
	sta [$03],Y
	ldy #$0040
	lda.l (L8B9AF8 + 2),X
	and #$C3FF
	ora $06
	sta [$03],Y
	ply
	plx
	rts

L86B199:
	php
	phb
	ldy #$0000
L86B19E:
	lda [$00],Y
	cmp #$FFFF
	beq L86B1B0
	jsr L86B175
	inc $03
	inc $03
	iny
	iny
	bra L86B19E

L86B1B0:
	tya
	clc
	adc $1018
	sta $1018
	plb
	plp
	rts

L86B1BB:
	php
	phb
	sty $00
	and #$00FF
	asl
	tay
	lda [$00],Y
	sta $00
	sep #$20
	lda #$7E
	sta $05
	rep #$20
	txa
	clc
	adc #$40FE
	sta $03
	ldy #$0000
	lda [$03],Y
	and #$3C00
	sta $06
	jsr L86B199
	plb
	plp
	rts

L86B1E7:
	php
	phb
	and #$00FF
	asl
	adc $00
	sta $00
	ldy #$0000
	lda [$00],Y
	sta $00
	sep #$20
	lda #$7E
	sta $05
	rep #$20
	txa
	clc
	adc #$2800
	sta $03
	jsr L86B199
	plb
	plp
	rts

L86B20D:
	php
	phb
	and #$00FF
	asl
	adc $00
	sta $00
	ldy #$0000
	lda [$00],Y
	sta $00
	sep #$20
	lda #$7E
	sta $05
	rep #$20
	txa
	clc
	adc #$3000
	sta $03
	jsr L86B199
	plb
	plp
	rts

L86B233:
	sep #$20
	bit #$80
	beq L86B23C
	eor #$FF
	ina
L86B23C:
	cmp #$64
	bcc L86B242
	lda #$63
L86B242:
	rep #$20
	and #$00FF
	phx
	sta $33
	lda #$000A
	sta $35
	jsl L808DBA
	plx
	lda $33
	bne L86B25C
	inx
	inx
	bra L86B25F

L86B25C:
	jsr L86B268
L86B25F:
	lda $2D
	jsr L86B268
	stx $1018
	rts

L86B268:
	clc
	adc #$2500
	sta $7E2800,X
	clc
	adc #$0010
	sta $7E2840,X
	inx
	inx
	rts

L86B27B:
	sep #$20
	phx
	tay
	ldx #$0006
L86B282:
	sty $4204
	lda #$0A
	sta $4206
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	lda $4216
	sta $1D93,X
	ldy $4214
	dex
	bne L86B282
	plx
	lda $1003
	and #$7F
	sta $1003
	lda #$00
	sta $02
	rep #$20
	lda #$1D94
	sta $00
	ldy #$0000
L86B2B5:
	lda [$00],Y
	and #$00FF
	bne L86B2C7
	lda $1003
	bit #$0080
	beq L86B2D3
	lda #$0000
L86B2C7:
	jsr L86B268
	lda $1003
	ora #$0080
	sta $1003
L86B2D3:
	iny
	cpy #$0006
	bcc L86B2B5
	lda #$0000
	jsr L86B268
	stx $1018
	rts

L86B2E3:
	phy
	sep #$20
	bit #$80
	beq L86B2ED
	eor #$FF
	ina
L86B2ED:
	cmp #$64
	bcc L86B2F3
	lda #$63
L86B2F3:
	rep #$20
	and #$00FF
	phx
	sta $33
	lda #$000A
	sta $35
	jsl L808DBA
	plx
	lda $33
	bne L86B30D
	inx
	inx
	bra L86B310

L86B30D:
	jsr L86B31A
L86B310:
	lda $2D
	jsr L86B31A
	stx $1018
	ply
	rts

L86B31A:
	clc
	adc $17
	sta $7E3000,X
	clc
	adc #$0010
	sta $7E3040,X
	inx
	inx
	rts

L86B32C:
	sep #$20
	lda $103B
	bit #$01
	beq L86B33A
	ldx #$0000
	bra L86B33D

L86B33A:
	ldx #$0020
L86B33D:
	lda #$50
	sta.l $0004DB,X
	rep #$20
	lda $04C9
	bit #$0080
	bne L86B352
	lda $04CE
	bra L86B355

L86B352:
	lda $04EE
L86B355:
	and #$00FF
	sta $089F
	lda #$0046
	jsl L80B48F
	jsr L86C24E
	rts

L86B366:
	sep #$20
	lda $075E
	cmp #$2A
	bne L86B37E
	ldx #$DC58
	stx $104D
	rep #$20
	lda #$80BA
	sta $0876
	rts

L86B37E:
.ACCU 8
	lda $103B
	bit #$01
	bne L86B38A
	ldx #$0000
	bra L86B38D

L86B38A:
	ldx #$0020
L86B38D:
	lda #$50
	sta.l $0004DB,X
	rep #$20
	lda $04C9
	bit #$0080
	bne L86B3A2
	lda $04EE
	bra L86B3A5

L86B3A2:
	lda $04CE
L86B3A5:
	and #$00FF
	sta $089F
	lda #$0046
	jsl L80B49D
	jsr L86C24E
	rts

L86B3B6:
	sep #$20
	ldx #$0020
	lda #$50
	sta.l $0004DB,X
	rep #$20
	rts

L86B3C4:
	sep #$20
	ldx #$0020
	lda #$A0
	sta.l $0004DB,X
	rep #$20
	rts

L86B3D2:
	sep #$20
	lda $1001
	bit #$20
	bne L86B3F1
	lda $075F
	cmp #$49
	beq L86B3E6
	cmp #$4A
	bne L86B3FA
L86B3E6:
	ldx #$0020
	lda #$01
	sta.l $0004DB,X
	bra L86B3FA

L86B3F1:
	ldx #$0000
	lda #$01
	sta.l $0004DB,X
L86B3FA:
	rep #$20
	rts

L86B3FD:
	sep #$20
	lda $1000
	ora #$08
	sta $1000
	lda $A1
	and #$FB
	sta $A1
	lda $A0
	and #$FB
	sta $A0
	stz $93
	stz $91
	rep #$20
	jsr L86B432
	lda #bank100(L86B42B)
	sta $01
	lda #L86B42B
	sta $00
	jsl L808EAD
	rts

L86B42B:
DMA_DATA L94D0D0 $0010 $18

L86B432:
	ldx #$0480
	lda #$00FF
L86B438:
	sta $7E2800,X
	inx
	inx
	cpx #$0580
	bcc L86B438
	inc $0708
	rts

L86B447:
	sep #$20
	ldx $1039
	lda $1DB4,X
	clc
	clv
	adc $1014
	bvc L86B458
	eor #$80
L86B458:
	sta $1014
	inx
	stx $1039
	rep #$20
	rts

L86B462:
	sep #$20
	ldx $1039
	lda $1DB4,X
	clc
	adc $1015
	bvc L86B472
	eor #$80
L86B472:
	sta $1015
	inx
	stx $1039
	rep #$20
	rts

L86B47C:
	lda $1014
	and #$00FF
	beq L86B494
	bit #$0080
	bne L86B48E
	jsr L86B4FF
	bra L86B491

L86B48E:
	jsr L86B4AD
L86B491:
	jsr L869531
L86B494:
	lda $1015
	and #$00FF
	beq L86B4AC
	bit #$0080
	bne L86B4A6
	jsr L86B541
	bra L86B4A9

L86B4A6:
	jsr L86B4D6
L86B4A9:
	jsr L86951B
L86B4AC:
	rts

L86B4AD:
	sep #$20
	lda $0770
	bne L86B4B9
	stz $1014
	bra L86B4D3

L86B4B9:
	dea
	sta $0770
	inc $1014
	cmp $0766
	bcs L86B4D3
	rep #$20
	jsr L86B584
	lda $7E35C4,X
	dea
	sta $7E35C4,X
L86B4D3:
	rep #$20
	rts

L86B4D6:
	sep #$20
	lda $076F
	bne L86B4E2
	stz $1015
	bra L86B4FC

L86B4E2:
	dea
	sta $076F
	inc $1015
	cmp $0765
	bcs L86B4FC
	rep #$20
	jsr L86B584
	lda $7E35E2,X
	dea
	sta $7E35E2,X
L86B4FC:
	rep #$20
	rts

L86B4FF:
	sep #$20
	lda $1005
	and #$07
	bne L86B53E
	lda $0770
	cmp $0766
	bne L86B515
	stz $1014
	bra L86B53E

L86B515:
	ina
	sta $0770
	dec $1014
	cmp $0766
	beq L86B523
	bcs L86B53E
L86B523:
	rep #$20
	jsr L86B583
	lda $7E35C4,X
	ina
	sta $7E35C4,X
	lda #$0040
	sta $089F
	lda #$007E
	jsl L80B4BB
L86B53E:
	rep #$20
	rts

L86B541:
	sep #$20
	lda $1005
	and #$07
	bne L86B580
	lda $076F
	cmp $0765
	bne L86B557
	stz $1015
	bra L86B580

L86B557:
	ina
	sta $076F
	dec $1015
	cmp $0765
	beq L86B565
	bcs L86B580
L86B565:
	rep #$20
	jsr L86B583
	lda $7E35E2,X
	ina
	sta $7E35E2,X
	lda #$00C0
	sta $089F
	lda #$007E
	jsl L80B4BB
L86B580:
	rep #$20
	rts

L86B583:
	dea
L86B584:
	and #$00FE
	cmp #$001A
	bcc L86B592
	sec
	sbc #$001A
	bra L86B596

L86B592:
	clc
	adc #$0040
L86B596:
	tax
	rts

L86B598:
	lda #$7E00
	sta $01
	lda #$4282
	sta $00
	lda $0770
	and #$00FF
	sta $03
	lda $0766
	and #$00FF
	sta $06
	jsr L86B5D4
	rts

L86B5B6:
	lda #$7E00
	sta $01
	lda #$42A0
	sta $00
	lda $076F
	and #$00FF
	sta $03
	lda $0765
	and #$00FF
	sta $06
	jsr L86B5D4
	rts

L86B5D4:
	lda $06
	beq L86B62D
	cmp #$0034
	bcc L86B5E2
	lda #$0034
	sta $06
L86B5E2:
	lda #$0000
	sta $17
L86B5E7:
	lda $17
	jsr L86B584
	txy
	dec $06
	beq L86B60C
	dec $06
	lda $03
	bne L86B5FC
	lda #$0150
	bra L86B61A

L86B5FC:
	dec $03
	beq L86B607
	lda #$0152
	dec $03
	bra L86B61A

L86B607:
	lda #$0151
	bra L86B61A

L86B60C:
	lda $03
	bne L86B615
	lda #$0153
	bra L86B61A

L86B615:
	lda #$0154
	dec $03
L86B61A:
	sta $15
	lda [$00],Y
	and #$FE00
	ora $15
	sta [$00],Y
	inc $17
	inc $17
	lda $06
	bne L86B5E7
L86B62D:
	rts

L86B62E:
	ldx #$061A
	lda #$0003
L86B634:
	pha
	ldy #$0012
L86B638:
	lda #$00FF
	sta $7E2800,X
	inx
	inx
	dey
	bne L86B638
	txa
	clc
	adc #$001C
	tax
	pla
	dea
	bne L86B634
	rts

L86B64F:
	ldx #$065C
	ldy #$0020
L86B655:
	lda $7E3000,X
	sta $1D94,Y
	inx
	inx
	dey
	dey
	bne L86B655
	rts

L86B663:
	ldx #$065C
	ldy #$0020
L86B669:
	lda $1D94,Y
	sta $7E3000,X
	inx
	inx
	dey
	dey
	bne L86B669
	rts

L86B677:
	ldx #$180D
	ldy #$1A1E
	lda #$3000
	sta $00
	sep #$20
	lda #$7E
	sta $02
	rep #$20
	lda $1018
	pha
	lda $101E
	pha
	ldx #$180D
	ldy #$1A1E
	lda #$2800
	sta $00
	sep #$20
	lda #$7E
	sta $02
	rep #$20
	lda #$2002
	jsr L86B7E4
	pla
	sta $101E
	pla
	sta $1018
	rts

L86B6B4:
	sep #$20
	lda $0798
	bpl L86B6C0
	eor #$FF
	ina
	ora #$80
L86B6C0:
	sta $1016
	rep #$20
	rts

L86B6C6:
	sep #$20
	lda $1016
	and #$7F
	bne L86B6D4
	stz $1016
	bra L86B70A

L86B6D4:
	lda $1016
	bmi L86B6E8
	lda $0773
	ina
	cmp #$64
	bcc L86B6E3
	lda #$00
L86B6E3:
	sta $0773
	bra L86B6F5

L86B6E8:
	lda $0773
	dea
	cmp #$FF
	bne L86B6F2
	lda #$63
L86B6F2:
	sta $0773
L86B6F5:
	rep #$20
	jsr L86B70D
	sep #$20
	dec $1016
	bne L86B70A
	rep #$20
	lda #$0080
	jsl L80B4BB
L86B70A:
	rep #$20
	rts

L86B70D:
	sep #$20
	lda #$95
	sta $02
	rep #$20
	lda #$DA56
	sta $00
	ldx #$0000
	lda $0773
	and #$00FF
L86B723:
	pha
	cmp #$0008
	bcs L86B72E
	and #$0007
	bra L86B731

L86B72E:
	lda #$0008
L86B731:
	cpx #$0018
	bne L86B73A
	clc
	adc #$0009
L86B73A:
	asl
	tay
	lda [$00],Y
	sta $7E3662,X
	pla
	sec
	sbc #$0008
	bcs L86B74C
	lda #$0000
L86B74C:
	inx
	inx
	cpx #$001A
	bcc L86B723
	rts

L86B754:
	ldx #$040B
	ldy #$0714
	lda #$3000
	sta $00
	sep #$20
	lda #$7E
	sta $02
	rep #$20
	lda #$3000
	jsr L86B7E4
	rts

L86B76E:
	sep #$20
	lda $1001
	and #$FD
	sta $1001
	rep #$20
	ldx #$0116
	lda #$0004
L86B780:
	pha
	ldy #$000A
L86B784:
	lda #$00FF
	sta $7E3000,X
	inx
	inx
	dey
	bne L86B784
	txa
	clc
	adc #$002C
	tax
	pla
	dea
	bne L86B780
	rts

L86B79B:
	ldx #$1202
	ldy #$151D
	lda #$2800
	sta $00
	sep #$20
	lda #$7E
	sta $02
	rep #$20
	lda #$2000
	jsr L86B7E4
	sep #$20
	lda $1004
	ora #$04
	sta $1004
	rts

L86B7BF:
.ACCU 16
	lda #$1B1A
	sta $1010
	lda #$1105
	sta $100C
	lda #$1B06
	sta $100E
	jsr L86B964
	jsr L86EEB2
	sep #$20
	lda $1002
	ora #$04
	sta $1002
	rep #$20
	rts

L86B7E4:
	stx $15
	sty $17
	pha
	and #$FF00
	sta $1B
	pla
	and #$00FF
	sta $19
	asl
	adc $19
	tax
	lda.l L95D9ED,X
	sta $03
	lda.l (L95D9ED + 1),X
	sta $04
	lda $15
	and #$FF00
	lsr
	lsr
	sta $19
	lda $15
	and #$00FF
	asl
	adc $19
	sta $19
	sta $1D
	clc
	adc #$0042
	sta $1018
	sta $101E
	sep #$20
	lda $16
	pha
L86B828:
	lda $15
L86B82A:
	pha
	lda $02,S
	cmp $16
	bne L86B835
	lda #$00
	bra L86B83F

L86B835:
	cmp $18
	bne L86B83D
	lda #$06
	bra L86B83F

L86B83D:
	lda #$03
L86B83F:
	sta $1F
	lda $01,S
	cmp $15
	bne L86B84B
	lda #$00
	bra L86B855

L86B84B:
	cmp $17
	bne L86B853
	lda #$02
	bra L86B855

L86B853:
	lda #$01
L86B855:
	clc
	adc $1F
	sta $1F
	rep #$20
	and #$00FF
	asl
	tay
	lda [$03],Y
	ora $1B
	ldy $19
	sta [$00],Y
	iny
	iny
	sty $19
	sep #$20
	pla
	ina
	cmp $17
	bcc L86B879
	beq L86B879
	bra L86B87C

L86B879:
	jmp L86B82A

L86B87C:
	pla
	ina
	cmp $18
	bcc L86B886
	beq L86B886
	bra L86B898

L86B886:
	pha
	rep #$20
	lda $1D
	clc
	adc #$0040
	sta $19
	sta $1D
	sep #$20
	jmp L86B828

L86B898:
	rep #$20
	rts

L86B89B:
	and #$0007
	xba
	asl
	asl
	sta $1B
	stx $15
	sty $17
	txa
	and #$FF00
	lsr
	lsr
	sta $19
	lda $15
	and #$00FF
	asl
	adc $19
	sta $19
	sta $1D
	clc
	adc #$0042
	sta $1018
	sta $101E
	sep #$20
	lda $16
	pha
L86B8CA:
	lda $15
L86B8CC:
	pha
	lda $02,S
	cmp $16
	beq L86B8F0
	cmp $18
	beq L86B909
	lda $01,S
	cmp $15
	beq L86B8E6
	cmp $17
	beq L86B8EB
	ldx #$00FE
	bra L86B920

L86B8E6:
	ldx #$40F2
	bra L86B920

L86B8EB:
	ldx #$00F2
	bra L86B920

L86B8F0:
	lda $01,S
	cmp $15
	beq L86B8FF
	cmp $17
	beq L86B904
	ldx #$00F1
	bra L86B920

L86B8FF:
	ldx #$40F0
	bra L86B920

L86B904:
	ldx #$00F0
	bra L86B920

L86B909:
	lda $01,S
	cmp $15
	beq L86B918
	cmp $17
	beq L86B91D
	ldx #$80F1
	bra L86B920

L86B918:
	ldx #$C0F0
	bra L86B920

L86B91D:
	ldx #$80F0
L86B920:
	rep #$20
	txa
	ora $1B
	ldx $19
	sta $7E3000,X
	lda #$00FF
	sta $7E2800,X
	inx
	inx
	stx $19
	sep #$20
	pla
	ina
	cmp $17
	bcc L86B942
	beq L86B942
	bra L86B945

L86B942:
	jmp L86B8CC

L86B945:
	pla
	ina
	cmp $18
	bcc L86B94F
	beq L86B94F
	bra L86B961

L86B94F:
	pha
	rep #$20
	lda $1D
	clc
	adc #$0040
	sta $19
	sta $1D
	sep #$20
	jmp L86B8CA

L86B961:
	rep #$20
	rts

L86B964:
	sep #$20
	lda $1000
	ora #$02
	sta $1000
	inc $0708
	rep #$20
	ldx $100C
	ldy $100E
	lda #$0004
	jsr L86B89B
	inc $100E
	rts

L86B983:
	lda $1000
	and #$0002
	beq L86B9AD
	ldx $100C
	lda $100E
	jsr L86B9AE
	sep #$20
	lda $100E
	cmp $1010
	beq L86B9A3
	inc $100E
	bra L86B9AB

L86B9A3:
	lda $1000
	and #$FD
	sta $1000
L86B9AB:
	rep #$20
L86B9AD:
	rts

L86B9AE:
	stx $15
	sta $17
	txa
	and #$FF00
	lsr
	lsr
	sta $19
	lda $17
	and #$00FF
	dea
	asl
	adc $19
	sta $19
	sta $1D
	tax
	lda #$10F1
	sta $7E3000,X
	lda #$00FF
	sta $7E2800,X
	inx
	inx
	lda #$10F0
	sta $7E3000,X
	lda #$00FF
	sta $7E2800,X
	txa
	clc
	adc #$003E
	tax
L86B9EC:
	sep #$20
	inc $16
	lda $16
	cmp $18
	beq L86BA1E
	rep #$20
	lda #$10FE
	sta $7E3000,X
	lda #$00FF
	sta $7E2800,X
	inx
	inx
	lda #$10F2
	sta $7E3000,X
	lda #$00FF
	sta $7E2800,X
	txa
	clc
	adc #$003E
	tax
	bra L86B9EC

L86BA1E:
	rep #$20
	lda #$90F1
	sta $7E3000,X
	lda #$00FF
	sta $7E2800,X
	inx
	inx
	lda #$90F0
	sta $7E3000,X
	lda #$00FF
	sta $7E2800,X
	rts

L86BA3F:
	sep #$20
	lda $1000
	and #$F7
	ora #$10
	sta $1000
	lda #$80
	sta $1051
	rep #$20
	rts

L86BA53:
	sep #$20
	lda $1000
	and #$F7
	ora #$10
	sta $1000
	lda #$0D
	sta $1051
	rep #$20
	rts

L86BA67:
	sep #$20
	lda #$80
	sta $1051
	rep #$20
	rts

L86BA71:
	sep #$20
	lda #$11
	sta $1051
	rep #$20
	rts

L86BA7B:
	sep #$20
	lda $1001
	ora #$02
	sta $1001
	lda #$80
	sta $1051
	rep #$20
	rts

L86BA8D:
	sep #$20
	lda $1001
	ora #$02
	sta $1001
	lda #$11
	sta $1051
	rep #$20
	rts

L86BA9F:
	sep #$20
	lda #$10
	sta $1051
	lda #$06
	sta $1052
	rep #$20
	rts

L86BAAE:
	sep #$20
	and #$7F
	sta $15
	stz $16
	ina
	cmp #$0D
	bne L86BAD2
	inc $0708
	stz $1051
	lda $1000
	ora #$08
	sta $1000
	rep #$20
	jsr L86B62E
	sep #$20
	bra L86BB19

L86BAD2:
	cmp #$06
	bne L86BADD
	rep #$20
	jsr L86B663
	sep #$20
L86BADD:
	ldx #$0000
	ldy #$0000
L86BAE3:
	cpy $15
	bcc L86BAEE
	lda $15
	eor #$FF
	ina
	bra L86BAF0

L86BAEE:
	lda #$18
L86BAF0:
	clc
	adc #$06
	sta $1D42,X
	inx
	inx
	iny
	cpy #$000C
	bcc L86BAE3
	ldy #$000B
L86BB01:
	cpy $15
	bcc L86BB09
	lda $15
	bra L86BB0B

L86BB09:
	lda #$18
L86BB0B:
	clc
	adc #$06
	sta $1D42,X
	inx
	inx
	dey
	bpl L86BB01
	inc $1051
L86BB19:
	rep #$20
	rts

L86BB1C:
	sep #$20
	lda $1051
	bpl L86BB26
	jmp L86BAAE

L86BB26:
	and #$7F
	beq L86BB92
	cmp #$08
	bne L86BB46
	pha
	rep #$20
	jsr L86B64F
	ldx #$0662
	lda $0773
	jsr L86B70D
	lda #$0000
	jsr L86993C
	sep #$20
	pla
L86BB46:
	dea
	bne L86BB51
	inc $0708
	stz $1051
	bra L86BB92

L86BB51:
	dea
	sta $15
	stz $16
	ldx #$0000
	ldy #$0000
L86BB5C:
	cpy $15
	bcc L86BB67
	lda $15
	eor #$FF
	ina
	bra L86BB69

L86BB67:
	lda #$18
L86BB69:
	clc
	adc #$06
	sta $1D42,X
	inx
	inx
	iny
	cpy #$000C
	bcc L86BB5C
	ldy #$000D
L86BB7A:
	cpy $15
	bcc L86BB82
	lda $15
	bra L86BB84

L86BB82:
	lda #$18
L86BB84:
	clc
	adc #$06
	sta $1D42,X
	inx
	inx
	dey
	bpl L86BB7A
	dec $1051
L86BB92:
	rep #$20
	rts

L86BB95:
	sep #$20
	and #$7F
	sta $15
	stz $16
	ina
	cmp #$11
	bne L86BBAA
	inc $0708
	stz $1051
	bra L86BBE6

L86BBAA:
	ldx #$0000
	ldy #$0000
L86BBB0:
	cpy $15
	bcc L86BBBB
	lda $15
	eor #$FF
	ina
	bra L86BBBD

L86BBBB:
	lda #$20
L86BBBD:
	clc
	adc #$06
	sta $1D42,X
	inx
	inx
	iny
	cpy #$0010
	bcc L86BBB0
	ldy #$000F
L86BBCE:
	cpy $15
	bcc L86BBD6
	lda $15
	bra L86BBD8

L86BBD6:
	lda #$20
L86BBD8:
	clc
	adc #$06
	sta $1D42,X
	inx
	inx
	dey
	bpl L86BBCE
	inc $1051
L86BBE6:
	rep #$20
	rts

L86BBE9:
	sep #$20
	lda $1000
	bit #$10
	beq L86BBF5
	jmp L86BB1C

L86BBF5:
	lda $1051
	bpl L86BBFD
	jmp L86BB95

L86BBFD:
	beq L86BC4B
	dea
	bne L86BC0A
	inc $0708
	stz $1051
	bra L86BC4B

L86BC0A:
	dea
	sta $15
	stz $16
	ldx #$0000
	ldy #$0000
L86BC15:
	cpy $15
	bcc L86BC20
	lda $15
	eor #$FF
	ina
	bra L86BC22

L86BC20:
	lda #$20
L86BC22:
	clc
	adc #$06
	sta $1D42,X
	inx
	inx
	iny
	cpy #$0010
	bcc L86BC15
	ldy #$0011
L86BC33:
	cpy $15
	bcc L86BC3B
	lda $15
	bra L86BC3D

L86BC3B:
	lda #$20
L86BC3D:
	clc
	adc #$06
	sta $1D42,X
	inx
	inx
	dey
	bpl L86BC33
	dec $1051
L86BC4B:
	rep #$20
	rts

L86BC4E:
	sep #$20
	lda $1000
	bit #$08
	bne L86BC5A
	jmp L86BBE9

L86BC5A:
	lda $1051
	beq L86BCC1
	dea
	bne L86BC7E
	inc $0708
	stz $1051
	lda #$06
	sta $1052
	rep #$20
	lda $1018
	sec
	sbc #$0080
	sta $1018
	sta $101E
	bra L86BCC1

L86BC7E:
	inc $1052
	sta $1051
	cmp #$D001
	and $20C2,Y
	lda #$0007
	ldx #$048C
L86BC90:
	pha
	ldy #$0014
L86BC94:
	lda $7E2880,X
	sta $7E2800,X
	inx
	inx
	dey
	bne L86BC94
	txa
	clc
	adc #$0018
	tax
	pla
	dea
	bne L86BC90
	ldy #$0014
L86BCAE:
	lda $7E2880,X
	and #$FC00
	ora #$00FE
	sta $7E2800,X
	inx
	inx
	dey
	bne L86BCAE
L86BCC1:
	rep #$20
	rts

L86BCC4:
	jsr L86BD79
	sep #$20
	lda $1007
	asl
	asl
	asl
	asl
	clc
	adc #$60
	sta $1008
	bra L86BCE7

L86BCD8:
	sep #$20
	lda $1001
	ora #$08
	sta $1001
	lda #$0A
	sta $1008
L86BCE7:
	lda $1000
	ora #$01
	sta $1000
	rep #$20
	rts

L86BCF2:
	lda $1000
	and #$0001
	bne L86BCFD
	jmp L86BD68

L86BCFD:
	lda $0127
	bit #$0F80
	bne L86BD49
	sep #$20
	lda $1001
	bit #$08
	bne L86BD1C
	lda $07DC
	cmp #$04
	bne L86BD1C
	lda $07B7
	bit #$10
	beq L86BD28
L86BD1C:
	dec $1008
	beq L86BD49
	lda $1001
	bit #$08
	bne L86BD68
L86BD28:
	rep #$20
	ldx #$06DE
	lda $0F42
	cmp #$0010
	bcs L86BD38
	jsr L86BD79
L86BD38:
	lda $0F42
	ina
	cmp #$0020
	bcc L86BD44
	lda #$0000
L86BD44:
	sta $0F42
	bra L86BD68

L86BD49:
	rep #$20
	lda $1001
	bit #$0008
	bne L86BD53
L86BD53:
	sep #$20
	lda $1000
	and #$FE
	sta $1000
	lda $1001
	and #$F7
	sta $1001
	inc $0708
L86BD68:
	rep #$20
	rts

L86BD6B:
	ldx #$0000
	sep #$20
	lda #$01
	sta.l $0004DA,X
	rep #$20
	rts

L86BD79:
	ldx #$0000
	lda #$D07C
	sta $0210,X
	lda #$3FFF
	sta $0212,X
	lda $0410,X
	and #$FFFC
	sta $0410,X
	rts

L86BD92:
	ldx $1039
	lda $1DB4,X
	and #$00FF
	jsr L86C812
	rep #$20
	inc $1039
	rts

L86BDA4:
	ldx $1039
	lda $1DB4,X
	jsr L86C84C
	rep #$20
	inc $1039
	inc $1039
	rts

L86BDB6:
.dw L86B79B
.dw L86B7BF
.dw L86AFF1
.dw L86AFF7
.dw L86B000
.dw L86B00F
.dw L86B01E
.dw L86B447
.dw L86B462
.dw L86B677
.dw L86B027
.dw L86B030
.dw L86BCC4
.dw L86BA9F
.dw L86E056
.dw L86BE77
.dw L86BE77
.dw L869229
.dw L869246
.dw L869200
.dw L86C255
.dw L869346
.dw L869372
.dw L86B32C
.dw L86B366
.dw L86927E
.dw L8692C9
.dw L86DB4D
.dw L86DB5C
.dw L86D862
.dw L86D69B
.dw L86DBB9
.dw L86DBC8
.dw L86B62E
.dw L86B063
.dw L86B066
.dw L86B06C
.dw L86B3FD
.dw L86BA67
.dw L86BA71
.dw L86B072
.dw L86BA3F
.dw L86BA53
.dw L86D5F6
.dw L86B3B6
.dw L86B3C4
.dw L86B754
.dw L86BA7B
.dw L86BA8D
.dw L86B76E
.dw L86B084
.dw L86B087
.dw L86C16B
.dw L86939C
.dw L86B03F
.dw L8693B5
.dw L86B07E
.dw L86BCD8
.dw L86BD6B
.dw L86B04E
.dw L86B432
.dw L86C233
.dw L86C23A
.dw L86C241
.dw L86D660
.dw L86CD08
.dw L86CD1D
.dw L86B05A
.dw L86BD92
.dw L86BDA4
.dw L86D60B
.dw L86D5FD

L86BE46:
	lda $1056
	cmp #$FFFF
	beq L86BE5F
	sep #$20
	lda $1055
	beq L86BE5A
	dec $1055
	bra L86BE5F

L86BE5A:
	rep #$20
	jsr L86BEEF
L86BE5F:
	rep #$20
	lda #bank100(L86BE70)
	sta $01
	lda #L86BE70
	sta $00
	jsl L808EAD
	rts

L86BE70:
DMA_DATA $00105C $0002 $00

L86BE77:
	ldx $1039
	lda $1DB4,X
	inc $1039
	jsl L86BE85
	rts

L86BE85:
	and #$00FF
	cmp #$0018
	bne L86BE9F
	pha
	lda $075E
	and #$00FF
	cmp #$002A
	bne L86BE9E
	pla
	lda #$001C
	pha
L86BE9E:
	pla
L86BE9F:
	asl
	tax
	lda.l L958000,X
	sec
	sbc #$8046
	tax
	sep #$20
	lda.l L958046,X
	cmp #$FE
	bne L86BEBE
	lda $1003
	ora #$40
	sta $1003
	bra L86BEE3

L86BEBE:
	cmp #$FF
	bne L86BECC
	lda $1001
	ora #$40
	sta $1001
	bra L86BEE3

L86BECC:
	lda $075E
	cmp #$2A
	beq L86BED9
	lda.l L958046,X
	sta $A5
L86BED9:
	lda $1001
	and #$BF
	sta $1001
	bra L86BEE3

L86BEE3:
	rep #$20
	inx
	stx $1056
	stx $1058
	rep #$20
	rtl

L86BEEF:
	sep #$20
	ldx $1056
	lda.l L958046,X
	cmp #$FC
	bcc L86BF0A
	eor #$FF
	asl
	rep #$20
	and #$00FF
	tax
	jsr (L86BFB9,X)
	bra L86BF7A

L86BF0A:
	sta $1055
	rep #$20
	inc $1056
	ldx $1056
	lda $1003
	bit #$0040
	bne L86BF53
	lda $1001
	bit #$0040
	bne L86BF41
	lda $075E
	and #$00FF
	cmp #$002A
	beq L86BF5D
	lda.l L958046,X
	sta $A6
	sep #$20
	stz $A8
	rep #$20
	inc $1056
	bra L86BF77

L86BF41:
	sep #$20
	lda.l L958046,X
	sta $15
	lda $7A
	and #$80
	ora $15
	sta $7A
	bra L86BF77

L86BF53:
	sep #$20
	lda.l L958046,X
	sta $7F
	bra L86BF77

L86BF5D:
	lda.l L958046,X
	jsr L86BF7B
	sta $105C
	lda.l (L958046 + 1),X
	jsr L86BF7B
	ora $105C
	sta $105C
	inc $1056
L86BF77:
	inc $1056
L86BF7A:
	rts

L86BF7B:
.ACCU 16
	and #$00FF
	sta $15
	stz $17
	lda $15
	bit #$0020
	beq L86BF8E
	and #$001F
	sta $17
L86BF8E:
	lda $15
	asl
	asl
	asl
	asl
	asl
	sta $15
	bit #$0800
	beq L86BFA3
	and #$03E0
	ora $17
	sta $17
L86BFA3:
	lda $15
	bit #$1000
	beq L86BFB6
	asl
	asl
	asl
	asl
	asl
	and #$7C00
	ora $17
	sta $17
L86BFB6:
	lda $17
	rts

L86BFB9:
.dw L86BFBF
.dw L86BFEF
.dw L86BFF6

L86BFBF:
	sep #$20
	lda $1003
	bit #$40
	beq L86BFD4
	stz $7F
	lda $1003
	and #$BF
	sta $1003
	bra L86BFE6

L86BFD4:
	lda $0762
	cmp #$23
	beq L86BFE6
	lda $075E
	cmp #$2A
	beq L86BFE6
	lda #$00
	sta $A5
L86BFE6:
	rep #$20
	lda #$FFFF
	sta $1056
	rts

L86BFEF:
	lda #$FFFF
	sta $1056
	rts

L86BFF6:
	lda $1058
	sta $1056
	rts

L86BFFD:
	phx
	sta $15
	lda $15
	and #$00FF
	asl
	tax
	jsr (L86C00C,X)
	plx
	rtl

L86C00C:
.dw L86C028
.dw L86C05E
.dw L86C071
.dw L86C0EF
.dw L86C0FD
.dw L86D207
.dw L86C10E
.dw L86C115
.dw L86C11C
.dw L86C123
.dw L86C157
.dw L86C161
.dw L86C14D
.dw L86C161

L86C028:
	sep #$20
	lda $1001
	ora #$01
	sta $1001
	rep #$20
	jsr L86D693
L86C037:
	ldx #$0000
L86C03A:
	lda $7E6EFE,X
	sta $1C18,X
	inx
	inx
	cpx #$0018
	bcc L86C03A
	lda #bank100(L86C057)
	sta $01
	lda #L86C057
	sta $00
	jsl L808EAD
	rts

L86C057:
DMA_DATA $7E6EFE $00C0 $20

L86C05E:
	sep #$20
	ldx #$0000
	lda #$50
	sta.l $0004DB,X
	lda #$20
	sta $105B
	rep #$20
	rts

L86C071:
	jsr L86B3C4
	sep #$20
	lda #$A0
	sta $105B
	rep #$20
	rts

L86C07E:
	sep #$20
	lda $105B
	beq L86C0EC
	bmi L86C09C
	dec $105B
	lda #$80
	sta $100A
	lda $105B
	asl
	asl
	clc
	adc #$7F
	sta $100B
	bra L86C0EC

L86C09C:
	dec $105B
	lda #$7F
	sta $100B
	lda $105B
	and #$7F
	asl
	asl
	sta $100A
	lda $105B
	cmp #$81
	beq L86C0C9
	lda $105B
	cmp #$80
	bne L86C0EC
	stz $100A
	lda #$FF
	sta $100B
	stz $105B
	bra L86C0EC

L86C0C9:
	rep #$20
	ldx #$0460
	lda #$000B
	sta $15
L86C0D3:
	ldy #$000F
	lda #$00FF
L86C0D9:
	sta $7E3000,X
	inx
	inx
	dey
	bne L86C0D9
	txa
	clc
	adc #$0022
	tax
	dec $15
	bne L86C0D3
L86C0EC:
	rep #$20
	rts

L86C0EF:
	sep #$20
	ldx #$0020
	lda #$50
	sta.l $0004DB,X
	rep #$20
	rts

L86C0FD:
	sep #$20
	ldx #$0000
	lda #$A0
	sta.l $0004DB,X
	rep #$20
	jsr L869996
	rts

L86C10E:
	lda #$0002
	sta $1028
	rts

L86C115:
	lda #$0001
	sta $1028
	rts

L86C11C:
	lda #$FFFF
	sta $1028
	rts

L86C123:
	lda #$FFF8
	sta $1028
	rts

L86C12A:
	sep #$20
	lda $106C
	and #$7F
	beq L86C14A
	lda $1005
	bit #$07
	bne L86C14A
	lda $106C
	bmi L86C144
	inc $106B
	bra L86C147

L86C144:
	dec $106B
L86C147:
	dec $106C
L86C14A:
	rep #$20
	rts

L86C14D:
	sep #$20
	lda $1004
	ora #$01
	sta $1004
L86C157:
	sep #$20
	lda #$07
	sta $106C
	rep #$20
	rts

L86C161:
	sep #$20
	lda #$87
	sta $106C
	rep #$20
	rts

L86C16B:
	lda #$000F
	jsl L86BE85
	sep #$20
	lda #$76
	sta $105A
	rep #$20
	lda #$005D
	ldx #$0020
	jmp L86FC46

L86C184:
	lda $105A
	and #$00FF
	beq L86C1C2
	sep #$20
	lda #$76
	sec
	sbc $105A
	dec $105A
	rep #$20
	and #$00FF
	asl
	tax
	sep #$20
	lda $075D
	cmp #$09
	beq L86C1AB
	cmp #$0A
	bne L86C1BB
L86C1AB:
	lda.l L9586C5,X
	sta $104A
	lda.l (L9586C5 + 1),X
	sta $104B
	bra L86C1C2

L86C1BB:
	lda.l L9586C5,X
	sta $104A
L86C1C2:
	rep #$20
	rts

L86C1C5:
	lda $104F
	and #$00FF
	beq L86C1DE
	sep #$20
	dec $104F
	rep #$20
	lda $104F
	and #$00FF
	beq L86C22C
	bra L86C232

L86C1DE:
	lda $104D
	cmp #$0000
	beq L86C232
	sta $00
	sep #$20
	lda #$95
	sta $02
	rep #$20
	ldy #$0000
	lda [$00],Y
	tax
	cmp #$0001
	beq L86C22C
	cmp #$0002
	bne L86C208
	lda #$0000
	sta $104D
	bra L86C232

L86C208:
	cmp #$0100
	bne L86C20E
	ina
L86C20E:
	bcs L86C219
	sep #$20
	sta $104F
	rep #$20
	bra L86C232

L86C219:
	stx $00
	lda #$C223
	dea
	pha
	jmp ($0000)

L86C223:
	inc $104D
	inc $104D
	jmp L86C1DE

L86C22C:
	inc $104D
	inc $104D
L86C232:
	rts

L86C233:
	lda #$DBB8
	sta $104D
	rts

L86C23A:
	lda #$DBD8
	sta $104D
	rts

L86C241:
	lda #$DC1A
	sta $104D
	lda $07CB
	jsr L86C3A7
	rts

L86C24E:
	lda #$DC86
	sta $104D
	rts

L86C255:
	lda #$00C0
	sta $089F
	lda #$007F
	jsl L80B4BB
	lda #$DC8A
	sta $104D
	rts

L86C269:
	sep #$20
	lda $1000
	ora #$04
	sta $1000
	rep #$20
	rts

L86C276:
	sep #$20
	lda $1000
	and #$FB
	sta $1000
	rep #$20
	rts

L86C283:
	sep #$20
	lda $1002
	ora #$02
	sta $1002
	rep #$20
	rts

L86C290:
	sep #$20
	lda $1002
	and #$FD
	sta $1002
	lda $07C8
	sta $1064
	lda $F7
	and #$F7
	sta $F7
	rep #$20
	rts

L86C2A9:
	lda #$0019
	jsl L86BE85
	rts

L86C2B1:
	lda #$001A
	jsl L86BE85
	rts

L86C2B9:
	sep #$20
	lda $1034
	and #$7F
	beq L86C2C4
	bra L86C2C6

L86C2C4:
	lda #$0F
L86C2C6:
	sta $1034
	rep #$20
	rts

L86C2CC:
	sep #$20
	lda #$81
	sta $1034
	rep #$20
	rts

L86C2D6:
	lda $07C6
	cmp #$FFFF
	bne L86C2E6
	lda $07C8
	cmp #$FFFF
	beq L86C2E9
L86C2E6:
	jsr L86C40E
L86C2E9:
	lda $07C8
	cmp #$FFFF
	beq L86C319
	jsr L86D619
	jsr L86D634
	sta $1069
	lda $07CB
	jsr L86C3A7
	lda #$1000
	sta $76
	lda $07C8
	jsl L87B350
	lda $1064
	sep #$20
	sta $07C8
	rep #$20
	jsr L86C3C2
L86C319:
	lda $07C6
	cmp #$FFFF
	beq L86C37D
	jsr L86C425
	jsr L86C71D
	lda $07CA
	jsr L86C3A7
	stz $76
	lda $07C6
	jsl L87B350
	lda $1064
	jsr L86C3C2
	lda #bank100(L86C37E)
	sta $01
	lda #L86C37E
	sta $00
	jsl L808EAD
	lda $1064
	jsr L86C3DC
	lda #bank100(L86C3A0)
	sta $01
	lda #L86C3A0
	sta $00
	jsl L808EAD
	lda #bank100(L86C390)
	sta $01
	lda #L86C390
	sta $00
	jsl L808EAD
	lda #bank100(L86C399)
	sta $01
	lda #L86C399
	sta $00
	jsl L808EAD
	jsr L86C543
L86C37D:
	rts

L86C37E:
DMA_DATA DecompressionLocation $0800 $80 $2800
L86C387:
DMA_DATA $7E50FE $0800 $80 $2800
L86C390:
DMA_DATA $7E61FE $0080 $80 $2C00
L86C399:
DMA_DATA PALETTES_94D000 $0020 $F0
L86C3A0:
DMA_DATA $7F5130 $0020 $B0

L86C3A7:
	sep #$20
	cmp #$01
	beq L86C3B7
	lda $1002
	ora #$01
	sta $1002
	bra L86C3BF

L86C3B7:
	lda $1002
	and #$FE
	sta $1002
L86C3BF:
	rep #$20
	rts

L86C3C2:
	and #$00FF
	sta $17
	asl
	adc $17
	tax
	lda.l (PORTRAITS + 1),X
	sta $72
	lda.l PORTRAITS,X
	sta $71
	jsl DECOMPRESS_ASSET
	rts

L86C3DC:
	and #$00FF
	pha
	sep #$20
	lda #$D7
	sta $02
	rep #$20
	lda #$E800
	sta $00
	pla
	asl
	asl
	asl
	asl
	asl
	clc
	adc $00
	sta $00
	ldy #$0000
	ldx #$0000
L86C3FE:
	lda [$00],Y
	sta $7F5130,X
	inx
	inx
	iny
	iny
	cpy #$0020
	bcc L86C3FE
	rts

L86C40E:
	sep #$20
	lda #$CA
	sta $73
	rep #$20
	lda #$9CB8
	sta $71
	lda #$2100
	sta $76
	jsl DECOMPRESS_ASSET
	rts

L86C425:
	lda #$2800
	sta $2116
	lda $2139
	sep #$20
	lda #$81
	sta $4300
	lda #$39
	sta $4301
	lda #$FE
	sta $4302
	lda #$58
	sta $4303
	lda #$7E
	sta $4304
	lda #$80
	sta $4305
	lda #$08
	sta $4306
	rep #$20
	sep #$20
	lda #$01
	sta $420B
	rep #$20
	sep #$20
	lda #$B0
	sta $2121
	rep #$20
	sep #$20
	lda #$82
	sta $4300
	lda #$3B
	sta $4301
	lda #$BE
	sta $4302
	lda #$50
	sta $4303
	lda #$7E
	sta $4304
	lda #$20
	sta $4305
	lda #$00
	sta $4306
	rep #$20
	sep #$20
	lda #$01
	sta $420B
	rep #$20
	sep #$20
	lda #$F0
	sta $2121
	rep #$20
	sep #$20
	lda #$82
	sta $4300
	lda #$3B
	sta $4301
	lda #$DE
	sta $4302
	lda #$50
	sta $4303
	lda #$7E
	sta $4304
	lda #$20
	sta $4305
	lda #$00
	sta $4306
	rep #$20
	sep #$20
	lda #$01
	sta $420B
	rep #$20
	rts

L86C4D1:
	lda #bank100(L86C51A)
L86C4D4:
	sta $01
	lda #L86C51A
	sta $00
	jsl L808EAD
	lda #bank100(L86C535)
	sta $01
	lda #L86C535
	sta $00
	jsl L808EAD
	rts

L86C4EE:
	lda #bank100(L86C523)
	sta $01
	lda #L86C523
	sta $00
	jsl L808EAD
	lda #bank100(L86C53C)
	sta $01
	lda #L86C53C
	sta $00
	jsl L808EAD
	rts

L86C50B:
	lda #bank100(L86C52C)
	sta $01
	lda #L86C52C
	sta $00
	jsl L808EAD
	rts

L86C51A:
DMA_DATA $7E58FE $02C0 $80 $2800
L86C523:
DMA_DATA $7E5BBE $02C0 $80 $2960
L86C52C:
DMA_DATA $7E5E7E $0300 $80 $2AC0
L86C535:
DMA_DATA $7E50BE $0020 $B0
L86C53C:
DMA_DATA $7E50DE $0020 $F0

L86C543:
.ACCU 8
	lda #$00
	bpl L86C4D4
	asl $21,X
	lda $2139
	sep #$20
	lda #$81
	sta $4300
	lda #$39
	sta $4301
	lda #$FE
	sta $4302
	lda #$40
	sta $4303
	lda #$7E
	sta $4304
	lda #$00
	sta $4305
	lda #$0F
	sta $4306
	rep #$20
	sep #$20
	lda #$01
	sta $420B
	rep #$20
	rts

L86C57D:
	lda #bank100(L86C58C)
	sta $01
	lda #L86C58C
	sta $00
	jsl L808EAD
	rts

L86C58C:
DMA_DATA DecompressionLocation $02C0 $80 $1000

L86C595:
	lda #bank100(L86C5A4)
	sta $01
	lda #L86C5A4
	sta $00
	jsl L808EAD
	rts

L86C5A4:
DMA_DATA $7E43BE $02C0 $80 $1160

L86C5AD:
	lda #bank100(L86C5BC)
	sta $01
	lda #L86C5BC
	sta $00
	jsl L808EAD
	rts

L86C5BC:
DMA_DATA $7E467E $0280 $80 $12C0

L86C5C5:
	lda #bank100(L86C5D4)
	sta $01
	lda #L86C5D4
	sta $00
	jsl L808EAD
	rts

L86C5D4:
DMA_DATA $7E48FE $0240 $80 $1400

L86C5DD:
	lda #bank100(L86C5EC)
	sta $01
	lda #L86C5EC
	sta $00
	jsl L808EAD
	rts

L86C5EC:
DMA_DATA $7E4B3E $0240 $80 $1520

L86C5F5:
	lda #bank100(L86C604)
	sta $01
	lda #L86C604
	sta $00
	jsl L808EAD
	rts

L86C604:
DMA_DATA $7E4D7E $0280 $80 $1640

L86C60D:
	lda $7B
	bit #$0001
	beq L86C624
	lda #bank100(L86C693)
	sta $01
	lda #L86C693
	sta $00
	jsl L808EAD
	bra L86C67E

L86C624:
	lda #bank100(L86C6AE)
	sta $01
	lda #L86C6AE
	sta $00
	jsl L808EAD
	bra L86C67E

L86C634:
	lda $7B
	bit #$0001
	beq L86C64B
	lda #bank100(L86C69C)
	sta $01
	lda #L86C69C
	sta $00
	jsl L808EAD
	bra L86C67E

L86C64B:
	lda #bank100(L86C6B7)
	sta $01
	lda #L86C6B7
	sta $00
	jsl L808EAD
	lda $7B
	bit #$0001
	beq L86C670
	lda #bank100(L86C6A5)
	sta $01
	lda #L86C6A5
	sta $00
	jsl L808EAD
	bra L86C67E

L86C670:
	lda #bank100(L86C6C0)
	sta $01
	lda #L86C6C0
	sta $00
	jsl L808EAD
L86C67E:
	lda $07C8
	jsr L86C3DC
	lda #bank100(L86C6C9)
	sta $01
	lda #L86C6C9
	sta $00
	jsl L808EAD
	rts

L86C693:
DMA_DATA $7E50FE $02C0 $80 $0800
L86C69C:
DMA_DATA $7E53BE $02C0 $80 $0960
L86C6A5:
DMA_DATA $7E567E $0280 $80 $0AC0
L86C6AE:
DMA_DATA $7E50FE $02C0 $80 $2800
L86C6B7:
DMA_DATA $7E53BE $02C0 $80 $2960
L86C6C0:
DMA_DATA $7E567E $0280 $80 $2AC0
L86C6C9:
DMA_DATA $7F5130 $0020 $B0

L86C6D0:
	lda $7B
	bit #$0001
	beq L86C6E7
	lda #bank100(L86C704)
	sta $01
	lda #L86C704
	sta $00
	jsl L808EAD
	bra L86C6F5

L86C6E7:
	lda #bank100(L86C70D)
	sta $01
	lda #L86C70D
	sta $00
	jsl L808EAD
L86C6F5:
	lda #bank100(L86C716)
	sta $01
	lda #L86C716
	sta $00
	jsl L808EAD
	rts

L86C704
DMA_DATA $7E61FE $0080 $80 $0C00

L86C70D:
DMA_DATA $7E61FE $0080 $80 $2C00

L86C716:
DMA_DATA PALETTES_94D000 $0020 $F0

L86C71D:
	lda #$02C0
	sta $15
	ldy $15
	ldx #$0000
L86C727:
	lda $7E3440,X
	sta $7E3800,X
	inx
	dey
	inx
	dey
	bne L86C727
	rts

L86C736:
	lda #$00FF
	ldx #$3440
	ldy #$02C0
	jsl L808C8E
	rts

L86C744:
	lda #$02C0
	sta $15
	ldy $15
	ldx #$0000
L86C74E:
	lda $7E3800,X
	sta $7E3440,X
	inx
	dey
	inx
	dey
	bne L86C74E
	rts

L86C75D:
	sep #$20
	lda #$7E
	sta $02
	rep #$20
	lda #$3000
	sta $00
	lda $1002
	bit #$0001
	bne L86C78C
	ldx #$1101
	ldy #$1A08
	lda #$1002
	jsr L86B7E4
	ldx #$1109
	ldy #$1A1E
	lda #$1003
	jsr L86B7E4
	bra L86C7A4

L86C78C:
	ldx #$1117
	ldy #$1A1E
	lda #$1002
	jsr L86B7E4
	ldx #$1101
	ldy #$1A16
	lda #$1003
	jsr L86B7E4
L86C7A4:
	rts

L86C7A5:
	lda $1000
	bit #$0004
	beq L86C811
	lda $1003
	bit #$0001
	bne L86C811
	lda $1002
	bit #$0001
	bne L86C7C2
	ldx #$0000
	bra L86C7C5

L86C7C2:
	ldx #$0010
L86C7C5:
	ldy #$0000
L86C7C8:
	lda.l L95DA70,X
	sta $0240,Y
	inx
	inx
	iny
	iny
	cpy #$0010
	bcc L86C7C8
	sep #$20
	stz $0413
	rep #$20
	lda $1002
	bit #$0001
	bne L86C7EC
	ldx #$0000
	bra L86C7EF

L86C7EC:
	ldx #$0030
L86C7EF:
	ldy #$0000
L86C7F2:
	lda.l L95DA90,X
	sta $0210,Y
	inx
	inx
	iny
	iny
	cpy #$0030
	bcc L86C7F2
	sep #$20
	lda #$AA
	sta $0410
	sta $0411
	sta $0412
	rep #$20
L86C811:
	rts

L86C812:
	sta $15
	lda $1003
	bit #$0020
	bne L86C84B
	lda #bank100(L959658)
	sta $01
	lda $15
	asl
	clc
	adc $15
	tax
	lda.l L959658,X
	sta $00
	jsr L86C8DB
	jsr L86C8CB
	sep #$20
	stz $0FA1
	lda $1000
	ora #$20
	sta $1000
	lda $1000
	ora #$04
	sta $1000
	rep #$20
L86C84B:
	rts

L86C84C:
	sta $15
	lda $15
	asl
	clc
	adc $15
	tax
	lda.l DIALOGUES_POINTER_TABLE,X
	sta $00
	lda.l (DIALOGUES_POINTER_TABLE + 1),X
	sta $01
	jsr L86C951
	jsr L86C8CB
	sep #$20
	lda #$01
	sta $0FA1
	lda $1000
	ora #$20
	sta $1000
	lda $1000
	ora #$04
	sta $1000
	rep #$20
	rts

L86C881:
	lda $1000
	bit #$0020
	beq L86C8BA
	lda.l $000F09
	cmp #$00FE
	beq L86C8BB
	and #$00FF
	beq L86C8AB
L86C897:
	jsr L86C8CB
	lda $1003
	bit #$0001
	beq L86C8A9
	sep #$20
	stz $0FA1
	rep #$20
L86C8A9:
	bra L86C8BA

L86C8AB:
	sep #$20
	lda $1000
	and #$DF
	sta $1000
	stz $0FA1
	rep #$20
L86C8BA:
	rts

L86C8BB:
	lda $0127
	and #$0F80
	bne L86C8C5
	bra L86C897

L86C8C5:
	jsl L87B903
	bra L86C897

L86C8CB:
	lda $0127
	pha
	stz $0127
	jsl L87B932
	pla
	sta $0127
	rts

L86C8DB:
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
	lda #$0006
	sta $0F07
	sta $0F09
	stz $0F0B
	stz $0F0E
	stz $0F27
	stz $0F29
	lda #$22FE
	sta $0F12
	lda #$0001
	sta $0F05
	ldx #$0000
	lda #$FFFF
L86C91D:
	sta $7F5BD0,X
	inx
	inx
	cpx #$0100
	bcc L86C91D
	lda #$7E00
	sta $0F21
	lda #$348A
	sta $0F20
	lda #$2400
	sta $0F14
	lda #$3000
	sta $0F23
	lda #$0816
	sta $0F25
	stz $0F2B
	lda #$0814
	sta $1B00
	plp
	rts

L86C951:
	php
	sep #$20
	stz $0F0D
	lda #$01
	sta $0F10
	rep #$20
	lda #$0000
	sta $0F00
	lda $00
	sta $0F02
	lda $01
	sta $0F03
	lda #$0005
	sta $0F07
	sta $0F09
	stz $0F0B
	stz $0F0E
	stz $0F27
	stz $0F29
	lda #$30FE
	sta $0F12
	lda #$0001
	sta $0F05
	ldx #$0000
	lda #$FFFF
L86C995:
	sta $7F5BD0,X
	inx
	inx
	cpx #$0100
	bcc L86C995
	lda #$7E00
	sta $0F21
	lda $1002
	bit #$0001
	bne L86C9B3
	lda #$3494
	bra L86C9B6

L86C9B3:
	lda #$3484
L86C9B6:
	sta $0F20
	lda #$3400
	sta $0F14
	lda #$1000
	sta $0F23
	lda #$0814
	sta $0F25
	stz $0F2B
	lda #$0814
	sta $1B00
	plp
	rts

L86C9D6:
	php
	rep #$20
	lda $1064
	and #$00FF
	cmp #$0091
	beq L86C9E9
	jsr L86C9EE
	bra L86C9EC

L86C9E9:
	jsr L86CA16
L86C9EC:
	plp
	rtl

L86C9EE:
	lda $1067
	and #$00FF
	asl
	tax
	sep #$20
	lda.l L95DAF0,X
	sta $0212
	lda.l (L95DAF0 + 1),X
	sta $0216
	lda $1067
	ina
	cmp #$03
	bcc L86CA10
	lda #$00
L86CA10:
	sta $1067
	rep #$20
	rts

L86CA16:
	lda $1067
	and #$00FF
	asl
	asl
	tax
	sep #$20
	lda.l L95DAF6,X
	sta $0212
	lda.l (L95DAF6 + 1),X
	sta $0216
	lda.l (L95DAF6 + 2),X
	sta $021A
	lda.l (L95DAF6 + 3),X
	sta $021E
	lda $1067
	ina
	cmp #$02
	bcc L86CA47
	lda #$00
L86CA47:
	sta $1067
	rep #$20
	rts

L86CA4D:
	php
	rep #$20
	lda $1069
	cmp #$FFFF
	beq L86CA66
	lda #$01F0
	jsl L80B4E3
	sep #$20
	lda #$10
	sta $1068
L86CA66:
	plp
	rts

L86CA68:
	sep #$20
	lda $1068
	beq L86CA84
	dec $1068
	bne L86CA84
	lda $1002
	ora #$10
	sta $1002
	rep #$20
	lda $1069
	sta $0876
L86CA84:
	rep #$20
	rts

L86CA87:
	sep #$20
	lda #$01
	sta $1003
	rep #$20
	lda #$FFFF
	sta $07C6
	sta $07C8
	bra L86CAA2

L86CA9B:
	sep #$20
	stz $1003
	rep #$20
L86CAA2:
	jsl L808875
	jsr L86F77A
	jsr L86CC27
	jsr L86E203
	lda $1003
	bit #$0001
	bne L86CABC
	jsr L86CAFB
	bra L86CABF

L86CABC:
	jsr L86CB0A
L86CABF:
	sep #$20
	stz $0FA1
	rep #$20
	jsl L808875
	lda #$807F
	jsl L80B4BB
	jsl L8095E1
	sep #$20
	lda #$FF
	eor #$FF
	and $F7
	sta $F7
	rep #$20
	jsr L86F77A
	jsr L86CCDE
	lda $1001
	bit #$0080
	bne L86CAF4
	lda #$0000
	bra L86CAFA

L86CAF4:
	jsr L86D5EE
	lda #$0001
L86CAFA:
	rtl

L86CAFB:
	sep #$20
	stz $1003
	rep #$20
	jsr L869476
	jsl L868E31
	rts

L86CB0A:
	jsl L808B7A
	jsr L86CE5C
	jsl L8087EA
	sep #$20
	stz $07D9
	lda $85
	and #$F0
	ora #$04
	sta $85
	lda #$0F
	sta $105E
	lda $1004
	ora #$01
	sta $1004
	lda $1003
	ora #$01
	sta $1003
	rep #$20
	jsr L869476
	jsr L86F75D
	jsl L8087EA
	lda #$0000
L86CB46:
	pha
	jsr L86CB9D
	jsr L86CBC0
	jsr L86CDC7
	jsr L86CDD1
	jsr L86CF04
	sep #$20
	lda $1050
	ora #$80
	sta $1050
	rep #$20
	lda $1003
	bit #$0008
	beq L86CB6D
	jsr L86CF12
L86CB6D:
	jsl L8087EA
	jsl L868E31
	lda $1001
	bit #$0080
	bne L86CB9B
	sep #$20
	lda #$FF
	eor #$FF
	and $F7
	sta $F7
	rep #$20
	sep #$20
	lda #$20
	sta $1061
	rep #$20
	pla
	ina
	cmp #$0016
	bcc L86CB46
	bra L86CB9C

L86CB9B:
	pla
L86CB9C:
	rts

L86CB9D:
	pha
	sep #$20
	bne L86CBA9
	lda $1003
	ora #$08
	bra L86CBB9

L86CBA9:
	cmp #$15
	bne L86CBB4
	lda $1003
	ora #$10
	bra L86CBB9

L86CBB4:
	lda $1003
	and #$E7
L86CBB9:
	sta $1003
	rep #$20
	pla
	rts

L86CBC0:
	asl
	sta $15
	asl
	clc
	adc $15
	tax
	sep #$20
	lda.l L95958C,X
	sta $075D
	lda.l (L95958C + 1),X
	sta $075F
	lda.l (L95958C + 2),X
	sta $0762
	lda.l (L95958C + 3),X
	sta $0761
	lda.l (L95958C + 4),X
	sta $105F
	lda.l (L95958C + 5),X
	and #$3F
	sta $1060
	lda.l (L95958C + 5),X
	and #$C0
	lsr
	lsr
	lsr
	rep #$20
	and #$00FF
	sta $15
	lda #$4CB2
	sec
	sbc $15
	sta $1062
	sep #$20
	lda #$FF
	sta $075E
	stz $0763
	lda #$00
	sta $078B
	stz $078F
	stz $07B7
	rep #$20
	rts

L86CC27:
	sep #$20
	lda #$80
	sta $7A
	sta $1050
	sta $2100
	stz $1004
	stz $91
	ldx #$0010
	lda #$FF
L86CC3D:
	sta $1070,X
	dex
	bne L86CC3D
	stz $106F
	stz $1070
	lda #$81
	sta $4200
	sta $F2
	stz $1034
	stz $1061
	stz $105E
	stz $106B
	rep #$20
	lda #$4CB2
	sta $1062
	jsl L87AC61
	lda $1003
	bit #$0001
	bne L86CC7F
	lda #$00FF
	ldx #$3000
	ldy #$0800
	jsl L808C8E
	bra L86CC99

L86CC7F:
	lda #$00FF
	ldx #$3000
	ldy #$0400
	jsl L808C8E
	lda #$02FF
	ldx #$3400
	ldy #$0400
	jsl L808C8E
L86CC99:
	jsr L86970B
	jsr L86F265
	jsl L8087EA
	sep #$20
	lda #$00
	sta $4360
	lda #$14
	sta $4361
	lda #lobyte(L868D73)
	sta $4362
	lda #hibyte(L868D73)
	sta $4363
	lda #bankbyte(L868D73)
	sta $4364
	rep #$20
	sep #$20
	lda #$00
	sta $4370
	lda #$14
	sta $4371
	lda #lobyte(L868D73)
	sta $4372
	lda #hibyte(L868D73)
	sta $4373
	lda #bankbyte(L868D73)
	sta $4374
	rep #$20
	rts

L86CCDE:
	sep #$20
	stz $1002
	stz $1003
	stz $07D9
	stz $0C10
	rep #$20
	rts

L86CCEF:
	sep #$20
	lda $1003
	bit #$01
	beq L86CD05
	lda #$5B
	sta $1009
	lda #$CC
	sta $87
	lda #$0C
	sta $99
L86CD05:
	rep #$20
	rts

L86CD08:
	sep #$20
	lda $105E
	and #$3F
	ora #$80
	sta $105E
	inc $0708
	rep #$20
	jsr L86C2B9
	rts

L86CD1D:
	sep #$20
	lda #$4F
	sta $105E
	inc $0708
	rep #$20
	jsr L86C2CC
	rts

L86CD2D:
	pha
	phx
	sep #$20
	lda $105E
	bit #$C0
	beq L86CD6C
	bit #$80
	beq L86CD5E
	and #$3F
	ina
	cmp #$0F
	bcs L86CD47
	bcs L86CD6C
	bra L86CD57

L86CD47:
	lda $1003
	bit #$10
	bne L86CD53
	ora #$02
	sta $1003
L86CD53:
	lda #$0F
	bra L86CD59

L86CD57:
	ora #$80
L86CD59:
	sta $105E
	bra L86CD6C

L86CD5E:
	bit #$40
	beq L86CD6C
	and #$3F
	dea
	beq L86CD69
	ora #$40
L86CD69:
	sta $105E
L86CD6C:
	lda $105E
	asl
	asl
	asl
	eor #$FF
	ina
	sta $91
	ldx #$0000
	lda #$08
	sta $1D28,X
	lda #$FF
	sta $1D29,X
	lda #$00
	sta $1D2A,X
	lda #$70
	sta $1D2B,X
	lda $105E
	asl
	asl
	asl
	clc
	adc #$80
	sta $1D2C,X
	lda #$F7
	sta $1D2D,X
	lda #$08
	sta $1D2E,X
	lda #$FF
	sta $1D2F,X
	lda #$00
	sta $1D30,X
	lda #$01
	sta $1D31,X
	lda #$00
	sta $1D32,X
	lda #$FF
	sta $1D33,X
	lda #$00
	sta $1D34,X
	rep #$20
	plx
	pla
	rts

L86CDC7:
	jsr L86CDCD
	jmp L86CECD

L86CDCD:
	jsr L86CE82
	rts

L86CDD1:
	lda #$2000
	sta $06
	lda $075D
	jsr L86983A
	pha
	jsr L86CEE7
	lda #$000D
	sec
	sbc $19
	and #$FFFE
	clc
	adc #$0084
	tax
	pla
	jsr L86B20D
	sep #$20
	lda #$88
	sta $02
	rep #$20
	lda #$906C
	sta $00
	lda $075D
	and #$00FF
	sta $15
	asl
	asl
	asl
	clc
	adc $15
	tay
	lda #$21C4
	sta $17
	lda [$00],Y
	ldx #$014C
	jsr L86B2E3
	iny
	lda [$00],Y
	ldx #$01CC
	jsr L86B2E3
	iny
	lda [$00],Y
	ldx #$024C
	jsr L86B2E3
	iny
	lda [$00],Y
	ldx #$02CC
	jsr L86B2E3
	iny
	lda [$00],Y
	ldx #$015A
	jsr L86B2E3
	iny
	lda [$00],Y
	ldx #$01DA
	jsr L86B2E3
	iny
	lda [$00],Y
	ldx #$02DA
	jsr L86B2E3
	iny
	iny
	lda [$00],Y
	ldx #$025A
	jsr L86B2E3
	rts

L86CE5C:
	lda #bank100(LCAA242)
	sta $72
	lda #LCAA242
	sta $71
	jsr L86F7E7
	lda #$01A4
	sta $15
	ldy $15
	ldx #$0000
L86CE73:
	lda.l DecompressionLocation,X
	sta $7E3800,X
	inx
	dey
	inx
	dey
	bne L86CE73
	rts

L86CE82:
	lda #$7E00
	sta $01
	lda #$3800
	sta $00
	ldx #$0042
	ldy #$0000
	lda #$000E
L86CE95:
	pha
	lda #$000F
L86CE99:
	pha
	lda [$00],Y
	sta $7E3000,X
	inx
	inx
	iny
	iny
	pla
	dea
	bne L86CE99
	txa
	clc
	adc #$0022
	tax
	pla
	dea
	bne L86CE95
	rts

L86CEB3:
	ldx #$0101
	ldy #$0E0F
	lda #$3000
	sta $00
	sep #$20
	lda #$7E
	sta $02
	rep #$20
	lda #$3000
	jsr L86B7E4
	rts

L86CECD:
	ldx #$1103
	ldy #$1A1C
	lda #$3000
	sta $00
	sep #$20
	lda #$7E
	sta $02
	rep #$20
	lda #$2004
	jsr L86B7E4
	rts

L86CEE7:
	asl
	tay
	lda $01
	sta $04
	lda [$00],Y
	sta $03
	ldy #$0000
	stz $19
L86CEF6:
	lda [$03],Y
	cmp #$FFFF
	beq L86CF03
	inc $19
	iny
	iny
	bra L86CEF6

L86CF03:
	rts

L86CF04:
	lda #$0000
	ldx #$2000
	ldy #$0400
	jsl L808C8E
	rts

L86CF12:
	lda #bank100(L86CF21)
	sta $01
	lda #L86CF21
	sta $00
	jsl L808EAD
	rts

L86CF21:
DMA_DATA $7E3040 $0380 $80 $1C20

L86CF2A:
	sep #$20
	lda $1061
	beq L86CF54
	dea
	sta $1061
	cmp #$10
	bne L86CF40
	rep #$20
	jsr L86CF12
	bra L86CF54

L86CF40:
	bit #$F010
	ora $49,S
	sbc $0F291A,X
	asl
	asl
	asl
	asl
	ora #$8504
	adc $21068D,X
L86CF54:
	rep #$20
	rts

L86CF57:
	lda $1003
	bit #$0001
	beq L86CFAB
	lda $1003
	bit #$0020
	bne L86CFAB
	lda $0125
	bit #$1000
	beq L86CF86
	sep #$20
	lda $1001
	ora #$80
	sta $1001
	lda $1004
	ora #$08
	sta $1004
	rep #$20
	sec
	bra L86CFAC

L86CF86:
	lda $0125
	bit #$0080
	beq L86CFAB
	sep #$20
	lda $1003
	ora #$20
	sta $1003
	lda $1037
	beq L86CFA0
	stz $1037
L86CFA0:
	stz $1037
	rep #$20
	stz $0F09
	jsr L86CD08
L86CFAB:
	clc
L86CFAC:
	rts

L86CFAD:
	lda $1003
	bit #$0002
	beq L86CFD0
	lda $0125
	bit #$1000
	beq L86CFD0
	sep #$20
	lda $1001
	ora #$80
	sta $1001
	lda #$80
	sta $7A
	rep #$20
	sec
	bra L86CFD1

L86CFD0:
	clc
L86CFD1:
	rts

L86CFD2:
	sep #$20
	lda $1002
	and #$BF
	sta $1002
	rep #$20
	lda $109D
	cmp #$0000
	beq L86D04E
	sep #$20
	lda $10A3
	beq L86CFF2
	dec $10A3
	bra L86D04E

L86CFF2:
	lda $1002
	ora #$40
	sta $1002
	rep #$20
	lda $109D
	sta $00
	lda $109E
	sta $01
	ldy #$0000
	sep #$20
	lda [$00],Y
	cmp #$00
	bne L86D036
	rep #$20
	lda #$0000
	sta $109D
	jsr L86D1D3
	sep #$20
	lda #$11
	sta $85
	lda $A1
	and #$FB
	sta $A1
	lda $A0
	and #$FB
	sta $A0
	stz $93
	stz $91
	rep #$20
	bra L86D04E

L86D036:
	sta $10A3
	iny
	rep #$20
	lda $109D
	clc
	adc #$0002
	sta $109D
	jsr L86D1D3
	lda [$00],Y
	jsr L86D101
L86D04E:
	rep #$20
	rts

L86D051:
	phx
	and #$000F
	asl
	tax
	sep #$20
	lda.l L959DEB,X
	sta $15
	lda.l (L959DEB + 1),X
	sta $16
	lda $075E
	cmp #$2A
	beq L86D07A
	lda.w $005D
	bit #$80
	bne L86D07A
	lda $15
	eor #$FF
	ina
	sta $15
L86D07A:
	lda #$00
	sec
	sbc $15
	sta $91
	lda #$00
	sec
	sbc $16
	sta $93
	rep #$20
	plx
	rtl

L86D08C:
	bit #$0010
	beq L86D094
	jmp L86D051

L86D094:
	phx
	pha
	sep #$20
	and #$0F
	cmp #$08
	bcs L86D0C3
	lda $A0
	ora #$04
	sta $A0
	lda.w $005D
	bit #$80
	bne L86D0B7
	lda $1002
	and #$7F
	sta $1002
	lda #$02
	bra L86D0D5

L86D0B7:
	lda $1002
	ora #$80
	sta $1002
	lda #$04
	bra L86D0D5

L86D0C3:
	lda $A0
	and #$FB
	sta $A0
	lda #$61
	sta $A5
	lda $A1
	ora #$04
	sta $A1
	lda #$03
L86D0D5:
	sta $85
	rep #$20
	pla
	and #$000F
	sta $15
	asl
	adc $15
	tax
	lda.l L959E03,X
	sta $109D
	lda.l (L959E03 + 1),X
	sta $109E
	lda.l L959E21,X
	sta $10A0
	lda.l (L959E21 + 1),X
	sta $10A1
	plx
	rtl

L86D101:
	phb
	and #$00FF
	asl
	tay
	lda $10A0
	sta $00
	lda $10A1
	sta $01
	lda [$00],Y
	sta $00
	sep #$20
	lda $02
	pha
	plb
	rep #$20
	lda $10A0
	cmp #$C4AE
	beq L86D12A
	cmp #$CD18
	bne L86D12D
L86D12A:
	jmp L86D1A2

L86D12D:
	lda $1002
	bit #$0080
	bne L86D166
	ldy #$0000
	lda ($00),Y
	and #$00FF
	sta $19
	iny
L86D140:
	lda $19
	beq L86D164
	lda ($00),Y
	and #$FF00
	lsr
	lsr
	sta $17
	lda ($00),Y
	and #$00FF
	iny
	iny
	asl
	adc $17
	tax
	lda ($00),Y
	sta $7E3108,X
	iny
	iny
	dec $19
	bra L86D140

L86D164:
	plb
	rts

L86D166:
	ldy #$0000
	lda ($00),Y
	and #$00FF
	sta $19
	iny
L86D171:
	lda $19
	beq L86D1A0
	lda ($00),Y
	and #$FF00
	lsr
	lsr
	sta $17
	lda ($00),Y
	and #$00FF
	sta $15
	iny
	iny
	lda #$001C
	sec
	sbc $15
	asl
	adc $17
	tax
	lda ($00),Y
	eor #$4400
	sta $7E30FE,X
	iny
	iny
	dec $19
	bra L86D171

L86D1A0:
	plb
	rts

L86D1A2:
	ldy #$0000
	lda ($00),Y
	and #$00FF
	sta $19
	iny
L86D1AD:
	lda $19
	beq L86D1D1
	lda ($00),Y
	and #$FF00
	lsr
	lsr
	sta $17
	lda ($00),Y
	and #$00FF
	iny
	iny
	asl
	adc $17
	tax
	lda ($00),Y
	sta $7E318C,X
	iny
	iny
	dec $19
	bra L86D1AD

L86D1D1:
	plb
	rts

L86D1D3:
	phb
	sep #$20
	lda #$7E
	pha
	plb
	rep #$20
	lda $10A0
	cmp #$C4AE
	beq L86D1E9
	cmp #$CD18
	bne L86D1F8
L86D1E9:
	lda #$0100
	ldx #$0200
L86D1EF:
	sta $317E,X
	dex
	dex
	bne L86D1EF
	plb
	rts

L86D1F8:
	lda #$0100
	ldx #$02C0
L86D1FE:
	sta $30FE,X
	dex
	dex
	bne L86D1FE
	plb
	rts

L86D207:
	lda #$9D51
	jmp L86D2BE

L86D20D:
	lda #$9D79
	jmp L86D2BE

L86D213:
	lda $1004
	and #$FFFD
	sta $1004
	ldy #$0000
	lda #$0002
	sta $27
L86D224:
	lda $1081,Y
	cmp #$FFFF
	bne L86D22F
	jmp L86D2B0

L86D22F:
	lda $1085,Y
	and #$00FF
	beq L86D241
	sep #$20
	dea
	sta $1085,Y
	rep #$20
	bra L86D2B0

L86D241:
	lda $1081,Y
	tax
	lda.l L959D51,X
	and #$00FF
	cmp #$00FF
	bne L86D259
	lda #$FFFF
	sta $1081,Y
	bra L86D2B0

L86D259:
	cmp #$00FE
	bne L86D266
	lda $1083,Y
	sta $1081,Y
	bra L86D241

L86D266:
	sep #$20
	sta $1085,Y
	lda $1004
	ora #$02
	sta $1004
	rep #$20
	lda $1089,Y
	sta $03
	lda $108B,Y
	sta $15
	lda $108D,Y
	sta $17
	phy
	lda $1086,Y
	sta $06
	lda $1087,Y
	sta $07
	lda.l (L959D51 + 1),X
	and #$00FF
	sta $19
	asl
	clc
	adc $19
	tay
	lda [$06],Y
	sta $00
	iny
	lda [$06],Y
	sta $01
	ply
	inx
	inx
	txa
	sta $1081,Y
	jsr L86D33F
L86D2B0:
	tya
	clc
	adc #$000E
	tay
	dec $27
	beq L86D2BD
	jmp L86D224

L86D2BD:
	rts

L86D2BE:
	pha
	lda #$0002
	sta $15
	ldy #$0000
L86D2C7:
	lda $1081,Y
	cmp #$FFFF
	beq L86D2DC
	tya
	clc
	adc #$000E
	tay
	dec $15
	bne L86D2C7
	pla
	bra L86D31C

L86D2DC:
	pla
	sec
	sbc #$9D51
	tax
	sta $1081,Y
	lda.l L959D51,X
	sta $1086,Y
	lda.l (L959D51 + 1),X
	sta $1087,Y
	lda.l (L959D51 + 3),X
	sta $1089,Y
	lda.l (L959D51 + 5),X
	sta $108B,Y
	lda.l (L959D51 + 7),X
	sta $108D,Y
	txa
	clc
	adc #$0009
	sta $1081,Y
	sta $1083,Y
	sep #$20
	lda #$00
	sta $1085,Y
	rep #$20
L86D31C:
	rts

L86D31D:
	lda #$0002
	sta $15
	ldy #$0000
L86D325:
	lda #$FFFF
	sta $1081,Y
	sep #$20
	lda #$00
	sta $1085,Y
	rep #$20
	tya
	clc
	adc #$000E
	tay
	dec $15
	bne L86D325
	rts

L86D33F:
	pha
	phx
	phy
	lda $15
	and #$FF00
	lsr
	lsr
	sta $19
	lda $15
	and #$00FF
	asl
	clc
	adc $19
	clc
	adc $03
	tax
	sep #$20
	lda #$20
	sec
	sbc $17
	asl
	rep #$20
	and #$00FF
	sta $19
	ldy #$0000
	lda $18
	and #$00FF
	sta $1B
L86D371:
	lda $17
	and #$00FF
	sta $1D
L86D378:
	lda [$00],Y
	sta $7E2000,X
	iny
	iny
	inx
	inx
	dec $1D
	bne L86D378
	txa
	clc
	adc $19
	tax
	dec $1B
	bne L86D371
	ply
	plx
	pla
	rts

L86D393:
	sep #$20
	lda $106F
	beq L86D3BF
	lda $1070
	beq L86D3A4
	dec $1070
	bra L86D3BF

L86D3A4:
	dec $106F
	lda #$0F
	sec
	sbc $106F
	rep #$20
	and #$00FF
	tax
	sep #$20
	lda #$00
	sta $1071,X
	lda #$18
	sta $1070
L86D3BF:
	rep #$20
	lda #$7E00
	sta $01
	lda #$40FE
	sta $00
	lda #$0000
L86D3CE:
	pha
	tax
	lda $1071,X
	and #$00FF
	cmp #$0040
	bcs L86D400
	inc $1071,X
	tax
	lda.l L959D9B,X
	and #$00FF
	sta $15
	and #$0038
	lsr
	lsr
	tay
	lda $15
	and #$0007
	tax
	sep #$20
	lda.l L959DDB,X
	ora [$00],Y
	sta [$00],Y
	rep #$20
L86D400:
	lda $00
	clc
	adc #$0010
	sta $00
	pla
	ina
	cmp #$0010
	bcc L86D3CE
	jsr L86D42F
	rep #$20
	rts
L86D415:
	sep #$20
	lda #$81
	sta $A5
	lda $A0
	and #$FB
	sta $A0
	lda $A1
	ora #$04
	sta $A1
	lda #$10
	sta $106F
	rep #$20
	rts

L86D42F:
	lda #bank100(L86D43E)
	sta $01
	lda #L86D43E
	sta $00
	jsl L808EAD
	rts

L86D43E:
DMA_DATA DecompressionLocation $0100 $80 $7000

L86E548:
.db $A5
.db $A0 $29 $F9 $00 $85 $A0 $A9 $07
.db $00 $85 $85 $A9 $00 $38 $A2 $00
.db $00 $A0 $20 $00 $9F $00 $30 $7E
.db $E8 $E8 $88 $D0 $F7 $1A $E0 $00
.db $04 $90 $EE $A9 $00 $86 $85 $01
.db $A9 $7A $D4 $85 $00 $22 $AD $8E
.db $80 $60 $01 $E3 $9D $95 $08 $00
.db $18 $A9 $00 $00 $A2 $FE $40 $A0
.db $00 $01 $22 $7B $8C $80 $4C $2F
.db $D4 $E2 $20 $A9 $10 $85 $A0 $AD
.db $02 $10 $29 $DF $8D $02 $10 $A9
.db $01 $85 $85 $C2 $20 $60

L86D4A6:
	lda $1003
	bit #$0001
	beq L86D4B1
	jmp L86D5ED

L86D4B1:
	php
	sei
	lda $07BE
	and #$00FF
	cmp #$0004
	bne L86D4C1
	jmp L86D5EC

L86D4C1:
	lda $07C6
	cmp #$FFFF
	beq L86D4D8
	jsl L87B38B
	lda $1065
	cmp #$FFFF
	beq L86D4D8
	jmp L86D5E9

L86D4D8:
	lda $1002
	bit #$0008
	beq L86D4E6
	lda #$803C
	jmp L86D5E9

L86D4E6:
	lda $1001
	bit #$0004
	beq L86D4F4
	lda #$8017
	jmp L86D5E9

L86D4F4:
	bit #$0010
	beq L86D50C
	lda $075F
	and #$00FF
	sec
	sbc #$0040
	asl
	tax
	lda.l L95DB96,X
	jmp L86D5E9

L86D50C:
	lda $075F
	and #$00FF
	cmp #$0036
	bne L86D52A
	lda $07B9
	bit #$0010
	bne L86D524
	lda $07BE
	bne L86D52A
L86D524:
	lda #$8054
	jmp L86D5E9

L86D52A:
	lda $0760
	and #$00FF
	cmp #$0037
	bne L86D53B
	lda #$8053
	jmp L86D5E9

L86D53B:
	lda $1001
	bit #$0020
	beq L86D54B
	lda $07B7
	bit #$0010
	beq L86D568
L86D54B:
	lda $0764
	and #$00FF
	tax
	lda.l L95DAFE,X
	and #$00FF
	sta $15
	lda $07DF
	and #$00FF
	cmp #$0015
	bcs L86D59F
	bra L86D575

L86D568:
	lda $07DF
	and #$00FF
	cmp #$0015
	bcs L86D5A9
	bra L86D585

L86D575:
	lda $15
	and #$00F0
	cmp #$00F0
	beq L86D585
	lsr
	lsr
	lsr
	lsr
	bra L86D5E3

L86D585:
	lda $078F
	bit #$0008
	bne L86D59A
	lda $07B7
	and #$0010
	beq L86D59A
	lda #$8011
	bra L86D5E9

L86D59A:
	lda #$8010
	bra L86D5E9

L86D59F:
	lda $15
	and #$000F
	cmp #$000F
	bne L86D5E3
L86D5A9:
	lda $075D
	and #$00FF
	cmp #$0015
	bne L86D5C9
	lda $078F
	bit #$0008
	bne L86D5C4
	lda $07B7
	bit #$0010
	bne L86D5C9
L86D5C4:
	lda #$803D
	bra L86D5E9

L86D5C9:
	lda $078F
	bit #$0008
	bne L86D5DE
	lda $07B7
	and #$0010
	beq L86D5DE
	lda #$8038
	bra L86D5E9

L86D5DE:
	lda #$8037
	bra L86D5E9

L86D5E3:
	asl
	tax
	lda.l L95DB8C,X
L86D5E9:
	sta $0876
L86D5EC:
	plp
L86D5ED:
	rts

L86D5EE:
	lda #$002D
	jsl L80B467
	rts

L86D5F6:
	lda #$80BD
	sta $0876
	rts

L86D5FD:
	lda #$DC7E
	sta $104D
	rts

L86D604:
	lda #$80B2
	sta $0876
	rts

L86D60B:
	lda #$DC76
	sta $104D
	rts

L86D612:
	lda #$80B2
	sta $0876
	rts

L86D619:
	pha
	lda $07BE
	and #$00FF
	cmp #$0004
	bne L86D62B
	pla
	lda #$FFFF
	bra L86D630

L86D62B:
	pla
	jsl L87B38B
L86D630:
	sta $1065
	rts

L86D634:
	cmp #$80BF
	bne L86D63E
	lda #$80BF
	bra L86D65F

L86D63E:
	cmp #$80C0
	bne L86D648
	lda #$80C0
	bra L86D65F

L86D648:
	cmp #$80BF
	bne L86D652
	lda #$80BF
	bra L86D65F

L86D652:
	cmp #$80BF
	bne L86D65C
	lda #$80BF
	bra L86D65F

L86D65C:
	lda #$FFFF
L86D65F:
	rts

L86D660:
	lda #$00B7
	pha
	sep #$20
	lda $103C
	bne L86D670
	lda $07B7
	bra L86D67C

L86D670:
	cmp #$01
	bne L86D679
	lda $07B9
	bra L86D67C

L86D679:
	lda $07BB
L86D67C:
	bit #$10
	beq L86D684
	lda #$00
	bra L86D686

L86D684:
.INDEX 16
	lda #$80
L86D686:
	sta.w $005D
	rep #$20
	ldx #$0000
	pla
	jsr L86FC46
	rts

L86D693:
	lda #$00E0
	jsl L80B530
	rts

L86D69B:
	sep #$20
	lda $103C
	bne L86D6A7
	lda $07B7
	bra L86D6B3

L86D6A7:
	cmp #$01
	bne L86D6B0
	lda $07B9
	bra L86D6B3

L86D6B0:
	lda $07BB
L86D6B3:
	bit #$08
	beq L86D6CE
	bit #$10
	beq L86D6C0
	lda $078F
	bra L86D6C3

L86D6C0:
	lda $0790
L86D6C3:
	bit #$01
	beq L86D6CE
	rep #$20
	lda #$00B6
	bra L86D6E5

L86D6CE:
	rep #$20
	lda $104C
	and #$00FF
	cmp #$00FF
	beq L86D758
	and #$007F
	phx
	tax
	lda.l L86F996,X
	plx
L86D6E5:
	pha
	sep #$20
	lda $103C
	bne L86D6F2
	lda $07B7
	bra L86D6FE

L86D6F2:
	cmp #$01
	bne L86D6FB
	lda $07B9
	bra L86D6FE

L86D6FB:
	lda $07BB
L86D6FE:
	bit #$10
	beq L86D706
	lda #$00
	bra L86D708

L86D706:
	lda #$80
L86D708:
	sta.w $005D
	rep #$20
	ldx #$0000
	pla
	jsr L86FC46
	sep #$20
	lda $103C
	bne L86D720
	lda $07B7
	bra L86D72C

L86D720:
	cmp #$01
	bne L86D729
	lda $07B9
	bra L86D72C

L86D729:
	lda $07BB
L86D72C:
	bit #$10
	bne L86D73C
	pha
	lda $078F
	bit #$10
	beq L86D73B
	pla
	bra L86D748

L86D73B:
	pla
L86D73C:
	bit #$02
	beq L86D758
	bit #$10
	beq L86D748
	lda #$00
	bra L86D74A

L86D748:
	lda #$80
L86D74A:
	sta.w $005D
	rep #$20
	ldx #$0000
	lda #$0039
	jsr L86FC1B
L86D758:
	rep #$20
	rts

L86D75B:
	ldx $102E
	beq L86D7A3
	lda.l L95D9B5,X
	cmp #$FFFF
	bne L86D776
	stz $102E
	sep #$20
	lda #$E0
	sta $A6
	rep #$20
	bra L86D7A3

L86D776:
	inx
	inx
	stx $102E
	sta $00
	sep #$20
	and #$1F
	ora #$20
	sta $2132
	rep #$20
	lda $00
	lsr
	lsr
	sta $00
	sep #$20
	xba
	and #$1F
	ora #$80
	sta $2132
	lda $00
	lsr
	lsr
	lsr
	ora #$40
	sta $A6
	rep #$20
L86D7A3:
	rts

L86D7A4:
	sep #$20
	lda $1003
	bit #$01
	bne L86D7B4
	lda $1005
	bit #$01
	bne L86D807
L86D7B4:
	lda $1034
	beq L86D807
	bmi L86D7D4
	dea
	sta $15
	lda $1050
	and #$80
	ora $15
	sta $1050
	dec $1034
	lda $1003
	bit #$10
	beq L86D807
	bra L86D7F8

L86D7D4:
	and #$7F
	sta $15
	lda $1050
	and #$80
	ora $15
	sta $1050
	inc $1034
	lda $1034
	and #$7F
	cmp #$10
	bcc L86D7F1
	stz $1034
L86D7F1:
	lda $1003
	bit #$08
	beq L86D807
L86D7F8:
	lda $1050
	and #$0F
	sta $15
	lda $7A
	and #$F0
	ora $15
	sta $7A
L86D807:
	rep #$20
	rts

L86D80A:
	sep #$20
	lda $04B2
	bit #$7F
	beq L86D81D
	bit #$80
	bne L86D81A
	jmp L86D82A

L86D81A:
	jmp L86D86C

L86D81D:
	rep #$20
	rts

L86D820:
	sep #$20
	lda #$0F
	sta $04B2
	rep #$20
	rts

L86D82A:
	sep #$20
	lda $1003
	bit #$01
	beq L86D846
	stz $04B2
	bit #$08
	beq L86D83F
	sta $04B2
	bra L86D85F

L86D83F:
	rep #$20
	jsr L86E35C
	bra L86D85F

L86D846:
	lda $7A
	and #$85F0
	ora $A5,X
	ply
	and #$C90F
	ora $1A01B0
	sta $1050
	ora $15
	sta $7A
	dec $04B2
L86D85F:
	rep #$20
	rts

L86D862:
	sep #$20
	lda #$8F
	sta $04B2
	rep #$20
	rts

L86D86C:
	sep #$20
	lda $1003
	bit #$01
	beq L86D881
	lda #$80
	sta $04B2
	rep #$20
	jsr L86E34E
	bra L86D898

L86D881:
	lda $7A
	and #$85F0
	ora $A5,X
	ply
	and #$F00F
	ora ($3A,X)
	sta $1050
	ora $15
	sta $7A
	dec $04B2
L86D898:
	rep #$20
	rts

L86D89B:
	sep #$20
	lda $1030
	beq L86D8B4
	dec $1030
	lda $1032
	rep #$20
	and #$00FF
	asl
	tax
	jsr (L868D50,X)
	sep #$20
L86D8B4:
	lda $1031
	beq L86D8C9
	dec $1031
	lda $1033
	rep #$20
	and #$00FF
	asl
	tax
	jsr (L868D54,X)
L86D8C9:
	rep #$20
	rts

L86D8CC:
	rep #$20
	lda $1030
	and #$00FF
	cmp #$0010
	bcc L86D8E6
	sbc #$0010
	tax
	sep #$20
	lda.l L95D893,X
	sta $1040
L86D8E6:
	sep #$20
	lda #$7E
	sta $02
	lda $1030
	sta $4202
	lda #$60
	sta $4203
	rep #$20
	lda #$62FE
	clc
	adc $4216
	sta $00
	sep #$20
	lda #$01
	sta $1D82
	lda $02
	sta $1D85
	rep #$20
	lda $00
	sta $1D83
	lda #$0060
	sta $1D86
	sep #$20
	lda #$80
	sta $1D88
	rep #$20
	lda #$0000
	sta $01
	lda #$1D82
	sta $00
	sep #$20
	jsl L808EAD
	rts

L86D935:
	rep #$20
	lda $1031
	and #$00FF
	cmp #$0010
	bcc L86D96F
	sbc #$0010
	tax
	lda $102A
	and #$00FF
	bne L86D966
	lda $075E
	and #$00FF
	cmp #$002A
	bne L86D966
	lda.l L95D8A3,X
	and #$00FF
	asl
	asl
	sta $89
	bra L86D96F

L86D966:
	sep #$20
	lda.l L95D8A3,X
	sta $1041
L86D96F:
	sep #$20
	lda #$7E
	sta $02
	lda $1031
	sta $4202
	lda #$60
	sta $4203
	rep #$20
	lda $075E
	and #$00FF
	cmp #$002A
	bne L86D9B8
	lda #$6F1E
	clc
	adc $4216
	sta $00
	sep #$20
	lda #$01
	sta $1D8B
	lda $02
	sta $1D8E
	rep #$20
	lda $00
	sta $1D8C
	lda #$0040
	sta $1D8F
	sep #$20
	lda #$30
	sta $1D91
	bra L86D9E3

L86D9B8:
	rep #$20
	lda #$6EFE
	clc
	adc $4216
	sta $00
	sep #$20
	lda #$01
	sta $1D8B
	lda $02
	sta $1D8E
	rep #$20
	lda $00
	sta $1D8C
	lda #$0060
	sta $1D8F
	sep #$20
	lda #$C0
	sta $1D91
L86D9E3:
	rep #$20
	lda #$0000
	sta $01
	lda #$1D8B
	sta $00
	sep #$20
	jsl L808EAD
	rts

L86D9F6:
.ACCU 16
	lda $075F
	and #$00FF
	cmp #$004E
	bne L86DA04
	jmp L86DBD7

L86DA04:
	sep #$20
	lda #$80
	sta $2121
	rep #$20
	sep #$20
	lda #$82
	sta $4300
	lda #$3B
	sta $4301
	lda #$FE
	sta $4302
	lda #$40
	sta $4303
	lda #$7E
	sta $4304
	lda #$60
	sta $4305
	lda #$00
	sta $4306
	rep #$20
	sep #$20
	lda #$01
	sta $420B
	rep #$20
	ldx #$62FE
	ldy #$40FE
	jsr L86DAD8
	lda $075E
	and #$00FF
	cmp #$002A
	bne L86DA95
	sep #$20
	lda #$20
	sta $2121
	rep #$20
	sep #$20
	lda #$82
	sta $4300
	lda #$3B
	sta $4301
	lda #$FE
	sta $4302
	lda #$40
	sta $4303
	lda #$7E
	sta $4304
	lda #$60
	sta $4305
	lda #$00
	sta $4306
	rep #$20
	sep #$20
	lda #$01
	sta $420B
	rep #$20
	ldx #$6EFE
	ldy #$40FE
	jsr L86DAD8
	bra L86DAD7

L86DA95:
	sep #$20
	lda #$C0
	sta $2121
	rep #$20
	sep #$20
	lda #$82
	sta $4300
	lda #$3B
	sta $4301
	lda #$FE
	sta $4302
	lda #$40
	sta $4303
	lda #$7E
	sta $4304
	lda #$60
	sta $4305
	lda #$00
	sta $4306
	rep #$20
	sep #$20
	lda #$01
	sta $420B
	rep #$20
	ldx #$6EFE
	ldy #$40FE
	jsr L86DAD8
L86DAD7:
	rts

L86DAD8:
	phb
	sep #$20
	lda #$7E
	pha
	plb
	rep #$20
	lda #$0000
L86DAE4:
	sta $1D
	sta $17
	xba
	pha
	asl
	asl
	sta $1B
	pla
	lsr
	lsr
	lsr
	sta $19
	lda #$0000
L86DAF7:
	sta $1F
	lda $0000,Y
	sep #$20
	and #$1F
	clc
	adc $17
	cmp #$1F
	bcc L86DB09
	lda #$1F
L86DB09:
	sta $15
	xba
	and #$7C
	clc
	adc $1C
	cmp #$7C
	bcc L86DB17
	lda #$7C
L86DB17:
	sta $16
	rep #$20
	lda $0000,Y
	and #$03E0
	clc
	adc $19
	cmp #$03E0
	bcc L86DB2C
	lda #$03E0
L86DB2C:
	ora $15
	sta.w $0000,X
	iny
	iny
	inx
	inx
	lda $1F
	ina
	cmp #$0030
	bcc L86DAF7
	tya
	sec
	sbc #$0060
	tay
	lda $1D
	ina
	cmp #$0020
	bcc L86DAE4
	plb
	rts

L86DB4D:
	sep #$20
	lda #$00
	sta $1032
	lda #$20
	sta $1030
	rep #$20
	rts

L86DB5C:
	sep #$20
	lda #$00
	sta $1033
	lda #$20
	sta $1031
	rep #$20
	rts

L86DB6B:
	rep #$20
	lda $1030
	and #$00FF
	cmp #$0010
	bcc L86DB85
	sbc #$0010
	tax
	sep #$20
	lda.l L95D893,X
	sta $1040
L86DB85:
	rts

L86DB86:
	rep #$20
	lda $1031
	and #$00FF
	cmp #$0010
	bcc L86DBB8
	sbc #$0010
	tax
	lda $075E
	and #$00FF
	cmp #$002A
	bne L86DBAF
	lda.l L95D8A3,X
	and #$00FF
	asl
	asl
	sta $89
	bra L86DBB8

L86DBAF:
	sep #$20
	lda.l L95D8A3,X
	sta $1041
L86DBB8:
	rts

L86DBB9:
	sep #$20
	lda #$01
	sta $1032
	lda #$20
	sta $1030
	rep #$20
	rts

L86DBC8:
	sep #$20
	lda #$01
	sta $1033
	lda #$20
	sta $1031
	rep #$20
	rts

L86DBD7:
	sep #$20
	lda #$20
	sta $2121
	lda #$82
	sta $4300
	lda #$3B
	sta $4301
	lda #$FE
	sta $4302
	lda #$40
	sta $4303
	lda #$7E
	sta $4304
	lda #$C0
	sta $4305
	lda #$00
	sta $4306
	lda #$01
	sta $420B
	rep #$20
	ldx #$0000
L86DC0B:
	lda.l DecompressionLocation,X
	sta $15
	and #$001F
	sta $17
	lda $15
	asl
	asl
	asl
	xba
	and #$001F
	sta $19
	lda $15
	lsr
	lsr
	xba
	and #$001F
	cmp $19
	bcs L86DC2F
	lda $19
L86DC2F:
	cmp $17
	bcs L86DC35
	lda $17
L86DC35:
	sta $15
	lda #$0020
	sec
	sbc $15
	lsr
	lsr
	clc
	adc $15
	sta $15
	asl
	asl
	asl
	asl
	asl
	ora $15
	asl
	asl
	asl
	asl
	asl
	ora $15
	sta $7E6EFE,X
	inx
	inx
	cpx #$00C0
	bcc L86DC0B
	rts

L86DC5E:
	lda $1003
	bit #$0001
	beq L86DC6E
	bit #$0002
	bne L86DCBC
	jmp L86CD2D

L86DC6E:
	sep #$20
	lda $1009
	cmp #$5A
	bcs L86DCBC
	bit #$01
	bne L86DCA0
	ldx #$0000
	ldy #$0000
L86DC81:
	lda.l L95D9E5,X
	clc
	adc $1D28,Y
	bcc L86DC8D
	lda #$FF
L86DC8D:
	sta $1D28,Y
	iny
	inx
	rep #$20
	txa
	and #$0007
	tax
	sep #$20
	cpy #$0008
	bcc L86DC81
L86DCA0:
	ldx #$0000
L86DCA3:
	lda $1D28,X
	eor #$FF
	sta $1D28,X
	inx
	cpx #$0008
	bcc L86DCA3
	inc $1009
	lda $100C
	eor #$44
	sta $100C
L86DCBC:
	rep #$20
	rts

L86DCBF:
	lda $1003
	bit #$0001
	bne L86DCCF
	lda $1002
	bit #$0020
	beq L86DCD2
L86DCCF:
	jmp L86DD82

L86DCD2:
	sep #$20
	lda $1009
	cmp #$5A
	beq L86DCE0
	bcs L86DCF3
	jmp L86DD82

L86DCE0:
	inc $1009
	lda #$88
	sta $87
	lda $100C
	and #$33
	sta $100C
	lda #$08
	sta $99
L86DCF3:
	ldx #$0000
	lda $8F
	bmi L86DCFE
	lda #$00
	bra L86DD13

L86DCFE:
	eor #$FF
	ina
	pha
	sta $1D28,X
	inx
	lda #$00
	sta $1D28,X
	inx
	lda #$FF
	sta $1D28,X
	inx
	pla
L86DD13:
	sta $15
	lda #$7F
	sec
	sbc $15
	sta $1D28,X
	inx
	lda $102C
	bne L86DD30
	lda $075E
	cmp #$2A
	bne L86DD49
	lda $89
	beq L86DD49
	lsr
	lsr
L86DD30:
	eor #$FF
	bmi L86DD3E
	sta $1D29,X
	lda #$00
	sta $1D28,X
	bra L86DD53

L86DD3E:
	ina
	sta $1D28,X
	lda #$FF
	sta $1D29,X
	bra L86DD53

L86DD49:
	lda #$FF
	sta $1D28,X
	lda #$00
	sta $1D29,X
L86DD53:
	inx
	inx
	lda $8F
	bmi L86DD6B
	beq L86DD6B
	sta $1D28,X
	inx
	lda #$00
	sta $1D28,X
	inx
	lda #$FF
	sta $1D28,X
	inx
L86DD6B:
	lda #$01
	sta $1D28,X
	inx
	lda #$FF
	sta $1D28,X
	inx
	lda #$00
	sta $1D28,X
	inx
	lda #$00
	sta $1D28,X
L86DD82:
	rep #$20
	rts

L86DD85:
	sep #$30
	lda $075E
	cmp #$2A
	bne L86DDAA
	rep #$20
	lda $8D
	clc
	adc $1028
	sta $8D
	lda #$D733
	sta $1024
	clc
	adc #$0020
	sta $1026
	sep #$20
	jmp L86DF30

L86DDAA:
	lda $0761
	cmp #$A3
	bne L86DDCF
	rep #$20
	lda $89
	dea
	sta $89
	lda $8D
	ina
	sta $8D
	lda #$0010
	clc
	adc #$D733
	sta $1024
	sta $1026
	sep #$20
	jmp L86DF30

L86DDCF:
	cmp #$A2
	bne L86DE00
	rep #$20
	lda $1023
	and #$0001
	bne L86DDE2
	lda $89
	ina
	sta $89
L86DDE2:
	lda $8D
	ina
	sta $8D
	lda #$0040
	clc
	adc #$D733
	sta $1024
	lda #$0010
	clc
	adc #$D733
	sta $1026
	sep #$20
	jmp L86DF30

L86DE00:
	cmp #$23
	bne L86DE24
	rep #$20
	lda $8D
	dea
	sta $8D
	lda #$0040
	clc
	adc #$D733
	sta $1024
	lda #$0010
	clc
	adc #$D733
	sta $1026
	sep #$20
	jmp L86DF30

L86DE24:
	jmp L86DE27

L86DE27:
	lda $1001
	bit #$01
	bne L86DE91
	sep #$20
	lda #$95
	sta $02
	lda $106B
	sta $211B
	stz $211B
	lda #$0A
	sta $211C
	rep #$20
	lda $2134
	clc
	adc #$D6E3
	sta $00
	ldy #$00
	ldx #$00
L86DE51:
	rep #$20
	lda [$00],Y
	and #$00FF
	pha
	lda $1004
	bit #$0001
	beq L86DE68
	pla
	eor #$FFFF
	ina
	bra L86DE69

L86DE68:
	pla
L86DE69:
	asl
	clc
	adc $1CB4,X
	sta $1CB4,X
	xba
	sep #$20
	clc
	adc $102C
	sta $1CD8,Y
	rep #$20
	lda $8D
	lsr
	lsr
	sep #$20
	clc
	adc $1CD8,Y
	sta $1CD8,Y
	iny
	inx
	inx
	cpx #$14
	bcc L86DE51
L86DE91:
	lda $1001
	bit #$01
	bne L86DE9F
	lda $1022
	bit #$01
	beq L86DEA4
L86DE9F:
	lda $1023
	bra L86DEAA

L86DEA4:
	lda $1023
	inc $1023
L86DEAA:
	and #$1E
	lsr
	rep #$30
	and #$00FF
	tay
	lda $89
	lsr
	lsr
	sta $15
	lda #$9500
	sta $01
	lda $1024
	sta $00
	sep #$20
	ldx #$0000
L86DEC8:
	sep #$20
	lda $102C
	clc
	adc [$00],Y
	clc
	adc $15
	sta $1CC8,X
	inx
	iny
	rep #$20
	tya
	and #$000F
	tay
	cpx #$0010
	bcc L86DEC8
	sep #$20
	inc $1022
	rep #$20
	sep #$20
	lda #$42
	sta $4360
	lda #$0D
	sta $4361
	lda #lobyte(L868D58)
	sta $4362
	lda #hibyte(L868D58)
	sta $4363
	lda #bankbyte(L868D58)
	sta $4364
	lda #$00
	sta $4367
	rep #$20
	sep #$20
	lda #$42
	sta $4370
	lda #$0F
	sta $4371
	lda #lobyte(L868D90)
	sta $4372
	lda #hibyte(L868D90)
	sta $4373
	lda #bankbyte(L868D90)
	sta $4374
	lda #$00
	sta $4377
	rep #$20
	rts

L86DF30:
	lda $1022
	bit #$F001
	ora $AD
	and $10,S
	bra L86DF42

L86DF3C:
	lda $1023
	inc $1023
L86DF42:
	and #$4A1E
	rep #$30
	and #$00FF
	tay
	lda $8D
	lsr
	lsr
	sta $15
	lda #$9500
	sta $01
	lda $1026
	sta $00
	sep #$20
	ldx #$0000
L86DF60:
	sep #$20
	lda $102C
	clc
	adc [$00],Y
	clc
	adc $15
	sta $1CD8,X
	inx
	iny
	rep #$20
	tya
	and #$000F
	tay
	cpx #$0010
	bcc L86DF60
	lda $1023
	and #$001E
	lsr
	rep #$30
	and #$00FF
	tay
	lda $89
	lsr
	lsr
	sta $15
	lda #$9500
	sta $01
	lda $1024
	sta $00
	sep #$20
	ldx #$0000
L86DF9E:
	sep #$20
	lda $102C
	clc
	adc [$00],Y
	clc
	adc $15
	sta $1CC8,X
	inx
	iny
	rep #$20
	tya
	and #$000F
	tay
	cpx #$0010
	bcc L86DF9E
	sep #$20
	inc $1022
	rep #$20
	sep #$20
	lda #$42
	sta $4360
	lda #$0D
	sta $4361
	lda #lobyte(L868D58)
	sta $4362
	lda #hibyte(L868D58)
	sta $4363
	lda #bankbyte(L868D58)
	sta $4364
	lda #$00
	sta $4367
	rep #$20
	sep #$20
	lda #$42
	sta $4370
	lda #$0F
	sta $4371
	lda #lobyte(L868D74)
	sta $4372
	lda #hibyte(L868D74)
	sta $4373
	lda #bankbyte(L868D74)
	sta $4374
	lda #$00
	sta $4377
	rep #$20
	rts

L86E006:
	lda $1002
	bit #$0020
	bne L86E055
	lda $102A
	and #$00FF
	beq L86E051
	lda $1022
	bit #$0001
	bne L86E055
	dec $102A
	lda $102A
	and #$00FF
	sta $00
	lda $102B
	and #$00FF
	xba
	lsr
	lsr
	lsr
	adc $00
	tax
	lda.l L95D793,X
	and #$00FF
	beq L86E043
	sta $8F
	sta $8B
L86E043:
	lda.l L95D7A3,X
	and #$00FF
	beq L86E055
	sta $102C
	bra L86E055

L86E051:
	stz $8B
	stz $8F
L86E055:
	rts

L86E056:
	sep #$20
	ldx $1039
	lda $1DB4,X
	inx
	stx $1039
	sta $102B
	lda #$10
	sta $102A
	rep #$20
	rts

L86E06D:
	sep #$20
	lda $0761
	cmp #$23
	beq L86E07D
	lda $0762
	cmp #$23
	bne L86E091
L86E07D:
	lda $A0
	and #$1D
	sta $A0
	lda #$03
	sta $A1
	lda $A4
	ora #$02
	sta $A4
	lda #$41
	sta $A5
L86E091:
	rep #$20
	rts

L86E094:
	lda $1000
	bit #$0040
	beq L86E094
	lda $1003
	bit #$0002
	beq L86E0A7
	jmp L86E202

L86E0A7:
	sep #$30
	ldx #$00
	ldy #$00
L86E0AD:
	lda $1CC8,X
	sta $1CE8,Y
	inx
	iny
	iny
	cpx #$20
	bcc L86E0AD
	rep #$20
	rep #$10
	lda $8F
	dea
	sta $1CB2
	lda $1000
	bit #$0008
	bne L86E0FE
	bit #$0010
	bne L86E146
	lda $1001
	bit #$0002
	bne L86E122
	sep #$20
	lda #$42
	sta $4320
	lda #$10
	sta $4321
	lda #lobyte(L868DF4)
	sta $4322
	lda #hibyte(L868DF4)
	sta $4323
	lda #bankbyte(L868DF4)
	sta $4324
	lda #$00
	sta $4327
	rep #$20
	jmp L86E168

L86E0FE:
	sep #$20
	lda #$42
	sta $4320
	lda #$10
	sta $4321
	lda #lobyte(L868DEA)
	sta $4322
	lda #hibyte(L868DEA)
	sta $4323
	lda #bankbyte(L868DEA)
	sta $4324
	lda #$00
	sta $4327
	rep #$20
	bra L86E168

L86E122:
	sep #$20
	lda #$42
	sta $4320
	lda #$12
	sta $4321
	lda #lobyte(L868E0B)
	sta $4322
	lda #hibyte(L868E0B)
	sta $4323
	lda #bankbyte(L868E0B)
	sta $4324
	lda #$00
	sta $4327
	rep #$20
	bra L86E168

L86E146:
	sep #$20
	lda #$42
	sta $4320
	lda #$10
	sta $4321
	lda #lobyte(L868E01)
	sta $4322
	lda #hibyte(L868E01)
	sta $4323
	lda #bankbyte(L868E01)
	sta $4324
	lda #$00
	sta $4327
	rep #$20
L86E168:
	sep #$20
	lda #$40
	sta $4340
	lda #$32
	sta $4341
	lda #lobyte(L868DB8)
	sta $4342
	lda #hibyte(L868DB8)
	sta $4343
	lda #bankbyte(L868DB8)
	sta $4344
	lda #$00
	sta $4347
	rep #$20
	lda $1009
	and #$00FF
	cmp #$005A
	bcs L86E1B9
	sep #$20
	lda #$40
	sta $4350
	lda #$29
	sta $4351
	lda #lobyte(L868DC2)
	sta $4352
	lda #hibyte(L868DC2)
	sta $4353
	lda #bankbyte(L868DC2)
	sta $4354
	lda #$00
	sta $4357
	rep #$20
	bra L86E1E9

L86E1B9:
	sep #$20
	ldx #$0000
L86E1BE:
	lda $1D28,X
	sta $1D35,X
	inx
	cpx #$000D
	bcc L86E1BE
	rep #$20
	sep #$20
	lda #$01
	sta $4350
	lda #$28
	sta $4351
	lda #$35
	sta $4352
	lda #$1D
	sta $4353
	lda #$00
	sta $4354
	rep #$20
L86E1E9:
	sep #$20
	lda $1003
	bit #$01
	beq L86E1FA
	lda $F7
	and #$F7
	ora #$F4
	bra L86E1FE

L86E1FA:
	lda $F7
	ora #$F4
L86E1FE:
	sta $F7
	rep #$20
L86E202:
	rts

L86E203:
	sep #$20
	lda #$17
	sta $A0
	lda #$00
	sta $A1
	lda #$13
	sta $A2
	lda #$13
	sta $A3
	lda #$00
	sta $A4
	lda #$00
	sta $A5
	lda #$E0
	sta $A6
	lda #$80
	sta $2115
	lda #$08
	sta $7B
	lda #$78
	sta $80
	lda #$7C
	sta $81
	lda #$1C
	sta $82
	lda #$55
	sta $84
	lda #$11
	sta $85
	lda #$00
	sta $87
	lda #$00
	sta $88
	lda #$00
	sta $99
	lda #$FF
	stz $9A
	stz $9B
	stz $9C
	sta $9D
	rep #$20
	stz $89
	stz $8B
	stz $8D
	stz $8F
	stz $93
	lda #$0000
	sta $4207
	sta $F5
	lda #$007F
	sta $4209
	sta $F3
	lda #$0000
	ldx #$2000
	ldy #$1000
	jsl L808C7B
	lda #$00FF
	ldx #$2C40
	ldy #$03C0
	jsl L808C8E
	lda #$0000
	ldx #$1CB0
	ldy #$02B4
	jsl L808C68
	lda #$0000
	ldx #$1D28
	ldy #$0060
	jsl L808C68
	rts

L86E2A5:
	sep #$20
	stz $1005
	stz $104F
	stz $106D
	stz $105A
	stz $104A
	stz $104B
	lda #$01
	sta $103B
	stz $1067
	stz $1068
	stz $0FA1
	lda $07DC
	sta $1007
	lda #$06
	sta $1052
	stz $1053
	stz $1051
	stz $103C
	stz $1022
	stz $1023
	stz $102C
	stz $1000
	stz $1001
	stz $1002
	stz $1014
	stz $1015
	stz $1016
	stz $1032
	stz $1030
	stz $1033
	stz $1031
	stz $102A
	stz $102B
	stz $1009
	lda #$FF
	sta $100C
	stz $100A
	stz $9A
	lda #$FF
	sta $100B
	sta $9B
	stz $105B
	stz $1055
	stz $105C
	rep #$20
	lda #$D6E3
	sta $1024
	lda #$D733
	sta $1026
	stz $1028
	stz $52
	lda #$FFFF
	sta $1056
	stz $104D
	stz $102E
	jsr L86D31D
	lda #$0000
	sta $109D
	rts

L86E34E:
	sep #$20
	lda $7A
	and #$F0
	sta $7A
	sta $1050
	rep #$20
	rts

L86E35C:
	sep #$20
	lda $7A
	ora #$0F
	sta $7A
	rep #$20
	rts

L86E367:
	sep #$20
	lda $1006
	bne L86E373
	lda #$02
	sta $1006
L86E373:
	rep #$20
	jsr L86CCEF
	sep #$20
	lda $075F
	cmp #$4A
	bne L86E393
	lda $A4
	ora #$02
	sta $A4
	lda #$45
	sta $A5
	lda #$15
	sta $A0
	lda #$02
	sta $A1
L86E393:
	rep #$20
	lda $075E
	and #$00FF
	cmp #$002A
	bne L86E3C0
	lda #$FFFF
	sta $1028
	lda #$9D67
	jsr L86D2BE
	sep #$20
	lda $A4
	ora #$02
	sta $A4
	lda #$41
	sta $A5
	lda #$11
	sta $A0
	lda #$07
	sta $A1
L86E3C0:
	sep #$20
	lda $0765
	cmp #$34
	bcc L86E3CE
	lda #$34
	sta $0765
L86E3CE:
	lda $0766
	cmp #$34
	bcc L86E3DA
	lda #$34
	sta $0766
L86E3DA:
	lda $075D
	cmp #$15
	bne L86E3E8
	lda $078F
	bit #$20
	bne L86E3F7
L86E3E8:
	rep #$20
	lda $075F
	jsr L8690B9
	cmp #$0040
	bne L86E3FF
	sep #$20
L86E3F7:
	lda $1001
	ora #$10
	sta $1001
L86E3FF:
	sep #$20
	lda $078F
	bit #$20
	beq L86E42B
	lda $07B7
	bit #$10
	bne L86E414
	lda $075F
	bra L86E417

L86E414:
	lda $0760
L86E417:
	rep #$20
	jsr L8690B9
	cmp #$004F
	bne L86E42B
	sep #$20
	lda $1001
	ora #$20
	sta $1001
L86E42B:
	sep #$20
	lda $075D
	cmp #$14
	bne L86E43B
	lda $078F
	bit #$20
	bne L86E449
L86E43B:
	lda $075F
	rep #$20
	jsr L8690B9
	sep #$20
	cmp #$66
	bne L86E461
L86E449:
	lda $1001
	ora #$04
	sta $1001
	lda $0761
	sta $0762
	lda #$80
	sta $100A
	lda #$FF
	sta $100B
L86E461:
	lda $078F
	bit #$20
	beq L86E477
	lda $075D
	cmp #$15
	bne L86E477
	lda $1002
	ora #$08
	sta $1002
L86E477:
	rep #$20
	rts

L86E47A:
	lda $075D
	and #$00FF
	cmp #$00FF
	beq L86E48B
	jsr L86E77E
	jsr L86E49D
L86E48B:
	lda $075E
	and #$00FF
	cmp #$00FF
	beq L86E49C
	jsr L86E84F
	jsr L86E570
L86E49C:
	rts

L86E49D:
	lda $1012
	ldx $0763
	jsr L86E648
	lda $07B7
	and #$00FF
	bit #$0010
	beq L86E4BC
	lda $1001
	and #$00FF
	bit #$0020
	bne L86E4DA
L86E4BC:
	lda #bank100(L86E723)
	sta $01
	lda #L86E723
	sta $00
	jsl L808EAD
	lda #bank100(L86E723)
	sta $01
	lda #L86E723
	sta $00
	jsl L808EAD
	bra L86E4E8

L86E4DA:
	lda #bank100(L86E72A)
	sta $01
	lda #L86E72A
	sta $00
	jsl L808EAD
L86E4E8:
	lda $075F
	jsr L8690B9
	cmp #$00FF
	beq L86E56F
	cmp #$004F
	beq L86E56F
	cmp #$002D
	beq L86E542
	cmp #$0040
	beq L86E542
	cmp #$0009
	beq L86E542
	cmp #$0029
	bcc L86E511
	cmp #$002D
	bcc L86E558
L86E511:
	lda $075F
	jsr L86E6FD
	lda $075F
	and #$00FF
	cmp #$001D
	bne L86E532
	lda #bank100(L86E73F)
	sta $01
	lda #L86E73F
	sta $00
	jsl L808EAD
	bra L86E56F

L86E532:
	lda #bank100(L86E738)
	sta $01
	lda #L86E738
	sta $00
	jsl L808EAD
	bra L86E56F

L86E542:
	lda $075F
	jsr L86E68D
	lda #bank100(L86E731)
	sta $01
	lda #L86E731
	sta $00
	jsl L808EAD
	bra L86E56F

L86E558:
	lda $075F
	ldx $075D
	jsr L86E6BF
	lda #bank100(L86E746)
	sta $01
	lda #L86E746
	sta $00
	jsl L808EAD
L86E56F:
	rts

L86E570:
	lda $1013
	ldx $0764
	jsr L86E648
	lda $1001
	bit #$0010
	bne L86E5B2
	lda $1001
	and #$00FF
	bit #$0004
	bne L86E5B2
	lda $07B7
	and #$00FF
	bit #$0010
	bne L86E5A2
	lda $1001
	and #$00FF
	bit #$0020
	bne L86E5B2
L86E5A2:
	lda #bank100(L86E74D)
	sta $01
	lda #L86E74D
	sta $00
	jsl L808EAD
	bra L86E5C0

L86E5B2:
	lda #bank100(L86E754)
	sta $01
	lda #L86E754
	sta $00
	jsl L808EAD
L86E5C0:
	lda $0760
	jsr L8690B9
	cmp #$00FF
	beq L86E647
	cmp #$004F
	beq L86E647
	cmp #$002D
	beq L86E61A
	cmp #$0040
	beq L86E61A
	cmp #$0009
	beq L86E61A
	cmp #$0029
	bcc L86E5E9
	cmp #$002D
	bcc L86E630
L86E5E9:
	lda $0760
	jsr L86E6FD
	lda $0760
	and #$00FF
	cmp #$001D
	bne L86E60A
	lda #bank100(L86E769)
	sta $01
	lda #L86E769
	sta $00
	jsl L808EAD
	bra L86E647

L86E60A:
	lda #bank100(L86E762)
	sta $01
	lda #L86E762
	sta $00
	jsl L808EAD
	bra L86E647

L86E61A:
	lda $0760
	jsr L86E68D
	lda #bank100(L86E75B)
	sta $01
	lda #L86E75B
	sta $00
	jsl L808EAD
	bra L86E647

L86E630:
	lda $0760
	ldx $075E
	jsr L86E6BF
	lda #bank100(L86E770)
	sta $01
	lda #L86E770
	sta $00
	jsl L808EAD
L86E647:
	rts

L86E648:
	jsr L86E667
	and #$00FF
	sta $15
	asl
	adc $15
	tax
	lda.l (L9587DE + 1),X
	sta $72
	lda.l L9587DE,X
	sta $71
	lda #$0100
	jsr L86F834
	rts

L86E667:
	pha
	txa
	and #$00FF
	sta $15
	ldx #$0000
L86E671:
	lda.l L9588A4,X
	and #$00FF
	cmp #$00FF
	beq L86E68B
	cmp $15
	beq L86E684
	inx
	bra L86E671

L86E684:
	pla
	txa
	clc
	adc #$0034
	pha
L86E68B:
	pla
	rts

L86E68D:
	and #$00FF
	cmp #$00FF
	beq L86E6BE
	cmp #$004F
	beq L86E6BE
	cmp #$0009
	bne L86E6A2
	lda #$004F
L86E6A2:
	sec
	sbc #$0029
	sta $15
	asl
	adc $15
	tax
	lda.l (L9589F0 + 1),X
	sta $72
	lda.l L9589F0,X
	sta $71
	lda #$0060
	jsr L86F834
L86E6BE:
	rts

L86E6BF:
	pha
	txa
	and #$00FF
	cmp #$002A
	bne L86E6DC
	pla
	lda #$0050
	pha
	lda #bank100(L86E777)
	sta $01
	lda #L86E777
	sta $00
	jsl L808EAD
L86E6DC:
	pla
	and #$00FF
	sec
	sbc #$0029
	sta $15
	asl
	adc $15
	tax
	lda.l (L9589F0 + 1),X
	sta $72
	lda.l L9589F0,X
	sta $71
	lda #$0008
	jsr L86F834
	rts

L86E6FD:
	and #$00FF
	asl
	asl
	tax
	lda.l (L958B82 + 3),X
	and #$00FF
	sta $15
	asl
	adc $15
	tax
	lda.l (L958B4F + 1),X
	sta $72
	lda.l L958B4F,X
	sta $71
	lda #$0040
	jsr L86F834
	rts

L86E723:
DMA_DATA DecompressionLocation $0040 $80
L86E72A:
DMA_DATA $7E417E $0040 $80
L86E731:
DMA_DATA DecompressionLocation $0060 $90
L86E738:
DMA_DATA DecompressionLocation $0020 $A0
L86E73F:
DMA_DATA DecompressionLocation $0040 $A0
L86E746:
DMA_DATA DecompressionLocation $0008 $18
L86E74D:
DMA_DATA $7E417E $0040 $C0
L86E754:
DMA_DATA DecompressionLocation $0040 $C0
L86E75B:
DMA_DATA DecompressionLocation $0060 $D0
L86E762:
DMA_DATA DecompressionLocation $0020 $E0
L86E769:
DMA_DATA DecompressionLocation $0040 $E0
L86E770:
DMA_DATA DecompressionLocation $0008 $1C
L86E777:
DMA_DATA LCA8892 $0060 $D0

L86E77E:
	lda $075D
	and #$00FF
	tax
	lda.l L9587B1,X
	and #$000F
	cmp #$0007
	beq L86E7F8
	cmp #$0008
	beq L86E7F8
	cmp #$0009
	beq L86E7F8
	ldx #$4000
	sep #$20
	lda $075F
	cmp #$0B
	bne L86E7B2
	lda $1012
	cmp #$00
	bne L86E7B2
	lda #$34
	bra L86E7B5

L86E7B2:
	lda $1012
L86E7B5:
	rep #$20
	jsr L86E991
	clc
	jsr L86ED2A
	jsr L86F7DA
	lda #bank100(L86E925)
	sta $01
	lda #L86E925
	sta $00
	jsl L808EAD
	jsr L86F7DA
	lda #bank100(L86E92E)
	sta $01
	lda #L86E92E
	sta $00
	jsl L808EAD
	lda #$2000
	sta $06
	lda #$1000
	sta $09
	lda $075D
	sta $0C
	lda $075F
	jsr L86E9AC
	jmp L86E84E

L86E7F8:
	ldx #$2000
	lda $1012
	jsr L86E991
	jsr L86F7DA
	lda #bank100(L86E925)
	sta $01
	lda #L86E925
	sta $00
	jsl L808EAD
	jsr L86ECC7
	ldx #$0800
	jsr L86ECAB
	jsr L86F7DA
	lda #bank100(L86E937)
	sta $01
	lda #L86E937
	sta $00
	jsl L808EAD
	lda $1003
	bit #$0001
	bne L86E84E
	ldx #$1800
	lda $075F
	jsr L86EC82
	jsr L86F7DA
	lda #bank100(L86E952)
	sta $01
	lda #L86E952
	sta $00
	jsl L808EAD
L86E84E:
	rts

L86E84F:
	lda $075E
	and #$00FF
	cmp #$002A
	beq L86E8B6
	tax
	lda.l L9587B1,X
	and #$000F
	cmp #$0007
	beq L86E8CE
	cmp #$0008
	beq L86E8CE
	cmp #$0009
	beq L86E8CE
	ldx #$4000
	sep #$20
	lda $0760
	cmp #$0B
	bne L86E888
	lda $1013
	cmp #$00
	bne L86E888
	lda #$34
	bra L86E88B

L86E888:
	lda $1013
L86E88B:
	rep #$20
	jsr L86E991
	sec
	jsr L86ED2A
	jsr L86F7DA
	lda #bank100(L86E95B)
	sta $01
	lda #L86E95B
	sta $00
	jsl L808EAD
	jsr L86F7DA
	lda #bank100(L86E964)
	sta $01
	lda #L86E964
	sta $00
	jsl L808EAD
L86E8B6:
	lda #$1000
	sta $06
	lda #$4000
	sta $09
	lda $075E
	sta $0C
	lda $0760
	jsr L86E9AC
	jmp L86E924

L86E8CE:
	ldx #$2000
	lda $1013
	jsr L86E991
	jsr L86F7DA
	lda #bank100(L86E95B)
	sta $01
	lda #L86E95B
	sta $00
	jsl L808EAD
	jsr L86ECD3
	ldx #$0800
	jsr L86ECAB
	jsr L86F7DA
	lda #bank100(L86E96D)
	sta $01
	lda #L86E96D
	sta $00
	jsl L808EAD
	lda $1003
	bit #$0001
	bne L86E924
	ldx #$1800
	lda $0760
	jsr L86EC82
	jsr L86F7DA
	lda #bank100(L86E988)
	sta $01
	lda #L86E988
	sta $00
	jsl L808EAD
L86E924:
	rts

L86E925:
DMA_DATA DecompressionLocation $2000 $80 $0000
L86E92E:
DMA_DATA $7E60FE $2000 $80 $2000
L86E937:
DMA_DATA DecompressionLocation $0800 $80 $2000
L86E940:
DMA_DATA DecompressionLocation $0400 $80 $0E00
L86E949:
DMA_DATA DecompressionLocation $0400 $80 $2E00
L86E952:
DMA_DATA DecompressionLocation $1800 $80 $2400
L86E95B:
DMA_DATA DecompressionLocation $2000 $80 $3000
L86E964:
DMA_DATA $7E60FE $2000 $80 $4000
L86E96D:
DMA_DATA DecompressionLocation $0800 $80 $4000
L86E976:
DMA_DATA DecompressionLocation $0400 $80 $3E00
L86E97F:
DMA_DATA DecompressionLocation $0400 $80 $4E00
L86E988:
DMA_DATA DecompressionLocation $1800 $80 $4400

L86E991:
	stx $15
	and #$00FF
	sta $17
	asl
	adc $17
	tax
	lda.l (L9588B3 + 1),X
	sta $72
	lda.l L9588B3,X
	sta $71
	jsr L86F7E7
	rts

L86E9AC:
	and #$00FF
	sta $15
	sta $27
	lda $0C
	and #$00FF
	cmp #$002A
	bne L86E9C0
	jmp L86EC5D

L86E9C0:
	lda $15
	jsr L8690B9
	cmp #$00FF
	bne L86E9CD
	jmp L86EA94

L86E9CD:
	cmp #$0066
	bne L86E9D5
	jmp L86EA94

L86E9D5:
	cmp #$004F
	beq L86E9DC
	bra L86E9DF

L86E9DC:
	jmp L86EC5C

L86E9DF:
	lda $15
	asl
	asl
	tax
	lda.l L958B82,X
	sta $15
	lda.l (L958B82 + 2),X
	and #$00FF
	sta $17
	asl
	adc $17
	tax
	lda.l (L958AE3 + 1),X
	sta $72
	lda.l L958AE3,X
	sta $71
	jsr L86F7E7
	lda $15
	tax
	lsr
	sta $15
	lda $09
	sec
	sbc $15
	tay
	phx
	phy
	lda $0C
	and #$00FF
	cmp #$0029
	beq L86EA57
	cmp #$0028
	beq L86EA57
	sep #$20
	lda #$02
	sta $1D82
	lda #$7E
	sta $1D85
	rep #$20
	lda #$40FE
	sta $1D83
	stx $1D86
	sep #$20
	lda #$80
	sta $1D88
	sty $1D89
	rep #$20
	jsr L86F7DA
	lda #$0000
	sta $01
	lda #$1D82
	sta $00
	jsl L808EAD
L86EA57:
	pla
	clc
	adc $06
	tay
	plx
	sep #$20
	lda #$02
	sta $1D82
	lda #$7E
	sta $1D85
	rep #$20
	lda #$40FE
	sta $1D83
	stx $1D86
	sep #$20
	lda #$80
	sta $1D88
	sty $1D89
	rep #$20
	lda #$0000
	sta $01
	lda #$1D82
	sta $00
	jsl L808EAD
	jsr L86F7DA
	jmp L86EC5C

L86EA94:
	lda #$0000
	ldx #$0000
	sta.l DecompressionLocation,X
	lda $0C
	and #$00FF
	tax
	lda.l L9587B1,X
	and #$000F
	cmp #$0001
	beq L86EAC8
	cmp #$0004
	bne L86EAB8
	jmp L86EB3C

L86EAB8:
	cmp #$0002
	bne L86EAC0
	jmp L86EB78

L86EAC0:
	cmp #$0003
	bne L86EAC8
	jmp L86EBEB

L86EAC8:
	lda $09
	sec
	sbc #$0100
	sta $2116
	pha
	sep #$20
	lda #$09
	sta $4300
	lda #$18
	sta $4301
	lda #$FE
	sta $4302
	lda #$40
	sta $4303
	lda #$7E
	sta $4304
	lda #$00
	sta $4305
	lda #$02
	sta $4306
	rep #$20
	sep #$20
	lda #$01
	sta $420B
	rep #$20
	pla
	clc
	adc $06
	sta $2116
	sep #$20
	lda #$09
	sta $4300
	lda #$18
	sta $4301
	lda #$FE
	sta $4302
	lda #$40
	sta $4303
	lda #$7E
	sta $4304
	lda #$00
	sta $4305
	lda #$02
	sta $4306
	rep #$20
	sep #$20
	lda #$01
	sta $420B
	rep #$20
	jmp L86EC5C

L86EB3C:
	lda $09
	sec
	sbc #$0200
	sta $2116
	sep #$20
	lda #$09
	sta $4300
	lda #$18
	sta $4301
	lda #$FE
	sta $4302
	lda #$40
	sta $4303
	lda #$7E
	sta $4304
	lda #$00
	sta $4305
	lda #$04
	sta $4306
	rep #$20
	sep #$20
	lda #$01
	sta $420B
	rep #$20
	jmp L86EC5C

L86EB78:
	lda $09
	sec
	sbc #$0200
	sta $2116
	pha
	sep #$20
	lda #$09
	sta $4300
	lda #$18
	sta $4301
	lda #$FE
	sta $4302
	lda #$40
	sta $4303
	lda #$7E
	sta $4304
	lda #$00
	sta $4305
	lda #$04
	sta $4306
	rep #$20
	sep #$20
	lda #$01
	sta $420B
	rep #$20
	pla
	clc
	adc $06
	sta $2116
	sep #$20
	lda #$09
	sta $4300
	lda #$18
	sta $4301
	lda #$FE
	sta $4302
	lda #$40
	sta $4303
	lda #$7E
	sta $4304
	lda #$00
	sta $4305
	lda #$04
	sta $4306
	rep #$20
	sep #$20
	lda #$01
	sta $420B
	rep #$20
	bra L86EC5C

L86EBEB:
	lda $09
	sec
	sbc #$0300
	sta $2116
	pha
	sep #$20
	lda #$09
	sta $4300
	lda #$18
	sta $4301
	lda #$FE
	sta $4302
	lda #$40
	sta $4303
	lda #$7E
	sta $4304
	lda #$00
	sta $4305
	lda #$06
	sta $4306
	rep #$20
	sep #$20
	lda #$01
	sta $420B
	rep #$20
	pla
	clc
	adc $06
	sta $2116
	sep #$20
	lda #$09
	sta $4300
	lda #$18
	sta $4301
	lda #$FE
	sta $4302
	lda #$40
	sta $4303
	lda #$7E
	sta $4304
	lda #$00
	sta $4305
	lda #$06
	sta $4306
	rep #$20
	sep #$20
	lda #$01
	sta $420B
	rep #$20
L86EC5C:
	rts

L86EC5D:
	lda #bank100(LC9EA25)
	sta $72
	lda #LC9EA25
	sta $71
	jsr L86F7E7
	lda #bank100(L86EC79)
	sta $01
	lda #L86EC79
	sta $00
	jsl L808EAD
	rts

L86EC79:
DMA_DATA DecompressionLocation $3800 $80 $3000

L86EC82:
	stx $15
	and #$00FF
	cmp #$00FF
	beq L86ECAA
	cmp #$004F
	beq L86ECAA
	sec
	sbc #$002D
	sta $17
	asl
	adc $17
	tax
	lda.l (L95898A + 1),X
	sta $72
	lda.l L95898A,X
	sta $71
	jsr L86F7E7
L86ECAA:
	rts

L86ECAB:
	stx $15
	and #$00FF
	sec
	sta $17
	asl
	adc $17
	tax
	lda.l (L958969 + 1),X
	sta $72
	lda.l L958969,X
	sta $71
	jsr L86F7E7
	rts

L86ECC7:
	lda $1012
	sta $15
	lda $075F
	jsr L86ECDF
	rts

L86ECD3:
	lda $1013
	sta $15
	lda $0760
	jsr L86ECDF
	rts

L86ECDF:
	jsr L8690B9
	cmp #$00FF
	bne L86ECEC
	lda #$0001
	bra L86ECFE

L86ECEC:
	cmp #$002D
	bne L86ECF6
	lda #$0000
	bra L86ECFE

L86ECF6:
	cmp #$0040
	bne L86ED26
	lda #$0001
L86ECFE:
	sta $17
	sep #$20
	ldx #$0000
	ldy #$0000
L86ED08:
	lda.l L958952,X
	cmp #$FF
	beq L86ED21
	cmp $15
	bne L86ED1C
	lda.l (L958952 + 1),X
	cmp $17
	beq L86ED26
L86ED1C:
	iny
	inx
	inx
	bra L86ED08

L86ED21:
	ldy #$0000
	sty $15
L86ED26:
	rep #$20
	tya
	rts

L86ED2A:
	bcs L86ED45
	sep #$20
	lda $1012
	cmp #$00
	bne L86ED78
	lda $078F
	bit #$80
	beq L86ED5C
	lda $0763
	cmp #$00
	beq L86ED78
	bra L86ED5C

L86ED45:
	sep #$20
	lda $1013
	cmp #$00
	bne L86ED78
	lda $078F
	bit #$80
	beq L86ED5C
	lda $0764
	cmp #$00
	beq L86ED78
L86ED5C:
	rep #$20
	lda #$0000
	ldx #$5AFE
	ldy #$0080
	jsl L808C8E
	lda #$0000
	ldx #$7AFE
	ldy #$0080
	jsl L808C8E
L86ED78:
	rep #$20
	rts

L86ED7B:
	lda $1001
	bit #$0004
	beq L86ED8C
	jsr L86ED8D
	jsr L86EDA3
	jsr L86EDCF
L86ED8C:
	rts

L86ED8D:
	lda #bank100(L86ED9C)
	sta $01
	lda #L86ED9C
	sta $00
	jsl L808EAD
	rts

L86ED9C:
DMA_DATA LCA9A3B $0020 $F0

L86EDA3:
	jsr L86EDBE
	lda #bank100(L86EDB5)
	sta $01
	lda #L86EDB5
	sta $00
	jsl L808EAD
	rts

L86EDB5:
DMA_DATA DecompressionLocation $0400 $80 $4B00

L86EDBE:
	sep #$20
	lda #$CA
	sta $73
	rep #$20
	lda #$96FA
	sta $71
	jsr L86F7E7
	rts

L86EDCF:
	lda #$ACFE
	sta $03
	jsr L86EDDB
	jmp L86EDED

L86EDDA:
	rts

L86EDDB:
	sep #$20
	lda #$CA
	sta $73
	rep #$20
	lda #$9888
	sta $71
	rts

L86EDE9:
	jsr L86F7E7
	rts

L86EDED:
	jsr L86EDE9
	sep #$20
	phb
	lda #$7E
	pha
	plb
	lda $4110
	sta $27
	rep #$20
	lda $410E
	sta $00
	lda $27
	and #$00FF
	asl
	adc $00
	pha
	tax
	ldy #$0000
	sep #$20
L86EE12:
	lda $40FE,Y
	sta ($03),Y
	iny
	dex
	bne L86EE12
	rep #$20
	lda $00
	clc
	adc #$40FE
	sta $00
	sta $06
	pla
	clc
	adc $03
	tax
L86EE2C:
	rep #$20
	lda ($06)
	tay
	inc $06
	inc $06
	sep #$20
	lda ($00),Y
	sta $28
	sta.w $0000,X
	inx
	iny
L86EE40:
	lda #$08
	sta $25
	lda ($00),Y
	sta $26
	sta.w $0000,X
	inx
	iny
L86EE4D:
	lda ($00),Y
	sta.w $0000,X
	inx
	iny
	lda ($00),Y
	eor #$FF
	ina
	asl $26
	bcc L86EE61
	sbc #$10
	bra L86EE64

L86EE61:
	sec
	sbc #$08
L86EE64:
	sta.w $0000,X
	inx
	iny
	lda ($00),Y
	sta.w $0000,X
	inx
	iny
	lda ($00),Y
	eor #$40
	and #$EF
	ora #$28
	sta.w $0000,X
	inx
	iny
	dec $28
	beq L86EE87
	dec $25
	bne L86EE4D
	bra L86EE40

L86EE87:
	dec $27
	beq L86EE8E
	jmp L86EE2C

L86EE8E:
	rep #$20
	plb
	rts

L86EE92:
	lda $1003
	bit #$0001
	bne L86EEA8
	lda #bank100(L86EEA9)
	sta $01
	lda #L86EEA9
	sta $00
	jsl L808EAD
L86EEA8:
	rts

L86EEA9:
DMA_DATA L94B1E0 $0020 $80 $1FF0

L86EEB2:
	lda #bank100(L86EEC1)
	sta $01
	lda #L86EEC1
	sta $00
	jsl L808EAD
	rts

L86EEC1:
DMA_DATA PALETTES_94D000 $0020 $F0

L86EEC8:
	lda $075E
	and #$00FF
	cmp #$002A
	bne L86EED8
	jsr L86F063
	bra L86EEDE

L86EED8:
	jsr L86F08E
	jsr L86EFB9
L86EEDE:
	jsr L86F1D9
	jsr L86F531
	jsr L86F21B
	jsr L86F1B4
	jsr L86F17D
	lda $075E
	and #$00FF
	cmp #$002A
	beq L86EF01
	lda $0762
	jsr L86F0D1
	jsr L86EFD4
L86EF01:
	lda $0762
	pha
	jsr L86EF32
	jsr L86EF5A
	pla
	jsr L86F0FF
	lda $075E
	and #$00FF
	cmp #$002A
	beq L86EF23
	lda $0761
	jsr L86F0D1
	jsr L86EFEF
L86EF23:
	lda $0761
	pha
	jsr L86EF32
	jsr L86EF87
	pla
	jsr L86F130
	rts

L86EF32:
	jsr L86F280
	tax
	lda.l L9591E5,X
	and #$00FF
	sta $15
	asl
	adc $15
	tax
	lda.l (L95911C + 1),X
	sta $72
	lda.l L95911C,X
	sta $71
	jsr L86EF53
	rts

L86EF53:
	lda #$0060
	jsr L86F834
	rts

L86EF5A:
	lda #bank100(L86EF80)
	sta $01
	lda #L86EF80
	sta $00
	jsl L808EAD
	bra L86EF78

L86EF6A:
	lda #bank100(L86EF79)
	sta $01
	lda #L86EF79
	sta $00
	jsl L808EAD
L86EF78:
	rts

L86EF79:
DMA_DATA $7E4112 $004C $2A

L86EF80:
DMA_DATA DecompressionLocation $0060 $20

L86EF87:
	lda #bank100(L86EFAB)
	sta $01
	lda #L86EFAB
	sta $00
	jsl L808EAD
	lda $1003
	bit $01
	bne L86EFAA
	lda #bank100(L86EFB2)
	sta $01
	lda #L86EFB2
	sta $00
	jsl L808EAD
L86EFAA:
	rts

L86EFAB:
DMA_DATA DecompressionLocation $0060 $50
L86EFB2:
DMA_DATA DecompressionLocation $0014 $20

L86EFB9:
	jsr L86F7DA
	lda #bank100(L86EFCB)
	sta $01
	lda #L86EFCB
	sta $00
	jsl L808EAD
	rts

L86EFCB:
DMA_DATA DecompressionLocation $1400 $80 $5000

L86EFD4:
	jsr L86F7DA
	lda #bank100(L86EFE6)
	sta $01
	lda #L86EFE6
	sta $00
	jsl L808EAD
	rts

L86EFE6:
DMA_DATA DecompressionLocation $1E00 $80 $5A00

L86EFEF:
	jsr L86F7DA
	lda #bank100(L86F001)
	sta $01
	lda #L86F001
	sta $00
	jsl L808EAD
	rts

L86F001:
DMA_DATA DecompressionLocation $1E00 $80 $6900

L86F00A:
	lda #$7E00
	sta $01
	lda #$2000
	sta $00
	jmp L86F03E

L86F017:
	lda #$7E00
	sta $01
	lda #$2800
	sta $00
	jmp L86F03E

L86F024:
	lda #$7E00
	sta $01
	lda #$2020
	sta $00
	jmp L86F03E

L86F031:
	lda #$7E00
	sta $01
	lda #$2820
	sta $00
	jmp L86F03E

L86F03E:
	ldy #$0000
	ldx #$0000
L86F044:
	lda #$0010
	sta $03
L86F049:
	lda.l DecompressionLocation,X
	sta [$00],Y
	iny
	iny
	inx
	inx
	dec $03
	bne L86F049
	tya
	clc
	adc #$0020
	tay
	cpx #$0200
	bcc L86F044
	rts

L86F063:
	ldx #$0000
	lda.l (L959119 + 1),X
	sta $72
	lda.l L959119,X
	sta $71
	jsr L86F0FB
	lda #bank100(L86F085)
	sta $01
	lda #L86F085
	sta $00
	jsl L808EAD
	rts

L86F084:
	rts

L86F085:
DMA_DATA DecompressionLocation $5000 $80 $5000

L86F08E:
	lda #$1400
	sta $15
	lda $075F
	and #$00FF
	cmp #$0036
	bne L86F0AB
	lda $07B9
	bit #$0010
	bne L86F0B0
	lda $07BE
	beq L86F0B0
L86F0AB:
	cmp #$004A
	bne L86F0B5
L86F0B0:
	lda #$0001
	bra L86F0B8

L86F0B5:
	lda #$0000
L86F0B8:
	sta $17
	asl
	adc $17
	tax
	lda.l (L9590EF + 1),X
	sta $72
	lda.l L9590EF,X
	sta $71
	lda #$0000
	jsr L86F0FB
	rts

L86F0D1:
	ldx #$1E00
	stx $03
	jsr L86F280
	tax
	lda.l L9591E2,X
	and #$00FF
	sta $15
	asl
	adc $15
	tax
	lda $03
	sta $15
	lda.l (L9590F5 + 1),X
	sta $72
	lda.l L9590F5,X
	sta $71
	jsr L86F0FB
	rts

L86F0FB:
	jsr L86F7E7
	rts

L86F0FF:
	pha
	jsr L86F280
	tax
	lda.l (L9591E2 + 1),X
	and #$00FF
	cmp #$00FF
	beq L86F117
	asl
	jsr L86F163
	jsr L86F00A
L86F117:
	pla
	jsr L86F280
	tax
	lda.l (L9591E2 + 2),X
	and #$00FF
	cmp #$00FF
	beq L86F12F
	asl
	jsr L86F163
	jsr L86F017
L86F12F:
	rts

L86F130:
	pha
	jsr L86F280
	tax
	lda.l (L9591E2 + 1),X
	and #$00FF
	cmp #$00FF
	beq L86F149
	asl
	ina
	jsr L86F163
	jsr L86F024
L86F149:
	pla
	jsr L86F280
	tax
	lda.l (L9591E2 + 2),X
	and #$00FF
	cmp #$00FF
	beq L86F162
	asl
	ina
	jsr L86F163
	jsr L86F031
L86F162:
	rts

L86F163:
	sta $15
	asl
	adc $15
	tax
	lda.l (L958E61 + 1),X
	sta $72
	lda.l L958E61,X
	sta $71
	jsr L86F179
	rts

L86F179:
	jsr L86F7E7
	rts

L86F17D:
	sep #$20
	ldy #$001E
	ldx #$0000
L86F185:
	lda.l L9594C2,X
	cmp $0762
	bne L86F1AA
	inx
	lda.l L9594C2,X
	cmp $0761
	bne L86F1AB
	inx
	lda.l L9594C2,X
	sta $0762
	inx
	lda.l L9594C2,X
	sta $0761
	bra L86F1B1

L86F1AA:
	inx
L86F1AB:
	inx
	inx
	inx
	dey
	bne L86F185
L86F1B1:
	rep #$20
	rts

L86F1B4:
	sep #$20
	ldx #$0000
L86F1B9:
	lda.l L95953A,X
	cmp #$FF
	beq L86F1D6
	cmp $0762
	beq L86F1CB
	cmp $0761
	bne L86F1D3
L86F1CB:
	sta $0762
	sta $0761
	bra L86F1D6

L86F1D3:
	inx
	bra L86F1B9

L86F1D6:
	rep #$20
	rts

L86F1D9:
	sep #$20
	lda $1003
	bit #$01
	bne L86F218
	lda $1001
	bit #$20
	beq L86F1F0
	lda $07B7
	bit #$10
	bne L86F1F7
L86F1F0:
	lda $075D
	cmp #$FF
	bne L86F1FD
L86F1F7:
	lda $0762
	sta $0761
L86F1FD:
	lda $1001
	bit #$20
	beq L86F20B
	lda $07B7
	bit #$10
	beq L86F212
L86F20B:
	lda $075E
	cmp #$FF
	bne L86F218
L86F212:
	lda $0761
	sta $0762
L86F218:
	rep #$20
	rts

L86F21B:
	sep #$20
	lda $0760
	cmp #$37
	bne L86F22C
	lda #$23
	sta $0762
	sta $0761
L86F22C:
	lda $075F
	cmp #$36
	bne L86F247
	lda $07B9
	bit #$10
	bne L86F23F
	lda $07BE
	bne L86F247
L86F23F:
	lda #$A2
	sta $0761
	sta $0762
L86F247:
	cmp #$4A
	bne L86F253
	lda #$A3
	sta $0761
	sta $0762
L86F253:
	lda $075E
	cmp #$2A
	bne L86F262
	lda #$A4
	sta $0761
	sta $0762
L86F262:
	rep #$20
	rts

L86F265:
	jsr L86F7DA
	lda #bank100(L86F277)
	sta $01
	lda #L86F277
	sta $00
	jsl L808EAD
	rts

L86F277:
DMA_DATA $7E2000 $1000 $80 $7800

L86F280:
.ACCU 16
	and #$00FF
	sta $2D
	lda #$0004
	sta $2F
	jsl L808D1E
	lda $31
	rts

L86F291:
	lda $075D
	and #$00FF
	cmp #$00FF
	beq L86F2A6
	jsl L8087EA
	jsr L86F2B8
	jsr L86F306
L86F2A6:
	lda $075E
	and #$00FF
	cmp #$00FF
	beq L86F2B7
	jsr L86F2DF
	jsr L86F353
L86F2B7:
	rts

L86F2B8:
.ACCU 16
	lda #$7AFE
	sta $03
	jsr L869022
	jsr L86F3C3
	lda $1001
	bit #$0020
	beq L86F2D3
	lda $07B7
	bit #$0010
	bne L86F2D9
L86F2D3:
	lda #$0000
	jmp L86F3ED

L86F2D9:
	lda #$0000
	jmp L86F486

L86F2DF:
	lda #$89FE
	sta $03
	jsr L869039
	jsr L86F3C3
	lda $1001
	bit #$0020
	beq L86F2FA
	lda $07B7
	bit #$0010
	beq L86F300
L86F2FA:
	lda #$0008
	jmp L86F486

L86F300:
	lda #$0008
	jmp L86F3ED

L86F306:
	lda #$98FE
	sta $03
	lda $075F
	jsr L8690B9
	cmp #$0009
	bne L86F31B
	lda #$004F
	bra L86F345

L86F31B:
	cmp #$004F
	bne L86F330
	lda $1001
	and #$00FF
	bit #$0020
	beq L86F352
	lda #$0050
	bra L86F345

L86F330:
	cmp #$0029
	beq L86F33F
	cmp #$0040
	beq L86F33F
	cmp #$002D
	bne L86F352
L86F33F:
	lda $075F
	and #$00FF
L86F345:
	sec
	sbc #$0029
	jsr L86F3D6
	lda #$0000
	jsr L86F3ED
L86F352:
	rts

L86F353:
	lda #$ACFE
	sta $03
	lda $075E
	and #$00FF
	cmp #$002A
	bne L86F368
	lda #$0051
	bra L86F3A2

L86F368:
	lda $0760
	jsr L8690B9
	cmp #$0009
	bne L86F378
	lda #$004F
	bra L86F3A2

L86F378:
	cmp #$004F
	bne L86F38D
	lda $1001
	and #$00FF
	bit #$0020
	beq L86F3C2
	lda #$0050
	bra L86F3A2

L86F38D:
	cmp #$0029
	beq L86F39C
	cmp #$0040
	beq L86F39C
	cmp #$002D
	bne L86F3C2
L86F39C:
	lda $0760
	and #$00FF
L86F3A2:
	sec
	sbc #$0029
	jsr L86F3D6
	lda $075E
	and #$00FF
	cmp #$002A
	bne L86F3BC
	lda #$0008
	jsr L86F3ED
	bra L86F3C2

L86F3BC:
	lda #$0008
	jsr L86F486
L86F3C2:
	rts

L86F3C3:
	sta $15
	asl
	adc $15
	tax
	lda.l (L958CE9 + 1),X
	sta $72
	lda.l L958CE9,X
	sta $71
	rts

L86F3D6:
	sta $15
	asl
	adc $15
	tax
	lda.l (L958A68 + 1),X
	sta $72
	lda.l L958A68,X
	sta $71
	rts

L86F3E9:
	jsr L86F7E7
	rts

L86F3ED:
	pha
	jsr L86F3E9
	pla
	sta $15
	sep #$20
	phb
	lda #$7E
	pha
	plb
	lda $4110
	sta $27
	rep #$20
	lda $410E
	sta $00
	lda $27
	and #$00FF
	asl
	adc $00
	pha
	tax
	ldy #$0000
	sep #$20
L86F416:
	lda $40FE,Y
	sta ($03),Y
	iny
	dex
	bne L86F416
	rep #$20
	lda $00
	clc
	adc #$40FE
	sta $00
	sta $06
	pla
	clc
	adc $03
	tax
L86F430:
	rep #$20
	lda ($06)
	tay
	inc $06
	inc $06
	sep #$20
	lda ($00),Y
	sta $28
	sta.w $0000,X
	inx
	iny
L86F444:
	lda #$08
	sta $25
	lda ($00),Y
	sta.w $0000,X
	inx
	iny
L86F44F:
	lda ($00),Y
	sta.w $0000,X
	inx
	iny
	lda ($00),Y
	sta.w $0000,X
	inx
	iny
	lda ($00),Y
	sta.w $0000,X
	inx
	iny
	lda ($00),Y
	and #$E7
	ora #$20
	ora $15
	sta.w $0000,X
	inx
	iny
	dec $28
	beq L86F47B
	dec $25
	bne L86F44F
	bra L86F444

L86F47B:
	dec $27
	beq L86F482
	jmp L86F430

L86F482:
	rep #$20
	plb
	rts

L86F486:
	pha
	jsr L86F3E9
	pla
	sta $15
	sep #$20
	phb
	lda #$7E
	pha
	plb
	lda $4110
	sta $27
	rep #$20
	lda $410E
	sta $00
	lda $27
	and #$00FF
	asl
	adc $00
	pha
	tax
	ldy #$0000
	sep #$20
L86F4AF:
	lda $40FE,Y
	sta ($03),Y
	iny
	dex
	bne L86F4AF
	rep #$20
	lda $00
	clc
	adc #$40FE
	sta $00
	sta $06
	pla
	clc
	adc $03
	tax
L86F4C9:
	rep #$20
	lda ($06)
	tay
	inc $06
	inc $06
	sep #$20
	lda ($00),Y
	sta $28
	sta.w $0000,X
	inx
	iny
L86F4DD:
	lda #$08
	sta $25
	lda ($00),Y
	sta $26
	sta.w $0000,X
	inx
	iny
L86F4EA:
	lda ($00),Y
	sta.w $0000,X
	inx
	iny
	lda ($00),Y
	eor #$FF
	ina
	asl $26
	bcc L86F4FE
	sbc #$10
	bra L86F501

L86F4FE:
	sec
	sbc #$08
L86F501:
	sta.w $0000,X
	inx
	iny
	lda ($00),Y
	sta.w $0000,X
	inx
	iny
	lda ($00),Y
	eor #$40
	and #$E7
	ora #$20
	ora $15
	sta.w $0000,X
	inx
	iny
	dec $28
	beq L86F526
	dec $25
	bne L86F4EA
	bra L86F4DD

L86F526:
	dec $27
	beq L86F52D
	jmp L86F4C9

L86F52D:
	rep #$20
	plb
	rts

L86F531:
	sep #$20
	lda $0761
	cmp $0762
	bne L86F543
	cmp #$0B
	bne L86F543
	lda #$02
	bra L86F56C

L86F543:
	lda $0761
	cmp #$14
	bcc L86F56A
	cmp #$18
	bcc L86F566
	cmp #$1C
	beq L86F566
	cmp #$2D
	bcc L86F56A
	cmp #$30
	bcc L86F566
	cmp #$66
	beq L86F566
	cmp #$6E
	beq L86F56A
	cmp #$85
	bne L86F56A
L86F566:
	lda #$05
	bra L86F56C

L86F56A:
	lda #$00
L86F56C:
	rep #$20
	and #$00FF
	asl
	asl
	asl
	asl
	adc #$D733
	sta $1024
	rts

L86F57C:
	and #$00FF
	asl
	asl
	asl
	asl
	adc #$D733
	sta $1024
	rtl

L86F58A:
	php
	sep #$20
	lda $02
	pha
	lda $01
	pha
	lda $00
	pha
	rep #$10
	lda $4211
	lda $1003
	bit #$02
	beq L86F5A5
	jmp L86F67E

L86F5A5:
	lda $1000
	bit #$04
	beq L86F5AF
	jmp L86F63B

L86F5AF:
	lda $1003
	bit #$01
	beq L86F5B9
	jmp L86F63B

L86F5B9:
	lda $4212
	bit #$40
	bne L86F5B9
L86F5C0:
	lda $4212
	bit #$40
	beq L86F5C0
	lda $7A
	ora #$80
	sta $2100
	stz $2105
	lda #$11
	sta $210B
	lda #$1C
	sta $2107
	lda #$06
	sta $210E
	stz $210E
	sta $2110
	stz $2110
	lda $100C
	sta $2123
	lda $100A
	sta $2126
	lda $100B
	sta $2127
	stz $2121
	stz $2122
	stz $2122
	lda #$20
	sta $2121
	ldx #$0000
L86F60C:
	lda $1C00,X
	sta $2122
	inx
	cpx #$0018
	bcc L86F60C
	lda #$00
	sta $2101
	lda $1000
	bit #$01
	bne L86F62F
	lda $A0
	and #$E3
	ora #$03
	sta $212C
	bra L86F638

L86F62F:
	lda $A0
	and #$E3
	ora #$13
	sta $212C
L86F638:
	jmp L86F6AC

L86F63B:
	lda $4212
	bit #$40
	bne L86F63B
L86F642:
	lda $4212
	bit #$40
	beq L86F642
	lda $7A
	ora #$80
	sta $2100
	lda #$01
	sta $2105
	lda $A0
	and #$F4
	ora #$14
	sta $212C
	lda $7B
	eor #$01
	sta $2101
	stz $2111
	lda $1003
	bit #$01
	beq L86F67C
	lda $85
	and #$F0
	ora #$03
	sta $210C
	lda #$17
	sta $A0
L86F67C:
	bra L86F6AC

L86F67E:
	lda $4212
	bit #$40
	bne L86F67E
L86F685:
	lda $4212
	bit #$40
	beq L86F685
	lda $7A
	ora #$80
	sta $2100
	rep #$20
	jsr L86CF2A
	jsr L86CD2D
	sep #$30
	lda $91
	sta $2111
	stz $2111
	jsl L80892E
	jmp L86F6DF

L86F6AC:
	stz $2131
	stz $2106
	lda $1004
	bit #$08
	beq L86F6C9
L86F6B9:
	lda $4212
	bit #$40
	bne L86F6B9
L86F6C0:
	lda $4212
	bit #$40
	beq L86F6C0
	bra L86F6DF

L86F6C9:
	lda $4212
	bit #$40
	bne L86F6C9
L86F6D0:
	lda $4212
	bit #$40
	beq L86F6D0
	lda $1050
	and #$7F
	sta $2100
L86F6DF:
	lda $1000
	ora #$40
	sta $1000
	pla
	sta $00
	pla
	sta $01
	pla
	sta $02
	plp
	rtl

L86F6F2:
	php
	pha
	sep #$20
	lda #$04
	sta $A0
	sta $212C
	lda $7A
	and #$7F
	ora #$0F
	sta $7A
	sta $2100
	pla
	plp
	rtl

L86F70B:
.ACCU 16
	lda $1003
	bit #$0001
	bne L86F721
	lda #bank100(L86F722)
	sta $01
	lda #L86F722
	sta $00
	jsl L808EAD
L86F721:
	rts

L86F722:
DMA_DATA $001C18 $0018 $20

L86F729:
.INDEX 16
	sep #$20
	lda $1003
	bit #$01
	bne L86F75A
	lda #$10
	sta $2121
L86F737:
	ldx #$0000
L86F73A:
	lda $213B
	sta $1C00,X
	inx
	cpx #$0018
	bcc L86F73A
	lda #$20
	sta $2121
	ldx #$0000
L86F74E:
	lda $213B
	sta $1C18,X
	inx
	cpx #$0018
	bcc L86F74E
L86F75A:
	rep #$20
	rts

L86F75D:
	sei
	sep #$20
	lda $F2
	ora #$30
	sta $F2
	sta $4200
	rep #$20
	lda #$0000
	sta $F5
	lda #$007F
	and #$00FF
	sta $F3
	cli
	rts

L86F77A:
	sei
	sep #$20
	lda $F2
	and #$CF
	sta $F2
	sta $4200
	rep #$20
	rts

L86F789:
	sta $1DB4,X
	inx
	rts

L86F78E:
.ACCU 8
	lda $1007
	asl
	asl
	asl
	clc
	adc #$10
	ora #$80
	sta $1DB4,X
	inx
	lda #$FE
	jsr L86F789
	rts

L86F7A3:
	lda $1007
	beq L86F7B6
	asl
	asl
	asl
	ora #$80
	sta $1DB4,X
	inx
	lda #$FE
	jsr L86F789
L86F7B6:
	rts

L86F7B7:
	lda #$FB
	jsr L86F789
	lda #$FE
	jsr L86F789
	rts

L86F7C2:
	stz $02
	stz $05
	lda #$01
	sta $27
	lda #$FD
	jsr L86F789
	lda #$01
	jsr L86F789
	lda #$FE
	jsr L86F789
	rts

L86F7DA:
.ACCU 16
	lda $1003
	bit #$0001
	beq L86F7E6
	jsl L8087EA
L86F7E6:
	rts

L86F7E7:
	lda $1003
	bit #$0002
	beq L86F7F7
L86F7EF:
	lda $0202
	and #$00FF
	bne L86F7EF
L86F7F7:
	lda $00
	pha
	lda $03
	pha
	stz $76
	jsl DECOMPRESS_ASSET
	pla
	sta $03
	pla
	sta $00
	rts

L86F80A:
.INDEX 16
	lda $72
	sta $01
	lda $71
	sta $00
	sep #$20
	ldx #$0000
L86F817:
	ldy #$0000
	lda [$00],Y
	sta.l DecompressionLocation,X
	inx
	ldy $00
	iny
	bne L86F82B
	ldy #$8000
	inc $02
L86F82B:
	sty $00
	cpx $15
	bcc L86F817
	rep #$20
	rts

L86F834:
	sta $15
	lda $1003
	bit #$0002
	beq L86F846
L86F83E:
	lda $0202
	and #$00FF
	bne L86F83E
L86F846:
	lda $72
	sta $01
	lda $71
	sta $00
	sep #$20
	ldx #$0000
L86F853:
	ldy #$0000
	lda [$00],Y
	sta.l DecompressionLocation,X
	inx
	ldy $00
	iny
	bne L86F867
	ldy #$8000
	inc $02
L86F867:
	sty $00
	cpx $15
	bcc L86F853
	rep #$20
	rts

L86F870:
	lda $106E
	and #$00FF
	beq L86F8ED
	lda $1005
	bit #$0003
	bne L86F8ED
	lda $106E
	and #$00FF
	cmp #$0020
	bne L86F89D
	lda #bank100(LBFD5D6)
	sta $72
	lda #LBFD5D6
	sta $71
	lda #$0020
	jsr L86F834
	bra L86F8E6

L86F89D:
	ldx #$0020
L86F8A0:
	lda $7E40FC,X
	bit #$7C00
	beq L86F8AD
	sec
	sbc #$0400
L86F8AD:
	bit #$03E0
	beq L86F8B6
	sec
	sbc #$0020
L86F8B6:
	bit #$001F
	beq L86F8BC
	dea
L86F8BC:
	sta $7E40FC,X
	dex
	dex
	bne L86F8A0
	lda #bank100(L86F8EE)
	sta $01
	lda #L86F8EE
	sta $00
	jsl L808EAD
	ldx #$0018
L86F8D5:
	lda $7E40FC,X
	sta.l $001C16,X
	dex
	dex
	bne L86F8D5
	dec $1CB2
	dec $8F
L86F8E6:
	sep #$20
	dec $106E
	rep #$20
L86F8ED:
	rts

L86F8EE:
DMA_DATA DecompressionLocation $0020 $20

L86F8F5:
	sep #$20
	lda #$20
	sta $106E
	lda $A5
	and #$DF
	sta $A5
	lda $1002
	ora #$20
	sta $1002
	rep #$20
	rts

L86F90D:
	sep #$20
	lda.l $000708
	ina
	sta.l $000708
	rep #$20
	lda.l $0006FE
	ora #$0001
	sta.l $0006FE
	rtl

L86F926:
	sep #$20
	lda #$01
	sta.l $0004DA,X
	rep #$20
	lda.l $0006FE
	ora #$0001
	sta.l $0006FE
	rtl

L86F93C:
	rtl

L86F93D:
	phx
	jsr L86FC04
	jsl L86BE85
	plx
	lda.l $0006FE
	ora #$0001
	sta.l $0006FE
	rtl

L86F952:
	rep #$20
	jsr L86FC04
	asl
	sep #$20
	sta $104C
	rep #$20
	phx
	tax
	lda.l L86F982,X
	plx
	jsr L86FC1B
	sep #$20
	lda $104C
	and #$7F
	cmp #$0A
	bcs L86F974
L86F974:
	rep #$20
	lda.l $0006FE
	ora #$0001
	sta.l $0006FE
	rtl

L86F982:
.db $31 $00 $32 $00 $33 $00 $34 $00
.db $35 $00 $36 $00 $37 $00 $38 $00
.db $3A $00 $4D $00

L86F996:
.db $B1 $00 $B2 $00 $B3 $00 $B4 $00
.db $B5 $00 $B3 $00 $B3 $00 $B5 $00
.db $B1 $00

L86F9A8:
	rep #$20
	jsr L86FC04
	cmp #$0002
	bcc L86F9B7
	jsr L86F9EC
	bra L86F9BE

L86F9B7:
	asl
	phx
	tax
	jsr (L86F9CA,X)
	plx
L86F9BE:
	lda.l $0006FE
	ora #$0001
	sta.l $0006FE
	rtl


L86F9CA:
.dw L86F9CE
.dw L86F9DD

L86F9CE:
	sep #$20
	lda #$03
	sta $102B
	lda #$10
	sta $102A
	rep #$20
	rts

L86F9DD:
	sep #$20
	lda #$04
	sta $102B
	lda #$02
	sta $102A
	rep #$20
	rts

L86F9EC:
	jsr L86FC04
	sep #$20
	clc
	adc #$03
	sta $102B
	lda #$10
	sta $102A
	rep #$20
	rts

L86F9FF:
	phx
	jsr L86FC04
	asl
	tax
	lda.l L95DBB4,X
	sta $0876
	plx
	lda.l $0006FE
	ora #$0001
	sta.l $0006FE
	rtl

L86FA19:
	rep #$20
	jsr L86FC04
	pha
	cmp #$003E
	bne L86FA35
	lda $0764
	and #$00FF
	cmp #$004F
	bne L86FA35
	pla
	lda #$003D
	bra L86FA36

L86FA35:
	pla
L86FA36:
	asl
	sep #$20
	stz $104C
	rep #$20
	phx
	tax
	lda.l L86FA54,X
	plx
	jsr L86FC46
	lda.l $0006FE
	ora #$0001
	sta.l $0006FE
	rtl

L86FA54:
.db $81 $00 $82 $00
.db $83 $00 $84 $00 $85 $00 $86 $00
.db $87 $00 $96 $00 $E1 $00 $41 $00
.db $97 $00 $E2 $00 $42 $00 $88 $00
.db $89 $00 $E4 $00 $E5 $00 $91 $00
.db $8C $00 $94 $00 $E6 $00 $93 $00
.db $8D $00 $8E $00 $43 $00 $95 $00
.db $E7 $00 $8A $00 $8B $00 $8F $00
.db $DF $00 $A1 $00 $A2 $00 $A3 $00
.db $A4 $00 $A5 $00 $A6 $00 $A7 $00
.db $A8 $00 $A9 $00 $AA $00 $4B $00
.db $99 $00 $9A $00 $48 $00 $49 $00
.db $AB $00 $4C $00 $F2 $00 $3B $00
.db $3C $00 $3D $00 $3E $00 $C5 $00
.db $C6 $00 $6A $00 $6B $00 $E9 $00
.db $6C $00 $6D $00 $E0 $00 $60 $00
.db $5F $00

L86FAD2:
	jsr L86FC04
	jsl L86F57C
	lda.l $0006FE
	ora #$0001
	sta.l $0006FE
	rtl

L86FAE5:
	jsr L86FC04
	jsl L86BFFD
	lda.l $0006FE
	ora #$0001
	sta.l $0006FE
	rtl

L86FAF8:
	jsr L86FC04
	sta $15
	bit #$000C
	beq L86FB63
	phx
	sep #$20
	lda $04E9
	bmi L86FB0F
	lda $075D
	bra L86FB12

L86FB0F:
	lda $075E
L86FB12:
	sta $17
	ldx #$0000
L86FB17:
	lda.l L958E4E,X
	cmp #$FF
	bne L86FB23
	lda #$00
	bra L86FB2F

L86FB23:
	cmp $17
	beq L86FB2B
	inx
	inx
	bra L86FB17

L86FB2B:
	lda.l (L958E4E + 1),X
L86FB2F:
	rep #$20
	and #$00FF
	sta $17
	plx
	lda $15
	bit #$0008
	bne L86FB4A
	lda $04E9
	bit #$0080
	bne L86FB52
L86FB46:
	lda $17
	bra L86FB57

L86FB4A:
	lda $04E9
	bit #$0080
	bne L86FB46
L86FB52:
	lda $17
	eor #$00FF
L86FB57:
	clc
	adc $04CE,X
	and #$00FF
	sta $04CE,X
	bra L86FBA5

L86FB63:
	phx
	lda $075E
	and #$00FF
	asl
	tax
	lda.l L958DF4,X
	and #$00FF
	sta $17
	lda.l (L958DF4 + 1),X
	and #$00FF
	sta $19
	plx
	lda $15
	bit #$0002
	beq L86FB92
	lda $04CE,X
	clc
	adc $17
	and #$00FF
	sta $04CE,X
L86FB92:
	lda $15
	bit #$0001
	beq L86FBA5
	lda $04D0,X
	clc
	adc $19
	and #$00FF
	sta $04D0,X
L86FBA5:
	lda.l $0006FE
	ora #$0001
	sta.l $0006FE
	rtl

L86FBB1:
	rep #$20
	lda.w $005D
	bit #$0080
	bne L86FBC0
	lda $075F
	bra L86FBC3

L86FBC0:
	lda $0760
L86FBC3:
	and #$00FF
	cmp #$0009
	beq L86FBE3
	cmp #$0024
	beq L86FBE3
	cmp #$0027
	bcs L86FBE3
	jsr L86FC04
	asl
	phx
	tax
	lda.l L86FBEF,X
	plx
	jsr L86FC71
L86FBE3:
	lda.l $0006FE
	ora #$0001
	sta.l $0006FE
	rtl

L86FBEF:
.db $74 $00

L86FBF1:
	jsr L86FC04
	jsl L86D08C
	lda.l $0006FE
	ora #$0001
	sta.l $0006FE
	rtl

L86FC04:
	lda $04C7,X
	sta $01
	lda $04BE,X
	xba
	sta $00
	ldy #$0001
	lda [$00],Y
	and #$00FF
	eor #$00FF
	rts

L86FC1B:
.ACCU 16
	pha
	lda $04CE,X
	and #$00FF
	sta $089D
	lda.w $005D
	bit #$0080
	bne L86FC34
	pla
	jsl L80B43E
	bra L86FC45

L86FC34:
	pla
	jsl L80B44C
	sep #$20
	lda $104C
	ora #$80
	sta $104C
	rep #$20
L86FC45:
	rts

L86FC46:
	pha
	lda $04CE,X
	and #$00FF
	sta $089F
	lda.w $005D
	bit #$0080
	bne L86FC5F
	pla
	jsl L80B48F
	bra L86FC70

L86FC5F:
	pla
	jsl L80B49D
	sep #$20
	lda $104C
	ora #$80
	sta $104C
	rep #$20
L86FC70:
	rts

L86FC71:
	pha
	lda $04CE,X
	and #$00FF
	sta $089F
	lda.w $005D
	bit #$0080
	beq L86FC8A
	pla
	jsl L80B48F
	bra L86FC9B

L86FC8A:
	pla
	jsl L80B49D
	sep #$20
	lda $104C
	ora #$80
	sta $104C
	rep #$20
L86FC9B:
	rts

L86FC9C:
.dw L86F90D
.dw L86F926
.dw L86F93C
.dw L86F93D
.dw L86F952
.dw L86F9A8
.dw L86F9FF
.dw L86FA19
.dw L86FAD2
.dw L86FAE5
.dw L86FAF8
.dw L86FBB1
.dw L86FBF1

L86FCB6:
	phx
	sep #$20
	cmp #$01
	beq L86FCDC
	cmp #$51
	beq L86FCD9
	lda.l $0004DB,X
	dea
	sta.l $0004DB,X
	dea
	rep #$20
	and #$00FF
	tax
	sep #$20
	lda.l L86FCE1,X
	beq L86FCDC
L86FCD9:
	clc
	bra L86FCDD

L86FCDC:
	sec
L86FCDD:
	rep #$20
	plx
	rts

L86FCE1:
.db $00 $00 $01 $00 $00 $00 $01 $00
.db $00 $00 $01 $00 $00 $01 $00 $00
.db $01 $00 $01 $00 $01 $00 $01 $00
.db $01 $00 $01 $00 $01 $00 $01 $00
.db $01 $00 $01 $01 $00 $01 $01 $01
.db $00 $01 $01 $01 $00 $01 $01 $01
.db $01 $00 $01 $01 $01 $01 $00 $01
.db $01 $01 $01 $01 $00 $01 $01 $01
.db $01 $01 $00 $01 $01 $01 $01 $01
.db $01 $00 $01 $01 $01 $01 $01 $01
.db $01 $01 $00 $01 $01 $01 $00 $01
.db $01 $01 $00 $01 $01 $00 $01 $01
.db $00 $01 $00 $01 $00 $01 $00 $01
.db $00 $01 $00 $01 $00 $01 $00 $01
.db $00 $01 $00 $00 $01 $00 $00 $00
.db $01 $00 $00 $00 $01 $00 $00 $00
.db $00 $01 $00 $00 $00 $00 $01 $00
.db $00 $00 $00 $00 $01 $00 $00 $00
.db $00 $00 $01 $00 $00 $00 $00 $00
.db $00 $01 $00 $00 $00 $00 $00 $00

L86FD81:
	php
	phb
	sep #$20
	lda #$7E
	pha
	plb
	sep #$20
	lda $1003
	bit #$01
	beq L86FDB3
	cpx #$0000
	bne L86FDB3
	lda $1062
	sec
	sbc $04CE,X
	sta $15
	lda $102C
	sec
	sbc $15
	sta $102C
	lda $1062
	sta $04CE,X
	sta $56
	bra L86FDC2

L86FDB3:
	lda $56
	sec
	sbc $102C
	sta $56
	lda $58
	sec
	sbc $8B
	sta $58
L86FDC2:
	rep #$20
	sep #$20
	lda.w $005D
	bmi L86FDDB
	lda $56
	clc
	adc $104A
	sta $56
	lda $58
	clc
	adc $104B
	sta $58
L86FDDB:
	rep #$20
	stx $1042
	lda.l $0004DB,X
	and #$00FF
	beq L86FDF1
	jsr L86FCB6
	bcc L86FDF1
	jmp L86FF51

L86FDF1:
	rep #$30
	lda $62
	sta $00
	lda $5A
	asl
	tay
	lda ($00),Y
	clc
	adc $00
	sta $03
	sep #$20
	ldy #$0000
	lda ($03),Y
	bne L86FE0E
	jmp L86FF51

L86FE0E:
	sta $26
	rep #$20
	and #$00FF
	asl
	asl
	sta $15
	lda $1046
	sec
	sbc $15
	sta $1046
	sta $1044
	lsr
	sta $15
	lsr
	lsr
	sep #$20
	lsr
	sta $1048
	lda $15
	and #$06
	sta $1049
	rep #$20
	lda $1042
	cmp #$0040
	bcs L86FE58
	sep #$20
	lda.w $005D
	bmi L86FE50
	lda $56
	sec
	sbc $1040
	bra L86FE56

L86FE50:
	lda $56
	sec
	sbc $1041
L86FE56:
	sta $56
L86FE58:
	rep #$20
	lda $1042
	cmp #$0040
	bcs L86FEA1
	lda $1001
	bit #$0010
	beq L86FE77
	lda $075E
	cmp #$00FF
	bne L86FE77
	lda $1042
	bne L86FEA1
L86FE77:
	sep #$20
	ldy #$0005
	lda ($03),Y
	and #$01
	xba
	lda.w $005D
	bmi L86FE8C
	xba
	sta $103E
	bra L86FE90

L86FE8C:
	xba
	sta $103F
L86FE90:
	lda $103E
	eor #$01
	asl
	ora $103F
	asl
	asl
	asl
	ora $103E
	sta $7B
L86FEA1:
	sep #$20
	ldy #$0001
	ldx $1044
L86FEA9:
	lda ($03),Y
	iny
	sta $27
	lda #$08
	sta $28
L86FEB2:
	lda ($03),Y
	clc
	adc $58
	sta $0211,X
	iny
	lda ($03),Y
	bpl L86FEC6
	rep #$20
	ora #$FF00
	bra L86FECB

L86FEC6:
	rep #$20
	and #$00FF
L86FECB:
	clc
	adc $56
	sta $1D
	sep #$20
	sta $0210,X
	iny
	lda ($03),Y
	sta $0212,X
	iny
	lda.w $005D
	bmi L86FEE7
	lda ($03),Y
	and #$FE
	bra L86FEEB

L86FEE7:
	lda ($03),Y
	ora #$01
L86FEEB:
	sta $0213,X
	iny
	rep #$20
	txa
	clc
	adc #$0004
	tax
	sep #$20
	phx
	phy
	sep #$10
	ldx $1049
	ldy $1048
	lda $0410,Y
	and.l L86FF56,X
	sta $0410,Y
	lda $27
	bpl L86FF1B
	lda $0410,Y
	ora.l (L86FF5E + 1),X
	sta $0410,Y
L86FF1B:
	lda $1E
	bit #$01
	beq L86FF2B
	lda $0410,Y
	ora.l L86FF5E,X
	sta $0410,Y
L86FF2B:
	rep #$10
	ply
	plx
	asl $27
	lda $1049
	ina
	ina
	sta $1049
	cmp #$08
	bcc L86FF43
	stz $1049
	inc $1048
L86FF43:
	dec $26
	beq L86FF51
	dec $28
	beq L86FF4E
	jmp L86FEB2

L86FF4E:
	jmp L86FEA9

L86FF51:
	rep #$20
	plb
	plp
	rtl

L86FF56:
.db $FC $FC $F3 $F3 $CF $CF $3F $3F

L86FF5E:
.db $01 $02 $04 $08 $10 $20 $40 $80

.ENDS
