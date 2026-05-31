.BANK 21
.ORG $0000

.SECTION "Bank21" FORCE

L958000:
.db $46 $80 $5D $80 $9B $80 $BB $80
.db $DB $80 $F5 $80 $0F $81 $35 $81
.db $5B $81 $8A $81 $CE $81 $E2 $81
.db $02 $82 $06 $82 $65 $82 $DF $82
.db $5C $83 $8E $83 $9F $83 $01 $84
.db $36 $84 $98 $84 $FA $84 $5C $85
.db $67 $85 $84 $85 $94 $85 $A4 $85
.db $BE $85 $DB $85 $22 $86 $34 $86
.db $38 $86 $6A $86 $93 $86

L958046:
.db $23 $02
.db $FD $00 $02 $FF $00 $02 $FB $00
.db $02 $F4 $00 $02 $EC $00 $02 $E4
.db $00 $02 $E0 $00 $FF $23 $01 $FF
.db $00 $03 $F4 $00 $01 $FF $00 $03
.db $F4 $00 $01 $FF $00 $03 $F4 $00
.db $01 $FF $00 $03 $F4 $00 $01 $FF
.db $00 $03 $F4 $00 $01 $FF $00 $03
.db $F4 $00 $01 $FF $00 $03 $F4 $00
.db $02 $FF $00 $02 $FB $00 $02 $F4
.db $00 $02 $EC $00 $02 $E4 $00 $02
.db $E0 $00 $FF $23 $03 $22 $C0 $03
.db $24 $C0 $03 $26 $C0 $03 $28 $C0
.db $03 $29 $C0 $03 $29 $C0 $03 $28
.db $C0 $03 $26 $C0 $03 $24 $C0 $03
.db $22 $C0 $FF $23 $02 $24 $C0 $02
.db $2A $C1 $02 $31 $C3 $02 $38 $C5
.db $08 $3F $C8 $02 $38 $C5 $02 $31
.db $C3 $02 $2A $C1 $02 $24 $C0 $01
.db $E0 $00 $FF $A3 $02 $E1 $00 $02
.db $E2 $00 $02 $E3 $00 $02 $E4 $00
.db $02 $E5 $00 $02 $E6 $00 $02 $E7
.db $00 $02 $E8 $00 $FE $A3 $01 $E8
.db $00 $01 $E7 $00 $01 $E6 $00 $01
.db $E5 $00 $01 $E4 $00 $01 $E3 $00
.db $01 $E2 $00 $01 $E1 $00 $FF $A3
.db $04 $61 $81 $04 $61 $82 $04 $62
.db $83 $04 $62 $84 $04 $63 $85 $04
.db $63 $86 $04 $64 $87 $04 $64 $88
.db $04 $65 $89 $04 $65 $8A $04 $66
.db $8B $04 $66 $8C $FE $A3 $01 $66
.db $8C $01 $66 $8B $01 $65 $8A $01
.db $65 $89 $01 $64 $88 $01 $64 $87
.db $01 $63 $86 $01 $63 $85 $01 $62
.db $84 $01 $62 $83 $01 $61 $82 $01
.db $61 $81 $FF $23 $06 $E1 $00 $06
.db $E2 $00 $06 $E3 $00 $06 $E4 $00
.db $06 $E5 $00 $06 $E6 $00 $06 $E7
.db $00 $06 $E8 $00 $06 $E9 $00 $06
.db $EA $00 $06 $EB $00 $06 $EC $00
.db $06 $ED $00 $06 $EE $00 $06 $EF
.db $00 $FE $23 $02 $FF $00 $02 $F4
.db $00 $02 $FF $00 $02 $F4 $00 $02
.db $FF $00 $02 $F4 $00 $02 $FF $00
.db $02 $F4 $00 $02 $FF $00 $02 $F4
.db $00 $02 $FF $00 $02 $F4 $00 $02
.db $FF $00 $02 $F4 $00 $02 $FF $00
.db $02 $F4 $00 $02 $FF $00 $02 $F4
.db $00 $02 $FF $00 $02 $F4 $00 $02
.db $FF $00 $02 $F4 $00 $FF $FF $0A
.db $00 $02 $01 $02 $03 $02 $05 $02
.db $07 $02 $09 $02 $0B $02 $0D $02
.db $0F $FD $FF $02 $0F $02 $0E $02
.db $0D $02 $0C $02 $0B $02 $0A $02
.db $09 $02 $08 $02 $09 $02 $0A $02
.db $0B $02 $0C $02 $0D $02 $0E $02
.db $0F $FD $FF $01 $0F $FF $A3 $02
.db $E1 $00 $02 $E2 $00 $02 $E3 $00
.db $02 $E4 $00 $02 $E5 $00 $02 $E6
.db $00 $02 $E7 $00 $02 $E8 $00 $02
.db $E9 $00 $02 $EA $00 $02 $EB $00
.db $02 $EC $00 $02 $ED $00 $02 $EE
.db $00 $02 $EF $00 $02 $F0 $00 $02
.db $F1 $00 $02 $F2 $00 $02 $F3 $00
.db $02 $F4 $00 $02 $F5 $00 $02 $F6
.db $00 $02 $F7 $00 $02 $F8 $00 $02
.db $F9 $00 $02 $FA $00 $02 $FB $00
.db $02 $FC $00 $02 $FD $00 $02 $FE
.db $00 $02 $FF $00 $FE $10 $02 $FF
.db $00 $02 $DF $00 $02 $CF $2F $02
.db $4F $AF $02 $5F $A0 $02 $4F $AF
.db $02 $6F $8F $02 $7F $80 $02 $6F
.db $8F $02 $EF $00 $02 $FF $00 $02
.db $DF $00 $02 $CF $2F $02 $4F $AF
.db $02 $5F $A0 $02 $4F $AF $02 $6F
.db $8F $02 $7F $80 $02 $6F $8F $02
.db $EF $00 $02 $FF $00 $02 $DF $00
.db $02 $CF $2F $02 $4F $AF $02 $5F
.db $A0 $02 $4F $AF $02 $6F $8F $02
.db $7F $80 $02 $6F $8F $02 $EF $00
.db $02 $FF $00 $02 $DF $00 $02 $CF
.db $2F $02 $4F $AF $02 $5F $A0 $02
.db $4F $AF $02 $6F $8F $02 $7F $80
.db $02 $6F $8F $02 $EF $00 $FF $23
.db $01 $FF $00 $01 $F8 $00 $01 $F0
.db $00 $01 $E8 $00 $08 $00 $00 $01
.db $FF $00 $01 $F8 $00 $01 $F0 $00
.db $01 $E8 $00 $08 $00 $00 $01 $FF
.db $00 $01 $F8 $00 $01 $F0 $00 $01
.db $E8 $00 $08 $00 $00 $01 $FF $00
.db $01 $F8 $00 $01 $F0 $00 $01 $E8
.db $00 $02 $00 $00 $01 $FF $00 $01
.db $F8 $00 $01 $F0 $00 $01 $E8 $00
.db $02 $00 $00 $01 $FF $00 $01 $F8
.db $00 $01 $F0 $00 $01 $E8 $00 $02
.db $00 $00 $01 $FF $00 $01 $F8 $00
.db $01 $F0 $00 $01 $E8 $00 $02 $00
.db $00 $01 $FF $00 $01 $F0 $00 $01
.db $00 $00 $01 $FF $00 $01 $F0 $00
.db $01 $00 $00 $FF $A3 $06 $E1 $00
.db $06 $E2 $00 $06 $E3 $00 $06 $E4
.db $00 $06 $E5 $00 $06 $E6 $00 $06
.db $E7 $00 $06 $E8 $00 $06 $E9 $00
.db $06 $EA $00 $06 $EB $00 $06 $EC
.db $00 $06 $ED $00 $06 $EE $00 $06
.db $EF $00 $06 $F0 $00 $FF $23 $01
.db $FF $00 $01 $F8 $00 $01 $F0 $00
.db $01 $E8 $00 $02 $E0 $00 $FD $23
.db $03 $FF $00 $03 $FE $00 $03 $FD
.db $00 $03 $FC $00 $03 $FB $00 $03
.db $FA $00 $03 $F9 $00 $03 $F8 $00
.db $03 $F7 $00 $03 $F6 $00 $03 $F5
.db $00 $03 $F4 $00 $03 $F3 $00 $03
.db $F2 $00 $03 $F1 $00 $03 $F0 $00
.db $03 $EF $00 $03 $EE $00 $03 $ED
.db $00 $03 $EC $00 $03 $EB $00 $03
.db $EA $00 $03 $E9 $00 $03 $E8 $00
.db $03 $E7 $00 $03 $E6 $00 $03 $E5
.db $00 $03 $E4 $00 $03 $E3 $00 $03
.db $E2 $00 $03 $E1 $00 $03 $E0 $00
.db $FF $23 $02 $FF $00 $01 $BD $4F
.db $01 $BB $4E $01 $B9 $4D $01 $B7
.db $4C $01 $B5 $4B $01 $B3 $4A $01
.db $B1 $49 $01 $AF $48 $01 $AD $47
.db $01 $AB $46 $01 $A9 $45 $01 $A7
.db $44 $01 $A5 $43 $01 $A3 $42 $01
.db $A1 $41 $01 $E0 $00 $FF $23 $01
.db $E0 $00 $01 $E1 $00 $01 $E2 $00
.db $01 $E3 $00 $01 $E4 $00 $01 $E5
.db $00 $01 $E6 $00 $01 $E7 $00 $01
.db $E8 $00 $01 $E9 $00 $01 $EA $00
.db $01 $EB $00 $01 $EC $00 $01 $ED
.db $00 $01 $EE $00 $01 $EF $00 $01
.db $F0 $00 $01 $F1 $00 $01 $F2 $00
.db $01 $F3 $00 $01 $F4 $00 $01 $F5
.db $00 $01 $F6 $00 $01 $F7 $00 $01
.db $F8 $00 $01 $F9 $00 $01 $FA $00
.db $01 $FB $00 $01 $FC $00 $01 $FD
.db $00 $01 $FE $00 $01 $FF $00 $FE
.db $23 $02 $FF $00 $02 $D4 $2F $02
.db $CA $2F $0A $F0 $00 $02 $FF $00
.db $02 $D4 $2F $02 $CA $2F $08 $F0
.db $00 $02 $FF $00 $02 $D4 $2F $02
.db $CA $2F $04 $F0 $00 $02 $FF $00
.db $02 $D4 $2F $02 $CA $2F $02 $F0
.db $00 $02 $FF $00 $02 $D4 $2F $02
.db $CA $2F $02 $FF $00 $02 $D4 $2F
.db $02 $CA $2F $02 $FF $00 $02 $D4
.db $2F $02 $CA $2F $02 $FF $00 $02
.db $D4 $2F $02 $CA $2F $02 $FF $00
.db $02 $D4 $2F $02 $CA $2F $02 $FF
.db $00 $FF $23 $11 $FF $00 $02 $FE
.db $00 $02 $FD $00 $01 $FC $00 $02
.db $FB $00 $01 $FA $00 $02 $F9 $00
.db $01 $F8 $00 $02 $F7 $00 $01 $F6
.db $00 $02 $F5 $00 $01 $F4 $00 $02
.db $F3 $00 $01 $F2 $00 $02 $F1 $00
.db $01 $F0 $00 $02 $EF $00 $01 $EE
.db $00 $02 $ED $00 $01 $EC $00 $02
.db $EB $00 $01 $EA $00 $02 $E9 $00
.db $01 $E8 $00 $02 $E7 $00 $01 $E6
.db $00 $02 $E5 $00 $01 $E4 $00 $02
.db $E3 $00 $01 $E2 $00 $02 $E1 $00
.db $01 $E0 $00 $FF $23 $02 $FF $00
.db $01 $CE $2D $01 $C4 $26 $FD $A3
.db $01 $CF $24 $01 $CD $23 $01 $CB
.db $23 $01 $C9 $22 $01 $C7 $22 $01
.db $C5 $21 $01 $C3 $21 $01 $C1 $20
.db $01 $E0 $00 $FF $FF $04 $0E $04
.db $0D $04 $0C $04 $0B $04 $0A $04
.db $09 $04 $08 $FF $FF $04 $09 $04
.db $0A $04 $0B $04 $0C $04 $0D $04
.db $0E $04 $0F $FF $23 $02 $DF $3F
.db $01 $D0 $2B $01 $C8 $24 $01 $C0
.db $20 $02 $DF $3F $01 $D0 $2B $01
.db $C8 $24 $01 $C0 $20 $FF $A3 $01
.db $C0 $2F $01 $C0 $2D $01 $C0 $2B
.db $01 $C0 $29 $01 $C0 $27 $01 $C0
.db $25 $01 $C0 $23 $01 $C0 $21 $01
.db $E0 $00 $FF $10 $04 $FF $00 $02
.db $BF $5D $02 $BF $5B $02 $BF $59
.db $02 $BF $57 $02 $BF $55 $02 $BF
.db $53 $02 $BF $51 $02 $BF $4F $02
.db $BF $4D $02 $BF $4B $02 $BF $49
.db $02 $BF $47 $02 $BF $43 $02 $BF
.db $40 $02 $BC $40 $02 $B8 $40 $02
.db $B4 $40 $02 $B0 $40 $02 $AC $40
.db $02 $A8 $40 $02 $A4 $40 $02 $A0
.db $00 $FF $FE $04 $13 $04 $23 $04
.db $33 $06 $43 $04 $33 $04 $23 $04
.db $13 $30 $03 $FD $FE $01 $00 $FF
.db $A3 $04 $81 $61 $04 $82 $61 $04
.db $83 $62 $04 $84 $62 $04 $85 $63
.db $04 $86 $63 $04 $87 $64 $04 $88
.db $64 $04 $89 $65 $04 $8A $65 $04
.db $8A $66 $04 $8B $66 $04 $8B $67
.db $04 $8C $67 $04 $8C $68 $04 $8D
.db $68 $FE $A3 $08 $8C $67 $08 $8B
.db $66 $08 $8A $65 $04 $89 $64 $04
.db $88 $64 $04 $87 $63 $04 $86 $63
.db $04 $85 $62 $04 $84 $62 $04 $83
.db $61 $04 $82 $61 $04 $81 $60 $04
.db $E0 $00 $FF $10 $10 $8F $67 $08
.db $8E $67 $03 $8D $66 $03 $8C $66
.db $03 $8B $65 $03 $8A $65 $03 $89
.db $64 $03 $88 $64 $03 $87 $63 $03
.db $86 $63 $03 $85 $62 $03 $84 $62
.db $03 $83 $61 $03 $82 $61 $03 $81
.db $60 $03 $E0 $00 $FF

L9586C5:
.db $49 $0E $B7
.db $0E $00 $B7 $00 $00 $00 $00 $00
.db $00 $49 $0E $B7 $0E $00 $B7 $00
.db $00 $00 $00 $49 $0E $B7 $0E $00
.db $B7 $00 $00 $49 $0E $B7 $0E $00
.db $B7 $00 $00 $49 $0E $B7 $0E $00
.db $B7 $00 $00 $49 $0E $B7 $0E $00
.db $B7 $00 $00 $49 $0E $B7 $0E $00
.db $B7 $00 $00 $49 $0E $B7 $0E $00
.db $B7 $49 $0D $B7 $0D $00 $B7 $48
.db $0D $B8 $0D $00 $B8 $47 $0C $B9
.db $0C $00 $B9 $46 $0C $BA $0C $00
.db $BA $44 $0B $BC $0B $00 $BC $42
.db $0B $BE $0B $00 $BE $40 $0A $C0
.db $0A $00 $C0 $3E $0A $C2 $0A $00
.db $C2 $3B $09 $C5 $09 $00 $C5 $37
.db $09 $C9 $09 $00 $C9 $33 $08 $CD
.db $08 $00 $CD $2F $08 $D1 $08 $00
.db $D1 $2B $07 $D5 $07 $00 $D5 $27
.db $07 $D9 $07 $00 $D9 $23 $06 $DD
.db $06 $00 $DD $1F $06 $E1 $06 $00
.db $E1 $1B $05 $E5 $05 $00 $E5 $17
.db $05 $E9 $05 $00 $E9 $13 $04 $ED
.db $04 $00 $ED $11 $04 $EF $04 $00
.db $EF $0F $03 $F1 $03 $00 $F1 $0D
.db $03 $F3 $03 $00 $F3 $0B $02 $F5
.db $02 $00 $F5 $09 $02 $F7 $02 $00
.db $F7 $07 $01 $F9 $01 $00 $F9 $05
.db $01 $FB $01 $00 $FB $03 $00 $FD
.db $00 $00 $FD $01 $00 $FF $00 $00
.db $FF

L9587B1:
.db $01 $04 $02 $12 $12 $01 $01
.db $02 $02 $12 $12 $03 $03 $03 $13
.db $00 $16 $01 $01 $01 $01 $01 $18
.db $17 $19 $17 $19 $19 $00 $04 $04
.db $04 $01 $12 $07 $15 $02 $02 $16
.db $16 $16 $16 $16 $16 $16

L9587DE:
.dl LC2C5F1
.dl LC2C6F1
.dl LC2C7F1
.dl LC2C8F1
.dl LC2C9F1
.dl LC2CAF1
.dl LC2CBF1
.dl LC2CDF1
.dl LC2CEF1
.dl LC2CFF1
.dl LC2D1F1
.dl LC2D3F1
.dl LC2D4F1
.dl LC2D5F1
.dl LC2D6F1
.dl LC2D7F1
.dl LC2D8F1
.dl LC2DFF1
.dl LC2E0F1
.dl LC2E2F1
.dl LC2E3F1
.dl LC2E4F1
.dl LC2E7F1
.dl LC2E6F1
.dl LC2E5F1
.dl LC2E8F1
.dl LC2E9F1
.dl LC2EAF1
.dl LC2EBF1
.dl LC2C6F1
.dl LC2ECF1
.dl LC2EDF1
.dl LC2EEF1
.dl LC2C8F1
.dl LC2EFF1
.dl LC2F0F1
.dl LC2F1F1
.dl LC2F2F1
.dl LC2D9F1
.dl LC2D8F1
.dl LC2DAF1
.dl LC2DBF1
.dl LC2D8F1
.dl LC2DEF1
.dl LC2DDF1
.dl LC2CCF1
.dl LC2D0F1
.dl LC2D2F1
.dl LC2DCF1
.dl LC2E1F1
.dl LC2E6F1
.dl LC2E4F1
.dl LCA88FA
.dl LCA89FA
.dl LCA8AFA
.dl LCA8BFA
.dl LCA8CFA
.dl LCA8DFA
.dl LCA8EFA
.dl LCA8FFA
.dl LCA90FA
.dl LCA91FA
.dl LCA92FA
.dl LCA93FA
.dl LCA94FA
.dl LCA95FA

L9588A4:
.db $3B $3C $40 $44 $46 $4A $71 $7F
.db $80 $3A $3E $4B $67 $4C $FF

L9588B3:
.dl LC2FD51
.dl LC3A925
.dl LC3B151
.dl LC3BEBD
.dl LC3D5C6
.dl LC3EE07
.dl LC3F9B8
.dl LC49165
.dl LC4A234
.dl LC4B590
.dl LC4F7D9
.dl LC5B93E
.dl LC5C14D
.dl LC5C802
.dl LC5CF6B
.dl LC5DCCF
.dl LC5DF47
.dl LC6B815
.dl LC6C119
.dl LC6DD13
.dl LC6E30A
.dl LC6ECE6
.dl LC7A704
.dl LC79045
.dl LC7895D
.dl LC7AB4D
.dl LC7B67A
.dl LC7BF30
.dl LC7C9ED
.dl LC3A925
.dl LC7D0C0
.dl LC7D8DA
.dl LC6C119
.dl LC3BEBD
.dl LC7B67A
.dl LC7E17F
.dl LC7E69A
.dl LC4A234
.dl LC5EFC6
.dl LC5DF47
.dl LC5FC48
.dl LC69432
.dl LC5DF47
.dl LC5DF47
.dl LC5EFC6
.dl LC484E5
.dl LC4D693
.dl LC597E8
.dl LC6ACF1
.dl LC6D16E
.dl LC79563
.dl LC6FAFC
.dl LC39538

L958952:
.db $16 $01 $17 $00 $32 $00
.db $18 $01 $18 $00 $19 $00 $1A $01
.db $1A $00 $1B $01 $1B $00 $22 $00
.db $FF

L958969:
.dl LC7A99A
.dl LC79C62
.dl LC7A13F
.dl LC78CFE
.dl LC78CFE
.dl LC7B1B0
.dl LC7BB3F
.dl LC7BB3F
.dl LC7C67C
.dl LC7C67C
.dl LC7BB3F

L95898A:
.dl LC7FAD2
.dl LC7FDC8
.dl LC882A9
.dl LC88F7C
.dl LC8886C
.dl LC896AC
.dl LC89D93
.dl LC8A32D
.dl LC8B034
.dl LC8B459
.dl LC8DCED
.dl LC8BE90
.dl LC8C445
.dl LC8D14F
.dl LC8DC3A
.dl LC7FAD2
.dl LC7FAD2
.dl LC7FAD2
.dl LC7FAD2
.dl LC8EA6E
.dl LC8EA6E
.dl LC8EA6E
.dl LC8EA6E
.dl LC8ED25
.dl LC8FBF9
.dl LC8EA6E
.dl LC8EA6E
.dl LC8FC4A
.dl LC8ED25
.dl LC8FE1C
.dl LC986D5
.dl LC987C0
.dl LC98DC1
.dl LC990FB

L9589F0:
.dl LCA8872
.dl LCA8882
.dl LCA887A
.dl LCA888A
.dl LC2F3F1
.dl LC2F451
.dl LC2F4B1
.dl LC2F511
.dl LC2F571
.dl LC2F5D1
.dl LC2F631
.dl LC2F691
.dl LC2F6F1
.dl LC2F751
.dl LC2F931
.dl LC2F7B1
.dl LC2F811
.dl LC2F871
.dl LC2F8D1
.dl LC2F3F1
.dl LC2F3F1
.dl LC2F3F1
.dl LC2F3F1
.dl LC2F991
.dl LC2F991
.dl LC2F991
.dl LC2F991
.dl LC2F9F1
.dl LC2FA51
.dl LC2FAB1
.dl LC2F991
.dl LC2FB11
.dl LC2F9F1
.dl LC2FB71
.dl LC2FBD1
.dl LC2FC31
.dl LC2FC91
.dl LC2FCF1
.dl LCA8632
.dl LCA88F2

L958A68:
.dl LC2BFC7
.dl LC2C09B
.dl LC2C02C
.dl LC2C0F2
.dl LC1DF26
.dl LC1E0C5
.dl LC1E30B
.dl LC1E63C
.dl LC1E7EC
.dl LC1EDDA
.dl LC1F35E
.dl LC1F6C0
.dl LC1FA49
.dl LC28108
.dl LC294E7
.dl LC288BA
.dl LC28BC2
.dl LC28DAC
.dl LC29282
.dl LC1DF26
.dl LC1DF26
.dl LC1DF26
.dl LC1DF26
.dl LC2A233
.dl LC2A233
.dl LC2A233
.dl LC2A233
.dl LC2A607
.dl LC2AA94
.dl LC2A41E
.dl LC2ABE8
.dl LC2AE6F
.dl LC2B124
.dl LC2B592
.dl LC2B9E4
.dl LC2BB05
.dl LC2BDE1
.dl LC2BF33
.dl LCA9A5B
.dl LCA9C5C
.dl LC2C160

L958AE3:
.dl LC99175
.dl LC991F5
.dl LC9925E
.dl LC992D1
.dl LC99363
.dl LC993F4
.dl LC9948F
.dl LC9951C
.dl LC995B0
.dl LC99645
.dl LC99849
.dl LC998DD
.dl LC9995F
.dl LC99A2D
.dl LC99AF2
.dl LC99BB4
.dl LC99CC2
.dl LC99DBE
.dl LC99EDC
.dl LC9A00A
.dl LC9A0D8
.dl LC9A448
.dl LC9A610
.dl LC9A7D8
.dl LC9A9A0
.dl LC9AB68
.dl LC9AC3D
.dl LC9AD63
.dl LC9B26F
.dl LC9B7E0
.dl LC9BC2A
.dl LC9C0FB
.dl LC9C2F8
.dl LC9CCB2
.dl LC9D90A
.dl LC9E508

L958B4F:
.dl LCA85D2
.dl LCA85F2
.dl LCA8612
.dl LCA8692
.dl LCA86B2
.dl LCA86D2
.dl LCA86F2
.dl LCA8712
.dl LCA8732
.dl LCA8752
.dl LCA8772
.dl LCA87B2
.dl LCA87D2
.dl LCA87F2
.dl LCA8812
.dl LCA8832
.dl LCA8852

L958B82:
.db $00 $02 $00 $00 $00 $02
.db $01 $00 $00 $02 $01 $00 $00 $02
.db $02 $00 $00 $02 $06 $00 $00 $02
.db $03 $02 $00 $02 $0B $00 $00 $02
.db $08 $00 $00 $02 $06 $02 $00 $04
.db $09 $00 $00 $02 $02 $00 $00 $02
.db $07 $01 $00 $02 $05 $00 $00 $02
.db $04 $00 $00 $02 $0A $00 $00 $04
.db $0D $04 $00 $04 $0C $03 $00 $04
.db $0C $03 $00 $04 $0F $03 $00 $04
.db $11 $03 $00 $04 $13 $07 $00 $04
.db $10 $05 $00 $04 $0E $03 $00 $04
.db $12 $06 $00 $06 $16 $08 $00 $06
.db $18 $0C $00 $06 $15 $09 $00 $06
.db $15 $09 $00 $06 $17 $0B $00 $06
.db $14 $0A $00 $04 $19 $0D $00 $04
.db $19 $0D $00 $04 $19 $0D $00 $04
.db $19 $0D $00 $04 $19 $0D $00 $04
.db $1A $0E $00 $10 $1F $10 $00 $10
.db $1B $0F $00 $10 $1C $0F $00 $10
.db $1D $0F $00 $10 $1E $0F $00 $10
.db $20 $00 $00 $10 $22 $00 $00 $10
.db $21 $00 $00 $10 $23 $00

L958C36:
.db $00 $00
.db $00 $03 $00 $09 $00 $0B $01 $1E
.db $01 $20 $02 $0F $02 $13 $03 $0F
.db $03 $13 $04 $0F $04 $13 $05 $00
.db $05 $09 $06 $00 $06 $09 $07 $0F
.db $07 $13 $08 $0F $08 $13 $09 $0F
.db $09 $13 $0A $0F $0A $13 $0B $18
.db $0C $18 $0D $18 $0E $18 $0F $4F
.db $10 $29 $11 $00 $11 $09 $12 $00
.db $12 $09 $13 $00 $13 $09 $14 $00
.db $14 $09 $15 $00 $15 $03 $15 $09
.db $16 $40 $17 $2D $18 $40 $18 $2D
.db $19 $2D $1A $40 $1A $2D $1B $40
.db $1B $2D $1C $4F $1D $1E $1D $20
.db $1E $1E $1E $20 $1F $1E $1F $20
.db $20 $00 $20 $09 $21 $0F $21 $13
.db $22 $2D $23 $25 $23 $26 $23 $27
.db $23 $28 $23 $24 $24 $0F $24 $13
.db $25 $0F $25 $13 $26 $29 $27 $29
.db $28 $29 $29 $29 $2A $29 $2B $29
.db $2C $29 $2D $00 $2D $09 $2E $0F
.db $2E $13 $2F $0F $2F $13 $30 $29
.db $31 $00 $31 $09 $32 $2D $33 $00
.db $FF

L958CE9:
.dl LC08405
.dl LC08000
.dl LC088E0
.dl LC089F2
.dl LC090A0
.dl LC093D0
.dl LC095C2
.dl LC09A91
.dl LC09DE0
.dl LC0A40D
.dl LC0A78C
.dl LC0AD64
.dl LC0B1E3
.dl LC0B511
.dl LC0B5F3
.dl LC0B937
.dl LC0BD70
.dl LC0C4A3
.dl LC0C89A
.dl LC0D15B
.dl LC0D6EB
.dl LC0DF82
.dl LC0E840
.dl LC0EFCC
.dl LC0F7CC
.dl LC0FCF7
.dl LC181C2
.dl LC186D1
.dl LC18CB0
.dl LC18DB1
.dl LC19E6E
.dl LC1A1A2
.dl LC1A27B
.dl LC1AA0F
.dl LC1B447
.dl LC1B72A
.dl LC1B82D
.dl LC1BB56
.dl LC1BDE2
.dl LC1BDE2
.dl LC1C49E
.dl LC1CADD
.dl LC1C760
.dl LC1C595
.dl LC1C595
.dl LC1CC39
.dl LC1CE1C
.dl LC1CE1C
.dl LC1CFD8
.dl LC1CFD8
.dl LC1D1E5
.dl LC090A0
.dl LC093D0
.dl LC090A0
.dl LC093D0
.dl LC090A0
.dl LC093D0
.dl LC1A27B
.dl LC1AA0F
.dl LC09DE0
.dl LC0A40D
.dl LC1CE1C
.dl LC1D39F
.dl LC1D56F
.dl LC1D7D5
.dl LC1DA05
.dl LC1DC3C
.dl LC0C89A
.dl LC0D15B
.dl LC0C89A
.dl LC0D15B
.dl LC19033
.dl LC18DB1
.dl LC191F4
.dl LC196C1
.dl LC19DDD
.dl LC19B5B
.dl LC19033
.dl LC0BA42
.dl LC0B511
.dl LC0D6EB
.dl LC0DF82
.dl LC0E840
.dl LC0EFCC
.dl LC199AB
.dl LC1AC6D
.dl LC1B15D
.dl LC1C922
.dl LC1C206

L958DF4:
.db $00 $00 $06 $04
.db $00 $00 $F4 $F5 $F4 $F5 $00 $00
.db $00 $00 $FD $FE $FD $FE $F6 $F0
.db $F7 $E9 $00 $00 $00 $00 $00 $00
.db $F4 $F2 $02 $02 $05 $F0 $00 $00
.db $FD $FE $FE $02 $00 $00 $01 $00
.db $00 $01 $02 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $04 $06 $04
.db $06 $04 $06 $04 $FD $FE $F4 $F5
.db $00 $00 $E3 $02 $FD $FE $FD $FE
.db $00 $FA $05 $F0 $F5 $F3 $F5 $F5
.db $05 $F0 $05 $F0 $00 $FA

L958E4E:
.db $00 $14 $05 $08 $06 $08 $11 $02
.db $12 $28 $13 $08 $14 $FD $15 $08
.db $20 $28 $FF

L958E61:
.dl LBDD5A8
.dl LBDD77E
.dl LBDD957
.dl LBDDB2D
.dl LBDDD06
.dl LBDDEC3
.dl LBDE078
.dl LBDE0EA
.dl LBDE176
.dl LBDE333
.dl LBDE4E8
.dl LBDE56E
.dl LBDE5F8
.dl LBDE6B4
.dl LBDE75A
.dl LBDE7F0
.dl LBDE878
.dl LBDE90E
.dl LBDE998
.dl LBDEADB
.dl LBDEC12
.dl LBDED67
.dl LBDEE98
.dl LBDF00E
.dl LBDF161
.dl LBDF20B
.dl LBDF26B
.dl LBDF2EC
.dl LBDF346
.dl LBDF3C1
.dl LBDF400
.dl LBDF53D
.dl LBDF69E
.dl LBDF7D6
.dl LBDF933
.dl LBDFA3F
.dl LBDFB52
.dl LBDFCAB
.dl LBDFE0C
.dl LBDFF24
.dl LBE8044
.dl LBE81A4
.dl LBE8320
.dl LBE8484
.dl LBE85EE
.dl LBE8747
.dl LBE88A1
.dl LBE891C
.dl LBE896C
.dl LBE89F8
.dl LBE8A46
.dl LBE8AD3
.dl LBE8B1F
.dl LBE8BF9
.dl LBE8CB5
.dl LBE8DF9
.dl LBE8F31
.dl LBE903F
.dl LBE911A
.dl LBE922C
.dl LBE92E2
.dl LBE93E7
.dl LBE949D
.dl LBE95B3
.dl LBE9669
.dl LBE9771
.dl LBE9823
.dl LBE9913
.dl LBE99CC
.dl LBE9A8D
.dl LBE9B32
.dl LBE9C53
.dl LBE9D77
.dl LBE9ECE
.dl LBEA01D
.dl LBEA191
.dl LBEA2F2
.dl LBEA476
.dl LBEA5E7
.dl LBEA749
.dl LBEA8A5
.dl LBEA9F1
.dl LBEAB49
.dl LBEAC94
.dl LBEADD9
.dl LBEAE53
.dl LBEAECC
.dl LBEB00F
.dl LBEB14E
.dl LBEB269
.dl LBEB37B
.dl LBEB47B
.dl LBEB580
.dl LBEB6CC
.dl LBEB802
.dl LBEB948
.dl LBEBA91
.dl LBEBBF6
.dl LBEBD49
.dl LBEBE61
.dl LBEBF30
.dl LBEC071
.dl LBEC19A
.dl LBEC2DB
.dl LBEC414
.dl LBEC4D0
.dl LBEC57B
.dl LBEC648
.dl LBEC711
.dl LBEC80C
.dl LBEC8D3
.dl LBEC96F
.dl LBECA08
.dl LBECAE5
.dl LBECBAA
.dl LBECC4F
.dl LBECCF4
.dl LBECDCC
.dl LBECEA1
.dl LBED00E
.dl LBED190
.dl LBED320
.dl LBED4C2
.dl LBED605
.dl LBED75F
.dl LBED8A1
.dl LBED9E8
.dl LBEDB33
.dl LBEDC84
.dl LBEDDE1
.dl LBEDF3F
.dl LBEE081
.dl LBEE1E1
.dl LBEE341
.dl LBEE497
.dl LBEE5E0
.dl LBEE727
.dl LBEE891
.dl LBEEA06
.dl LBEEB61
.dl LBEECE1
.dl LBEEE70
.dl LBEF006
.dl LBEF114
.dl LBEF220
.dl LBEF332
.dl LBEF458
.dl LBEF58C
.dl LBEF6C2
.dl LBEF79D
.dl LBEF882
.dl LBEF923
.dl LBEF9C4
.dl LBEFA89
.dl LBEFB33
.dl LBEFBB8
.dl LBEFC50
.dl LBEFD3F
.dl LBEFE2F
.dl LBEFEE1
.dl LBEFF80
.dl LBF8038
.dl LBF80C6
.dl LBF814E
.dl LBF81D3
.dl LBF825E
.dl LBF82ED
.dl LBF837C
.dl LBF8413
.dl LBF84A9
.dl LBF853F
.dl LBF86D4
.dl LBF8869
.dl LBF8942
.dl LBF8A0C
.dl LBF8B3D
.dl LBF8C71
.dl LBF8D8D
.dl LBF8EAD
.dl LBF8FED
.dl LBF912A
.dl LBF926C
.dl LBF93B1
.dl LBF9499
.dl LBF95C6
.dl LBF96F3
.dl LBF981F
.dl LBF9969
.dl LBF9AB2
.dl LBF9BE9
.dl LBF9D21
.dl LBF9E5D
.dl LBF9F95
.dl LBFA11E
.dl LBFA293
.dl LBFA2EF
.dl LBFA34C
.dl LBFA409
.dl LBFA484
.dl LBFA687
.dl LBFA883
.dl LBFAA03
.dl LBFABC1
.dl LBFADC4
.dl LBFAFBF
.dl LBFB1C3
.dl LBFB3BE
.dl LBFB4CB
.dl LBFB5B7
.dl LBFB63D
.dl LBFB6C1
.dl LBFB6FF
.dl LBFB735
.dl LBFB856
.dl LBFB973
.dl LBFBB76
.dl LBFBC80
.dl LBFBCFB

L9590EF:
.dl LBB8000
.dl LBB8C00

L9590F5: ; combat backgrounds
.dl LBB9A25
.dl LBBB0FF
.dl LBBC875
.dl LBBE0A5
.dl LBBF943
.dl LBC8FAE
.dl LBCA4D9
.dl LBCBB04
.dl LBCD1A2
.dl LBCE5D5
.dl LBD813E
.dl LBD9456

L959119:
.dl LBDA676

L95911C:
.dl LBFBD76
.dl LBFBDD6
.dl LBFBE36
.dl LBFBE96
.dl LBFBEF6
.dl LBFBF56
.dl LBFBFB6
.dl LBFC016
.dl LBFC076
.dl LBFC0D6
.dl LBFC136
.dl LBFC196
.dl LBFC1F6
.dl LBFC256
.dl LBFC2B6
.dl LBFC316
.dl LBFC376
.dl LBFC3D6
.dl LBFC436
.dl LBFC496
.dl LBFC4F6
.dl LBFC556
.dl LBFC5B6
.dl LBFC616
.dl LBFC676
.dl LBFC6D6
.dl LBFC736
.dl LBFC796
.dl LBFC7F6
.dl LBFC856
.dl LBFC8B6
.dl LBFC916
.dl LBFC976
.dl LBFC9D6
.dl LBFCA36
.dl LBFCA96
.dl LBFCAF6
.dl LBFCB56
.dl LBFCBB6
.dl LBFCC16
.dl LBFCC76
.dl LBFCCD6
.dl LBFCD36
.dl LBFCD96
.dl LBFCDF6
.dl LBFCE56
.dl LBFCEB6
.dl LBFCF16
.dl LBFCF76
.dl LBFCFD6
.dl LBFD036
.dl LBFD096
.dl LBFD0F6
.dl LBFD156
.dl LBFD1B6
.dl LBFD216
.dl LBFD276
.dl LBFD2D6
.dl LBFD336
.dl LBFD396
.dl LBFD3F6
.dl LBFD456
.dl LBFD4B6
.dl LBFD516
.dl LBFD576
.dl LBFD5D6

L9591E2:
.db $00 $FF $00

L9591E5:
.db $00 $00 $FF
.db $02 $01 $00 $06 $00 $02 $01 $09
.db $00 $07 $01 $0C $00 $08 $02 $0F
.db $00 $0C $02 $15 $00 $0F $02 $17
.db $00 $10 $06 $4A $00 $31 $06 $4C
.db $00 $32 $07 $53 $00 $38 $07 $56
.db $00 $37 $00 $FF $01 $03 $00 $FF
.db $04 $04 $00 $06 $01 $05 $01 $0A
.db $00 $09 $01 $0D $00 $0A $02 $10
.db $01 $11 $02 $16 $00 $13 $02 $18
.db $01 $14 $02 $10 $01 $15 $02 $15
.db $00 $18 $00 $06 $00 $06 $01 $0C
.db $00 $0B $03 $1A $00 $19 $03 $1B
.db $00 $1A $03 $1D $00 $1B $03 $1E
.db $01 $23 $03 $1D $00 $1C $03 $1F
.db $00 $1D $03 $20 $00 $1E $03 $1D
.db $00 $1F $03 $21 $00 $20 $03 $22
.db $00 $21 $03 $62 $00 $22 $08 $61
.db $60 $3D $04 $23 $00 $24 $04 $24
.db $00 $24 $04 $25 $00 $24 $04 $27
.db $00 $25 $04 $28 $00 $25 $04 $29
.db $00 $25 $04 $2A $00 $26 $04 $2B
.db $00 $26 $04 $2C $00 $26 $04 $2A
.db $00 $27 $03 $1D $00 $1C $04 $2D
.db $00 $27 $04 $2E $00 $28 $04 $2F
.db $00 $28 $04 $30 $00 $28 $04 $31
.db $00 $29 $04 $32 $00 $29 $04 $33
.db $00 $29 $04 $34 $00 $2A $04 $35
.db $00 $2A $04 $36 $00 $2A $05 $3B
.db $00 $2C $05 $3C $00 $2C $05 $3D
.db $00 $2C $05 $3E $00 $2D $05 $3F
.db $00 $2D $05 $40 $00 $2D $05 $41
.db $00 $2E $05 $42 $00 $2E $05 $43
.db $00 $2E $05 $44 $00 $2F $05 $45
.db $00 $2F $05 $46 $00 $2F $05 $47
.db $00 $30 $05 $48 $00 $30 $05 $49
.db $00 $30 $08 $57 $00 $3A $08 $58
.db $00 $3A $08 $59 $00 $3A $08 $5A
.db $00 $3B $08 $5B $00 $3B $08 $5C
.db $00 $3B $08 $5D $00 $3C $08 $5E
.db $00 $3C $08 $5F $00 $3C $08 $FF
.db $FF $3C $06 $4A $00 $31 $06 $4B
.db $00 $31 $05 $3B $00 $2C $05 $3B
.db $00 $2C $05 $3B $00 $2C $08 $FF
.db $FF $3C $03 $1E $01 $23 $01 $0C
.db $00 $08 $01 $0C $00 $08 $05 $3B
.db $00 $2C $05 $3E $00 $2D $05 $47
.db $00 $30 $02 $17 $00 $10 $06 $4E
.db $01 $33 $06 $50 $01 $34 $03 $1A
.db $01 $23 $0B $26 $00 $40 $06 $4F
.db $01 $33 $03 $1E $01 $23 $00 $FF
.db $01 $03 $02 $10 $01 $15 $04 $23
.db $00 $24 $04 $23 $00 $24 $04 $27
.db $00 $25 $04 $27 $00 $25 $04 $2A
.db $00 $26 $04 $2A $00 $26 $04 $2A
.db $00 $27 $04 $2A $00 $27 $04 $2E
.db $00 $28 $04 $2E $00 $28 $04 $31
.db $00 $29 $04 $31 $00 $29 $04 $34
.db $00 $2A $04 $34 $00 $2A $05 $3E
.db $00 $2D $05 $3E $00 $2D $05 $41
.db $00 $2E $05 $41 $00 $2E $05 $44
.db $00 $2F $05 $44 $00 $2F $05 $47
.db $00 $30 $05 $47 $00 $30 $08 $57
.db $00 $3A $08 $57 $00 $3A $08 $5A
.db $00 $3B $08 $5A $00 $3B $08 $5D
.db $00 $3C $04 $23 $00 $24 $04 $27
.db $00 $25 $04 $2A $00 $26 $04 $2A
.db $00 $27 $04 $2E $00 $28 $04 $31
.db $00 $29 $04 $34 $00 $2A $05 $3E
.db $00 $2D $05 $41 $00 $2E $05 $44
.db $00 $2F $05 $47 $00 $30 $08 $57
.db $00 $3A $08 $5A $00 $3B $08 $5D
.db $00 $3C $08 $5D $00 $3C $03 $1D
.db $00 $1B $05 $3B $00 $2C $05 $3C
.db $00 $2C $05 $3D $00 $2C $05 $3B
.db $00 $2C $05 $3B $00 $2C $05 $3B
.db $00 $2C $06 $4E $01 $33 $06 $4A
.db $00 $31 $06 $4A $00 $31 $04 $6A
.db $00 $24 $04 $6A $00 $24 $03 $1C
.db $00 $1A $04 $3A $00 $2A $04 $39
.db $00 $2A $04 $3A $00 $2A $0A $68
.db $00 $35 $09 $64 $63 $3E $09 $66
.db $65 $3F $0C $6B $6C $41 $00 $03
.db $00 $01 $00 $07 $00 $02 $01 $0B
.db $00 $07 $01 $0E $00 $08 $02 $11
.db $00 $0D $07 $52 $00 $36 $07 $54
.db $55 $36 $07 $FF $55 $39 $00 $05
.db $01 $04 $00 $08 $01 $05 $01 $0B
.db $00 $09 $01 $0E $00 $0A $02 $13
.db $01 $12 $02 $13 $01 $16 $00 $07
.db $00 $06 $01 $0E $00 $0B $04 $37
.db $00 $2A $04 $38 $00 $2A $0A $69
.db $00 $35

L9594C2:
.db $01 $01 $A5 $A5 $02 $02
.db $A6 $A6 $03 $03 $A7 $A7 $04 $04
.db $A8 $A8 $05 $05 $A9 $A9 $0A $0B
.db $AB $AC $0B $0A $AC $AB $0A $0A
.db $AA $AA $0B $0B $AC $AC $0D $0D
.db $AD $AD $0E $0E $AE $AE $0F $0F
.db $AF $AF $10 $10 $B0 $B0 $11 $11
.db $B1 $B1 $14 $14 $B2 $B2 $16 $16
.db $B3 $B3 $17 $17 $B4 $B4 $59 $59
.db $A8 $A8 $5A $5A $A8 $A8 $A1 $A1
.db $B7 $B7 $9F $00 $B5 $00 $00 $9F
.db $00 $B5 $A0 $00 $B6 $00 $00 $A0
.db $00 $B6 $3C $1F $3C $3C $1F $3C
.db $3C $3C $1F $1F $3C $3C $30 $58
.db $30 $30 $58 $30 $30 $30 $58 $58
.db $30 $30

L95953A:
.db $23 $26 $29 $2C $32 $35
.db $38 $3B $3E $41 $44 $47 $4A $4D
.db $50 $51 $62 $94 $A2 $A3 $A4 $FF

L959550:
.db $01 $01 $01 $01 $01 $01 $01 $01
.db $01 $01 $01 $01 $01 $01 $01 $02
.db $02 $02 $02 $02 $02 $02 $02 $02
.db $02 $02 $02 $02 $02 $02 $01 $01
.db $02 $01 $01 $01 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00

L95958C:
.db $05 $00 $00 $00
.db $15 $00 $13 $00 $08 $08 $15 $01
.db $01 $1E $00 $00 $15 $02 $0B $18
.db $00 $03 $15 $03 $0D $18 $18 $18
.db $15 $04 $0C $18 $1D $1D $15 $05
.db $0E $18 $0A $0A $15 $46 $03 $0F
.db $00 $00 $15 $47 $04 $10 $00 $00
.db $15 $48 $09 $10 $00 $03 $15 $49
.db $0A $10 $00 $02 $15 $8A $0F $FF
.db $00 $03 $15 $0B $11 $00 $02 $02
.db $15 $0C $14 $00 $08 $08 $15 $0D
.db $16 $FF $09 $09 $1B $0E $19 $2D
.db $0B $0B $1B $10 $1A $2D $39 $39
.db $1B $11 $15 $00 $00 $00 $15 $16
.db $12 $00 $01 $A1 $15 $12 $07 $10
.db $07 $07 $15 $13 $08 $10 $36 $36
.db $15 $14 $00 $00 $00 $00 $15 $15
.db $41 $40 $31 $41 $31 $42 $31 $69
.db $35 $61 $43 $31 $44 $31 $45 $31
.db $69 $35 $81 $46 $31 $47 $31 $48
.db $31 $69 $35 $A1 $49 $31 $4A $31
.db $4B $31 $69 $35 $48 $4C $31 $4D
.db $31 $4F $31 $69 $35 $68 $60 $31
.db $61 $31 $62 $31 $69 $35 $88 $63
.db $31 $64 $31 $65 $31 $69 $35 $A8
.db $66 $31 $67 $31 $68 $31 $69 $35

L959658:
.dl L95969D
.dl L9596E3
.dl L95972F
.dl L959773
.dl L9597C0
.dl L95980A
.dl L95984F
.dl L9598BE
.dl L959925
.dl L959978
.dl L9599B3
.dl L959A0C
.dl L959A68
.dl L959ABD
.dl L959B04
.dl L959B4E
.dl L959B4E
.dl L959B97
.dl L959BCF
.dl L959C29
.dl L959C7D
.dl L959CD7
.dl L959D17

L95969D:
.INCBIN "text/descriptions/knight.bin"

L9596E3:
.INCBIN "text/descriptions/thief.bin"

L95972F:
.INCBIN "text/descriptions/fighter.bin"

L959773:
.INCBIN "text/descriptions/hunter.bin"

L9597C0:
.INCBIN "text/descriptions/archer.bin"

L95980A:
.INCBIN "text/descriptions/sniper.bin"

L95984F:
.INCBIN "text/descriptions/horseman.bin"

L9598BE:
.INCBIN "text/descriptions/cavalier.bin"

L959925:
.INCBIN "text/descriptions/paladin.bin"

L959978:
.INCBIN "text/descriptions/pegasus_knight.bin"

L9599B3:
.INCBIN "text/descriptions/dracoknight.bin"

L959A0C:
.INCBIN "text/descriptions/manakete.bin"

L959A68:
.INCBIN "text/descriptions/mercenary.bin"

L959ABD:
.INCBIN "text/descriptions/freelancer.bin"

L959B04:
.INCBIN "text/descriptions/cleric.bin"

L959B4E:
.INCBIN "text/descriptions/mage.bin"

L959B97:
.INCBIN "text/descriptions/bishop.bin"

L959BCF:
.INCBIN "text/descriptions/hero.bin"

L959C29:
.INCBIN "text/descriptions/armour_knight.bin"

L959C7D:
.INCBIN "text/descriptions/general.bin"

L959CD7:
.INCBIN "text/descriptions/lord.bin"

L959D17:
.INCBIN "text/descriptions/dancer.bin"

L959D51:
.dl L959D89
.db $00 $00 $06 $05 $09 $0B $10 $00
.db $08 $01 $F0 $02 $1A $02 $08 $01
.db $10 $00 $FF

.dl L959D92
.db $00 $00 $07 $04 $02 $01 $70 $00
.db $10 $01 $70 $02 $10 $01 $FE

.dl L959D89
.db $00 $00 $06 $05 $09 $0B $10 $00
.db $18 $01 $01 $02 $FF

L959D89:
.dl LCAA34F
.dl LCAA415
.dl LCAA4DB

L959D92:
.dl LCAA5A1
.dl LCAA5A5
.dl LCAA5A9

L959D9B:
.db $0E $06 $21 $34 $0B
.db $1D $2F $1A $07 $12 $0F $23 $13
.db $0D $0C $22 $38 $32 $16 $3D $2C
.db $2D $10 $33 $3A $37 $29 $26 $2A
.db $1C $01 $00 $08 $04 $19 $0A $20
.db $2B $15 $36 $1B $11 $1F $02 $17
.db $05 $09 $3F $3B $3E $1E $14 $28
.db $30 $31 $39 $2E $18 $3C $35 $03
.db $25 $24 $27

L959DDB:
.db $01 $02 $04 $08 $10 $20 $40 $80
.db $00 $00 $FF $7F $FF $7F $FF $7F

L959DEB:
.db $FF $F6 $FA $00 $0D $EC $0C $F1
.db $04 $F8 $FC $FC $12 $F2 $0C $F7
.db $0C $ED $04 $F6 $05 $F8 $FC $FD

L959E03:
.dl L959E3F
.dl L959FAE
.dl L95A4E4
.dl L95A65B
.dl L95AB08
.dl L95AC7B
.dl L95B1DD
.dl L95B5B2
.dl L95C471
.dl L95CCDB

L959E21:
.dl L959E72
.dl L959FE7
.dl L95A517
.dl L95A692
.dl L95AB3B
.dl L95ACB4
.dl L95B210
.dl L95B5EF
.dl L95C4AE
.dl L95CD18

L959E3F:
.db $02 $00 $06 $01 $05 $02 $03 $03
.db $05 $02 $04 $04 $04 $05 $04 $04
.db $04 $05 $04 $04 $04 $04 $04 $05
.db $04 $04 $04 $05 $04 $04 $04 $05
.db $04 $04 $04 $05 $04 $04 $04 $05
.db $04 $04 $04 $05 $04 $04 $03 $06
.db $05 $07 $00

L959E72:
.db $82 $9E $93 $9E $B4 $9E $D5 $9E
.db $FE $9E $2F $9F $60 $9F $8D $9F
.db $04 $0E $04 $24 $39 $0F $04 $25
.db $39 $0E $05 $34 $39 $0F $05 $35
.db $39 $08 $0E $04 $50 $39 $0F $04
.db $51 $39 $0E $05 $60 $39 $0F $05
.db $61 $39 $0E $06 $70 $39 $0F $06
.db $71 $39 $0E $07 $80 $39 $0F $07
.db $81 $39 $08 $0E $04 $52 $39 $0F
.db $04 $53 $39 $0E $05 $62 $39 $0F
.db $05 $63 $39 $0E $06 $72 $39 $0F
.db $06 $73 $39 $0E $07 $82 $39 $0F
.db $07 $83 $39 $0A $0F $04 $56 $39
.db $0D $05 $64 $39 $0E $05 $65 $39
.db $0F $05 $66 $39 $0D $06 $74 $39
.db $0E $06 $75 $39 $0F $06 $76 $39
.db $0D $07 $84 $39 $0E $07 $85 $39
.db $0F $07 $86 $39 $0C $0D $04 $90
.db $39 $0E $04 $91 $39 $0F $04 $92
.db $39 $0D $05 $A0 $39 $0E $05 $A1
.db $39 $0F $05 $A2 $39 $0D $06 $B0
.db $39 $0E $06 $B1 $39 $0F $06 $B2
.db $39 $0D $07 $C0 $39 $0E $07 $C1
.db $39 $0F $07 $C2 $39 $0C $0D $04
.db $57 $39 $0E $04 $58 $39 $0F $04
.db $59 $39 $0D $05 $67 $39 $0E $05
.db $68 $39 $0F $05 $69 $39 $0D $06
.db $77 $39 $0E $06 $78 $39 $0F $06
.db $79 $39 $0D $07 $87 $39 $0E $07
.db $88 $39 $0F $07 $89 $39 $0B $0D
.db $04 $57 $39 $0E $04 $58 $39 $0D
.db $05 $67 $39 $0E $05 $44 $39 $0F
.db $05 $45 $39 $0D $06 $77 $39 $0E
.db $06 $54 $39 $0F $06 $55 $39 $0D
.db $07 $87 $39 $0E $07 $88 $39 $0F
.db $07 $89 $39 $08 $0D $04 $90 $39
.db $0D $05 $A0 $39 $0D $06 $93 $39
.db $0E $06 $94 $39 $0F $06 $B2 $39
.db $0D $07 $A3 $39 $0E $07 $A4 $39
.db $0F $07 $C2 $39

L959FAE:
.db $02 $00 $04 $01 $04 $02 $02 $03
.db $04 $02 $03 $04 $03 $05 $02 $04
.db $02 $05 $01 $04 $01 $05 $03 $06
.db $05 $07 $03 $06 $05 $07 $03 $06
.db $05 $07 $03 $06 $05 $07 $03 $06
.db $05 $07 $03 $06 $05 $07 $02 $06
.db $02 $07 $02 $08 $02 $09 $04 $0A
.db $00

L959FE7:
.db $FD $9F $06 $A0 $33 $A0 $84 $A0
.db $D5 $A0 $5E $A1 $EB $A1 $9C $A2
.db $59 $A3 $F6 $A3 $7F $A4 $02 $0F
.db $02 $03 $39 $0F $03 $13 $39 $0B
.db $0C $02 $00 $39 $0D $02 $01 $39
.db $0E $02 $04 $39 $0F $02 $05 $39
.db $07 $03 $00 $39 $08 $03 $00 $39
.db $0C $03 $10 $39 $0D $03 $11 $39
.db $0E $03 $14 $39 $0F $03 $15 $39
.db $0C $04 $20 $39 $14 $0C $02 $00
.db $39 $0D $02 $01 $39 $0E $02 $02
.db $39 $0F $02 $03 $39 $08 $03 $20
.db $39 $09 $03 $21 $39 $0A $03 $22
.db $39 $0B $03 $23 $39 $0C $03 $10
.db $39 $0D $03 $11 $39 $0E $03 $12
.db $39 $0F $03 $13 $39 $08 $04 $30
.db $39 $09 $04 $31 $39 $0A $04 $32
.db $39 $0B $04 $33 $39 $08 $05 $40
.db $39 $09 $05 $41 $39 $0A $05 $42
.db $39 $0B $05 $43 $39 $14 $0C $02
.db $06 $39 $0D $02 $07 $39 $0E $02
.db $08 $39 $0F $02 $09 $39 $08 $03
.db $26 $39 $09 $03 $27 $39 $0A $03
.db $28 $39 $0B $03 $29 $39 $0C $03
.db $16 $39 $0D $03 $17 $39 $0E $03
.db $18 $39 $0F $03 $19 $39 $08 $04
.db $36 $39 $09 $04 $37 $39 $0A $04
.db $38 $39 $0B $04 $39 $39 $08 $05
.db $40 $39 $09 $05 $41 $39 $0A $05
.db $42 $39 $0B $05 $43 $39 $22 $0C
.db $02 $00 $39 $0D $02 $01 $39 $0E
.db $02 $02 $39 $0F $02 $03 $39 $05
.db $03 $4A $39 $06 $03 $4B $39 $07
.db $03 $4C $39 $08 $03 $4D $39 $09
.db $03 $4E $39 $0A $03 $4F $39 $0B
.db $03 $23 $39 $0C $03 $10 $39 $0D
.db $03 $11 $39 $0E $03 $12 $39 $0F
.db $03 $13 $39 $05 $04 $5A $39 $06
.db $04 $5B $39 $07 $04 $5C $39 $08
.db $04 $5D $39 $09 $04 $5E $39 $0A
.db $04 $5F $39 $0B $04 $33 $39 $05
.db $05 $6A $39 $06 $05 $6B $39 $07
.db $05 $6C $39 $08 $05 $6D $39 $09
.db $05 $6E $39 $0A $05 $6F $29 $05
.db $06 $7A $39 $06 $06 $7B $39 $07
.db $06 $7C $39 $08 $06 $7D $39 $09
.db $06 $7E $21 $0A $06 $7F $21 $23
.db $0B $02 $06 $39 $0C $02 $07 $39
.db $0D $02 $08 $39 $0E $02 $09 $39
.db $0F $02 $09 $39 $05 $03 $0A $39
.db $06 $03 $0B $39 $07 $03 $0C $39
.db $08 $03 $0D $39 $09 $03 $0E $39
.db $0A $03 $0F $39 $0B $03 $16 $39
.db $0C $03 $17 $39 $0D $03 $18 $39
.db $0E $03 $19 $39 $0F $03 $19 $39
.db $05 $04 $1A $39 $06 $04 $1B $39
.db $07 $04 $1C $39 $08 $04 $1D $39
.db $09 $04 $1E $39 $0A $04 $1F $39
.db $0B $04 $39 $39 $05 $05 $2A $39
.db $06 $05 $2B $39 $07 $05 $2C $39
.db $08 $05 $2D $39 $09 $05 $2E $39
.db $0A $05 $2F $39 $05 $06 $3A $39
.db $06 $06 $3B $39 $07 $06 $3C $39
.db $08 $06 $3D $39 $09 $06 $3E $39
.db $0A $06 $3F $39 $2C $0B $02 $06
.db $39 $0C $02 $07 $39 $0D $02 $08
.db $39 $0E $02 $09 $39 $0F $02 $09
.db $39 $09 $03 $0E $39 $0A $03 $0F
.db $39 $0B $03 $16 $39 $0C $03 $17
.db $39 $0D $03 $18 $39 $0E $03 $19
.db $39 $0F $03 $19 $39 $03 $04 $8A
.db $21 $04 $04 $8B $39 $05 $04 $8C
.db $39 $06 $04 $8D $39 $07 $04 $8E
.db $39 $08 $04 $8F $39 $09 $04 $1E
.db $39 $0A $04 $1F $39 $0B $04 $39
.db $39 $01 $05 $98 $39 $02 $05 $99
.db $39 $03 $05 $9A $39 $04 $05 $9B
.db $39 $05 $05 $9C $39 $06 $05 $9D
.db $39 $07 $05 $9E $39 $01 $06 $A8
.db $39 $02 $06 $A9 $39 $03 $06 $AA
.db $39 $04 $06 $AB $39 $05 $06 $AC
.db $39 $06 $06 $AD $39 $07 $06 $AE
.db $39 $08 $06 $AF $39 $01 $07 $B8
.db $39 $02 $07 $B9 $39 $03 $07 $BA
.db $39 $04 $07 $BB $39 $05 $07 $BC
.db $39 $06 $07 $BD $39 $07 $07 $BE
.db $39 $08 $07 $BF $39 $2F $0C $02
.db $00 $39 $0D $02 $01 $39 $0E $02
.db $02 $39 $0F $02 $03 $39 $09 $03
.db $4E $39 $0A $03 $4F $39 $0B $03
.db $23 $39 $0C $03 $10 $39 $0D $03
.db $11 $39 $0E $03 $12 $39 $0F $03
.db $13 $39 $01 $04 $C8 $21 $02 $04
.db $C9 $39 $03 $04 $CA $39 $04 $04
.db $CB $39 $05 $04 $CC $39 $06 $04
.db $CD $39 $07 $04 $CE $39 $08 $04
.db $CF $39 $09 $04 $5E $39 $0A $04
.db $5F $39 $0B $04 $33 $39 $02 $05
.db $D9 $39 $03 $05 $DA $39 $04 $05
.db $DB $39 $05 $05 $DC $39 $06 $05
.db $DD $39 $07 $05 $DE $39 $08 $05
.db $DF $39 $09 $05 $6E $39 $0A $05
.db $6F $29 $02 $06 $E9 $39 $03 $06
.db $EA $39 $04 $06 $EB $39 $05 $06
.db $EC $39 $06 $06 $ED $39 $07 $06
.db $EE $39 $08 $06 $EF $39 $09 $06
.db $7E $21 $0A $06 $7F $21 $02 $07
.db $F9 $39 $03 $07 $FA $39 $04 $07
.db $FB $39 $05 $07 $FC $39 $06 $07
.db $FD $39 $07 $07 $FE $39 $08 $07
.db $FF $39 $27 $09 $03 $0E $39 $0A
.db $03 $18 $F9 $0B $03 $17 $F9 $0C
.db $03 $16 $F9 $03 $04 $8A $21 $04
.db $04 $8B $39 $05 $04 $8C $39 $06
.db $04 $8D $39 $07 $04 $8E $39 $08
.db $04 $8F $39 $09 $04 $1E $39 $0A
.db $04 $08 $F9 $0B $04 $07 $F9 $0C
.db $04 $06 $F9 $02 $05 $99 $39 $03
.db $05 $9A $39 $04 $05 $9B $39 $05
.db $05 $9C $39 $06 $05 $9D $39 $07
.db $05 $9E $39 $08 $05 $9F $39 $09
.db $05 $2E $39 $0A $05 $2F $39 $02
.db $06 $A9 $39 $03 $06 $AA $39 $04
.db $06 $AB $39 $05 $06 $AC $39 $06
.db $06 $AD $39 $07 $06 $AE $39 $08
.db $06 $AF $39 $09 $06 $3E $39 $0A
.db $06 $3F $39 $02 $07 $B9 $39 $03
.db $07 $BA $39 $04 $07 $BB $39 $05
.db $07 $BC $39 $06 $07 $BD $39 $07
.db $07 $BE $39 $08 $07 $BF $39 $22
.db $08 $03 $01 $39 $09 $03 $04 $39
.db $0A $03 $05 $39 $02 $04 $C9 $21
.db $03 $04 $8A $21 $04 $04 $CB $39
.db $05 $04 $CC $39 $06 $04 $CD $39
.db $07 $04 $CE $39 $08 $04 $11 $39
.db $09 $04 $14 $39 $0A $04 $15 $39
.db $02 $05 $D9 $39 $03 $05 $9A $39
.db $04 $05 $DB $39 $05 $05 $DC $39
.db $06 $05 $DD $39 $07 $05 $DE $39
.db $08 $05 $6E $39 $02 $06 $E9 $39
.db $03 $06 $AA $39 $04 $06 $EB $39
.db $05 $06 $EC $39 $06 $06 $ED $39
.db $07 $06 $EE $39 $08 $06 $EF $39
.db $09 $06 $7E $21 $02 $07 $F9 $39
.db $03 $07 $BA $39 $04 $07 $FB $39
.db $05 $07 $FC $39 $06 $07 $FD $39
.db $07 $07 $FE $39 $08 $07 $FF $39
.db $19 $02 $04 $C3 $39 $03 $04 $C4
.db $39 $04 $04 $C5 $39 $05 $04 $C6
.db $39 $06 $04 $C7 $39 $07 $04 $C8
.db $39 $02 $05 $D3 $39 $03 $05 $D4
.db $39 $04 $05 $D5 $39 $05 $05 $D6
.db $39 $06 $05 $D7 $39 $07 $05 $D8
.db $39 $02 $06 $E3 $39 $03 $06 $E4
.db $39 $04 $06 $E5 $39 $05 $06 $E6
.db $39 $06 $06 $E7 $39 $07 $06 $E8
.db $39 $02 $07 $F3 $39 $03 $07 $F4
.db $39 $04 $07 $F5 $39 $05 $07 $F6
.db $39 $06 $07 $F7 $39 $07 $07 $F8
.db $39 $08 $07 $BF $39

L95A4E4:
.db $02 $00 $06 $01 $05 $02 $03 $03
.db $05 $02 $04 $04 $04 $05 $04 $04
.db $04 $05 $04 $04 $04 $04 $04 $05
.db $04 $04 $04 $05 $04 $04 $04 $05
.db $04 $04 $04 $05 $04 $04 $04 $05
.db $04 $04 $04 $05 $04 $04 $03 $06
.db $05 $07 $00

L95A517:
.db $27 $A5 $38 $A5 $59 $A5 $7A $A5
.db $A3 $A5 $D4 $A5 $05 $A6 $32 $A6
.db $04 $0E $04 $24 $39 $0F $04 $25
.db $39 $0E $05 $34 $39 $0F $05 $35
.db $39 $08 $0E $04 $50 $39 $0F $04
.db $51 $39 $0E $05 $60 $39 $0F $05
.db $61 $39 $0E $06 $70 $39 $0F $06
.db $71 $39 $0E $07 $80 $39 $0F $07
.db $81 $39 $08 $0E $04 $52 $39 $0F
.db $04 $53 $39 $0E $05 $62 $39 $0F
.db $05 $63 $39 $0E $06 $72 $39 $0F
.db $06 $73 $39 $0E $07 $82 $39 $0F
.db $07 $83 $39 $0A $0F $04 $56 $39
.db $0D $05 $64 $39 $0E $05 $65 $39
.db $0F $05 $66 $39 $0D $06 $74 $39
.db $0E $06 $75 $39 $0F $06 $76 $39
.db $0D $07 $84 $39 $0E $07 $85 $39
.db $0F $07 $86 $39 $0C $0D $04 $90
.db $39 $0E $04 $91 $39 $0F $04 $92
.db $39 $0D $05 $A0 $39 $0E $05 $A1
.db $39 $0F $05 $A2 $39 $0D $06 $B0
.db $39 $0E $06 $B1 $39 $0F $06 $B2
.db $39 $0D $07 $C0 $39 $0E $07 $C1
.db $39 $0F $07 $C2 $39 $0C $0D $04
.db $57 $39 $0E $04 $58 $39 $0F $04
.db $59 $39 $0D $05 $67 $39 $0E $05
.db $68 $39 $0F $05 $69 $39 $0D $06
.db $77 $39 $0E $06 $78 $39 $0F $06
.db $79 $39 $0D $07 $87 $39 $0E $07
.db $88 $39 $0F $07 $89 $39 $0B $0D
.db $04 $57 $39 $0E $04 $58 $39 $0D
.db $05 $67 $39 $0E $05 $44 $39 $0F
.db $05 $64 $79 $0D $06 $74 $39 $0E
.db $06 $75 $39 $0F $06 $74 $79 $0D
.db $07 $84 $39 $0E $07 $85 $39 $0F
.db $07 $A4 $39 $0A $0D $04 $90 $39
.db $0D $05 $A0 $39 $0E $05 $82 $B9
.db $0F $05 $64 $79 $0D $06 $77 $39
.db $0E $06 $78 $39 $0F $06 $B2 $39
.db $0D $07 $87 $39 $0E $07 $88 $39
.db $0F $07 $C2 $39

L95A65B:
.db $02 $00 $06 $01 $05 $02 $03 $03
.db $05 $02 $04 $04 $04 $05 $04 $04
.db $04 $05 $04 $04 $04 $04 $04 $05
.db $04 $04 $04 $05 $04 $04 $04 $05
.db $04 $04 $04 $05 $04 $04 $04 $05
.db $04 $04 $04 $05 $04 $04 $03 $06
.db $05 $07 $05 $08 $05 $09 $00

L95A692:
.db $A6 $A6 $AF $A6 $D0 $A6 $21 $A7
.db $72 $A7 $FB $A7 $88 $A8 $45 $A9
.db $FA $A9 $8F $AA $02 $0F $02 $03
.db $39 $0F $03 $13 $39 $08 $0C $02
.db $24 $39 $0D $02 $01 $39 $0E $02
.db $04 $39 $0F $02 $05 $39 $0C $03
.db $10 $39 $0D $03 $11 $39 $0E $03
.db $14 $39 $0F $03 $15 $39 $14 $0C
.db $02 $24 $39 $0D $02 $01 $39 $0E
.db $02 $02 $39 $0F $02 $03 $39 $08
.db $03 $20 $39 $09 $03 $21 $39 $0A
.db $03 $22 $39 $0B $03 $23 $39 $0C
.db $03 $10 $39 $0D $03 $11 $39 $0E
.db $03 $12 $39 $0F $03 $13 $39 $08
.db $04 $30 $39 $09 $04 $31 $39 $0A
.db $04 $32 $39 $0B $04 $33 $39 $08
.db $05 $40 $39 $09 $05 $41 $39 $0A
.db $05 $42 $39 $0B $05 $43 $39 $14
.db $0C $02 $06 $39 $0D $02 $07 $39
.db $0E $02 $08 $39 $0F $02 $09 $39
.db $08 $03 $D0 $39 $09 $03 $D1 $39
.db $0A $03 $D2 $39 $0B $03 $29 $39
.db $0C $03 $16 $39 $0D $03 $17 $39
.db $0E $03 $18 $39 $0F $03 $19 $39
.db $08 $04 $E0 $39 $09 $04 $E1 $39
.db $0A $04 $E2 $39 $0B $04 $39 $39
.db $08 $05 $F0 $39 $09 $05 $F1 $39
.db $0A $05 $F2 $39 $0B $05 $43 $39
.db $22 $0C $02 $24 $39 $0D $02 $01
.db $39 $0E $02 $02 $39 $0F $02 $03
.db $39 $05 $03 $4A $39 $06 $03 $4B
.db $39 $07 $03 $4C $39 $08 $03 $4D
.db $39 $09 $03 $4E $39 $0A $03 $4F
.db $39 $0B $03 $23 $39 $0C $03 $10
.db $39 $0D $03 $11 $39 $0E $03 $12
.db $39 $0F $03 $13 $39 $05 $04 $5A
.db $39 $06 $04 $5B $39 $07 $04 $5C
.db $39 $08 $04 $5D $39 $09 $04 $5E
.db $39 $0A $04 $5F $39 $0B $04 $33
.db $39 $05 $05 $6A $39 $06 $05 $6B
.db $39 $07 $05 $6C $39 $08 $05 $6D
.db $39 $09 $05 $6E $39 $0A $05 $6F
.db $39 $05 $06 $7A $39 $06 $06 $7B
.db $39 $07 $06 $7C $39 $08 $06 $7D
.db $39 $09 $06 $7E $39 $0A $06 $7F
.db $39 $23 $0B $02 $06 $39 $0C $02
.db $07 $39 $0D $02 $08 $39 $0E $02
.db $09 $39 $0F $02 $09 $39 $05 $03
.db $0A $39 $06 $03 $0B $39 $07 $03
.db $0C $39 $08 $03 $0D $39 $09 $03
.db $0E $39 $0A $03 $0F $39 $0B $03
.db $16 $39 $0C $03 $17 $39 $0D $03
.db $18 $39 $0E $03 $19 $39 $0F $03
.db $19 $39 $05 $04 $1A $39 $06 $04
.db $1B $39 $07 $04 $1C $39 $08 $04
.db $1D $39 $09 $04 $1E $39 $0A $04
.db $1F $39 $0B $04 $FC $19 $05 $05
.db $2A $39 $06 $05 $2B $39 $07 $05
.db $2C $39 $08 $05 $2D $39 $09 $05
.db $2E $39 $0A $05 $2F $39 $05 $06
.db $3A $39 $06 $06 $3B $39 $07 $06
.db $3C $39 $08 $06 $3D $39 $09 $06
.db $3E $39 $0A $06 $3F $39 $2F $05
.db $02 $B3 $39 $06 $02 $B4 $39 $07
.db $02 $B5 $39 $08 $02 $B6 $39 $09
.db $02 $B7 $39 $0A $02 $B7 $39 $0B
.db $02 $B8 $39 $0C $02 $8A $39 $0D
.db $02 $8B $39 $0E $02 $8C $39 $0F
.db $02 $8D $39 $05 $03 $C3 $39 $06
.db $03 $C4 $39 $07 $03 $C5 $39 $08
.db $03 $C6 $39 $09 $03 $C7 $39 $0A
.db $03 $C7 $39 $0B $03 $C8 $39 $0C
.db $03 $9A $39 $0D $03 $9B $39 $0E
.db $03 $9C $39 $0F $03 $9D $39 $05
.db $04 $D3 $39 $06 $04 $D4 $39 $07
.db $04 $D5 $39 $08 $04 $D6 $39 $09
.db $04 $D7 $39 $0A $04 $D7 $39 $0B
.db $04 $D8 $39 $0C $04 $FC $39 $0D
.db $04 $AB $39 $0E $04 $AC $39 $0F
.db $04 $AD $39 $05 $05 $E3 $39 $06
.db $05 $E4 $39 $07 $05 $E5 $39 $08
.db $05 $E6 $39 $09 $05 $E7 $39 $0A
.db $05 $E7 $39 $0B $05 $E8 $19 $05
.db $06 $F3 $39 $06 $06 $F4 $39 $07
.db $06 $F5 $39 $08 $06 $F6 $39 $09
.db $06 $F7 $39 $0A $06 $F7 $39 $0B
.db $06 $F8 $01 $2D $05 $02 $B9 $39
.db $06 $02 $BA $39 $07 $02 $BB $39
.db $08 $02 $BC $39 $09 $02 $BD $39
.db $0A $02 $BE $39 $0B $02 $8A $39
.db $0C $02 $8B $39 $0D $02 $8D $39
.db $0E $02 $8E $39 $0F $02 $8F $39
.db $05 $03 $C9 $39 $06 $03 $CA $39
.db $07 $03 $CB $39 $08 $03 $CC $39
.db $09 $03 $CD $39 $0A $03 $CE $39
.db $0B $03 $9A $39 $0C $03 $9B $39
.db $0D $03 $9D $39 $0E $03 $9E $39
.db $0F $03 $9F $39 $05 $04 $D9 $39
.db $06 $04 $DA $39 $07 $04 $DB $39
.db $08 $04 $DC $39 $09 $04 $DD $39
.db $0A $04 $DE $39 $0B $04 $AA $39
.db $0C $04 $AB $39 $0D $04 $AD $39
.db $0E $04 $AE $21 $0F $04 $AF $21
.db $05 $05 $E9 $39 $06 $05 $EA $39
.db $07 $05 $EB $39 $08 $05 $EC $39
.db $09 $05 $ED $39 $0A $05 $EE $39
.db $05 $06 $F9 $39 $06 $06 $FA $39
.db $07 $06 $FB $39 $08 $06 $FC $39
.db $09 $06 $FD $39 $0A $06 $FE $39
.db $25 $05 $02 $B3 $39 $06 $02 $B4
.db $39 $07 $02 $B5 $39 $08 $02 $B6
.db $39 $09 $02 $B7 $39 $0A $02 $B8
.db $39 $0B $02 $B8 $39 $0C $02 $8F
.db $39 $05 $03 $C3 $39 $06 $03 $C4
.db $39 $07 $03 $C5 $39 $08 $03 $C6
.db $39 $09 $03 $C7 $39 $0A $03 $C8
.db $39 $0B $03 $C8 $39 $0C $03 $9A
.db $39 $05 $04 $D3 $39 $06 $04 $D4
.db $39 $07 $04 $D5 $39 $08 $04 $D6
.db $39 $09 $04 $D7 $39 $0A $04 $D8
.db $39 $0B $04 $D8 $39 $0C $04 $AA
.db $39 $05 $05 $E3 $39 $06 $05 $E4
.db $39 $07 $05 $E5 $39 $08 $05 $E6
.db $39 $09 $05 $E7 $39 $0A $05 $E8
.db $39 $0B $05 $E8 $19 $05 $06 $F3
.db $39 $06 $06 $F4 $39 $07 $06 $F5
.db $39 $08 $06 $F6 $39 $09 $06 $F7
.db $39 $0A $06 $F8 $21 $1E $05 $02
.db $B9 $39 $06 $02 $BA $39 $07 $02
.db $BB $39 $08 $02 $BC $39 $09 $02
.db $BD $39 $0A $02 $BE $39 $05 $03
.db $C9 $39 $06 $03 $CA $39 $07 $03
.db $CB $39 $08 $03 $CC $39 $09 $03
.db $CD $39 $0A $03 $CE $39 $05 $04
.db $D9 $39 $06 $04 $DA $39 $07 $04
.db $DB $39 $08 $04 $DC $39 $09 $04
.db $DD $39 $0A $04 $DE $39 $05 $05
.db $E9 $39 $06 $05 $EA $39 $07 $05
.db $EB $39 $08 $05 $EC $39 $09 $05
.db $ED $39 $0A $05 $EE $39 $05 $06
.db $F9 $39 $06 $06 $FA $39 $07 $06
.db $FB $39 $08 $06 $FC $39 $09 $06
.db $FD $39 $0A $06 $FE $39

L95AB08:
.db $02 $00 $06 $01 $05 $02 $03 $03
.db $05 $02 $04 $04 $04 $05 $04 $04
.db $04 $05 $04 $04 $04 $04 $04 $05
.db $04 $04 $04 $05 $04 $04 $04 $05
.db $04 $04 $04 $05 $04 $04 $04 $05
.db $04 $04 $04 $05 $04 $04 $03 $06
.db $05 $07 $00

L95AB3B:
.db $4B $AB $5C $AB $7D $AB $9E $AB
.db $C7 $AB $F8 $AB $29 $AC $56 $AC
.db $04 $0E $04 $24 $39 $0F $04 $25
.db $39 $0E $05 $34 $39 $0F $05 $35
.db $39 $08 $0E $04 $50 $39 $0F $04
.db $51 $39 $0E $05 $60 $39 $0F $05
.db $61 $39 $0E $06 $70 $39 $0F $06
.db $71 $39 $0E $07 $80 $39 $0F $07
.db $81 $39 $08 $0E $04 $52 $39 $0F
.db $04 $53 $39 $0E $05 $62 $39 $0F
.db $05 $63 $39 $0E $06 $72 $39 $0F
.db $06 $73 $39 $0E $07 $82 $39 $0F
.db $07 $83 $39 $0A $0F $04 $56 $39
.db $0D $05 $64 $39 $0E $05 $65 $39
.db $0F $05 $66 $39 $0D $06 $74 $39
.db $0E $06 $75 $39 $0F $06 $76 $39
.db $0D $07 $84 $39 $0E $07 $85 $39
.db $0F $07 $86 $39 $0C $0D $04 $90
.db $39 $0E $04 $91 $39 $0F $04 $92
.db $39 $0D $05 $A0 $39 $0E $05 $A1
.db $39 $0F $05 $A2 $39 $0D $06 $B0
.db $39 $0E $06 $B1 $39 $0F $06 $B2
.db $39 $0D $07 $C0 $39 $0E $07 $C1
.db $39 $0F $07 $C2 $39 $0C $0D $04
.db $57 $39 $0E $04 $58 $39 $0F $04
.db $59 $39 $0D $05 $67 $39 $0E $05
.db $68 $39 $0F $05 $69 $39 $0D $06
.db $77 $39 $0E $06 $78 $39 $0F $06
.db $79 $39 $0D $07 $87 $39 $0E $07
.db $88 $39 $0F $07 $89 $39 $0B $0D
.db $04 $57 $39 $0E $04 $58 $39 $0D
.db $05 $67 $39 $0E $05 $44 $39 $0F
.db $05 $45 $39 $0D $06 $B0 $39 $0E
.db $06 $B1 $39 $0F $06 $B2 $39 $0D
.db $07 $C0 $39 $0E $07 $C1 $39 $0F
.db $07 $C2 $39 $09 $0D $04 $90 $39
.db $0D $05 $A0 $39 $0E $05 $A1 $19
.db $0D $06 $93 $39 $0E $06 $94 $39
.db $0F $06 $B2 $39 $0D $07 $A3 $39
.db $0E $07 $A4 $39 $0F $07 $C2 $39

L95AC7B:
.db $02 $00 $04 $01 $04 $02 $02 $03
.db $04 $02 $03 $04 $03 $05 $02 $04
.db $02 $05 $01 $04 $01 $05 $03 $06
.db $05 $07 $03 $06 $05 $07 $03 $06
.db $05 $07 $03 $06 $05 $07 $03 $06
.db $05 $07 $03 $06 $05 $07 $02 $06
.db $02 $07 $02 $08 $02 $09 $04 $0A
.db $00

L95ACB4:
.db $CA $AC $D3 $AC $00 $AD $59 $AD
.db $B2 $AD $47 $AE $DC $AE $89 $AF
.db $4A $B0 $EB $B0 $78 $B1 $02 $0F
.db $02 $03 $39 $0F $03 $13 $39 $0B
.db $0C $02 $00 $39 $0D $02 $01 $39
.db $0E $02 $04 $39 $0F $02 $05 $39
.db $07 $03 $00 $39 $08 $03 $00 $39
.db $0C $03 $10 $39 $0D $03 $11 $39
.db $0E $03 $14 $39 $0F $03 $15 $39
.db $0C $04 $20 $39 $16 $0C $02 $00
.db $39 $0D $02 $01 $39 $0E $02 $02
.db $39 $0F $02 $03 $39 $08 $03 $20
.db $39 $09 $03 $21 $39 $0A $03 $22
.db $39 $0B $03 $23 $39 $0C $03 $10
.db $39 $0D $03 $11 $39 $0E $03 $12
.db $39 $0F $03 $13 $39 $08 $04 $30
.db $39 $09 $04 $31 $39 $0A $04 $32
.db $39 $0B $04 $33 $39 $0C $04 $E0
.db $39 $0D $04 $E1 $39 $08 $05 $40
.db $39 $09 $05 $41 $39 $0A $05 $42
.db $39 $0B $05 $43 $39 $16 $0C $02
.db $06 $39 $0D $02 $07 $39 $0E $02
.db $08 $39 $0F $02 $09 $39 $08 $03
.db $26 $39 $09 $03 $27 $39 $0A $03
.db $28 $39 $0B $03 $29 $39 $0C $03
.db $16 $39 $0D $03 $17 $39 $0E $03
.db $18 $39 $0F $03 $19 $39 $08 $04
.db $36 $39 $09 $04 $37 $39 $0A $04
.db $38 $39 $0B $04 $D0 $39 $0C $04
.db $D1 $39 $0D $04 $D2 $39 $08 $05
.db $40 $39 $09 $05 $41 $39 $0A $05
.db $42 $39 $0B $05 $43 $39 $25 $0B
.db $02 $00 $39 $0C $02 $00 $39 $0D
.db $02 $01 $39 $0E $02 $02 $39 $0F
.db $02 $03 $39 $05 $03 $4A $39 $06
.db $03 $4B $39 $07 $03 $4C $39 $08
.db $03 $4D $39 $09 $03 $4E $39 $0A
.db $03 $4F $39 $0B $03 $10 $39 $0C
.db $03 $10 $39 $0D $03 $11 $39 $0E
.db $03 $12 $39 $0F $03 $13 $39 $05
.db $04 $5A $39 $06 $04 $5B $39 $07
.db $04 $5C $39 $08 $04 $5D $39 $09
.db $04 $5E $39 $0A $04 $5F $39 $0B
.db $04 $D0 $39 $0C $04 $D1 $39 $0D
.db $04 $D2 $39 $0E $04 $42 $39 $0F
.db $04 $43 $39 $05 $05 $6A $39 $06
.db $05 $6B $39 $07 $05 $6C $39 $08
.db $05 $6D $39 $09 $05 $6E $39 $0A
.db $05 $6F $39 $05 $06 $7A $39 $06
.db $06 $7B $39 $07 $06 $7C $39 $08
.db $06 $7D $39 $25 $0B $02 $06 $39
.db $0C $02 $07 $39 $0D $02 $08 $39
.db $0E $02 $09 $39 $0F $02 $09 $39
.db $05 $03 $0A $39 $06 $03 $0B $39
.db $07 $03 $0C $39 $08 $03 $0D $39
.db $09 $03 $0E $39 $0A $03 $0F $39
.db $0B $03 $16 $39 $0C $03 $17 $39
.db $0D $03 $18 $39 $0E $03 $19 $39
.db $0F $03 $19 $39 $05 $04 $1A $39
.db $06 $04 $1B $39 $07 $04 $1C $39
.db $08 $04 $1D $39 $09 $04 $1E $39
.db $0A $04 $1F $39 $0B $04 $E0 $39
.db $0C $04 $E1 $39 $0D $04 $E2 $39
.db $05 $05 $2A $39 $06 $05 $2B $39
.db $07 $05 $2C $39 $08 $05 $2D $39
.db $09 $05 $2E $39 $0A $05 $2F $39
.db $05 $06 $3A $39 $06 $06 $3B $39
.db $07 $06 $3C $39 $08 $06 $3D $39
.db $09 $06 $3E $39 $0A $06 $3F $39
.db $2B $0B $02 $06 $39 $0C $02 $95
.db $39 $0D $02 $96 $39 $0E $02 $97
.db $39 $08 $03 $96 $39 $09 $03 $0E
.db $39 $0A $03 $0F $39 $0B $03 $16
.db $39 $0C $03 $A5 $39 $0D $03 $A6
.db $39 $0E $03 $A7 $39 $03 $04 $8A
.db $39 $04 $04 $8B $39 $05 $04 $8C
.db $39 $06 $04 $8D $39 $07 $04 $8E
.db $39 $08 $04 $8F $39 $09 $04 $1E
.db $39 $0A $04 $1F $39 $0B $04 $E0
.db $39 $0C $04 $E1 $39 $0D $04 $E2
.db $39 $02 $05 $99 $39 $03 $05 $9A
.db $39 $04 $05 $9B $39 $05 $05 $9C
.db $39 $06 $05 $9D $39 $07 $05 $9E
.db $39 $08 $05 $9F $39 $02 $06 $A9
.db $39 $03 $06 $AA $39 $04 $06 $AB
.db $39 $05 $06 $AC $39 $06 $06 $AD
.db $39 $07 $06 $AE $39 $08 $06 $AF
.db $39 $02 $07 $B9 $39 $03 $07 $BA
.db $39 $04 $07 $BB $39 $05 $07 $BC
.db $39 $06 $07 $BD $39 $07 $07 $BE
.db $39 $08 $07 $BF $39 $30 $0B $02
.db $20 $39 $0C $02 $00 $39 $0D $02
.db $01 $39 $0E $02 $02 $39 $0F $02
.db $03 $39 $08 $03 $98 $39 $09 $03
.db $4E $39 $0A $03 $4F $39 $0B $03
.db $30 $39 $0C $03 $10 $39 $0D $03
.db $11 $39 $0E $03 $12 $39 $0F $03
.db $13 $39 $02 $04 $C9 $39 $03 $04
.db $CA $39 $04 $04 $CB $39 $05 $04
.db $CC $39 $06 $04 $CD $39 $07 $04
.db $CE $39 $08 $04 $CF $39 $09 $04
.db $5E $39 $0A $04 $5F $39 $0B $04
.db $D0 $39 $0C $04 $D1 $39 $0D $04
.db $D2 $39 $02 $05 $D9 $39 $03 $05
.db $DA $39 $04 $05 $DB $39 $05 $05
.db $DC $39 $06 $05 $DD $39 $07 $05
.db $DE $39 $08 $05 $DF $39 $09 $05
.db $6E $39 $0A $05 $6F $39 $02 $06
.db $E9 $39 $03 $06 $EA $39 $04 $06
.db $EB $39 $05 $06 $EC $39 $06 $06
.db $ED $39 $07 $06 $EE $39 $08 $06
.db $EF $39 $02 $07 $F9 $39 $03 $07
.db $FA $39 $04 $07 $FB $39 $05 $07
.db $FC $39 $06 $07 $FD $39 $07 $07
.db $FE $39 $08 $07 $FF $39 $28 $09
.db $03 $0E $39 $0A $03 $95 $39 $0B
.db $03 $96 $39 $0C $03 $97 $39 $03
.db $04 $8A $39 $04 $04 $8B $39 $05
.db $04 $8C $39 $06 $04 $8D $39 $07
.db $04 $8E $39 $08 $04 $8F $39 $09
.db $04 $1E $39 $0A $04 $A5 $39 $0B
.db $04 $A6 $39 $0C $04 $A7 $39 $0D
.db $04 $A8 $19 $02 $05 $99 $39 $03
.db $05 $9A $39 $04 $05 $9B $39 $05
.db $05 $9C $39 $06 $05 $9D $39 $07
.db $05 $9E $39 $08 $05 $9F $39 $09
.db $05 $2E $39 $0A $05 $2F $39 $02
.db $06 $A9 $39 $03 $06 $AA $39 $04
.db $06 $AB $39 $05 $06 $AC $39 $06
.db $06 $AD $39 $07 $06 $AE $39 $08
.db $06 $AF $39 $09 $06 $3E $39 $0A
.db $06 $3F $39 $02 $07 $B9 $39 $03
.db $07 $BA $39 $04 $07 $BB $39 $05
.db $07 $BC $39 $06 $07 $BD $39 $07
.db $07 $BE $39 $08 $07 $BF $39 $23
.db $07 $03 $95 $19 $08 $03 $96 $39
.db $09 $03 $97 $39 $0A $03 $98 $39
.db $02 $04 $C9 $39 $03 $04 $8A $39
.db $04 $04 $CB $39 $05 $04 $CC $39
.db $06 $04 $CD $39 $07 $04 $A5 $39
.db $08 $04 $A6 $39 $09 $04 $A7 $39
.db $0A $04 $A8 $39 $02 $05 $D9 $39
.db $03 $05 $9A $39 $04 $05 $DB $39
.db $05 $05 $DC $39 $06 $05 $DD $39
.db $07 $05 $DE $39 $08 $05 $6E $39
.db $02 $06 $E9 $39 $03 $06 $AA $39
.db $04 $06 $EB $39 $05 $06 $EC $39
.db $06 $06 $ED $39 $07 $06 $EE $39
.db $08 $06 $EF $39 $09 $06 $7E $39
.db $02 $07 $F9 $39 $03 $07 $BA $39
.db $04 $07 $FB $39 $05 $07 $FC $39
.db $06 $07 $FD $39 $07 $07 $FE $39
.db $08 $07 $FF $39 $19 $02 $04 $C3
.db $39 $03 $04 $C4 $39 $04 $04 $C5
.db $39 $05 $04 $C6 $39 $06 $04 $C7
.db $39 $07 $04 $C8 $39 $02 $05 $D3
.db $39 $03 $05 $D4 $39 $04 $05 $D5
.db $39 $05 $05 $D6 $39 $06 $05 $D7
.db $39 $07 $05 $D8 $39 $02 $06 $E3
.db $39 $03 $06 $E4 $39 $04 $06 $E5
.db $39 $05 $06 $E6 $39 $06 $06 $E7
.db $39 $07 $06 $E8 $39 $02 $07 $F3
.db $39 $03 $07 $F4 $39 $04 $07 $F5
.db $39 $05 $07 $F6 $39 $06 $07 $F7
.db $39 $07 $07 $F8 $39 $08 $07 $BF
.db $39

L95B1DD:
.db $02 $00 $06 $01 $05 $02 $03 $03
.db $05 $02 $04 $04 $04 $05 $04 $04
.db $04 $05 $04 $04 $04 $04 $04 $05
.db $04 $04 $04 $05 $04 $04 $04 $05
.db $04 $04 $04 $05 $04 $04 $04 $05
.db $04 $04 $03 $06 $05 $07 $05 $08
.db $05 $09 $00

L95B210:
.db $24 $B2 $3D $B2 $6A $B2 $AB $B2
.db $10 $B3 $8D $B3 $F6 $B3 $67 $B4
.db $CC $B4 $35 $B5 $06 $0E $03 $1F
.db $39 $0D $04 $2E $39 $0E $04 $2F
.db $39 $0D $05 $3E $39 $0E $05 $27
.db $39 $0E $06 $18 $39 $0B $0E $03
.db $2E $39 $0D $04 $2E $39 $0E $04
.db $05 $39 $0D $05 $05 $39 $0E $05
.db $38 $39 $0C $06 $05 $39 $0D $06
.db $10 $39 $0E $06 $05 $39 $0C $07
.db $15 $39 $0D $07 $15 $39 $0E $07
.db $15 $39 $10 $0E $03 $2E $39 $0D
.db $04 $2E $39 $0E $04 $0B $39 $0D
.db $05 $3E $39 $0E $05 $19 $39 $0B
.db $06 $20 $39 $0C $06 $21 $39 $0D
.db $06 $29 $39 $0E $06 $18 $39 $0B
.db $07 $30 $39 $0C $07 $31 $39 $0D
.db $07 $27 $39 $0E $07 $25 $39 $0C
.db $08 $25 $39 $0D $08 $25 $39 $0E
.db $08 $25 $39 $19 $0E $03 $2E $39
.db $0D $04 $2E $39 $0E $04 $2F $39
.db $0D $05 $3E $39 $0E $05 $3F $39
.db $0B $06 $02 $39 $0C $06 $28 $39
.db $0D $06 $26 $39 $0E $06 $18 $39
.db $09 $07 $00 $39 $0A $07 $01 $39
.db $0B $07 $12 $39 $0C $07 $27 $39
.db $0D $07 $06 $39 $0E $07 $07 $39
.db $09 $08 $10 $39 $0A $08 $11 $39
.db $0B $08 $36 $39 $0C $08 $37 $39
.db $0D $08 $16 $39 $0E $08 $0B $79
.db $0F $08 $0A $79 $0A $09 $08 $B9
.db $0B $09 $09 $B9 $0C $09 $07 $39
.db $1F $0E $03 $2E $39 $0D $04 $2E
.db $39 $0E $04 $0E $39 $0C $05 $20
.db $39 $0D $05 $21 $39 $0E $05 $27
.db $39 $0F $05 $0B $39 $0A $06 $42
.db $39 $0B $06 $43 $39 $0C $06 $48
.db $39 $0D $06 $49 $39 $0E $06 $49
.db $39 $0F $06 $1B $39 $0A $07 $52
.db $39 $0B $07 $53 $39 $0C $07 $48
.db $39 $0D $07 $49 $39 $0E $07 $59
.db $39 $0F $07 $2B $39 $0A $08 $10
.db $39 $0B $08 $11 $39 $0C $08 $58
.db $39 $0D $08 $59 $39 $0E $08 $04
.db $39 $0F $08 $37 $39 $0A $09 $1A
.db $39 $0B $09 $1B $39 $0C $09 $2B
.db $39 $0D $09 $26 $39 $0E $09 $1A
.db $39 $0F $09 $1B $39 $1A $0E $03
.db $1F $39 $0D $04 $2E $39 $0E $04
.db $2F $39 $0C $05 $41 $39 $0D $05
.db $3E $39 $0E $05 $0D $39 $0F $05
.db $22 $39 $0B $06 $40 $39 $0C $06
.db $49 $39 $0D $06 $28 $39 $0E $06
.db $29 $39 $0F $06 $01 $39 $0A $07
.db $03 $39 $0B $07 $3A $39 $0C $07
.db $3A $39 $0D $07 $38 $39 $0E $07
.db $3A $39 $0F $07 $11 $39 $0A $08
.db $01 $B9 $0B $08 $14 $39 $0C $08
.db $1B $F9 $0D $08 $3A $39 $0E $08
.db $39 $39 $0F $08 $1A $79 $0C $09
.db $0B $F9 $0D $09 $0A $F9 $1C $0E
.db $03 $2E $39 $0D $04 $2E $39 $0E
.db $04 $0B $39 $0A $05 $22 $39 $0B
.db $05 $23 $39 $0C $05 $03 $39 $0D
.db $05 $04 $39 $0E $05 $19 $39 $09
.db $06 $22 $39 $0A $06 $14 $39 $0B
.db $06 $27 $39 $0C $06 $47 $39 $0D
.db $06 $48 $39 $0E $06 $18 $39 $09
.db $07 $04 $79 $0A $07 $05 $39 $0B
.db $07 $44 $39 $0C $07 $45 $39 $0D
.db $07 $58 $39 $0E $07 $04 $39 $0F
.db $07 $23 $39 $09 $08 $07 $79 $0A
.db $08 $04 $39 $0B $08 $54 $39 $0C
.db $08 $55 $39 $0D $08 $13 $39 $0E
.db $08 $16 $39 $0F $08 $33 $39 $19
.db $0A $05 $22 $39 $0B $05 $23 $39
.db $0C $05 $03 $39 $0D $05 $1A $39
.db $0E $05 $19 $39 $09 $06 $22 $39
.db $0A $06 $26 $39 $0B $06 $49 $39
.db $0C $06 $49 $39 $0D $06 $45 $39
.db $0E $06 $18 $39 $09 $07 $04 $79
.db $0A $07 $48 $39 $0B $07 $29 $39
.db $0C $07 $54 $39 $0D $07 $55 $39
.db $0E $07 $48 $39 $0F $07 $39 $39
.db $09 $08 $07 $79 $0A $08 $48 $39
.db $0B $08 $49 $39 $0C $08 $57 $39
.db $0D $08 $11 $39 $0E $08 $48 $39
.db $0F $08 $33 $39 $1A $0B $03 $34
.db $39 $0A $04 $34 $39 $0B $04 $33
.db $39 $0A $05 $18 $39 $0B $05 $23
.db $39 $09 $06 $24 $39 $0A $06 $26
.db $39 $0B $06 $1A $39 $0C $06 $32
.db $39 $0D $06 $33 $39 $0E $06 $18
.db $39 $0F $06 $25 $39 $09 $07 $24
.db $39 $0A $07 $36 $39 $0B $07 $29
.db $39 $0C $07 $15 $39 $0D $07 $29
.db $79 $0E $07 $36 $39 $0F $07 $39
.db $39 $09 $08 $07 $79 $0A $08 $24
.db $39 $0B $08 $11 $39 $0C $08 $36
.db $39 $0D $08 $11 $39 $0E $08 $39
.db $39 $0F $08 $33 $39 $1F $0C $02
.db $23 $39 $0B $03 $34 $39 $0C $03
.db $23 $39 $0A $04 $34 $39 $0B $04
.db $33 $39 $0C $04 $18 $39 $0D $04
.db $1A $39 $0A $05 $22 $39 $0B $05
.db $10 $39 $0C $05 $1A $39 $09 $06
.db $24 $39 $0A $06 $23 $39 $0B $06
.db $10 $39 $0C $06 $09 $39 $0D $06
.db $33 $39 $0E $06 $18 $39 $0F $06
.db $25 $39 $09 $07 $24 $39 $0A $07
.db $23 $39 $0B $07 $10 $39 $0C $07
.db $15 $39 $0D $07 $10 $39 $0E $07
.db $10 $39 $0F $07 $39 $39 $09 $08
.db $07 $79 $0A $08 $24 $39 $0B $08
.db $23 $39 $0C $08 $23 $39 $0D $08
.db $23 $39 $0E $08 $39 $39 $0F $08
.db $33 $39

L95B5B2:
.db $02 $00 $06 $01 $05 $02 $03 $03
.db $05 $02 $03 $04 $03 $05 $03 $04
.db $03 $05 $04 $04 $04 $04 $04 $05
.db $04 $04 $04 $05 $03 $04 $03 $05
.db $03 $04 $03 $05 $03 $04 $03 $05
.db $03 $04 $02 $06 $04 $07 $04 $08
.db $04 $09 $04 $0A $04 $0B $04 $0C
.db $05 $0C $05 $0D $00

L95B5EF:
.db $0B $B6 $1C $B6 $51 $B6 $06 $B7
.db $CB $B7 $84 $B9 $11 $BB $9E $BC
.db $0F $BE $B0 $BF $01 $C1 $62 $C2
.db $47 $C3 $F4 $C3 $04 $0E $02 $17
.db $39 $0F $02 $01 $39 $0E $03 $10
.db $39 $0F $03 $11 $39 $0D $0C $02
.db $02 $39 $0D $02 $03 $39 $0E $02
.db $17 $39 $0F $02 $01 $39 $0C $03
.db $12 $39 $0D $03 $04 $39 $0E $03
.db $05 $39 $0F $03 $11 $39 $0D $04
.db $14 $39 $0E $04 $06 $39 $0F $04
.db $07 $39 $0E $05 $16 $39 $0F $05
.db $17 $21 $2D $09 $02 $0A $39 $0A
.db $02 $0B $39 $0B $02 $0B $79 $0D
.db $02 $1F $19 $0E $02 $17 $39 $0F
.db $02 $01 $39 $07 $03 $08 $39 $08
.db $03 $09 $39 $09 $03 $1A $39 $0A
.db $03 $1B $39 $0B $03 $17 $39 $0C
.db $03 $03 $39 $0D $03 $04 $39 $0E
.db $03 $10 $39 $0F $03 $11 $39 $07
.db $04 $18 $39 $08 $04 $19 $39 $09
.db $04 $03 $39 $0A $04 $04 $39 $0B
.db $04 $10 $39 $0C $04 $13 $39 $0D
.db $04 $14 $39 $0E $04 $06 $39 $0F
.db $04 $07 $39 $07 $05 $4A $39 $08
.db $05 $4B $39 $09 $05 $4C $39 $0A
.db $05 $4D $39 $0B $05 $04 $39 $0C
.db $05 $05 $39 $0D $05 $11 $39 $0E
.db $05 $16 $39 $0F $05 $34 $39 $07
.db $06 $5A $39 $08 $06 $5B $39 $09
.db $06 $5C $39 $0A $06 $5D $39 $0B
.db $06 $14 $39 $0C $06 $15 $39 $0D
.db $06 $07 $39 $07 $07 $34 $19 $09
.db $07 $34 $19 $0A $07 $34 $19 $0C
.db $07 $16 $39 $0D $07 $17 $21 $31
.db $09 $01 $16 $B9 $0A $01 $17 $A1
.db $0F $01 $1F $19 $07 $02 $08 $39
.db $08 $02 $09 $39 $09 $02 $06 $B9
.db $0A $02 $08 $39 $0B $02 $25 $39
.db $0D $02 $0A $39 $0E $02 $08 $39
.db $0F $02 $09 $39 $07 $03 $18 $39
.db $08 $03 $19 $39 $09 $03 $25 $39
.db $0A $03 $09 $39 $0B $03 $19 $39
.db $0C $03 $4A $39 $0D $03 $4B $39
.db $0E $03 $4C $39 $0F $03 $4D $39
.db $06 $04 $08 $39 $07 $04 $09 $39
.db $08 $04 $08 $39 $09 $04 $4A $39
.db $0A $04 $4B $39 $0B $04 $4C $39
.db $0C $04 $4D $39 $0D $04 $5B $39
.db $0E $04 $5C $39 $0F $04 $5D $39
.db $06 $05 $18 $39 $07 $05 $19 $39
.db $08 $05 $18 $39 $09 $05 $5A $39
.db $0A $05 $5B $39 $0B $05 $5C $39
.db $0C $05 $5D $39 $0D $05 $15 $39
.db $0E $05 $1C $39 $0F $05 $1D $21
.db $07 $06 $18 $39 $08 $06 $19 $39
.db $09 $06 $18 $39 $0A $06 $19 $39
.db $0B $06 $14 $39 $0C $06 $0C $39
.db $0D $06 $0D $39 $0C $07 $1C $39
.db $0D $07 $1D $21 $6E $03 $00 $20
.db $39 $04 $00 $22 $39 $05 $00 $33
.db $39 $06 $00 $34 $B9 $02 $01 $21
.db $39 $03 $01 $33 $39 $04 $01 $0D
.db $39 $05 $01 $0D $39 $06 $01 $33
.db $39 $07 $01 $20 $79 $08 $01 $32
.db $99 $09 $01 $33 $99 $01 $02 $20
.db $39 $02 $02 $21 $39 $03 $02 $0D
.db $39 $04 $02 $03 $39 $05 $02 $04
.db $39 $06 $02 $05 $39 $07 $02 $03
.db $39 $08 $02 $17 $39 $09 $02 $01
.db $39 $0A $02 $08 $39 $0B $02 $09
.db $39 $0D $02 $20 $39 $0E $02 $21
.db $39 $0F $02 $09 $39 $01 $03 $30
.db $39 $02 $03 $31 $39 $03 $03 $04
.db $39 $04 $03 $13 $39 $05 $03 $14
.db $39 $06 $03 $15 $39 $07 $03 $13
.db $39 $08 $03 $10 $39 $09 $03 $11
.db $39 $0A $03 $0D $39 $0B $03 $0E
.db $39 $0C $03 $4A $39 $0D $03 $4B
.db $39 $0E $03 $4C $39 $0F $03 $4D
.db $39 $01 $04 $0D $39 $02 $04 $0E
.db $39 $03 $04 $04 $39 $04 $04 $5A
.db $B9 $05 $04 $5B $B9 $06 $04 $5C
.db $B9 $07 $04 $5D $B9 $08 $04 $36
.db $39 $09 $04 $37 $39 $0A $04 $4B
.db $39 $0B $04 $4C $39 $0C $04 $4D
.db $39 $0D $04 $5B $39 $0E $04 $5C
.db $39 $0F $04 $5D $39 $01 $05 $1D
.db $39 $02 $05 $1E $39 $03 $05 $04
.db $39 $04 $05 $56 $B9 $05 $05 $57
.db $B9 $06 $05 $58 $B9 $07 $05 $59
.db $B9 $08 $05 $46 $39 $09 $05 $47
.db $39 $0A $05 $48 $39 $0B $05 $49
.db $39 $0C $05 $5D $39 $0D $05 $13
.db $F9 $0E $05 $12 $F9 $0F $05 $25
.db $39 $01 $06 $10 $B9 $02 $06 $22
.db $39 $03 $06 $22 $39 $04 $06 $46
.db $B9 $05 $06 $47 $B9 $06 $06 $48
.db $B9 $07 $06 $49 $B9 $08 $06 $56
.db $39 $09 $06 $57 $39 $0A $06 $58
.db $39 $0B $06 $59 $39 $0C $06 $0C
.db $39 $0D $06 $03 $F9 $0E $06 $02
.db $F9 $0F $06 $35 $21 $01 $07 $17
.db $B9 $02 $07 $01 $B9 $03 $07 $1D
.db $39 $04 $07 $10 $B9 $05 $07 $22
.db $39 $06 $07 $1D $39 $07 $07 $13
.db $B9 $08 $07 $14 $B9 $09 $07 $15
.db $B9 $0A $07 $06 $39 $0B $07 $27
.db $B9 $0C $07 $24 $39 $0D $07 $25
.db $39 $04 $08 $17 $B9 $05 $08 $01
.db $B9 $07 $08 $03 $B9 $08 $08 $04
.db $B9 $09 $08 $05 $B9 $0A $08 $16
.db $39 $0B $08 $25 $39 $0C $08 $34
.db $39 $0D $08 $35 $21 $0A $09 $34
.db $39 $0B $09 $35 $21 $63 $05 $00
.db $23 $39 $06 $00 $23 $39 $02 $01
.db $34 $39 $03 $01 $0B $79 $04 $01
.db $17 $39 $05 $01 $01 $39 $06 $01
.db $23 $39 $07 $01 $34 $39 $02 $02
.db $25 $B9 $03 $02 $1B $79 $04 $02
.db $10 $39 $05 $02 $11 $39 $06 $02
.db $22 $39 $07 $02 $2A $39 $08 $02
.db $2B $39 $09 $02 $0A $39 $0A $02
.db $22 $39 $0B $02 $17 $A1 $0D $02
.db $0B $79 $0E $02 $17 $39 $0F $02
.db $01 $39 $01 $03 $1A $B9 $02 $03
.db $1B $B9 $03 $03 $2A $39 $04 $03
.db $2B $39 $05 $03 $28 $39 $06 $03
.db $28 $39 $07 $03 $3A $39 $08 $03
.db $3B $39 $09 $03 $23 $39 $0A $03
.db $30 $39 $0B $03 $22 $39 $0C $03
.db $22 $39 $0D $03 $1B $79 $0E $03
.db $10 $39 $0F $03 $11 $39 $01 $04
.db $34 $39 $02 $04 $26 $39 $03 $04
.db $27 $39 $04 $04 $28 $39 $05 $04
.db $48 $39 $06 $04 $49 $39 $07 $04
.db $47 $39 $08 $04 $48 $39 $09 $04
.db $49 $39 $0A $04 $47 $39 $0B $04
.db $48 $39 $0C $04 $49 $39 $0D $04
.db $11 $39 $0E $04 $06 $39 $0F $04
.db $07 $39 $01 $05 $25 $B9 $02 $05
.db $36 $39 $03 $05 $37 $39 $04 $05
.db $48 $39 $05 $05 $58 $39 $06 $05
.db $59 $39 $07 $05 $57 $39 $08 $05
.db $58 $39 $09 $05 $59 $39 $0A $05
.db $57 $39 $0B $05 $58 $39 $0C $05
.db $59 $39 $0D $05 $11 $39 $0E $05
.db $16 $39 $0F $05 $17 $21 $01 $06
.db $1A $B9 $02 $06 $18 $39 $03 $06
.db $26 $39 $04 $06 $58 $39 $05 $06
.db $59 $39 $06 $06 $48 $39 $07 $06
.db $49 $39 $08 $06 $2A $39 $09 $06
.db $2B $39 $0A $06 $15 $39 $0B $06
.db $5E $39 $0C $06 $5F $39 $0D $06
.db $07 $39 $02 $07 $1A $B9 $03 $07
.db $1B $B9 $04 $07 $56 $39 $05 $07
.db $57 $39 $06 $07 $58 $39 $07 $07
.db $59 $39 $08 $07 $3A $39 $09 $07
.db $3B $39 $0A $07 $09 $39 $0C $07
.db $16 $39 $0D $07 $17 $21 $02 $08
.db $0A $B9 $03 $08 $0B $B9 $04 $08
.db $18 $39 $05 $08 $13 $39 $06 $08
.db $38 $39 $07 $08 $39 $39 $08 $08
.db $07 $39 $09 $08 $19 $39 $0A $08
.db $19 $39 $63 $01 $00 $24 $B9 $02
.db $00 $26 $B9 $03 $00 $37 $39 $04
.db $00 $38 $39 $06 $00 $34 $B9 $07
.db $00 $35 $A1 $01 $01 $36 $39 $02
.db $01 $37 $B9 $03 $01 $3A $B9 $04
.db $01 $3B $B9 $05 $01 $0D $39 $06
.db $01 $0E $39 $07 $01 $25 $B9 $08
.db $01 $34 $B9 $09 $01 $22 $39 $0D
.db $01 $22 $39 $0E $01 $22 $39 $01
.db $02 $13 $39 $02 $02 $27 $B9 $03
.db $02 $2A $B9 $04 $02 $2B $B9 $05
.db $02 $1D $39 $06 $02 $1E $39 $07
.db $02 $0E $39 $08 $02 $24 $B9 $09
.db $02 $32 $39 $0A $02 $24 $B9 $0B
.db $02 $32 $39 $0C $02 $24 $B9 $0D
.db $02 $32 $39 $0E $02 $22 $39 $0F
.db $02 $22 $39 $01 $03 $1A $B9 $02
.db $03 $36 $B9 $03 $03 $27 $39 $04
.db $03 $28 $39 $05 $03 $37 $39 $06
.db $03 $29 $B9 $07 $03 $2A $B9 $08
.db $03 $0D $39 $09 $03 $0E $39 $0A
.db $03 $0D $39 $0B $03 $0E $39 $0C
.db $03 $04 $39 $0D $03 $0E $39 $01
.db $04 $0A $B9 $02 $04 $0B $B9 $03
.db $04 $3A $39 $04 $04 $26 $39 $05
.db $04 $28 $39 $06 $04 $1D $B9 $07
.db $04 $36 $B9 $08 $04 $27 $39 $09
.db $04 $0E $39 $0A $04 $27 $39 $0B
.db $04 $11 $B9 $0C $04 $04 $39 $01
.db $05 $20 $39 $02 $05 $21 $39 $03
.db $05 $26 $39 $04 $05 $27 $39 $05
.db $05 $28 $39 $06 $05 $29 $39 $07
.db $05 $28 $39 $08 $05 $29 $39 $09
.db $05 $1E $39 $0A $05 $04 $39 $0B
.db $05 $04 $39 $0C $05 $18 $39 $01
.db $06 $30 $39 $02 $06 $31 $39 $03
.db $06 $36 $39 $04 $06 $37 $39 $05
.db $06 $38 $39 $06 $06 $39 $39 $07
.db $06 $38 $39 $08 $06 $39 $39 $09
.db $06 $2B $B9 $0A $06 $24 $39 $0B
.db $06 $25 $39 $02 $07 $1A $B9 $03
.db $07 $36 $B9 $04 $07 $37 $B9 $05
.db $07 $38 $B9 $06 $07 $26 $39 $07
.db $07 $27 $39 $08 $07 $28 $39 $09
.db $07 $29 $39 $0A $07 $34 $39 $0B
.db $07 $35 $21 $02 $08 $0A $B9 $03
.db $08 $0B $B9 $04 $08 $18 $39 $05
.db $08 $13 $39 $06 $08 $36 $39 $07
.db $08 $37 $39 $08 $08 $38 $39 $09
.db $08 $39 $39 $0A $08 $19 $39 $5C
.db $03 $00 $24 $B9 $04 $00 $32 $39
.db $05 $00 $0D $39 $06 $00 $0E $39
.db $01 $01 $24 $39 $02 $01 $34 $B9
.db $03 $01 $0D $39 $04 $01 $0E $B9
.db $05 $01 $33 $39 $0A $01 $20 $39
.db $0B $01 $21 $39 $01 $02 $17 $39
.db $02 $02 $24 $B9 $03 $02 $32 $39
.db $04 $02 $4A $39 $05 $02 $4B $39
.db $06 $02 $22 $39 $07 $02 $20 $39
.db $08 $02 $21 $39 $0A $02 $30 $39
.db $0B $02 $31 $39 $0C $02 $21 $39
.db $0D $02 $22 $39 $0E $02 $22 $39
.db $01 $03 $20 $39 $02 $03 $44 $39
.db $03 $03 $45 $39 $04 $03 $5A $39
.db $05 $03 $5B $39 $06 $03 $32 $39
.db $07 $03 $30 $39 $08 $03 $31 $39
.db $09 $03 $22 $39 $0A $03 $22 $39
.db $0B $03 $21 $39 $0C $03 $31 $39
.db $0D $03 $31 $39 $01 $04 $30 $39
.db $02 $04 $54 $39 $03 $04 $4A $39
.db $04 $04 $4B $39 $05 $04 $1E $B9
.db $06 $04 $0D $B9 $07 $04 $23 $39
.db $08 $04 $24 $B9 $09 $04 $22 $39
.db $0A $04 $30 $39 $0B $04 $31 $39
.db $0C $04 $31 $39 $01 $05 $07 $F9
.db $02 $05 $54 $B9 $03 $05 $5A $39
.db $04 $05 $5B $39 $05 $05 $47 $39
.db $06 $05 $48 $39 $07 $05 $49 $39
.db $08 $05 $4A $39 $09 $05 $4B $39
.db $0A $05 $31 $39 $0B $05 $31 $39
.db $0C $05 $31 $39 $01 $06 $10 $39
.db $02 $06 $44 $B9 $03 $06 $45 $B9
.db $04 $06 $56 $39 $05 $06 $57 $39
.db $06 $06 $58 $39 $07 $06 $59 $39
.db $08 $06 $5A $39 $09 $06 $5B $39
.db $0A $06 $31 $39 $0B $06 $31 $39
.db $01 $07 $17 $B9 $02 $07 $01 $B9
.db $03 $07 $1D $B9 $04 $07 $10 $B9
.db $05 $07 $1D $B9 $06 $07 $1E $39
.db $07 $07 $4A $39 $08 $07 $4B $39
.db $09 $07 $4C $39 $0A $07 $4D $39
.db $0B $07 $22 $39 $04 $08 $17 $B9
.db $05 $08 $01 $B9 $07 $08 $5A $39
.db $08 $08 $5B $39 $09 $08 $5C $39
.db $0A $08 $5D $39 $0B $08 $32 $B9
.db $0A $09 $0D $39 $0B $09 $0E $39
.db $68 $02 $01 $08 $39 $03 $01 $2B
.db $39 $04 $01 $29 $39 $05 $01 $29
.db $39 $06 $01 $05 $39 $07 $01 $34
.db $19 $08 $01 $35 $01 $01 $02 $08
.db $39 $02 $02 $3A $39 $03 $02 $3B
.db $39 $04 $02 $29 $39 $05 $02 $0E
.db $39 $06 $02 $25 $B9 $08 $02 $22
.db $19 $09 $02 $23 $19 $0A $02 $34
.db $19 $0B $02 $35 $01 $0C $02 $22
.db $19 $0D $02 $34 $19 $0E $02 $35
.db $01 $00 $03 $08 $39 $01 $03 $26
.db $39 $02 $03 $27 $39 $03 $03 $28
.db $39 $04 $03 $1D $39 $05 $03 $1E
.db $39 $06 $03 $0E $39 $07 $03 $21
.db $79 $08 $03 $32 $39 $09 $03 $33
.db $19 $0A $03 $32 $19 $0B $03 $33
.db $19 $0C $03 $32 $19 $0D $03 $33
.db $19 $00 $04 $29 $39 $01 $04 $36
.db $39 $02 $04 $59 $F9 $03 $04 $58
.db $F9 $04 $04 $57 $F9 $05 $04 $56
.db $F9 $06 $04 $1E $39 $07 $04 $2B
.db $39 $08 $04 $30 $79 $09 $04 $06
.db $B9 $0A $04 $07 $B9 $0B $04 $04
.db $79 $0C $04 $24 $19 $0D $04 $25
.db $19 $00 $05 $0A $B9 $01 $05 $0B
.db $B9 $02 $05 $49 $F9 $03 $05 $48
.db $F9 $04 $05 $47 $F9 $05 $05 $46
.db $F9 $06 $05 $0E $39 $07 $05 $0D
.db $39 $08 $05 $0E $39 $09 $05 $27
.db $39 $0A $05 $11 $39 $0B $05 $11
.db $39 $0C $05 $34 $19 $0D $05 $35
.db $01 $00 $06 $20 $39 $01 $06 $21
.db $39 $02 $06 $46 $39 $03 $06 $47
.db $39 $04 $06 $48 $39 $05 $06 $49
.db $39 $06 $06 $29 $39 $07 $06 $2B
.db $39 $08 $06 $1E $39 $09 $06 $37
.db $39 $0A $06 $11 $39 $0B $06 $18
.db $39 $00 $07 $30 $39 $01 $07 $31
.db $39 $02 $07 $56 $39 $03 $07 $57
.db $39 $04 $07 $58 $39 $05 $07 $59
.db $39 $06 $07 $39 $39 $07 $07 $28
.db $39 $08 $07 $29 $39 $09 $07 $2A
.db $39 $0A $07 $2B $39 $01 $08 $1A
.db $B9 $02 $08 $36 $39 $03 $08 $37
.db $39 $04 $08 $48 $39 $05 $08 $49
.db $39 $06 $08 $4A $39 $07 $08 $4B
.db $39 $08 $08 $39 $39 $09 $08 $2B
.db $39 $0A $08 $3B $39 $01 $09 $0A
.db $B9 $02 $09 $0B $B9 $03 $09 $18
.db $39 $04 $09 $58 $39 $05 $09 $59
.db $39 $06 $09 $5A $39 $07 $09 $5B
.db $39 $08 $09 $19 $39 $09 $09 $3B
.db $39 $54 $03 $01 $22 $39 $04 $01
.db $23 $39 $00 $02 $24 $39 $01 $02
.db $34 $B9 $02 $02 $22 $39 $03 $02
.db $32 $39 $04 $02 $33 $39 $05 $02
.db $42 $19 $06 $02 $43 $19 $07 $02
.db $43 $59 $08 $02 $42 $59 $00 $03
.db $17 $39 $01 $03 $2A $39 $02 $03
.db $2B $39 $03 $03 $0D $39 $04 $03
.db $0E $39 $05 $03 $52 $39 $06 $03
.db $53 $39 $07 $03 $53 $59 $08 $03
.db $52 $59 $09 $03 $24 $19 $0A $03
.db $25 $19 $0B $03 $24 $19 $0C $03
.db $25 $19 $00 $04 $20 $39 $01 $04
.db $3A $39 $02 $04 $3B $39 $03 $04
.db $1D $39 $04 $04 $1E $39 $05 $04
.db $32 $39 $06 $04 $33 $39 $07 $04
.db $32 $19 $08 $04 $33 $19 $09 $04
.db $32 $19 $0A $04 $33 $19 $0B $04
.db $34 $19 $0C $04 $35 $01 $00 $05
.db $30 $39 $01 $05 $1D $39 $02 $05
.db $1E $39 $03 $05 $0D $39 $04 $05
.db $0E $39 $05 $05 $22 $39 $06 $05
.db $23 $39 $07 $05 $22 $19 $08 $05
.db $23 $19 $09 $05 $24 $19 $0A $05
.db $25 $19 $00 $06 $07 $F9 $01 $06
.db $2A $39 $02 $06 $2B $39 $03 $06
.db $1D $39 $04 $06 $1E $39 $05 $06
.db $0D $39 $06 $06 $0E $39 $07 $06
.db $32 $39 $08 $06 $33 $19 $09 $06
.db $34 $19 $0A $06 $35 $01 $00 $07
.db $10 $B9 $01 $07 $3A $39 $02 $07
.db $3B $39 $03 $07 $22 $39 $04 $07
.db $2A $39 $05 $07 $2B $39 $06 $07
.db $1E $39 $07 $07 $23 $39 $08 $07
.db $24 $39 $00 $08 $17 $B9 $01 $08
.db $01 $B9 $02 $08 $1D $39 $03 $08
.db $10 $B9 $04 $08 $3A $39 $05 $08
.db $3B $39 $06 $08 $32 $39 $07 $08
.db $33 $39 $08 $08 $34 $39 $03 $09
.db $17 $B9 $04 $09 $01 $B9 $06 $09
.db $1D $39 $07 $09 $32 $39 $08 $09
.db $33 $39 $09 $0A $34 $39 $0A $0A
.db $35 $21 $58 $00 $01 $35 $E1 $01
.db $01 $34 $F9 $02 $01 $22 $39 $03
.db $01 $23 $39 $05 $01 $34 $B9 $06
.db $01 $35 $A1 $00 $02 $25 $F9 $01
.db $02 $24 $F9 $02 $02 $32 $39 $03
.db $02 $33 $39 $04 $02 $0D $39 $05
.db $02 $0E $39 $06 $02 $25 $B9 $00
.db $03 $13 $39 $01 $03 $23 $39 $02
.db $03 $24 $39 $03 $03 $03 $39 $04
.db $03 $22 $39 $05 $03 $23 $39 $06
.db $03 $0E $39 $07 $03 $21 $79 $08
.db $03 $20 $79 $00 $04 $1A $B9 $01
.db $04 $22 $39 $02 $04 $23 $39 $03
.db $04 $13 $39 $04 $04 $32 $39 $05
.db $04 $33 $39 $06 $04 $1E $39 $07
.db $04 $2B $39 $08 $04 $30 $79 $09
.db $04 $06 $B9 $0A $04 $07 $B9 $0B
.db $04 $04 $79 $00 $05 $0A $B9 $01
.db $05 $32 $39 $02 $05 $51 $F9 $03
.db $05 $50 $F9 $04 $05 $24 $39 $05
.db $05 $22 $39 $06 $05 $23 $39 $07
.db $05 $22 $39 $08 $05 $23 $39 $09
.db $05 $03 $39 $0A $05 $04 $39 $0B
.db $05 $11 $39 $00 $06 $20 $39 $01
.db $06 $23 $39 $02 $06 $41 $F9 $03
.db $06 $40 $F9 $04 $06 $23 $39 $05
.db $06 $32 $39 $06 $06 $33 $39 $07
.db $06 $32 $39 $08 $06 $33 $39 $09
.db $06 $13 $39 $0A $06 $14 $39 $0B
.db $06 $18 $39 $00 $07 $30 $39 $01
.db $07 $31 $39 $02 $07 $51 $F9 $03
.db $07 $50 $F9 $04 $07 $33 $39 $05
.db $07 $22 $39 $06 $07 $23 $39 $07
.db $07 $22 $39 $08 $07 $23 $39 $09
.db $07 $23 $39 $0A $07 $24 $39 $01
.db $08 $1A $B9 $02 $08 $41 $F9 $03
.db $08 $40 $F9 $04 $08 $13 $39 $05
.db $08 $32 $39 $06 $08 $33 $39 $07
.db $08 $32 $39 $08 $08 $33 $39 $09
.db $08 $34 $39 $0A $08 $35 $21 $01
.db $09 $0A $B9 $02 $09 $0B $B9 $03
.db $09 $18 $39 $04 $09 $23 $39 $05
.db $09 $24 $39 $06 $09 $39 $39 $07
.db $09 $23 $39 $08 $09 $24 $39 $09
.db $09 $19 $39 $39 $03 $01 $22 $39
.db $04 $01 $23 $39 $00 $02 $24 $39
.db $01 $02 $34 $B9 $02 $02 $22 $39
.db $03 $02 $32 $39 $04 $02 $33 $39
.db $00 $03 $17 $39 $01 $03 $24 $B9
.db $02 $03 $32 $39 $03 $03 $0D $39
.db $04 $03 $0E $39 $05 $03 $34 $39
.db $00 $04 $20 $39 $01 $04 $22 $39
.db $02 $04 $23 $39 $03 $04 $23 $39
.db $04 $04 $34 $39 $06 $04 $33 $39
.db $00 $05 $30 $39 $01 $05 $32 $39
.db $02 $05 $33 $39 $03 $05 $33 $39
.db $00 $06 $07 $F9 $01 $06 $06 $F9
.db $02 $06 $22 $39 $03 $06 $1D $39
.db $04 $06 $34 $39 $05 $06 $34 $39
.db $06 $06 $34 $39 $07 $06 $34 $39
.db $00 $07 $10 $B9 $01 $07 $22 $39
.db $02 $07 $22 $39 $03 $07 $22 $39
.db $04 $07 $23 $39 $05 $07 $32 $39
.db $06 $07 $33 $39 $07 $07 $23 $39
.db $08 $07 $34 $39 $00 $08 $17 $B9
.db $01 $08 $01 $B9 $02 $08 $1D $39
.db $03 $08 $32 $39 $04 $08 $33 $39
.db $05 $08 $1E $39 $06 $08 $32 $39
.db $07 $08 $33 $39 $08 $08 $34 $39
.db $09 $08 $34 $39 $03 $09 $17 $B9
.db $04 $09 $01 $B9 $06 $09 $1D $39
.db $07 $09 $32 $39 $08 $09 $33 $39
.db $09 $0A $34 $39 $0A $0A $35 $21
.db $2B $03 $01 $22 $39 $04 $01 $23
.db $39 $01 $02 $34 $B9 $03 $02 $32
.db $39 $04 $02 $33 $39 $01 $03 $24
.db $B9 $02 $03 $32 $39 $03 $03 $0D
.db $39 $04 $03 $0E $39 $05 $03 $34
.db $39 $00 $04 $20 $39 $01 $04 $22
.db $39 $02 $04 $23 $39 $04 $04 $34
.db $39 $06 $04 $33 $39 $01 $05 $32
.db $39 $02 $05 $33 $39 $03 $05 $33
.db $39 $01 $06 $22 $39 $02 $06 $23
.db $39 $03 $06 $1D $39 $05 $06 $34
.db $39 $07 $06 $34 $39 $01 $07 $32
.db $39 $02 $07 $33 $39 $03 $07 $22
.db $39 $05 $07 $32 $39 $07 $07 $23
.db $39 $02 $08 $20 $39 $03 $08 $22
.db $39 $04 $08 $23 $39 $05 $08 $20
.db $39 $06 $08 $32 $39 $07 $08 $33
.db $39 $08 $08 $34 $39 $09 $08 $34
.db $39 $03 $09 $32 $39 $04 $09 $33
.db $39 $06 $09 $20 $39 $07 $09 $32
.db $39 $08 $09 $33 $39 $09 $0A $34
.db $39 $0A $0A $35 $21 $1F $05 $01
.db $23 $39 $06 $01 $21 $39 $02 $02
.db $34 $B9 $04 $02 $32 $39 $05 $02
.db $21 $39 $02 $03 $24 $B9 $03 $03
.db $32 $39 $04 $03 $21 $39 $05 $03
.db $22 $39 $00 $04 $20 $39 $01 $04
.db $20 $39 $02 $04 $22 $39 $03 $04
.db $23 $39 $04 $04 $31 $39 $02 $05
.db $32 $39 $03 $05 $33 $39 $04 $05
.db $41 $21 $05 $05 $42 $21 $06 $05
.db $43 $21 $07 $05 $44 $21 $02 $06
.db $24 $39 $03 $06 $24 $39 $02 $07
.db $22 $39 $03 $07 $22 $39 $04 $07
.db $22 $39 $03 $08 $24 $B9 $04 $08
.db $32 $39 $05 $08 $33 $39 $04 $09
.db $24 $B9 $05 $09 $24 $39 $0A $0A
.db $35 $21

L95C471:
.db $04 $00 $05 $01 $05 $02 $05 $03
.db $04 $04 $03 $05 $03 $06 $03 $05
.db $03 $06 $04 $05 $04 $06 $04 $05
.db $04 $06 $05 $05 $05 $06 $05 $05
.db $05 $06 $05 $05 $05 $06 $05 $05
.db $07 $06 $07 $05 $05 $06 $05 $05
.db $07 $06 $07 $05 $05 $06 $05 $05
.db $07 $06 $07 $05 $00

L95C4AE:
.db $BC $C4 $E1 $C4 $06 $C5 $8B $C5
.db $10 $C6 $ED $C7 $5E $CA $09 $03
.db $02 $A0 $3D $04 $02 $A1 $3D $05
.db $02 $B9 $3D $03 $03 $B0 $3D $04
.db $03 $B1 $3D $05 $03 $C9 $3D $03
.db $04 $A6 $3D $04 $04 $A7 $3D $05
.db $04 $A8 $3D $09 $03 $02 $A3 $3D
.db $04 $02 $A4 $3D $05 $02 $BA $3D
.db $03 $03 $B3 $3D $04 $03 $B4 $3D
.db $05 $03 $CA $3D $03 $04 $A9 $3D
.db $04 $04 $AA $3D $05 $04 $AB $3D
.db $21 $03 $01 $A0 $3D $04 $01 $A1
.db $3D $05 $01 $A2 $3D $03 $02 $B0
.db $3D $04 $02 $B1 $3D $05 $02 $B2
.db $3D $06 $02 $BB $3D $07 $02 $BC
.db $3D $08 $02 $BD $3D $03 $03 $C0
.db $3D $04 $03 $C1 $3D $05 $03 $C2
.db $3D $06 $03 $CB $3D $07 $03 $CC
.db $3D $08 $03 $CD $3D $03 $04 $D0
.db $3D $04 $04 $D1 $3D $05 $04 $D2
.db $3D $06 $04 $DB $3D $07 $04 $DC
.db $3D $08 $04 $DD $3D $03 $05 $E0
.db $3D $04 $05 $E1 $3D $05 $05 $E2
.db $3D $06 $05 $EB $3D $07 $05 $EC
.db $3D $08 $05 $ED $3D $03 $06 $F0
.db $3D $04 $06 $F1 $3D $05 $06 $F2
.db $3D $06 $06 $FB $3D $07 $06 $FC
.db $3D $08 $06 $FD $3D $21 $03 $01
.db $A3 $3D $04 $01 $A4 $3D $05 $01
.db $A5 $3D $03 $02 $B3 $3D $04 $02
.db $B4 $3D $05 $02 $B5 $3D $06 $02
.db $B6 $3D $07 $02 $B7 $3D $08 $02
.db $B8 $3D $03 $03 $C3 $3D $04 $03
.db $C4 $3D $05 $03 $C5 $3D $06 $03
.db $C6 $3D $07 $03 $C7 $3D $08 $03
.db $C8 $3D $03 $04 $D3 $3D $04 $04
.db $D4 $3D $05 $04 $D5 $3D $06 $04
.db $D6 $3D $07 $04 $D7 $3D $08 $04
.db $D8 $3D $03 $05 $E3 $3D $04 $05
.db $E4 $3D $05 $05 $E5 $3D $06 $05
.db $E6 $3D $07 $05 $E7 $3D $08 $05
.db $E8 $3D $03 $06 $F3 $3D $04 $06
.db $F4 $3D $05 $06 $F5 $3D $06 $06
.db $F6 $3D $07 $06 $F7 $3D $08 $06
.db $F8 $3D $77 $05 $00 $06 $3D $06
.db $00 $06 $3D $07 $00 $07 $3D $08
.db $00 $08 $3D $09 $00 $09 $3D $0A
.db $00 $0A $3D $0B $00 $A5 $3D $03
.db $01 $06 $3D $04 $01 $06 $3D $05
.db $01 $16 $3D $06 $01 $17 $3D $07
.db $01 $18 $3D $08 $01 $10 $3D $09
.db $01 $11 $3D $0A $01 $12 $3D $0B
.db $01 $B5 $3D $0C $01 $B6 $3D $0D
.db $01 $B7 $3D $0E $01 $B8 $3D $0F
.db $01 $B9 $3D $10 $01 $01 $3D $11
.db $01 $02 $3D $12 $01 $03 $3D $13
.db $01 $04 $3D $14 $01 $05 $3D $03
.db $02 $16 $3D $04 $02 $16 $3D $05
.db $02 $24 $3D $06 $02 $B1 $3D $07
.db $02 $B2 $3D $08 $02 $7C $3D $09
.db $02 $7D $3D $0A $02 $7A $3D $0B
.db $02 $7B $3D $0C $02 $7C $3D $0D
.db $02 $7D $3D $0E $02 $7A $3D $0F
.db $02 $7B $3D $10 $02 $7C $3D $11
.db $02 $7D $3D $12 $02 $44 $3D $13
.db $02 $48 $3D $14 $02 $49 $3D $15
.db $02 $4A $3D $16 $02 $4B $3D $05
.db $03 $24 $3D $06 $03 $C1 $3D $07
.db $03 $C2 $3D $08 $03 $27 $3D $09
.db $03 $28 $3D $0A $03 $7A $3D $0B
.db $03 $7B $3D $0C $03 $7C $3D $0D
.db $03 $7D $3D $0E $03 $7A $3D $0F
.db $03 $7B $3D $10 $03 $7C $3D $11
.db $03 $7D $3D $12 $03 $54 $3D $13
.db $03 $58 $3D $14 $03 $59 $3D $15
.db $03 $5A $3D $16 $03 $5B $3D $05
.db $04 $34 $3D $06 $04 $35 $3D $07
.db $04 $36 $3D $08 $04 $37 $3D $09
.db $04 $25 $3D $0A $04 $26 $3D $0B
.db $04 $27 $3D $0C $04 $28 $3D $0D
.db $04 $29 $3D $0E $04 $7A $3D $0F
.db $04 $7B $3D $10 $04 $7C $3D $11
.db $04 $7D $3D $12 $04 $7E $3D $13
.db $04 $7F $3D $06 $05 $6A $3D $07
.db $05 $6B $3D $08 $05 $6C $3D $09
.db $05 $6D $3D $0A $05 $28 $3D $0B
.db $05 $7A $3D $0C $05 $7B $3D $0D
.db $05 $7C $3D $0E $05 $7D $3D $0F
.db $05 $7A $3D $10 $05 $7B $3D $11
.db $05 $7C $3D $12 $05 $7D $3D $13
.db $05 $7E $3D $14 $05 $7F $3D $09
.db $06 $34 $3D $0A $06 $35 $3D $0B
.db $06 $36 $3D $0C $06 $37 $3D $0D
.db $06 $38 $3D $0E $06 $39 $3D $0F
.db $06 $3A $3D $10 $06 $3B $3D $11
.db $06 $3C $3D $12 $06 $3D $3D $13
.db $06 $3E $3D $14 $06 $3F $3D $0C
.db $07 $FF $BD $0D $07 $01 $BD $0E
.db $07 $50 $3D $0F $07 $51 $3D $10
.db $07 $52 $3D $11 $07 $53 $3D $12
.db $07 $54 $3D $13 $07 $55 $3D $14
.db $07 $56 $3D $15 $07 $57 $3D $16
.db $07 $58 $3D $17 $07 $59 $3D $18
.db $07 $5A $3D $19 $07 $5B $3D $9C
.db $05 $00 $06 $3D $06 $00 $FF $3D
.db $07 $00 $01 $3D $08 $00 $02 $3D
.db $09 $00 $03 $3D $0A $00 $04 $3D
.db $0B $00 $05 $3D $03 $01 $06 $3D
.db $04 $01 $06 $3D $05 $01 $16 $3D
.db $06 $01 $10 $3D $07 $01 $11 $3D
.db $08 $01 $12 $3D $09 $01 $13 $3D
.db $0A $01 $14 $3D $0B $01 $15 $3D
.db $0C $01 $06 $3D $0D $01 $07 $3D
.db $0E $01 $0D $3D $15 $01 $06 $3D
.db $16 $01 $FF $3D $17 $01 $01 $3D
.db $18 $01 $02 $3D $19 $01 $03 $3D
.db $03 $02 $16 $3D $04 $02 $16 $3D
.db $05 $02 $24 $3D $06 $02 $7A $3D
.db $07 $02 $B4 $3D $08 $02 $B5 $3D
.db $09 $02 $84 $3D $0A $02 $85 $3D
.db $0B $02 $86 $3D $0C $02 $97 $3D
.db $0D $02 $14 $3D $0E $02 $15 $3D
.db $0F $02 $06 $3D $10 $02 $06 $3D
.db $11 $02 $FF $3D $12 $02 $01 $3D
.db $13 $02 $02 $3D $14 $02 $03 $3D
.db $15 $02 $94 $3D $16 $02 $95 $3D
.db $17 $02 $96 $3D $18 $02 $97 $3D
.db $19 $02 $98 $3D $03 $03 $24 $3D
.db $04 $03 $25 $3D $05 $03 $C4 $3D
.db $06 $03 $C5 $3D $07 $03 $94 $3D
.db $08 $03 $95 $3D $09 $03 $96 $3D
.db $0A $03 $97 $3D $0B $03 $98 $3D
.db $0C $03 $99 $3D $0D $03 $9A $3D
.db $0E $03 $9B $3D $0F $03 $9C $3D
.db $10 $03 $9D $3D $11 $03 $9E $3D
.db $12 $03 $9F $3D $13 $03 $9E $3D
.db $14 $03 $9F $3D $15 $03 $94 $3D
.db $16 $03 $95 $3D $17 $03 $96 $3D
.db $18 $03 $97 $3D $19 $03 $98 $3D
.db $03 $04 $34 $3D $04 $04 $D0 $3D
.db $05 $04 $D1 $3D $06 $04 $D2 $3D
.db $07 $04 $B4 $3D $08 $04 $B5 $3D
.db $09 $04 $27 $3D $0A $04 $80 $3D
.db $0B $04 $81 $3D $0C $04 $82 $3D
.db $0D $04 $83 $3D $0E $04 $8A $3D
.db $0F $04 $8B $3D $10 $04 $8C $3D
.db $11 $04 $8D $3D $12 $04 $8E $3D
.db $13 $04 $8D $3D $14 $04 $8E $3D
.db $15 $04 $8F $3D $16 $04 $8A $3D
.db $17 $04 $8A $3D $18 $04 $8B $3D
.db $19 $04 $8C $3D $04 $05 $E0 $3D
.db $05 $05 $E1 $3D $06 $05 $E2 $3D
.db $07 $05 $C4 $3D $08 $05 $C5 $3D
.db $09 $05 $26 $3D $0A $05 $90 $3D
.db $0B $05 $91 $3D $0C $05 $92 $3D
.db $0D $05 $93 $3D $0E $05 $9A $3D
.db $0F $05 $9B $3D $10 $05 $9C $3D
.db $11 $05 $9D $3D $12 $05 $9E $3D
.db $13 $05 $9D $3D $14 $05 $9E $3D
.db $15 $05 $9F $3D $16 $05 $89 $3D
.db $17 $05 $9A $3D $18 $05 $9B $3D
.db $19 $05 $9C $3D $04 $06 $F0 $3D
.db $05 $06 $F1 $3D $06 $06 $F2 $3D
.db $07 $06 $15 $FD $08 $06 $14 $FD
.db $09 $06 $13 $FD $0A $06 $12 $FD
.db $0B $06 $11 $FD $0C $06 $10 $FD
.db $0D $06 $7A $3D $0E $06 $7B $3D
.db $0F $06 $84 $3D $10 $06 $85 $3D
.db $11 $06 $86 $3D $12 $06 $87 $3D
.db $13 $06 $86 $3D $14 $06 $87 $3D
.db $15 $06 $88 $3D $16 $06 $89 $3D
.db $17 $06 $8A $3D $18 $06 $8B $3D
.db $19 $06 $8C $3D $07 $07 $05 $FD
.db $08 $07 $04 $FD $09 $07 $03 $FD
.db $0A $07 $02 $FD $0B $07 $01 $FD
.db $0C $07 $FF $BD $0D $07 $56 $3D
.db $0E $07 $57 $3D $0F $07 $58 $3D
.db $10 $07 $59 $3D $11 $07 $5A $3D
.db $12 $07 $5B $3D $13 $07 $5A $3D
.db $14 $07 $5B $3D $15 $07 $3B $3D
.db $16 $07 $3A $3D $17 $07 $3B $3D
.db $18 $07 $3C $3D $19 $07 $3D $3D
.db $9F $05 $00 $06 $3D $06 $00 $07
.db $3D $07 $00 $08 $3D $08 $00 $09
.db $3D $09 $00 $0A $3D $0A $00 $0B
.db $3D $0B $00 $0C $3D $0C $00 $0D
.db $3D $15 $00 $06 $3D $16 $00 $07
.db $3D $17 $00 $08 $3D $18 $00 $09
.db $3D $19 $00 $0A $3D $03 $01 $06
.db $3D $04 $01 $06 $3D $05 $01 $16
.db $3D $06 $01 $17 $3D $07 $01 $8F
.db $3D $08 $01 $86 $3D $09 $01 $84
.db $3D $0A $01 $85 $3D $0B $01 $86
.db $3D $0C $01 $46 $3D $0D $01 $47
.db $3D $0E $01 $48 $3D $0F $01 $49
.db $3D $10 $01 $4A $3D $11 $01 $4B
.db $3D $12 $01 $03 $3D $13 $01 $04
.db $3D $14 $01 $05 $3D $15 $01 $16
.db $3D $16 $01 $17 $3D $17 $01 $11
.db $3D $18 $01 $12 $3D $19 $01 $10
.db $3D $03 $02 $16 $3D $04 $02 $16
.db $3D $05 $02 $24 $3D $06 $02 $8A
.db $3D $07 $02 $8B $3D $08 $02 $8C
.db $3D $09 $02 $8D $3D $0A $02 $8E
.db $3D $0B $02 $8F $3D $0C $02 $86
.db $3D $0D $02 $84 $3D $0E $02 $85
.db $3D $0F $02 $86 $3D $10 $02 $87
.db $3D $11 $02 $88 $3D $12 $02 $13
.db $3D $13 $02 $14 $3D $14 $02 $08
.db $3D $15 $02 $09 $3D $16 $02 $9D
.db $3D $17 $02 $9E $3D $18 $02 $9F
.db $3D $19 $02 $99 $3D $04 $03 $20
.db $3D $05 $03 $21 $3D $06 $03 $9A
.db $3D $07 $03 $9B $3D $08 $03 $9C
.db $3D $09 $03 $9D $3D $0A $03 $9E
.db $3D $0B $03 $9F $3D $0C $03 $96
.db $3D $0D $03 $94 $3D $0E $03 $95
.db $3D $0F $03 $96 $3D $10 $03 $97
.db $3D $11 $03 $98 $3D $12 $03 $99
.db $3D $13 $03 $9A $3D $14 $03 $9B
.db $3D $15 $03 $9C $3D $16 $03 $9D
.db $3D $17 $03 $9E $3D $18 $03 $9F
.db $3D $19 $03 $99 $3D $04 $04 $30
.db $3D $05 $04 $31 $3D $06 $04 $35
.db $3D $07 $04 $36 $3D $08 $04 $37
.db $3D $09 $04 $25 $3D $0A $04 $26
.db $3D $0B $04 $27 $3D $0C $04 $28
.db $3D $0D $04 $29 $3D $0E $04 $7A
.db $3D $0F $04 $80 $3D $10 $04 $81
.db $3D $11 $04 $84 $3D $12 $04 $84
.db $3D $13 $04 $85 $3D $14 $04 $86
.db $3D $15 $04 $87 $3D $16 $04 $88
.db $3D $17 $04 $89 $3D $18 $04 $8A
.db $3D $19 $04 $8B $3D $06 $05 $20
.db $3D $07 $05 $21 $3D $08 $05 $6C
.db $3D $09 $05 $6D $3D $0A $05 $27
.db $3D $0B $05 $28 $3D $0C $05 $29
.db $3D $0D $05 $90 $3D $0E $05 $91
.db $3D $0F $05 $94 $3D $10 $05 $94
.db $3D $11 $05 $95 $3D $12 $05 $96
.db $3D $13 $05 $95 $3D $14 $05 $96
.db $3D $15 $05 $97 $3D $16 $05 $98
.db $3D $17 $05 $99 $3D $18 $05 $9A
.db $3D $19 $05 $9B $3D $06 $06 $30
.db $3D $07 $06 $31 $3D $08 $06 $32
.db $3D $09 $06 $33 $3D $0A $06 $37
.db $3D $0B $06 $37 $3D $0C $06 $18
.db $BD $0D $06 $90 $3D $0E $06 $91
.db $3D $0F $06 $94 $3D $10 $06 $94
.db $3D $11 $06 $1D $BD $12 $06 $11
.db $BD $13 $06 $12 $BD $14 $06 $10
.db $BD $15 $06 $11 $BD $16 $06 $12
.db $BD $17 $06 $13 $BD $18 $06 $14
.db $BD $19 $06 $15 $BD $0A $07 $06
.db $BD $0B $07 $07 $BD $0C $07 $08
.db $BD $0D $07 $19 $BD $0E $07 $1A
.db $BD $0F $07 $1B $BD $10 $07 $1C
.db $BD $11 $07 $0D $BD $12 $07 $0E
.db $BD $13 $07 $0F $BD $14 $07 $FF
.db $BD $15 $07 $01 $BD $16 $07 $02
.db $BD $17 $07 $03 $BD $18 $07 $04
.db $BD $19 $07 $05 $BD

L95CCDB:
.db $04 $00 $05 $01 $05 $02 $05 $03
.db $04 $04 $03 $05 $03 $06 $03 $05
.db $03 $06 $04 $05 $04 $06 $04 $05
.db $04 $06 $05 $05 $05 $06 $05 $05
.db $05 $06 $05 $05 $05 $06 $05 $05
.db $07 $06 $07 $05 $05 $06 $05 $05
.db $07 $06 $07 $05 $05 $06 $05 $05
.db $07 $06 $07 $05 $00

L95CD18:
.db $26 $CD $47 $CD $98 $CD $61 $CE
.db $AE $CF $A7 $D1 $28 $D4 $08 $03
.db $01 $20 $3D $04 $01 $21 $3D $05
.db $01 $22 $3D $06 $01 $23 $3D $03
.db $02 $30 $3D $04 $02 $31 $3D $05
.db $02 $32 $3D $06 $02 $33 $3D $14
.db $03 $01 $20 $3D $04 $01 $21 $3D
.db $05 $01 $22 $3D $06 $01 $23 $3D
.db $07 $01 $0A $3D $08 $01 $0B $3D
.db $09 $01 $0C $3D $0A $01 $0D $3D
.db $0B $01 $0E $3D $0C $01 $0F $3D
.db $03 $02 $16 $3D $04 $02 $17 $3D
.db $05 $02 $18 $3D $06 $02 $19 $3D
.db $07 $02 $1A $3D $08 $02 $1B $3D
.db $09 $02 $1C $3D $0A $02 $1D $3D
.db $0B $02 $1E $3D $0C $02 $1F $3D
.db $32 $03 $00 $06 $3D $04 $00 $07
.db $3D $05 $00 $08 $3D $06 $00 $09
.db $3D $07 $00 $0A $3D $08 $00 $0B
.db $3D $09 $00 $0C $3D $0A $00 $0D
.db $3D $0B $00 $0E $3D $0C $00 $0F
.db $3D $03 $01 $16 $3D $04 $01 $17
.db $3D $05 $01 $18 $3D $06 $01 $19
.db $3D $07 $01 $1A $3D $08 $01 $1B
.db $3D $09 $01 $1C $3D $0A $01 $1D
.db $3D $0B $01 $1E $3D $0C $01 $1F
.db $3D $03 $02 $24 $3D $04 $02 $25
.db $3D $05 $02 $26 $3D $06 $02 $27
.db $3D $07 $02 $28 $3D $08 $02 $29
.db $3D $09 $02 $2A $3D $0A $02 $2B
.db $3D $0B $02 $2C $3D $0C $02 $2D
.db $3D $0D $02 $2E $3D $0E $02 $2F
.db $3D $03 $03 $34 $3D $04 $03 $35
.db $3D $05 $03 $36 $3D $06 $03 $37
.db $3D $07 $03 $38 $3D $08 $03 $39
.db $3D $09 $03 $3A $3D $0A $03 $3B
.db $3D $0B $03 $3C $3D $0C $03 $3D
.db $3D $0D $03 $3E $3D $0E $03 $3F
.db $3D $08 $04 $6A $3D $09 $04 $6B
.db $3D $0A $04 $6C $3D $0B $04 $6D
.db $3D $0C $04 $6E $3D $0D $04 $6F
.db $3D $53 $05 $00 $06 $3D $06 $00
.db $07 $3D $07 $00 $08 $3D $08 $00
.db $00 $3D $09 $00 $01 $3D $0A $00
.db $02 $3D $0B $00 $03 $3D $0C $00
.db $04 $3D $0D $00 $05 $3D $0E $00
.db $0F $3D $03 $01 $06 $3D $04 $01
.db $06 $3D $05 $01 $16 $3D $06 $01
.db $17 $3D $07 $01 $18 $3D $08 $01
.db $10 $3D $09 $01 $11 $3D $0A $01
.db $12 $3D $0B $01 $13 $3D $0C $01
.db $14 $3D $0D $01 $15 $3D $0E $01
.db $1F $3D $03 $02 $16 $3D $04 $02
.db $16 $3D $05 $02 $24 $3D $06 $02
.db $7A $3D $07 $02 $7B $3D $08 $02
.db $7C $3D $09 $02 $7D $3D $0A $02
.db $7E $3D $0B $02 $7F $3D $0C $02
.db $2B $3D $0D $02 $2C $3D $0E $02
.db $2D $3D $0F $02 $2E $3D $10 $02
.db $2F $3D $05 $03 $24 $3D $06 $03
.db $25 $3D $07 $03 $26 $3D $08 $03
.db $27 $3D $09 $03 $28 $3D $0A $03
.db $7A $3D $0B $03 $7B $3D $0C $03
.db $7C $3D $0D $03 $7D $3D $0E $03
.db $7E $3D $0F $03 $7F $3D $10 $03
.db $2F $3D $05 $04 $34 $3D $06 $04
.db $35 $3D $07 $04 $36 $3D $08 $04
.db $37 $3D $09 $04 $25 $3D $0A $04
.db $26 $3D $0B $04 $27 $3D $0C $04
.db $28 $3D $0D $04 $29 $3D $0E $04
.db $2A $3D $0F $04 $2B $3D $10 $04
.db $3F $3D $09 $05 $38 $3D $0A $05
.db $39 $3D $0B $05 $3A $3D $0C $05
.db $3B $3D $0D $05 $3C $3D $0E $05
.db $3D $3D $0F $05 $3E $3D $10 $05
.db $3F $3D $09 $06 $01 $BD $0A $06
.db $02 $BD $0B $06 $03 $BD $0C $06
.db $10 $3D $0D $06 $11 $BD $0E $06
.db $12 $BD $0F $06 $13 $BD $10 $06
.db $14 $BD $11 $06 $15 $BD $0C $07
.db $00 $BD $0D $07 $01 $BD $0E $07
.db $02 $BD $0F $07 $03 $BD $10 $07
.db $04 $BD $11 $07 $05 $BD $7E $05
.db $00 $06 $3D $06 $00 $06 $3D $07
.db $00 $07 $3D $08 $00 $08 $3D $09
.db $00 $09 $3D $0A $00 $0A $3D $0B
.db $00 $0B $3D $0C $00 $0C $3D $0D
.db $00 $00 $3D $0E $00 $01 $3D $0F
.db $00 $01 $3D $10 $00 $02 $3D $11
.db $00 $03 $3D $12 $00 $04 $3D $13
.db $00 $05 $3D $03 $01 $06 $3D $04
.db $01 $06 $3D $05 $01 $16 $3D $06
.db $01 $17 $3D $07 $01 $18 $3D $08
.db $01 $10 $3D $09 $01 $11 $3D $0A
.db $01 $12 $3D $0B $01 $13 $3D $0C
.db $01 $14 $3D $0D $01 $10 $3D $0E
.db $01 $11 $3D $0F $01 $11 $3D $10
.db $01 $12 $3D $11 $01 $13 $3D $12
.db $01 $14 $3D $13 $01 $15 $3D $03
.db $02 $16 $3D $04 $02 $16 $3D $05
.db $02 $24 $3D $06 $02 $7A $3D $07
.db $02 $7B $3D $08 $02 $7C $3D $09
.db $02 $7D $3D $0A $02 $7A $3D $0B
.db $02 $7B $3D $0C $02 $7C $3D $0D
.db $02 $7D $3D $0E $02 $7A $3D $0F
.db $02 $7B $3D $10 $02 $7C $3D $11
.db $02 $7D $3D $12 $02 $44 $3D $13
.db $02 $48 $3D $14 $02 $49 $3D $15
.db $02 $4A $3D $16 $02 $4B $3D $05
.db $03 $24 $3D $06 $03 $25 $3D $07
.db $03 $26 $3D $08 $03 $27 $3D $09
.db $03 $28 $3D $0A $03 $7A $3D $0B
.db $03 $7B $3D $0C $03 $7C $3D $0D
.db $03 $7D $3D $0E $03 $7A $3D $0F
.db $03 $7B $3D $10 $03 $7C $3D $11
.db $03 $7D $3D $12 $03 $54 $3D $13
.db $03 $58 $3D $14 $03 $59 $3D $15
.db $03 $5A $3D $16 $03 $5B $3D $05
.db $04 $34 $3D $06 $04 $35 $3D $07
.db $04 $36 $3D $08 $04 $37 $3D $09
.db $04 $25 $3D $0A $04 $26 $3D $0B
.db $04 $27 $3D $0C $04 $28 $3D $0D
.db $04 $29 $3D $0E $04 $7A $3D $0F
.db $04 $7B $3D $10 $04 $7C $3D $11
.db $04 $7D $3D $12 $04 $7E $3D $13
.db $04 $7F $3D $06 $05 $6A $3D $07
.db $05 $6B $3D $08 $05 $6C $3D $09
.db $05 $6D $3D $0A $05 $6E $3D $0B
.db $05 $6F $3D $0C $05 $27 $3D $0D
.db $05 $28 $3D $0E $05 $29 $3D $0F
.db $05 $7A $3D $10 $05 $7B $3D $11
.db $05 $7C $3D $12 $05 $7D $3D $13
.db $05 $7E $3D $14 $05 $7F $3D $09
.db $06 $34 $3D $0A $06 $35 $3D $0B
.db $06 $36 $3D $0C $06 $37 $3D $0D
.db $06 $38 $3D $0E $06 $39 $3D $0F
.db $06 $3A $3D $10 $06 $3B $3D $11
.db $06 $3C $3D $12 $06 $3D $3D $13
.db $06 $3E $3D $14 $06 $3F $3D $0C
.db $07 $00 $BD $0D $07 $01 $BD $0E
.db $07 $50 $3D $0F $07 $51 $3D $10
.db $07 $52 $3D $11 $07 $53 $3D $12
.db $07 $54 $3D $13 $07 $55 $3D $14
.db $07 $56 $3D $15 $07 $57 $3D $16
.db $07 $58 $3D $17 $07 $59 $3D $18
.db $07 $5A $3D $19 $07 $5B $3D $A0
.db $05 $00 $06 $3D $06 $00 $00 $3D
.db $07 $00 $01 $3D $08 $00 $02 $3D
.db $09 $00 $03 $3D $0A $00 $04 $3D
.db $0B $00 $05 $3D $0C $00 $06 $3D
.db $0D $00 $07 $3D $0E $00 $08 $3D
.db $0F $00 $09 $3D $10 $00 $0A $3D
.db $11 $00 $0B $3D $12 $00 $0C $3D
.db $13 $00 $0D $3D $14 $00 $00 $3D
.db $15 $00 $01 $3D $16 $00 $02 $3D
.db $17 $00 $03 $3D $18 $00 $04 $3D
.db $19 $00 $0A $3D $03 $01 $06 $3D
.db $04 $01 $06 $3D $05 $01 $16 $3D
.db $06 $01 $10 $3D $07 $01 $11 $3D
.db $08 $01 $12 $3D $09 $01 $13 $3D
.db $0A $01 $14 $3D $0B $01 $15 $3D
.db $0C $01 $16 $3D $0D $01 $17 $3D
.db $0E $01 $18 $3D $0F $01 $19 $3D
.db $10 $01 $1A $3D $11 $01 $1B $3D
.db $12 $01 $1C $3D $13 $01 $1D $3D
.db $14 $01 $10 $3D $15 $01 $11 $3D
.db $16 $01 $12 $3D $17 $01 $13 $3D
.db $18 $01 $88 $3D $19 $01 $80 $3D
.db $03 $02 $16 $3D $04 $02 $16 $3D
.db $05 $02 $24 $3D $06 $02 $7A $3D
.db $07 $02 $7B $3D $08 $02 $80 $3D
.db $09 $02 $84 $3D $0A $02 $85 $3D
.db $0B $02 $86 $3D $0C $02 $87 $3D
.db $0D $02 $88 $3D $0E $02 $89 $3D
.db $0F $02 $8A $3D $10 $02 $8B $3D
.db $11 $02 $8C $3D $12 $02 $8D $3D
.db $13 $02 $8E $3D $14 $02 $8F $3D
.db $15 $02 $84 $3D $16 $02 $85 $3D
.db $17 $02 $86 $3D $18 $02 $87 $3D
.db $19 $02 $88 $3D $05 $03 $24 $3D
.db $06 $03 $25 $3D $07 $03 $26 $3D
.db $08 $03 $90 $3D $09 $03 $94 $3D
.db $0A $03 $95 $3D $0B $03 $96 $3D
.db $0C $03 $97 $3D $0D $03 $98 $3D
.db $0E $03 $99 $3D $0F $03 $9A $3D
.db $10 $03 $9B $3D $11 $03 $9C $3D
.db $12 $03 $9D $3D $13 $03 $9E $3D
.db $14 $03 $9F $3D $15 $03 $94 $3D
.db $16 $03 $95 $3D $17 $03 $96 $3D
.db $18 $03 $97 $3D $19 $03 $98 $3D
.db $05 $04 $34 $3D $06 $04 $35 $3D
.db $07 $04 $36 $3D $08 $04 $37 $3D
.db $09 $04 $25 $3D $0A $04 $26 $3D
.db $0B $04 $27 $3D $0C $04 $28 $3D
.db $0D $04 $29 $3D $0E $04 $7A $3D
.db $0F $04 $7B $3D $10 $04 $84 $3D
.db $11 $04 $85 $3D $12 $04 $86 $3D
.db $13 $04 $87 $3D $14 $04 $88 $3D
.db $15 $04 $89 $3D $16 $04 $8A $3D
.db $17 $04 $8B $3D $18 $04 $8C $3D
.db $19 $04 $8D $3D $06 $05 $6A $3D
.db $07 $05 $6B $3D $08 $05 $6C $3D
.db $09 $05 $6D $3D $0A $05 $6E $3D
.db $0B $05 $6F $3D $0C $05 $27 $3D
.db $0D $05 $28 $3D $0E $05 $29 $3D
.db $0F $05 $7A $3D $10 $05 $94 $3D
.db $11 $05 $95 $3D $12 $05 $96 $3D
.db $13 $05 $97 $3D $14 $05 $98 $3D
.db $15 $05 $99 $3D $16 $05 $9A $3D
.db $17 $05 $9B $3D $18 $05 $9C $3D
.db $19 $05 $9D $3D $09 $06 $34 $3D
.db $0A $06 $35 $3D $0B $06 $36 $3D
.db $0C $06 $37 $3D $0D $06 $38 $3D
.db $0E $06 $39 $3D $0F $06 $3A $3D
.db $10 $06 $3B $3D $11 $06 $3C $3D
.db $12 $06 $3D $3D $13 $06 $3E $3D
.db $14 $06 $3F $3D $15 $06 $7C $3D
.db $16 $06 $7D $3D $17 $06 $7A $3D
.db $18 $06 $7B $3D $19 $06 $7C $3D
.db $0C $07 $00 $BD $0D $07 $01 $BD
.db $0E $07 $34 $3D $0F $07 $35 $3D
.db $10 $07 $36 $3D $11 $07 $37 $3D
.db $12 $07 $38 $3D $13 $07 $39 $3D
.db $14 $07 $3A $3D $15 $07 $3B $3D
.db $16 $07 $3A $3D $17 $07 $3B $3D
.db $18 $07 $3C $3D $19 $07 $3D $3D
.db $A2 $05 $00 $06 $3D $06 $00 $07
.db $3D $07 $00 $08 $3D $08 $00 $09
.db $3D $09 $00 $0A $3D $0A $00 $0B
.db $3D $0B $00 $0C $3D $0C $00 $0D
.db $3D $0D $00 $0E $3D $0E $00 $0F
.db $3D $0F $00 $00 $3D $10 $00 $01
.db $3D $11 $00 $02 $3D $12 $00 $03
.db $3D $13 $00 $04 $3D $14 $00 $05
.db $3D $15 $00 $06 $3D $16 $00 $07
.db $3D $17 $00 $08 $3D $18 $00 $09
.db $3D $19 $00 $0A $3D $03 $01 $06
.db $3D $04 $01 $06 $3D $05 $01 $16
.db $3D $06 $01 $17 $3D $07 $01 $18
.db $3D $08 $01 $19 $3D $09 $01 $1A
.db $3D $0A $01 $1B $3D $0B $01 $1C
.db $3D $0C $01 $1D $3D $0D $01 $11
.db $3D $0E $01 $12 $3D $0F $01 $10
.db $3D $10 $01 $11 $3D $11 $01 $12
.db $3D $12 $01 $13 $3D $13 $01 $14
.db $3D $14 $01 $15 $3D $15 $01 $16
.db $3D $16 $01 $17 $3D $17 $01 $11
.db $3D $18 $01 $12 $3D $19 $01 $10
.db $3D $03 $02 $16 $3D $04 $02 $16
.db $3D $05 $02 $24 $3D $06 $02 $8A
.db $3D $07 $02 $8B $3D $08 $02 $8C
.db $3D $09 $02 $8D $3D $0A $02 $8E
.db $3D $0B $02 $8F $3D $0C $02 $86
.db $3D $0D $02 $84 $3D $0E $02 $85
.db $3D $0F $02 $86 $3D $10 $02 $87
.db $3D $11 $02 $88 $3D $12 $02 $89
.db $3D $13 $02 $8A $3D $14 $02 $8B
.db $3D $15 $02 $8C $3D $16 $02 $8D
.db $3D $17 $02 $8E $3D $18 $02 $8F
.db $3D $19 $02 $89 $3D $05 $03 $24
.db $3D $06 $03 $9A $3D $07 $03 $9B
.db $3D $08 $03 $9C $3D $09 $03 $9D
.db $3D $0A $03 $9E $3D $0B $03 $9F
.db $3D $0C $03 $96 $3D $0D $03 $94
.db $3D $0E $03 $95 $3D $0F $03 $96
.db $3D $10 $03 $97 $3D $11 $03 $98
.db $3D $12 $03 $99 $3D $13 $03 $9A
.db $3D $14 $03 $9B $3D $15 $03 $9C
.db $3D $16 $03 $9D $3D $17 $03 $9E
.db $3D $18 $03 $9F $3D $19 $03 $99
.db $3D $05 $04 $34 $3D $06 $04 $35
.db $3D $07 $04 $36 $3D $08 $04 $37
.db $3D $09 $04 $25 $3D $0A $04 $26
.db $3D $0B $04 $27 $3D $0C $04 $28
.db $3D $0D $04 $29 $3D $0E $04 $7A
.db $3D $0F $04 $80 $3D $10 $04 $81
.db $3D $11 $04 $84 $3D $12 $04 $84
.db $3D $13 $04 $85 $3D $14 $04 $86
.db $3D $15 $04 $87 $3D $16 $04 $88
.db $3D $17 $04 $89 $3D $18 $04 $8A
.db $3D $19 $04 $8B $3D $06 $05 $6A
.db $3D $07 $05 $6B $3D $08 $05 $6C
.db $3D $09 $05 $6D $3D $0A $05 $27
.db $3D $0B $05 $28 $3D $0C $05 $29
.db $3D $0D $05 $90 $3D $0E $05 $91
.db $3D $0F $05 $94 $3D $10 $05 $94
.db $3D $11 $05 $95 $3D $12 $05 $96
.db $3D $13 $05 $95 $3D $14 $05 $96
.db $3D $15 $05 $97 $3D $16 $05 $98
.db $3D $17 $05 $99 $3D $18 $05 $9A
.db $3D $19 $05 $9B $3D $09 $06 $34
.db $3D $0A $06 $09 $BD $0B $06 $17
.db $BD $0C $06 $18 $BD $0D $06 $90
.db $3D $0E $06 $91 $3D $0F $06 $94
.db $3D $10 $06 $94 $3D $11 $06 $1D
.db $BD $12 $06 $11 $BD $13 $06 $12
.db $BD $14 $06 $10 $BD $15 $06 $11
.db $BD $16 $06 $12 $BD $17 $06 $13
.db $BD $18 $06 $14 $BD $19 $06 $15
.db $BD $0A $07 $06 $BD $0B $07 $07
.db $BD $0C $07 $08 $BD $0D $07 $19
.db $BD $0E $07 $1A $BD $0F $07 $1B
.db $BD $10 $07 $1C $BD $11 $07 $0D
.db $BD $12 $07 $0E $BD $13 $07 $0F
.db $BD $14 $07 $00 $BD $15 $07 $01
.db $BD $16 $07 $02 $BD $17 $07 $03
.db $BD $18 $07 $04 $BD $19 $07 $05
.db $BD

L95D6B1:
.db $99 $07 $9A $07 $9B $07 $9F
.db $07 $A0 $07 $9D $07 $9E $07 $A1
.db $07 $9C $07

L95D6C3:
.db $15 $16 $17 $18 $1A
.db $19 $1C $1B $33

L95D6CC:
.db $91 $07 $92 $07
.db $93 $07 $94 $07

L95D6D4:
.db $03 $07 $09 $0A
.db $20 $22 $25 $26 $2A $FF

L95D6DE:
.db $03 $07
.db $09 $0A $FF $4C $44 $3C $44 $2C
.db $24 $1C $14 $0C $04 $5C $53 $49
.db $40 $36 $2D $23 $1A $10 $05 $6C
.db $61 $56 $4B $40 $35 $2A $1F $14
.db $06 $7C $70 $63 $57 $4A $3E $31
.db $25 $16 $07 $98 $88 $78 $68 $58
.db $48 $38 $28 $18 $08 $B8 $A5 $92
.db $7F $6C $59 $46 $33 $20 $0D $D8
.db $C2 $AC $96 $80 $6A $54 $3E $28
.db $12 $F8 $DF $C6 $AD $94 $7B $62
.db $49 $30 $16 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $FE $FC $FA $F9 $F8
.db $F7 $F6 $F6 $F5 $F5 $F6 $F7 $F9
.db $FB $FD $FF $00 $01 $02 $02 $01
.db $00 $00 $FF $FE $FE $FF $00 $00
.db $00 $00 $00 $00 $FE $FE $FD $FD
.db $FE $FE $00 $00 $01 $01 $02 $02
.db $01 $01 $00 $00 $00 $FF $FF $FF
.db $FF $00 $00 $00 $00 $01 $01 $01
.db $01 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $01 $01 $01 $01 $01
.db $01 $01 $01

L95D793:
.db $00 $FF $01 $FF $01
.db $FF $01 $FF $02 $FE $02 $FE $03
.db $FD $04 $FC

L95D7A3:
.db $00 $FF $01 $FF $01
.db $01 $FF $FF $02 $02 $FE $FE $04
.db $04 $FC $FC $00 $FF $01 $FF $01
.db $FF $01 $FF $02 $FE $02 $FE $03
.db $FD $04 $FC $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $FF $01 $FF $01
.db $FF $01 $FF $02 $FE $02 $FE $03
.db $FD $04 $FC $FF $FF $00 $00 $01
.db $01 $00 $FF $00 $01 $00 $FF $01
.db $FF $01 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $FF $FF $00 $00 $01
.db $01 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $FF $FF $00
.db $00 $01 $01 $00 $00 $FF $FF $00
.db $00 $01 $01 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $FE $FE $02 $02 $FE
.db $FE $02 $02 $FE $FE $02 $02 $FE
.db $FE $02 $02 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $FE $04 $FE $04 $FE
.db $04 $FE $04 $FE $04 $FE $04 $FE
.db $04 $FE $04

L95D893:
.db $00 $00 $00 $00 $00 $00 $FF $FE
.db $FD $FB $F9 $F8 $F8 $F8 $F8 $F8

L95D8A3:
.db $00 $00 $00 $00 $00
.db $00 $01 $02 $03 $04 $06 $08 $08
.db $08 $08 $08 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $3F $4F $3D $51 $3B
.db $53 $39 $55 $37 $57 $35 $59 $33
.db $5B $31 $5D $2F $5F $31 $5D $33
.db $5B $35 $59 $37 $57 $39 $55 $3B
.db $53 $3D $51 $FF $FF $FD $FD $FB
.db $FB $F9 $F9 $F7 $F7 $F5 $F5 $F3
.db $F3 $F1 $F1 $EF $EF $F1 $F1 $F3
.db $F3 $F5 $F5 $F7 $F7 $F9 $F9 $FA
.db $FA $FC $FC $87 $43 $8F $47 $97
.db $4B $9F $4F $27 $53 $2F $57 $37
.db $5B $3F $5F $97 $5B $8F $57 $87
.db $53 $80 $4F $37 $4B $2F $47 $27
.db $43 $20 $40 $87 $57 $8F $4F $97
.db $47 $9F $40 $97 $47 $8F $4F $87
.db $57 $80 $5F $27 $57 $2F $4F $37
.db $47 $3F $40 $37 $47 $2F $4F $27
.db $57 $20 $5F $5F $00 $5B $00 $57
.db $00 $53 $00 $BF $00 $4B $00 $47
.db $00 $43 $00 $9F $00 $9B $00 $97
.db $00 $93 $00 $8F $00 $8B $00 $87
.db $00 $83 $60 $3F $4F $3F $4D $3F
.db $4B $3F $49 $3F $47 $3F $46 $3F
.db $45 $3F $44 $3F $44 $3F $45 $3F
.db $46 $3F $47 $3F $49 $3F $4B $3F
.db $4D $3F $4F $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00 $00 $00 $00
.db $00 $00 $00 $00 $00

L95D9B5:
.db $33 $EF $3D
.db $FF $7F $FF $7F $FF $7F $FF $7F
.db $6B $2D $4A $29 $29 $25 $08 $21
.db $E7 $1C $C6 $18 $A5 $14 $84 $10
.db $63 $0C $42 $08 $21 $04 $FF $FF

L95D9D8:
.db $DB $D9 $95 $0E $19 $5D $15 $5E
.db $15 $5F $15 $FF $FF

L95D9E5:
.db $06 $07 $08
.db $09 $0A $09 $08 $07

L95D9ED:
.dl L95D9FC
.dl L95DA0E
.dl L95DA20
.dl L95DA32
.dl L95DA44

L95D9FC:
.db $F0 $40 $F1 $00 $F0 $00 $F2 $40
.db $FE $00 $F2 $00 $F0 $C0 $F1 $80
.db $F0 $80

L95DA0E:
.db $CE $40 $DD $00 $CE $00 $CD $40
.db $FE $00 $CD $00 $CE $C0 $DD $80
.db $CE $80

L95DA20:
.db $F0 $40 $F1 $00 $F0 $00 $F2 $40
.db $FF $00 $F2 $00 $F0 $C0 $F1 $80
.db $F0 $80

L95DA32:
.db $FB $40 $F1 $00 $FB $00 $F2 $40
.db $FE $00 $F2 $00 $FB $C0 $F1 $80
.db $FB $80

L95DA44:
.db $82 $43 $81 $83 $82 $03 $80 $43
.db $91 $03 $80 $03 $82 $C3 $81 $03
.db $82 $83 $68 $1D $55 $1D $56 $1D
.db $57 $1D $58 $1D $59 $1D $5A $1D
.db $5B $1D $5C $1D $69 $1D $78 $1D
.db $79 $1D $7A $1D

L95DA70:
.db $40 $A8 $C0 $3E $48 $A8 $C1 $3E
.db $40 $B0 $C2 $3E $48 $B0 $C3 $3E
.db $B8 $A8 $C0 $7E $B0 $A8 $C1 $7E
.db $B8 $B0 $C2 $7E $B0 $B0 $C3 $7E

L95DA90:
.db $30 $B0 $86 $76 $20 $B0 $88 $76
.db $30 $A0 $A0 $76 $20 $A0 $A2 $76
.db $30 $90 $80 $76 $20 $90 $82 $76
.db $10 $90 $84 $76 $10 $A0 $A4 $76
.db $10 $B0 $8A $76 $30 $C0 $A6 $76
.db $20 $C0 $A8 $76 $10 $C0 $AA $76
.db $C0 $B0 $86 $36 $D0 $B0 $88 $36
.db $C0 $A0 $A0 $36 $D0 $A0 $A2 $36
.db $C0 $90 $80 $36 $D0 $90 $82 $36
.db $E0 $90 $84 $36 $E0 $A0 $A4 $36
.db $E0 $B0 $8A $36 $C0 $C0 $A6 $36
.db $D0 $C0 $A8 $36 $E0 $C0 $AA $36

L95DAF0:
.db $86 $88 $8C $8E $AC $AE

L95DAF6:
.db $86 $88 $A0 $A2 $AC $AE $8C $8E

L95DAFE:
.db $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $F2 $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $F3 $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $03 $F3
.db $FF $FF $0F $FF $FF $0F $FF $FF
.db $0F $0F $0F $0F $0F $FF $FF $0F
.db $FF $FF $0F $0F $0F $FF $0F $0F
.db $FF $0F $0F $0F $03 $14 $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $F3 $F3 $FF
.db $FF $FF $F3 $FF $FF $F3 $FF $F3
.db $FF $F3 $FF $F3 $F3 $FF $FF $FF
.db $FF $FF $FF $FF $FF $F3 $F3 $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $F3 $FF $FF $FF

L95DB8C:
.db $12 $80 $13 $80
.db $39 $80 $3A $80 $3B $80

L95DB96:
.db $55 $80
.db $55 $80 $55 $80 $55 $80 $5C $80
.db $5C $80 $5C $80 $55 $80 $56 $80
.db $5C $80 $52 $80 $56 $80 $56 $80
.db $5C $80 $56 $80

L95DBB4:
.db $B1 $80 $B8 $80
.db $A9 $C2 $01 $00 $20 $00 $83 $C2
.db $B9 $C2 $01 $00 $20 $00 $36 $C7
.db $69 $C2 $01 $00 $5D $C7 $A5 $C7
.db $CC $C2 $01 $00 $20 $00 $02 $00
.db $B9 $C2 $01 $00 $20 $00 $7D $C5
.db $01 $00 $95 $C5 $01 $00 $AD $C5
.db $01 $00 $C5 $C5 $01 $00 $DD $C5
.db $01 $00 $F5 $C5 $01 $00 $76 $C2
.db $01 $00 $44 $C7 $CC $C2 $01 $00
.db $D1 $C4 $01 $00 $EE $C4 $01 $00
.db $0B $C5 $01 $00 $20 $00 $B1 $C2
.db $01 $00 $20 $00 $90 $C2 $01 $00
.db $02 $00 $A9 $C2 $01 $00 $20 $00
.db $83 $C2 $B9 $C2 $01 $00 $10 $00
.db $4D $CA $01 $00 $10 $00 $0D $C6
.db $01 $00 $34 $C6 $01 $00 $59 $C6
.db $01 $00 $D0 $C6 $01 $00 $36 $C7
.db $69 $C2 $01 $00 $5D $C7 $01 $00
.db $A5 $C7 $CC $C2 $01 $00 $20 $00
.db $02 $00 $7A $E4 $01 $00 $02 $00
.db $0D $D2 $01 $00 $F5 $F8 $01 $00
.db $80 $00 $47 $D4 $01 $00 $81 $D4
.db $01 $00 $15 $D4 $01 $00 $FA $00
.db $FA $00 $91 $D4 $02 $00 $12 $D6
.db $01 $00 $C8 $00 $02 $00 $04 $D6
.db $01 $00 $C8 $00 $02 $00 $52 $00
.db $02 $00 $03 $00 $B4 $B6 $01 $00
.db $02 $00

L95DC92:
.db $DE $9E $DE $9E $DE $9E
.db $DE $9E $40 $A0 $D2 $9F $66 $9F
.db $BA $9E $6A $9E $87 $A0 $CE $A0
.db $6A $9E $6D $9E $6A $9E $6A $9E

L95DCB0:
.db $69 $9E $69 $9E $69 $9E $69 $9E
.db $99 $9D $69 $9E $69 $9E $69 $9E
.db $C5 $9D $DE $9D $69 $9E $0A $9E
.db $69 $9E $23 $9E $43 $9E

L95DCCE:
.db $B0 $B1
.db $B1 $B1 $B1 $B1 $B1 $B1 $B1 $B1
.db $B1 $B1 $B4 $B5 $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $B5
.db $B5 $FF $5B $EB $5A $FF $FF $FF
.db $8D $FF $60 $FF $B5 $B5 $FF $11
.db $05 $28 $FF $FF $FF $8D $FF $60
.db $FF $B5 $B5 $FF $2D $C5 $FF $FF
.db $FF $FF $8D $FF $60 $FF $B5 $B5
.db $FF $0C $CF $25 $0A $FF $FF $8D
.db $FF $60 $FF $B5 $B5 $FF $02 $2F
.db $19 $27 $0A $FF $8D $FF $60 $FF
.db $B5 $B5 $FF $0B $86 $D0 $29 $87
.db $07 $8D $FF $60 $FF $B5 $B5 $FF
.db $D1 $06 $5B $EB $5A $FF $8D $FF
.db $60 $FF $B5 $B5 $FF $20 $1E $02
.db $6D $6E $6F $8D $FF $60 $FF $B5
.db $B5 $FF $01 $CE $02 $29 $87 $07
.db $8D $FF $60 $FF $B5 $B5 $FF $0A
.db $01 $CA $01 $71 $79 $8D $FF $60
.db $FF $B5 $B5 $FF $4B $89 $44 $0C
.db $02 $FF $8D $FF $60 $FF $B5 $B5
.db $FF $14 $02 $C1 $C6 $87 $02 $8D
.db $FF $60 $FF $B5 $B5 $FF $7D $93
.db $30 $40 $89 $37 $8D $FF $60 $FF
.db $B5 $B5 $FF $1D $2F $0B $2F $FF
.db $FF $8D $FF $60 $FF $B5 $B5 $FF
.db $33 $52 $EA $5B $52 $FF $8D $FF
.db $60 $FF $B5 $B5 $FF $71 $79 $06
.db $08 $2F $FF $8D $FF $60 $FF $B5
.db $B5 $FF $32 $33 $31 $44 $FF $FF
.db $8D $FF $60 $FF $B5 $B5 $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $B5 $B6 $B1 $B1 $B1 $B1 $B1
.db $B1 $B1 $B1 $B1 $B1 $B1 $B8 $15
.db $0B $FF $FF $FF $FF $FF $FF $5C
.db $3F $E7 $FF $FF $FF $FF $FF $0D
.db $2F $0B $FF $FF $FF $FF $FF $3E
.db $5A $DF $88 $3F $FF $FF $FF $7C
.db $45 $31 $44 $FF $FF $FF $FF $ED
.db $58 $E6 $A7 $5F $FF $FF $FF $45
.db $31 $44 $FF $FF $FF $FF $FF $5B
.db $E6 $A7 $45 $31 $44 $FF $FF $6A
.db $45 $31 $44 $FF $FF $FF $FF $DF
.db $A9 $48 $58 $5A $FF $FF $FF $79
.db $45 $31 $44 $FF $FF $FF $FF $6D
.db $45 $31 $44 $FF $FF $FF $FF $4A
.db $5F $40 $3F $FF $FF $FF $FF $3C
.db $45 $31 $ED $3F $FF $FF $FF $30
.db $3F $41 $88 $3F $FF $FF $FF $4E
.db $3F $3C $53 $5F $FF $FF $FF $50
.db $52 $37 $3F $44 $FF $FF $FF $05
.db $29 $86 $02 $FF $FF $FF $FF $27
.db $02 $1D $01 $FF $FF $FF $FF $26
.db $02 $0B $84 $FF $FF $FF $FF $14
.db $02 $C9 $07 $FF $FF $FF $FF $39
.db $50 $5F $E7 $FF $FF $FF $FF $04
.db $CE $29 $09 $FF $FF $FF $FF $3B
.db $3C $40 $3F $FF $FF $FF $FF $04
.db $2F $15 $20 $CE $02 $0B $FF $50
.db $DE $3F $FF $FF $FF $FF $FF $20
.db $CE $02 $0B $FF $FF $FF $FF $0B
.db $0A $01 $FF $FF $FF $FF $FF $08
.db $2F $C6 $84 $FF $FF $FF $FF $41
.db $36 $11 $84 $2F $FF $FF $FF $0A
.db $2F $C9 $07 $FF $FF $FF $FF $05
.db $01 $C9 $07 $FF $FF $FF $FF $CF
.db $2F $C9 $07 $FF $FF $FF $FF $E8
.db $3F $3A $3F $35 $3F $FF $FF $E3
.db $3F $37 $45 $31 $44 $FF $FF $E3
.db $3F $37 $50 $3F $DF $FF $FF $3B
.db $8A $3F $40 $3F $FF $FF $FF $09
.db $02 $13 $01 $FF $FF $FF $FF $D9
.db $3F $E6 $A7 $30 $5F $FF $FF $1B
.db $87 $02 $29 $86 $02 $FF $FF $05
.db $01 $29 $86 $02 $FF $FF $FF $1B
.db $29 $86 $02 $FF $FF $FF $FF $11
.db $29 $86 $02 $FF $FF $FF $FF $00
.db $2F $09 $07 $29 $86 $02 $FF $0B
.db $2F $29 $86 $02 $FF $FF $FF $20
.db $29 $86 $02 $FF $FF $FF $FF $20
.db $2A $0C $FF $FF $FF $FF $FF $3B
.db $3F $E3 $FF $FF $FF $FF $FF $DF
.db $A9 $31 $D9 $5F $FF $FF $FF $35
.db $31 $5F $FF $FF $FF $FF $FF $30
.db $EB $5A $FF $FF $FF $FF $FF $E7
.db $3F $D9 $FF $FF $FF $FF $FF $DD
.db $3F $E7 $5F $FF $FF $FF $FF $59
.db $35 $3F $E7 $FF $FF $FF $FF $59
.db $4C $FF $FF $FF $FF $FF $FF $3A
.db $DF $FF $FF $FF $FF $FF $FF $50
.db $DF $FF $FF $FF $FF $FF $FF $E8
.db $3F $42 $FF $FF $FF $FF $FF $35
.db $3B $52 $FF $FF $FF $FF $FF $34
.db $DB $50 $FF $FF $FF $FF $FF $E3
.db $5C $3C $FF $FF $FF $FF $FF $DF
.db $8A $59 $30 $5F $FF $FF $FF $5B
.db $45 $FF $FF $FF $FF $FF $FF $50
.db $59 $37 $FF $FF $FF $FF $FF $45
.db $E8 $3F $5A $FF $FF $FF $FF $4A
.db $3F $E6 $A7 $5F $FF $FF $FF $32
.db $5A $4C $FF $FF $FF $FF $FF $3A
.db $D9 $5C $FF $FF $FF $FF $FF $5C
.db $3B $A9 $FF $FF $FF $FF $FF $E9
.db $58 $37 $FF $FF $FF $FF $FF $E8
.db $47 $44 $A8 $FF $FF $FF $FF $3B
.db $3F $DE $3F $FF $FF $FF $FF $58
.db $E6 $31 $FF $FF $FF $FF $FF $51
.db $E6 $A7 $30 $FF $FF $FF $FF $35
.db $41 $8A $30 $FF $FF $FF $FF $50
.db $59 $30 $FF $FF $FF $FF $FF $51
.db $48 $5A $E8 $FF $FF $FF $FF $59
.db $5F $E3 $FF $FF $FF $FF $FF $DF
.db $8B $5A $DF $8A $FF $FF $FF $44
.db $52 $3C $FF $FF $FF $FF $FF $51
.db $3B $A9 $58 $5F $FF $FF $FF $44
.db $3F $50 $3C $FF $FF $FF $FF $EC
.db $30 $FF $FF $FF $FF $FF $FF $30
.db $58 $5F $FF $FF $FF $FF $FF $3A
.db $52 $3E $5F $FF $FF $FF $FF $EB
.db $89 $37 $FF $FF $FF $FF $FF $41
.db $A9 $31 $46 $3F $FF $FF $FF $32
.db $A9 $5F $E6 $5A $FF $FF $FF $33
.db $3C $44 $FF $FF $FF $FF $FF $30
.db $3C $44 $59 $30 $FF $FF $FF $50
.db $41 $3C $FF $FF $FF $FF $FF $5C
.db $DF $88 $3F $FF $FF $FF $FF $DF
.db $A9 $31 $37 $FF $FF $FF $FF $ED
.db $34 $58 $FF $FF $FF $FF $FF $41
.db $36 $FF $FF $FF $FF $FF $FF $5C
.db $5B $5F $3C $FF $FF $FF $FF $33
.db $59 $3C $FF $FF $FF $FF $FF $D9
.db $44 $3F $FF $FF $FF $FF $FF $D9
.db $DE $89 $37 $FF $FF $FF $FF $5D
.db $31 $58 $3F $FF $FF $FF $FF $DB
.db $5A $46 $30 $1D $01 $FF $FF $DD
.db $53 $3C $FF $FF $FF $FF $FF $D9
.db $5A $E3 $1D $01 $FF $FF $FF $3A
.db $52 $3B $30 $5F $FF $FF $FF $52
.db $58 $37 $FF $FF $FF $FF $FF $4A
.db $3F $50 $31 $5F $FF $FF $FF $50
.db $59 $34 $48 $3C $FF $FF $FF $EB
.db $5F $3E $5F $FF $FF $FF $FF $35
.db $45 $59 $3C $FF $FF $FF $FF $50
.db $47 $3F $FF $FF $FF $FF $FF $DF
.db $8A $3F $39 $4C $FF $FF $FF $3B
.db $8B $3F $E1 $5F $FF $FF $FF $4B
.db $52 $58 $3F $FF $FF $FF $FF $DA
.db $D9 $89 $3B $8A $FF $FF $FF $DF
.db $34 $5A $FF $FF $FF $FF $FF $EC
.db $3F $E1 $5F $FF $FF $FF $FF $4E
.db $5A $3C $40 $89 $44 $FF $FF $3C
.db $40 $3F $5C $5F $FF $FF $FF $4A
.db $31 $50 $5F $FF $FF $FF $FF $E1
.db $52 $3D $5A $FF $FF $FF $FF $34
.db $3F $E3 $31 $5F $FF $FF $FF $35
.db $51 $8A $FF $FF $FF $FF $FF $51
.db $3B $A9 $31 $5A $FF $FF $FF $54
.db $3F $E1 $3C $FF $FF $FF $FF $D9
.db $3F $48 $4C $FF $FF $FF $FF $53
.db $E6 $A7 $32 $3C $FF $FF $FF $E7
.db $5A $3F $30 $1D $01 $FF $FF $DB
.db $58 $1D $01 $FF $FF $FF $FF $F0
.db $58 $43 $A7 $1D $01 $FF $FF $35
.db $3B $51 $30 $1D $01 $FF $FF $07
.db $2C $06 $0B $CA $2F $FF $FF $35
.db $E3 $31 $5F $50 $3F $DF $FF $13
.db $12 $06 $0B $CA $2F $FF $FF $29
.db $86 $02 $06 $0B $CA $2F $FF $13
.db $06 $FF $FF $FF $FF $FF $FF $50
.db $38 $E7 $46 $30 $1D $01 $FF $0B
.db $2C $06 $0B $CA $2F $FF $FF $15
.db $28 $C7 $24 $19 $FF $FF $FF $58
.db $3F $50 $5F $1D $01 $FF $FF $43
.db $3F $EB $50 $3F $DF $FF $FF $0E
.db $02 $1D $01 $CA $2F $FF $FF $C4
.db $2C $12 $06 $FF $FF $FF $FF $16
.db $0D $D9 $3F $48 $4C $FF $FF $3D
.db $3B $5A $FF $FF $FF $FF $FF $5A
.db $3F $37 $FF $FF $FF $FF $FF $5C
.db $E6 $A7 $FF $FF $FF $FF $FF $58
.db $31 $30 $5F $FF $FF $FF $FF $32
.db $AA $5B $5F $FF $FF $FF $FF $C1
.db $26 $02 $1D $01 $FF $FF $FF $5A
.db $3F $53 $5A $FF $FF $FF $FF $59
.db $8A $89 $38 $FF $FF $FF $FF $56
.db $51 $45 $FF $FF $FF $FF $FF $56
.db $EB $5C $FF $FF $FF $FF $FF $3B
.db $59 $32 $3C $FF $FF $FF $FF $D9
.db $31 $5A $FF $FF $FF $FF $FF $E8
.db $31 $36 $5F $DB $FF $FF $FF $50
.db $59 $3F $3B $30 $FF $FF $FF $44
.db $58 $3F $3C $FF $FF $FF $FF $3A
.db $52 $44 $3F $FF $FF $FF $FF $58
.db $5F $DB $FF $FF $FF $FF $FF $4C
.db $A7 $3F $45 $FF $FF $FF $FF $E3
.db $3F $5A $FF $FF $FF $FF $FF $58
.db $3F $50 $5F $3B $3F $4C $FF $57
.db $3F $E6 $5A $FF $FF $FF $FF $33
.db $5A $5B $3F $5F $FF $FF $FF $1A
.db $C2 $2B $1B $29 $86 $02 $FF $05
.db $C8 $19 $D1 $C9 $07 $FF $FF $05
.db $87 $02 $0D $2F $0B $FF $FF $0A
.db $2F $C9 $07 $FF $FF $FF $FF $14
.db $02 $C9 $07 $FF $FF $FF $FF $05
.db $29 $86 $02 $FF $FF $FF $FF $1B
.db $87 $02 $29 $86 $02 $FF $FF $09
.db $04 $29 $19 $D1 $C9 $07 $FF $33
.db $31 $EB $5A $FF $FF $FF $FF $3B
.db $3F $50 $FF $FF $FF $FF $FF $11
.db $29 $86 $02 $FF $FF $FF $FF $25
.db $21 $19 $0B $0A $01 $FF $FF $32
.db $A7 $5C $3F $FF $FF $FF $FF $30
.db $35 $48 $31 $30 $1D $01 $FF $34
.db $5B $5A $30 $5F $1D $01 $FF $46
.db $3F $45 $FF $FF $FF $FF $FF $35
.db $E3 $31 $5F $27 $02 $1D $01 $1B
.db $19 $D1 $C9 $07 $FF $FF $FF $25
.db $20 $19 $D1 $C9 $07 $FF $FF $48
.db $3F $59 $5F $DB $FF $FF $FF $25
.db $21 $19 $D1 $C9 $07 $FF $FF $20
.db $29 $86 $02 $FF $FF $FF $FF $0B
.db $2F $03 $01 $10 $01 $FF $FF $15
.db $0B $FF $FF $FF $FF $FF $FF $13
.db $12 $19 $12 $2A $C1 $FF $FF $1A
.db $C0 $18 $19 $12 $2A $C1 $FF $C1
.db $2F $19 $12 $2A $C1 $FF $FF $5B
.db $31 $EE $30 $FF $FF $FF $FF $36
.db $5A $3E $3F $E7 $FF $FF $FF $E6
.db $E9 $5A $3E $3F $E7 $FF $FF $09
.db $2D $2B $10 $12 $2A $C1 $FF $50
.db $3C $40 $3F $3E $3F $E7 $FF $50
.db $3F $DF $36 $58 $3F $FF $FF $3A
.db $5F $E3 $3F $3E $3F $E7 $FF $53
.db $59 $37 $5A $3E $3F $E7 $FF $4C
.db $A6 $5A $3B $34 $5F $FF $FF $30
.db $3F $50 $3F $36 $58 $3F $FF $E7
.db $58 $DD $5F $36 $58 $3F $FF $33
.db $31 $51 $59 $34 $5F $FF $FF $13
.db $12 $19 $25 $29 $FF $FF $FF $1A
.db $C0 $18 $19 $25 $29 $FF $FF $C1
.db $2F $19 $25 $29 $FF $FF $FF $45
.db $31 $44 $36 $58 $3F $FF $FF $13
.db $25 $29 $FF $FF $FF $FF $FF $09
.db $2D $2B $10 $25 $29 $FF $FF $50
.db $3C $40 $3F $58 $5F $3C $FF $1E
.db $0E $21 $19 $25 $29 $FF $FF $DB
.db $58 $E6 $A7 $32 $3C $FF $FF $13
.db $12 $19 $26 $21 $FF $FF $FF $09
.db $2D $2B $10 $26 $21 $FF $FF $1A
.db $C0 $18 $19 $26 $21 $FF $FF $C1
.db $2F $19 $26 $21 $FF $FF $FF $36
.db $58 $3F $EC $32 $FF $FF $FF $ED
.db $5A $43 $A7 $30 $FF $FF $FF $13
.db $12 $19 $04 $19 $FF $FF $FF $1A
.db $C0 $18 $19 $04 $19 $FF $FF $13
.db $04 $19 $FF $FF $FF $FF $FF $C1
.db $2F $19 $04 $19 $FF $FF $FF $E6
.db $E9 $5A $30 $37 $3C $FF $FF $09
.db $2D $2B $10 $04 $19 $FF $FF $3A
.db $5F $E3 $3F $EC $5A $44 $FF $37
.db $31 $5F $37 $5B $31 $5F $FF $3C
.db $44 $5F $4D $89 $DF $FF $FF $4C
.db $A6 $31 $30 $3F $D9 $5F $FF $33
.db $5B $4C $A6 $5F $44 $FF $FF $EA
.db $5B $3C $61 $FF $1B $FF $FF $EA
.db $5B $3C $62 $FF $2B $01 $06 $EA
.db $5B $3C $63 $FF $CE $07 $FF $EA
.db $5B $3C $64 $FF $06 $59 $FF $4C
.db $A6 $31 $30 $3F $FF $FF $FF $3A
.db $5F $E3 $3F $FF $FF $FF $FF $EA
.db $59 $DE $3F $FF $FF $FF $FF $3B
.db $A9 $31 $E8 $3F $FF $FF $FF $33
.db $5A $4C $A6 $31 $30 $3F $FF $44
.db $5C $5F $FF $FF $FF $FF $FF $EC
.db $5A $D9 $49 $5F $FF $FF $FF $33
.db $37 $3C $35 $59 $E8 $3F $FF $34
.db $3F $58 $FF $FF $FF $FF $FF $3C
.db $40 $3F $58 $31 $44 $FF $FF $50
.db $4C $3F $FF $FF $FF $FF $FF $E7
.db $A8 $58 $3F $52 $FF $FF $FF $59
.db $DE $31 $30 $FF $FF $FF $FF $53
.db $43 $A7 $34 $FF $FF $FF $FF $32
.db $AA $3F $52 $FF $FF $FF $FF $CA
.db $01 $11 $19 $34 $3F $EA $FF $1C
.db $02 $01 $2F $19 $10 $13 $FF $25
.db $21 $19 $34 $3F $EA $FF $FF $33
.db $52 $EA $5B $52 $FF $FF $FF $58
.db $31 $EA $FF $FF $FF $FF $FF $59
.db $35 $E8 $3F $FF $FF $FF $FF $59
.db $EA $5C $3F $FF $FF $FF $FF $59
.db $58 $31 $EA $FF $FF $FF $FF $5D
.db $3F $EF $FF $FF $FF $FF $FF $76
.db $3B $3F $5A $E7 $FF $FF $FF $4A
.db $50 $3F $5F $FF $FF $FF $FF $59
.db $DE $3F $EA $FF $FF $FF $FF $3A
.db $31 $5B $3C $FF $FF $FF $FF $5B
.db $3C $36 $8A $3F $FF $FF $FF $34
.db $3F $52 $FF $FF $FF $FF $FF $30
.db $5F $5C $89 $37 $FF $FF $FF $3B
.db $3F $4C $FF $FF $FF $FF $FF $3B
.db $3F $3C $5A $3F $FF $FF $FF $4C
.db $59 $3F $E0 $FF $FF $FF $FF $05
.db $29 $86 $02 $0D $06 $FF $FF $05
.db $01 $29 $86 $02 $0D $06 $FF $1B
.db $87 $02 $29 $86 $02 $0D $06 $1B
.db $29 $86 $02 $0D $06 $FF $FF $11
.db $29 $86 $02 $0D $06 $FF $FF $1A
.db $07 $29 $86 $02 $0D $06 $FF $0B
.db $2F $29 $86 $02 $0D $06 $FF $20
.db $29 $86 $02 $0D $06 $FF $FF $06
.db $C7 $C2 $0C $29 $FF $FF $FF $14
.db $D0 $28 $19 $05 $C1 $FF $FF $C1
.db $2F $19 $05 $C1 $FF $FF $FF $1A
.db $18 $CF $0B $19 $05 $C1 $FF $10
.db $05 $28 $19 $05 $C1 $FF $FF $ED
.db $5D $3F $59 $5F $DB $FF $FF $29
.db $86 $02 $19 $10 $13 $FF $FF $1B
.db $CD $2F $19 $0B $87 $FF $FF $3C
.db $EE $3F $E7 $59 $5F $DB $FF $20
.db $27 $08 $FF $FF $FF $FF $FF $13
.db $2F $0B $19 $09 $2C $24 $FF $23
.db $C0 $21 $19 $C9 $02 $FF $FF $50
.db $46 $8A $30 $5A $FF $FF $FF $EA
.db $3F $42 $FF $FF $FF $FF $FF $0D
.db $01 $0C $01 $FF $FF $FF $FF $06
.db $0B $19 $07 $2F $0B $87 $02 $26
.db $02 $0B $84 $19 $00 $05 $0B $0B
.db $0A $01 $19 $26 $D0 $2D $FF $1B
.db $29 $86 $02 $19 $22 $11 $FF $34
.db $59 $34 $5F $19 $25 $FF $FF $CA
.db $01 $11 $19 $34 $3F $EA $FF $01
.db $19 $11 $19 $34 $3F $EA $FF $30
.db $31 $34 $43 $19 $10 $13 $FF $30
.db $37 $33 $59 $30 $FF $FF $FF $EE
.db $3C $38 $3C $FF $FF $FF $FF $30
.db $59 $33 $3C $FF $FF $FF $FF $40
.db $32 $5A $3C $FF $FF $FF $FF $DF
.db $A9 $51 $46 $FF $FF $FF $FF $36
.db $88 $5F $3A $3F $FF $FF $FF $5B
.db $34 $FF $FF $FF $FF $FF $FF $E8
.db $5A $DD $FF $FF $FF $FF $FF $59
.db $EA $58 $FF $FF $FF $FF $FF $3C
.db $39 $3F $EE $34 $FF $FF $FF $3A
.db $DF $40 $59 $3C $FF $FF $FF $35
.db $EF $39 $3F $5F $FF $FF $FF $30
.db $51 $8A $5B $89 $44 $FF $FF $3B
.db $5A $E8 $3F $35 $3F $E7 $FF $53
.db $5F $E8 $3F $35 $3F $E7 $FF $1E
.db $0B $19 $34 $3F $EA $FF $FF $1B
.db $05 $29 $19 $34 $3F $EA $FF $1D
.db $01 $C3 $2F $FF $FF $FF $FF $21
.db $11 $FF $FF $FF $FF $FF $FF $05
.db $2D $FF $FF $FF $FF $FF $FF $24
.db $29 $FF $FF $FF $FF $FF $FF $1A
.db $0B $FF $FF $FF $FF $FF $FF $25
.db $20 $FF $FF $FF $FF $FF $FF $10
.db $06 $FF $FF $FF $FF $FF $FF $1B
.db $07 $01 $25 $20 $FF $FF $FF $20
.db $11 $FF $FF $FF $FF $FF $FF $22
.db $28 $FF $FF $FF $FF $FF $FF $02
.db $21 $FF $FF $FF $FF $FF $FF $0A
.db $CF $07 $FF $FF $FF $FF $FF $26
.db $06 $1D $01 $C3 $2F $FF $FF $26
.db $06 $21 $11 $FF $FF $FF $FF $26
.db $06 $05 $2D $FF $FF $FF $FF $26
.db $06 $24 $29 $FF $FF $FF $FF $26
.db $06 $1A $0B $FF $FF $FF $FF $26
.db $06 $25 $20 $FF $FF $FF $FF $26
.db $06 $10 $06 $FF $FF $FF $FF $26
.db $06 $1B $07 $01 $25 $20 $FF $50
.db $DB $50 $25 $20 $FF $FF $FF $50
.db $DB $50 $10 $06 $FF $FF $FF $50
.db $DB $50 $05 $2D $FF $FF $FF $50
.db $DB $50 $1A $0B $FF $FF $FF $14
.db $29 $CD $FF $FF $FF $FF $FF $04
.db $0B $2C $FF $FF $FF $FF $FF $04
.db $0B $2C $01 $29 $C2 $11 $FF $26
.db $06 $19 $04 $0B $2C $72 $77 $50
.db $DB $50 $14 $29 $CD $72 $77 $50
.db $38 $E7 $46 $30 $72 $77 $FF $DB
.db $5A $46 $30 $72 $77 $FF $FF $35
.db $E3 $31 $5F $72 $77 $FF $FF $E7
.db $5A $3F $30 $72 $77 $FF $FF $DB
.db $58 $72 $77 $FF $FF $FF $FF $14
.db $02 $C1 $C6 $87 $02 $FF $FF $50
.db $4C $3F $FF $FF $FF $FF $FF $2D
.db $2A $01 $04 $0B $2C $FF $FF $2D
.db $2A $01 $04 $0B $2C $61 $FF $2D
.db $2A $01 $04 $0B $2C $62 $FF $DB
.db $5A $46 $30 $FF $FF $FF $FF $DB
.db $5A $46 $30 $61 $FF $FF $FF $DB
.db $5A $46 $30 $62 $FF $FF $FF $0B
.db $87 $D3 $01 $14 $29 $CD $FF $0B
.db $87 $D3 $01 $14 $29 $CD $61 $0B
.db $87 $D3 $01 $14 $29 $CD $62 $50
.db $DB $50 $14 $29 $CD $FF $FF $50
.db $DB $50 $14 $29 $CD $61 $FF $50
.db $DB $50 $14 $29 $CD $62 $FF $26
.db $06 $04 $0B $2C $FF $FF $FF $26
.db $06 $04 $0B $2C $61 $FF $FF $26
.db $06 $04 $0B $2C $62 $FF $FF $E7
.db $5A $3F $30 $0B $2C $FF $FF $E7
.db $5A $3F $30 $0B $2C $61 $FF $E7
.db $5A $3F $30 $0B $2C $62 $FF $DB
.db $58 $0B $2C $FF $FF $FF $FF $DB
.db $58 $0B $2C $61 $FF $FF $FF $DB
.db $58 $0B $2C $62 $FF $FF $FF $27
.db $01 $04 $0B $2C $FF $FF $FF $27
.db $01 $04 $0B $2C $61 $FF $FF $27
.db $01 $04 $0B $2C $62 $FF $FF $35
.db $E3 $31 $5F $0B $2C $FF $FF $35
.db $E3 $31 $5F $0B $2C $61 $FF $35
.db $E3 $31 $5F $0B $2C $62 $FF $50
.db $38 $E7 $46 $30 $0B $2C $FF $50
.db $38 $E7 $46 $30 $0B $2C $61 $50
.db $38 $E7 $46 $30 $0B $2C $62 $34
.db $5B $5A $30 $5F $0B $2C $FF $34
.db $5B $5A $30 $5F $0B $2C $61 $34
.db $5B $5A $30 $5F $0B $2C $62 $30
.db $59 $43 $A7 $30 $0B $2C $FF $30
.db $59 $43 $A7 $30 $0B $2C $61 $30
.db $59 $43 $A7 $30 $0B $2C $62 $58
.db $3F $50 $5F $FF $FF $FF $FF $58
.db $3F $50 $5F $61 $FF $FF $FF $58
.db $3F $50 $5F $62 $FF $FF $FF $43
.db $3F $EB $FF $FF $FF $FF $FF $43
.db $3F $EB $61 $FF $FF $FF $FF $43
.db $3F $EB $62 $FF $FF $FF $FF $0A
.db $01 $0B $86 $02 $23 $2F $FF $0A
.db $01 $0B $86 $02 $23 $2F $61 $0A
.db $01 $0B $86 $02 $23 $2F $62 $02
.db $C4 $08 $2F $FF $FF $FF $FF $02
.db $C4 $08 $2F $20 $11 $FF $FF $02
.db $C4 $08 $2F $C0 $2B $06 $FF $10
.db $05 $28 $CF $09 $FF $FF $FF $05
.db $01 $1C $07 $26 $05 $FF $FF $35
.db $E3 $31 $5F $72 $77 $FF $FF $14
.db $D0 $28 $FF $FF $FF $FF $FF $26
.db $06 $19 $04 $0B $2C $72 $77 $1A
.db $18 $CF $0B $FF $FF $FF $FF $02
.db $C4 $08 $2F $1A $0B $FF $FF $02
.db $C4 $08 $2F $25 $18 $FF $FF $35
.db $E3 $31 $5F $21 $C7 $FF $FF $30
.db $59 $43 $A7 $30 $21 $C7 $FF $CE
.db $02 $07 $12 $FF $FF $FF $FF $26
.db $06 $20 $11 $FF $FF $FF $FF $26
.db $06 $22 $28 $FF $FF $FF $FF $26
.db $06 $14 $29 $CD $FF $FF $FF $0A
.db $01 $CA $2F $FF $FF $FF $FF $02
.db $C4 $08 $2F $26 $06 $20 $11 $02
.db $C4 $08 $2F $26 $06 $22 $28 $26
.db $06 $1D $01 $11 $10 $05 $28 $50
.db $DB $50 $CE $02 $07 $12 $FF $10
.db $05 $28 $2D $2A $0B $2C $FF $05
.db $01 $1C $07 $2D $2A $0B $2C $10
.db $05 $28 $DB $5A $46 $30 $FF $05
.db $01 $1C $07 $DB $5A $46 $30 $10
.db $05 $28 $14 $29 $CD $FF $FF $05
.db $01 $1C $07 $14 $29 $CD $FF $10
.db $05 $28 $50 $DB $14 $29 $FF $05
.db $01 $1C $07 $50 $DB $14 $29 $10
.db $05 $28 $26 $06 $0B $2C $FF $05
.db $01 $1C $07 $26 $06 $0B $2C $10
.db $05 $28 $E7 $5A $3F $30 $FF $05
.db $01 $1C $07 $E7 $5A $3F $30 $10
.db $05 $28 $DB $58 $FF $FF $FF $05
.db $01 $1C $07 $DB $58 $FF $FF $10
.db $05 $28 $35 $E3 $31 $5F $FF $05
.db $01 $1C $07 $35 $E3 $31 $5F $10
.db $05 $28 $50 $38 $E7 $46 $30 $05
.db $01 $1C $07 $50 $38 $E7 $46 $10
.db $05 $28 $34 $5B $5A $30 $5F $05
.db $01 $1C $07 $34 $5B $5A $30 $10
.db $05 $28 $30 $59 $43 $A7 $30 $05
.db $01 $1C $07 $30 $59 $43 $A7 $10
.db $05 $28 $58 $3F $50 $5F $FF $05
.db $01 $1C $07 $58 $3F $50 $5F $10
.db $05 $28 $43 $3F $EB $FF $FF $05
.db $01 $1C $07 $43 $3F $EB $FF $10
.db $05 $28 $0A $01 $C4 $FF $FF $02
.db $C4 $25 $18 $2D $2A $0B $2C $02
.db $C4 $25 $18 $DB $5A $46 $30 $02
.db $C4 $25 $18 $14 $29 $CD $FF $02
.db $C4 $25 $18 $50 $DB $14 $29 $02
.db $C4 $25 $18 $26 $06 $0B $2C $02
.db $C4 $25 $18 $E7 $5A $3F $30 $02
.db $C4 $25 $18 $DB $58 $FF $FF $02
.db $C4 $25 $18 $35 $E3 $31 $5F $02
.db $C4 $25 $18 $50 $38 $E7 $46 $02
.db $C4 $25 $18 $34 $5B $5A $30 $02
.db $C4 $25 $18 $30 $59 $43 $A7 $02
.db $C4 $25 $18 $58 $3F $50 $5F $02
.db $C4 $25 $18 $43 $3F $EB $FF $02
.db $C4 $25 $18 $0A $01 $C4 $FF $05
.db $01 $1C $07 $0A $01 $C4 $FF $30
.db $35 $48 $31 $30 $72 $77 $FF $30
.db $35 $48 $31 $30 $0B $2C $FF $30
.db $35 $48 $31 $30 $0B $2C $61 $30
.db $35 $48 $31 $30 $0B $2C $62 $10
.db $05 $28 $30 $35 $48 $31 $30 $05
.db $01 $1C $07 $30 $35 $48 $31 $02
.db $C4 $25 $18 $30 $35 $48 $31 $02
.db $C4 $08 $2F $26 $06 $20 $11 $27
.db $2C $C7 $25 $FF $FF $FF $FF $14
.db $02 $C1 $C6 $87 $02 $FF $FF $0A
.db $01 $C4 $CE $07 $2C $FF $FF $0A
.db $01 $C4 $CE $07 $2C $FF $FF $1D
.db $01 $C3 $2F $1A $0B $28 $FF $1D
.db $01 $C3 $2F $10 $05 $28 $FF $05
.db $D2 $15 $0B $26 $05 $FF $FF $05
.db $D2 $15 $0B $1A $0B $28 $FF $C0
.db $08 $FF $FF $FF $FF $FF $FF $3C
.db $40 $3F $58 $31 $44 $FF $FF $34
.db $3F $52 $FF $FF $FF $FF $FF $01
.db $06 $13 $2A $FF $FF $FF $FF $0B
.db $2F $CA $FF $FF $FF $FF $FF $11
.db $87 $07 $0D $12 $FF $FF $FF $05
.db $2F $0D $12 $FF $FF $FF $FF $1A
.db $25 $01 $FF $FF $FF $FF $FF $04
.db $0E $01 $FF $FF $FF $FF $FF $FF
.db $3F $3F $FF $19 $2C $01 $FF $FF
.db $3F $3F $FF $1B $85 $0A $12 $12
.db $CC $08 $2A $6E $77 $6D $FF $71
.db $72 $7D $9D $1A $C7 $2B $10 $09
.db $2D $2B $10 $FF $3F $3F $FF $EF
.db $5B $3F $55 $6C $79 $FF $FF $CD
.db $06 $2A $FF $0B $84 $13 $01 $EA
.db $36 $15 $0B $50 $4C $3F $FF $3B
.db $3C $40 $3F

L95ED53:
.db $2B $11 $2C $2A $0C
.db $0C $50 $00 $05 $06 $34 $34 $1A
.db $1A $60 $64 $18 $24 $00 $0A $0E
.db $0C $63 $23 $00 $00 $F0 $F0 $00
.db $00 $01 $00 $00 $00 $00 $00 $F8
.db $F8 $F8 $00 $00 $00 $01 $00 $00
.db $00 $00 $01 $01 $01 $01 $00 $00
.db $00 $00 $00 $00 $00 $00 $00

L95ED8F:
.db $DF
.db $DD $BF $E3 $BF $E7 $4F $DF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $DF $EC $EF $EC $BF
.db $E3 $BF $E3

L95EDB3:
.db $FF $FF $0F $ED $37
.db $ED $1F $ED $2F $ED $17 $ED $27
.db $ED $3F $ED

L95EDC3:
.db $2E $6C $A4 $00 $15 $80 $80 $65
.db $65 $65 $65 $64 $00 $00 $02 $02
.db $00 $00

L95EDD5:
.db $00 $02 $02 $02 $02 $02 $02 $05

L95EDDD:
.db $FF $FF $FF
.db $FF $FF $FF $B0 $B1 $B1 $B1 $B1
.db $B1 $B1 $B1 $B2 $6C $79 $B3 $B4
.db $B0 $B1 $B1 $B1 $B1 $B1 $B1 $B1
.db $B2 $79 $75 $B3 $B4 $FF $FF $1D
.db $01 $0B $86 $B5 $FF $FF $8D $FF
.db $FF $FF $FF $FF $FF $FF $FF $B5
.db $B5 $FF $FF $8D $FF $FF $FF $FF
.db $FF $FF $FF $FF $B5 $FF $FF $FF
.db $FF $D1 $06 $B5 $FF $FF $8D $FF
.db $FF $FF $FF $FF $FF $FF $FF $B5
.db $B5 $FF $FF $8D $FF $FF $FF $FF
.db $FF $FF $FF $FF $B5 $FF $FF $FF
.db $11 $08 $01 $B5 $FF $FF $8D $FF
.db $FF $FF $FF $FF $FF $FF $FF $B5
.db $B5 $FF $FF $8D $FF $FF $FF $FF
.db $FF $FF $FF $FF $B5 $FF $FF $FF
.db $15 $20 $03 $B5 $FF $FF $8D $FF
.db $FF $FF $FF $FF $FF $FF $FF $B5
.db $B5 $FF $FF $8D $FF $FF $FF $FF
.db $FF $FF $FF $FF $B5 $FF $FF $FF
.db $FF $FF $FF $B5 $FF $FF $8D $BD
.db $5B $EB $5A $BE $FF $FF $FF $B5
.db $B5 $FF $FF $8D $BD $5B $EB $5A
.db $BE $FF $FF $FF $B5 $FF $FF $FF
.db $FF $FF $FF $B5 $FF $FF $8D $BD
.db $0A $01 $CA $01 $71 $79 $BE $B5
.db $B5 $FF $FF $8D $BD $0A $01 $CA
.db $01 $71 $79 $BE $B5 $FF $FF $FF
.db $FF $FF $FF $B5 $FF $FF $8D $BD
.db $71 $79 $BE $FF $FF $FF $FF $B5
.db $B5 $FF $FF $8D $BD $71 $79 $BE
.db $FF $FF $FF $FF $B5 $FF $FF $FF
.db $FF $FF $FF $B5 $FF $FF $8D $BD
.db $71 $72 $7D $BE $FF $FF $FF $B5
.db $B5 $FF $FF $8D $BD $71 $72 $7D
.db $BE $FF $FF $FF $B5 $FF $FF $FF
.db $FF $FF $FF $B5 $FF $FF $8D $BD
.db $6A $7D $74 $BE $FF $FF $FF $B5
.db $B5 $FF $FF $8D $BD $6A $7D $74
.db $BE $FF $FF $FF $B5 $FF $FF $FF
.db $FF $FF $FF $B5 $FF $FF $8D $BD
.db $6C $75 $7D $BE $FF $FF $FF $B5
.db $B5 $FF $FF $8D $BD $6C $75 $7D
.db $BE $FF $FF $FF $B5 $FF $FF $FF
.db $FF $FF $FF $B5 $FF $FF $8D $BD
.db $6D $6E $6F $BE $FF $FF $FF $B5
.db $B5 $FF $FF $8D $BD $6D $6E $6F
.db $BE $FF $FF $FF $B5 $FF $FF $FF
.db $FF $FF $FF $B5 $FF $FF $8D $BD
.db $6E $81 $79 $BE $FF $FF $FF $B5
.db $B5 $FF $FF $8D $BD $6E $81 $79
.db $BE $FF $FF $FF $B5 $FF $FF $FF
.db $FF $FF $FF $B5 $FF $FF $8D $BD
.db $14 $02 $C1 $40 $3F $5F $BE $B5
.db $B5 $FF $FF $8D $BD $6E $81 $79
.db $1D $2F $05 $BE $B5 $FF $FF $FF
.db $FF $FF $FF $B5 $FF $FF $8D $BD
.db $71 $79 $1D $2F $05 $BE $FF $B5
.db $B5 $FF $FF $8D $BD $71 $79 $1D
.db $2F $05 $BE $FF $B5 $FF $FF $0B
.db $2F $CA $9C $B6 $FF $FF $8D $BD
.db $71 $79 $1D $2F $05 $BE $FF $B8
.db $B6 $FF $FF $8D $BD $71 $79 $1D
.db $2F $05 $BE $FF $B8 $76 $6D $AD
.db $06 $87 $29 $BD $FF $FF $8D $FF
.db $FF $FF $FF $FF $FF $FF $FF $AD
.db $FF $FF $FF $8D $FF $FF $FF $FF
.db $FF $FF $FF $FF $BE $24 $28 $85
.db $10 $D1 $06 $B0 $FF $FF $8D $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $8D $FF $FF $FF $FF
.db $FF $FF $FF $FF $B4 $FF $FF $FF
.db $FF $FF $FF $B6 $FF $FF $8D $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $8D $FF $FF $FF $FF
.db $FF $FF $FF $FF $B8 $B0 $B1 $B1
.db $B1 $B1 $B1 $B1 $B1 $B1 $B1 $B1
.db $B1 $B1 $B1 $B1 $B1 $B1 $B1 $B1
.db $B1 $B1 $B1 $B1 $B1 $B1 $B1 $B1
.db $B1 $B1 $B1 $B1 $B4 $B5 $E3 $53
.db $3F $DF $FF $FF $FF $8D $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $B5 $B5 $E6 $E9
.db $5A $D1 $06 $FF $FF $8D $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $B5 $B5 $4C $A9
.db $31 $E0 $FF $FF $FF $8D $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $B5 $B5 $0B $86
.db $02 $29 $87 $02 $FF $8D $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $B5 $B5 $D1 $06
.db $09 $2D $2B $FF $FF $8D $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $B5 $B5 $1B $85
.db $0A $12 $FF $FF $FF $8D $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $B5 $B5 $23 $01
.db $11 $86 $02 $FF $FF $8D $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $B5 $B5 $09 $02
.db $C3 $06 $78 $74 $9C $8D $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $B5 $B5 $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $FF $FF $FF $FF
.db $FF $FF $FF $FF $B5 $B6 $B1 $B1
.db $B1 $B1 $B1 $B1 $B1 $B1 $B1 $B1
.db $B1 $B1 $B1 $B1 $B1 $B1 $B1 $B1
.db $B1 $B1 $B1 $B1 $B1 $B1 $B1 $B1
.db $B1 $B1 $B1 $B1 $B8 $FF $FF $FF

.ALIGN 2048

PALETTES_95F800:
.dw RGB(0, 0, 112) RGB(216, 216, 200) RGB(200, 168, 128) RGB(152, 112, 72)
.dw RGB(112, 144, 216) RGB(40, 72, 184) RGB(0, 0, 0) RGB(56, 80, 96)
.dw RGB(88, 96, 184) RGB(240, 104, 16) RGB(64, 192, 136) RGB(8, 80, 80)
.dw RGB(208, 176, 96) RGB(192, 136, 40) RGB(48, 72, 56) RGB(128, 144, 144)
.dw RGB(0, 0, 112) RGB(224, 224, 208) RGB(200, 168, 128) RGB(152, 112, 72)
.dw RGB(216, 72, 72) RGB(152, 40, 48) RGB(0, 0, 0) RGB(96, 80, 88)
.dw RGB(168, 32, 176) RGB(240, 104, 16) RGB(144, 200, 72) RGB(72, 104, 0)
.dw RGB(208, 176, 96) RGB(192, 136, 40) RGB(48, 72, 56) RGB(128, 144, 144)
.dw RGB(0, 0, 112) RGB(88, 128, 200) RGB(112, 120, 144) RGB(96, 104, 104)
.dw RGB(64, 64, 64) RGB(64, 64, 64) RGB(8, 24, 8) RGB(48, 56, 64)
.dw RGB(64, 64, 64) RGB(128, 144, 144) RGB(128, 144, 144) RGB(72, 80, 96)
.dw RGB(128, 144, 144) RGB(72, 104, 96) RGB(128, 144, 144) RGB(128, 144, 144)
.dw RGB(0, 0, 112) RGB(152, 112, 136) RGB(128, 144, 144) RGB(96, 104, 104)
.dw RGB(88, 72, 64) RGB(88, 72, 64) RGB(32, 24, 0) RGB(64, 64, 64)
.dw RGB(88, 72, 64) RGB(128, 144, 144) RGB(128, 144, 144) RGB(88, 72, 64)
.dw RGB(128, 144, 144) RGB(88, 72, 64) RGB(128, 144, 144) RGB(128, 144, 144)

.ENDS
