ROM is 16384 bytes, 2 8k-pages, mapper 0
;Mappings:
; Page 4: 0
; Page 5: 2000
; Page 6: 0
; Page 7: 2000
;Vectors:
; NMI:   C85F
; Reset: C79E
; IRQ:   FFF0
; Discovered a data table at 3E5A,3E5B (stepping 2, extent 0)
; Discovered a data table at 5A6,5A7 (stepping 2, extent 0)
; Discovered a data table at 5A6,5A7 (stepping 2, extent 0)
; Discovered a data table at 3C,3D (stepping 2, extent 0)
; Discovered a data table at 3C,3D (stepping 2, extent 0)
; Discovered a data table at 3C,3D (stepping 2, extent 0)
; Discovered a data table at 493,494 (stepping 2, extent 0)
; Discovered a data table at 49B,49C (stepping 2, extent 0)
; Discovered a data table at 49B,49C (stepping 2, extent 0)
; Discovered a data table at 4A1,4A2 (stepping 2, extent 0)
; Discovered a data table at 4A1,4A2 (stepping 2, extent 0)
; Discovered a data table at 4A1,4A2 (stepping 2, extent 0)
; Possibly discovered a data table at 49B ($C49B) (page [8:0][A:1][C:0][E:1])
; Possibly discovered a data table at 4A1 ($C4A1) (page [8:0][A:1][C:0][E:1])
; Possibly discovered a data table at 3E5A ($FE5A) (page [8:0][A:1][C:0][E:1])
; Possibly discovered a data table at 3E5C ($FE5C) (page [8:0][A:1][C:0][E:1])
_data_0000_indexed
	$C000               .byte $20,$70,$06,$00,$20,$64,$06,$00,$20,$78,$06,$00,$20,$B7,$04,$00
	$C010               .byte $20,$BC,$01,$00
_data_0014_indexed
	$C014               .byte $01,$08,$02,$08,$02,$00,$05,$01,$00,$02,$01,$01
_data_0020
	$C020               .byte $01,$05,$01,$05,$01,$02,$01,$02
_data_0028_indexed
	$C028               .byte $DB,$60,$E2,$55,$14,$20,$01,$F9,$A0,$E0,$30,$10,$10,$01,$50,$01
	$C038               .byte $30,$D0,$FF,$FF
_DataPointerTable_003C
	$C03C  3E C6:       .word (DataTableEntry_063E) ;C63E (63E) ()
	$C03E  57 C6:       .word (DataTableEntry_0657) ;C657 (657) ()
	$C040  E1 C6:       .word (DataTableEntry_06E1) ;C6E1 (6E1) ()
	$C042  60 C7:       .word (DataTableEntry_0760) ;C760 (760) ()
_data_0044_indexed
	$C044  7D C7:       .word (DataTableEntry_077D) ;C77D (77D) ()
	$C046  E4 C6:       .word (DataTableEntry_06E4) ;C6E4 (6E4) ()
	$C048  F1 C6:       .word (DataTableEntry_06F1) ;C6F1 (6F1) ()
	$C04A  53 C7:       .word (DataTableEntry_0753) ;C753 (753) ()
	$C04C  08 C7:       .word (DataTableEntry_0708) ;C708 (708) ()
	$C04E  19 C7:       .word (DataTableEntry_0719) ;C719 (719) ()
DataTableEntry_0050
	$C050  1C C7:       .word (DataTableEntry_071C) ;C71C (71C) ()
	$C052  35 C7:       .word (DataTableEntry_0735) ;C735 (735) ()
	$C054  4E C7:       .word (DataTableEntry_074E) ;C74E (74E) ()
	$C056  8C C0:       .word (DataTableEntry_008C) ;C08C (8C) ()
	$C058  CF C0:       .word (DataTableEntry_00CF) ;C0CF (CF) ()
	$C05A  61 C1:       .word (DataTableEntry_0161) ;C161 (161) ()
	$C05C  60 04:       .word ($0460) ;460 (0) ()
	$C05E  C3 C0:       .word (DataTableEntry_00C3) ;C0C3 (C3) ()
	$C060  DF C0:       .word (DataTableEntry_00DF) ;C0DF (DF) ()
	$C062  6E C1:       .word (DataTableEntry_016E) ;C16E (16E) ()
	$C064  C4 C2:       .word (DataTableEntry_02C4) ;C2C4 (2C4) ()
	$C066  C8 C2:       .word (DataTableEntry_02C8) ;C2C8 (2C8) ()
	$C068  86 C1:       .word (DataTableEntry_0186) ;C186 (186) ()
	$C06A  B0 C1:       .word (DataTableEntry_01B0) ;C1B0 (1B0) ()
	$C06C  92 C1:       .word (DataTableEntry_0192) ;C192 (192) ()
	$C06E  CF C1:       .word (DataTableEntry_01CF) ;C1CF (1CF) ()
	$C070  D5 C1:       .word (DataTableEntry_01D5) ;C1D5 (1D5) ()
	$C072  DB C1:       .word (DataTableEntry_01DB) ;C1DB (1DB) ()
	$C074  E1 C1:       .word (DataTableEntry_01E1) ;C1E1 (1E1) ()
	$C076  9E C1:       .word (DataTableEntry_019E) ;C19E (19E) ()
	$C078  E7 C1:       .word (DataTableEntry_01E7) ;C1E7 (1E7) ()
	$C07A  0C C6:       .word (DataTableEntry_060C) ;C60C (60C) ()
	$C07C  70 C6:       .word (DataTableEntry_0670) ;C670 (670) ()
	$C07E  89 C6:       .word (DataTableEntry_0689) ;C689 (689) ()
_data_0080
	$C080  25 C6:       .word (DataTableEntry_0625) ;C625 (625) ()
	$C082  A2 C6:       .word (DataTableEntry_06A2) ;C6A2 (6A2) ()
	$C084  CC 00:       .word ($CC) ;CC (0) ()
	$C086  8E C1:       .word (DataTableEntry_018E) ;C18E (18E) ()
	$C088  96 C1:       .word (DataTableEntry_0196) ;C196 (196) ()
	$C08A  A6 C6:       .word (DataTableEntry_06A6) ;C6A6 (6A6) ()
DataTableEntry_008C
	$C08C               .byte $00,$D8,$00,$00,$01,$00,$80,$D7,$04,$18,$06,$FE,$C8,$BC,$04,$E8
	$C09C               .byte $09,$FE,$20,$9E,$04,$18,$09,$FE,$C8,$80,$04,$E8,$09,$FE,$20,$62
	$C0AC               .byte $04,$18,$09,$FE,$C8,$44,$04,$E8,$06,$FE,$80,$28,$04,$00,$01,$FE
DataTableEntry_00BC
	$C0BC               .byte $BC,$9E,$80,$62,$44,$28,$FF
DataTableEntry_00C3
	$C0C3               .byte $00,$00,$80,$00,$00,$00,$18,$00,$00,$00,$10,$00
DataTableEntry_00CF
	$C0CF               .byte $E0,$BC,$00,$10,$9E,$00,$E0,$80,$00,$10,$62,$00,$E0,$44,$00,$FE
DataTableEntry_00DF
	$C0DF               .byte $00,$00,$10,$03,$C8,$BC,$08,$C8,$80,$04,$B8,$74,$10,$68,$58,$14
	$C0EF               .byte $C8,$44,$04,$60,$CF,$0C,$70,$9B,$00,$30,$9E,$04,$50,$85,$08,$80
	$C0FF               .byte $7D,$00,$30,$62,$04,$58,$60,$00,$90,$28,$18,$FE,$00,$00,$08,$1D
	$C10F               .byte $00,$00,$08,$17,$00,$00,$08,$18,$00,$00,$08,$09,$00,$00,$08,$0B
	$C11F               .byte $00,$00,$08,$07,$00,$00,$08,$19,$C8,$BC,$00,$70,$9B,$00,$30,$9E
	$C12F               .byte $00,$C8,$80,$00,$80,$7D,$00,$30,$62,$00,$58,$60,$00,$C8,$44,$00
	$C13F               .byte $90,$28,$00,$FE
_data_0143
	$C143               .byte $00,$00,$08,$0D
_data_0147_indexed
	$C147               .byte $24,$24,$54,$54,$60,$60,$64,$64,$60,$60,$24,$24,$68,$68,$68,$68
	$C157               .byte $68,$68
_data_0159_indexed
	$C159               .byte $24,$24,$24,$54,$54,$54,$00,$00
DataTableEntry_0161
	$C161               .byte $60,$B7,$00,$50,$7B,$00,$B8,$5C,$00,$68,$40,$00,$FE
DataTableEntry_016E
	$C16E               .byte $00,$00,$08,$18
_data_0172_indexed
	$C172               .byte $CA,$A7,$8E,$6B,$51
_data_0177_indexed
	$C177               .byte $5C,$2C,$4C,$2C,$64
_data_017C_indexed
	$C17C               .byte $C6,$AA,$8C,$6D,$4D
_data_0181_indexed
	$C181               .byte $C4,$6C,$7C,$54,$C4
DataTableEntry_0186
	$C186               .byte $08,$11,$0A,$11,$08,$10,$0A,$11
DataTableEntry_018E
	$C18E               .byte $08,$0F,$0A,$11
DataTableEntry_0192
	$C192               .byte $05,$01,$0C,$09
DataTableEntry_0196
	$C196               .byte $05,$05,$0A,$0A,$08,$10,$08,$10
DataTableEntry_019E
	$C19E               .byte $04,$04,$0C,$0D
_data_01A2_indexed
	$C1A2               .byte $0C,$14,$1C,$10,$18,$20
_data_01A8_indexed
	$C1A8               .byte $03
DataTableEntry_01A9
	$C1A9               .byte $05,$02,$03,$00,$00,$03,$04
DataTableEntry_01B0
	$C1B0               .byte $00,$00,$08,$08
_data_01B4_indexed
	$C1B4               .byte $10,$E0,$10,$E0,$0C,$E0,$08,$E8
_data_01BC_indexed
	$C1BC               .byte $01,$02,$04,$08,$10,$20,$40,$80
_data_01C4_indexed
	$C1C4               .byte $13,$30,$48,$60,$78,$90,$A8,$C0,$E0
_data_01CD_indexed
	$C1CD               .byte $13,$DB
DataTableEntry_01CF
	$C1CF               .byte $4C,$6A,$88,$A6,$C5,$FE
DataTableEntry_01D5
	$C1D5               .byte $53,$6B,$8F,$A7,$CA,$FE
DataTableEntry_01DB
	$C1DB               .byte $52,$6E,$8C,$AC,$C5,$FE
DataTableEntry_01E1
	$C1E1               .byte $52,$6C,$8E,$A8,$CA,$FE
DataTableEntry_01E7
	$C1E7               .byte $00,$06,$08,$08
_data_01EB
	$C1EB               .byte $19
_data_01EC_indexed
	$C1EC               .byte $30,$34,$30,$34,$30,$34,$38,$3C,$3C,$3C
_data_01F6_indexed
	$C1F6               .byte $02,$04,$02,$04
_data_01FA_indexed
	$C1FA               .byte $07,$05,$07
_data_01FD_indexed
	$C1FD               .byte $09,$03
_data_01FF_indexed
	$C1FF               .byte $00
DataTableEntry_0200
	$C200               .byte $00,$04,$08,$01,$02,$03,$04
_data_0207_indexed
	$C207               .byte $50,$60,$70,$80,$90
DataTableEntry_020C
	$C20C               .byte $0E,$D8,$18,$0E,$C8,$04,$86,$C8,$04,$A6,$C0,$00,$BE,$B8,$00,$D6
	$C21C               .byte $B0,$04,$4E,$B0,$04,$0E,$A0,$04,$DE,$A0,$00,$C6,$98,$00,$AE,$90
	$C22C               .byte $00,$96,$88,$14,$C6,$78,$0C,$0E,$70,$04,$46,$70,$08,$8E,$68,$04
	$C23C               .byte $AE,$60,$00,$C6,$58,$00,$DE,$50,$00,$66
DataTableEntry_0246
	$C246               .byte $40,$10,$86,$28,$00,$FE
DataTableEntry_024C
	$C24C               .byte $B0,$78,$60,$40,$28,$FF,$00,$00,$14,$00,$00,$00,$1C,$00,$00,$00
	$C25C               .byte $24,$00,$00,$00,$2C,$00,$00,$00,$54,$00,$00,$00,$12,$00,$00,$00
	$C26C               .byte $E4,$00,$18,$A0,$0C,$20,$70,$10,$50,$70,$14,$60,$70,$14,$98,$68
	$C27C               .byte $08,$C8,$78,$08,$E0,$A0,$00,$E0,$50,$0C,$B0,$40,$08,$90,$28,$04
	$C28C               .byte $FE,$00,$00,$08,$10,$00,$00,$08,$18,$00,$00,$08,$20,$00,$00,$08
	$C29C               .byte $28,$00,$00,$08,$30,$00,$00,$08,$40,$18,$A0,$00,$20,$70,$00,$50
	$C2AC               .byte $70,$00,$60,$70,$00,$98,$68,$00,$C8,$78,$00,$E0,$A0,$00,$E0,$50
	$C2BC               .byte $00,$B0,$40,$00,$90,$28,$00,$FE
DataTableEntry_02C4
	$C2C4               .byte $04,$01,$1B,$0E
DataTableEntry_02C8
	$C2C8               .byte $00,$01,$12,$01
_data_02CC_indexed
	$C2CC               .byte $30,$38,$40,$48,$50,$58
DataTableEntry_02D2
	$C2D2               .byte $00,$00,$09,$15,$18,$00
DataTableEntry_02D8
	$C2D8               .byte $4C,$5F,$03,$5C,$5F,$03,$C4,$67,$03,$4C,$9F,$13,$5C,$9F,$13,$C4
	$C2E8               .byte $87,$13,$DC,$3F,$03,$DC,$67,$13,$06,$D8,$00,$06,$B8,$00,$16,$90
	$C2F8               .byte $04,$1E,$68,$08,$26,$40,$0C,$FE
DataTableEntry_0300
	$C300               .byte $B8,$90,$68,$40,$28,$FF,$00,$00,$F5,$00,$00,$00,$D5,$00,$00,$00
	$C310               .byte $C5,$00,$00,$00,$B5,$00,$10,$B8,$00,$78,$B8,$00,$E8,$B8,$00,$18
	$C320               .byte $90,$04,$60,$90,$04,$98,$90,$04,$E0,$90,$04,$20,$68,$04,$80,$68
	$C330               .byte $04,$D8,$68,$04,$28,$40,$04,$48,$40,$04,$B0,$40,$04,$D0,$40,$04
	$C340               .byte $FE,$00,$00,$08,$20,$00,$00,$08,$28,$10
DataTableEntry_034A
	$C34A               .byte $B8,$00,$78,$B8,$00,$E8,$B8,$00,$18,$90,$00,$60,$90,$00,$98,$90
	$C35A               .byte $00,$E0,$90,$00,$20,$68,$00,$80,$68,$00,$D8,$68,$00,$28,$40,$00
	$C36A               .byte $48,$40,$00,$B0,$40,$00,$D0,$40,$00,$FE
DataTableEntry_0374
	$C374               .byte $00,$09,$1E,$33,$48,$54
DataTableEntry_037A
	$C37A               .byte $0C,$A7,$03,$74,$A7,$03,$E4,$A7,$03,$0C,$C7,$13,$74,$C7,$13,$E4
	$C38A               .byte $C7,$13,$14,$7F,$03,$5C,$7F,$03,$94,$7F,$03,$DC,$7F,$03,$1C,$57
	$C39A               .byte $03,$7C,$57,$03,$D4,$57,$03,$14,$A7,$13,$5C,$A7,$13,$94,$A7,$13
	$C3AA               .byte $DC,$A7,$13,$24,$2F,$03,$44,$2F,$03,$AC,$2F,$03,$CC,$2F,$03,$1C
	$C3BA               .byte $7F,$13,$7C,$7F,$13,$D4,$7F,$13,$24,$57,$13,$44,$57,$13,$AC,$57
	$C3CA               .byte $13,$CC,$57,$13
_data_03CE_indexed
	$C3CE               .byte $08
_data_03CF_indexed
	$C3CF               .byte $C7,$10,$A7,$18,$7F,$20,$57,$E8,$C7,$E0,$A7,$D8,$7F,$D0,$57
_data_03DE_indexed
	$C3DE               .byte $34
_data_03DF_indexed
	$C3DF               .byte $AC,$44,$BC
_data_03E2_indexed
	$C3E2               .byte $05,$03
_data_03E4_indexed
	$C3E4               .byte $0D,$0B
_data_03E6_indexed
	$C3E6               .byte $D4,$0C
_data_03E8_indexed
	$C3E8               .byte $E4,$0C
_data_03EA_indexed
	$C3EA               .byte $5D,$4B
_data_03EC_indexed
	$C3EC               .byte $CD,$C3
_data_03EE_indexed
	$C3EE               .byte $5D,$43
_data_03F0_indexed
	$C3F0               .byte $E5,$C3
_data_03F2_indexed
	$C3F2               .byte $ED,$03
_data_03F4_indexed
	$C3F4               .byte $24
_data_03F5_indexed
	$C3F5               .byte $49,$77,$77
_data_03F8_indexed
	$C3F8               .byte $77
_data_03F9_indexed
	$C3F9               .byte $77,$FF,$FF
_data_03FC_indexed
	$C3FC               .byte $0B,$0C,$0D,$15
DataTableEntry_0400
	$C400               .byte $16,$17,$18,$19,$1A,$1E,$1F
_data_0407_indexed
	$C407               .byte $FF,$FF,$FF,$01,$01,$01,$01,$FF,$FF,$01,$01
_data_0412_indexed
	$C412               .byte $E4,$E3,$E2,$D8,$D7,$D6,$D5,$D4,$D3,$D0,$CF
_data_041D_indexed
	$C41D               .byte $48,$84,$C0
_data_0420_indexed
	$C420               .byte $50,$8D,$C7
_data_0423_indexed
	$C423               .byte $20
_data_0424_indexed
	$C424               .byte $C0,$78,$60,$28,$44,$6B,$20
_data_042B_indexed
	$C42B               .byte $33
_data_042C_indexed
	$C42C               .byte $C4,$37,$C4,$3B
_data_0430
	$C430               .byte $C4,$3F
DataTableEntry_0432
	$C432               .byte $C4,$00,$00,$10,$08,$00,$00,$10,$08,$00,$00,$60,$10,$00,$00,$2A
	$C442               .byte $20
_data_0443_indexed
	$C443               .byte $B0,$A0,$78,$68,$68
_data_0448_indexed
	$C448               .byte $88,$88,$88,$88,$88
_data_044D_indexed
	$C44D               .byte $48,$38,$28,$18,$18,$BB,$BB,$5E,$2F,$13
_data_0457_indexed
	$C457               .byte $88,$78,$64,$56,$49
_data_045C_indexed
	$C45C               .byte $88,$88,$24,$55,$55
_data_0461_indexed
	$C461               .byte $88,$88,$49,$55,$55
_data_0466_indexed
	$C466               .byte $40,$20,$10,$08,$01
_data_046B_indexed
	$C46B               .byte $8C
_data_046C_indexed
	$C46C               .byte $C0,$0C,$C2,$0C,$C2,$F0,$C2
_data_0473_indexed
	$C473               .byte $C3
_data_0474_indexed
	$C474               .byte $C0,$0C,$C2,$52,$C2,$06,$C3
_data_047B_indexed
	$C47B               .byte $E3
_data_047C_indexed
	$C47C               .byte $C0,$0C,$C2,$6E,$C2,$16,$C3
_data_0483_indexed
	$C483               .byte $0B
_data_0484_indexed
	$C484               .byte $C1,$0C,$C2,$8D,$C2,$41,$C3
_data_048B_indexed
	$C48B               .byte $27
_data_048C_indexed
	$C48C               .byte $C1,$0C,$C2,$A5,$C2,$49,$C3
_DataPointerTable_0493
	$C493  BC C0:       .word (DataTableEntry_00BC) ;C0BC (BC) ()
	$C495  0C C2:       .word (DataTableEntry_020C) ;C20C (20C) ()
	$C497  4C C2:       .word (DataTableEntry_024C) ;C24C (24C) ()
	$C499  00 C3:       .word (DataTableEntry_0300) ;C300 (300) ()
_DataPointerTable_049B
	$C49B  0C C2:       .word (DataTableEntry_020C) ;C20C (20C) ()
	$C49D  D2 C2:       .word (DataTableEntry_02D2) ;C2D2 (2D2) ()
	$C49F  74 C3:       .word (DataTableEntry_0374) ;C374 (374) ()
_DataPointerTable_04A1
	$C4A1  0C C2:       .word (DataTableEntry_020C) ;C20C (20C) ()
	$C4A3  D8 C2:       .word (DataTableEntry_02D8) ;C2D8 (2D8) ()
	$C4A5  7A C3:       .word (DataTableEntry_037A) ;C37A (37A) ()
_data_04A7_indexed
	$C4A7  5B F5:       .word (DataTableEntry_355B) ;F55B (355B) ()
	$C4A9  D9 F8:       .word (DataTableEntry_38D9) ;F8D9 (38D9) ()
	$C4AB  CD F7:       .word (DataTableEntry_37CD) ;F7CD (37CD) ()
	$C4AD  1C F7:       .word (DataTableEntry_371C) ;F71C (371C) ()
	$C4AF  D9 F8:       .word (DataTableEntry_38D9) ;F8D9 (38D9) ()
	$C4B1  1B FA:       .word (DataTableEntry_3A1B) ;FA1B (3A1B) ()
DataTableEntry_04B3
	$C4B3               .byte $00,$00,$01,$06,$E8,$04,$50,$18,$D5,$12,$E8,$00,$50,$20,$DB,$22
	$C4C3               .byte $F0,$00,$00,$00,$03,$2C,$30,$04,$20,$7F,$F6,$21,$D0,$00,$20,$46
	$C4D3               .byte $F6,$21,$D8,$00,$00,$00,$01,$04,$C0,$04,$00,$00,$00,$04,$00,$04
	$C4E3               .byte $30,$C7,$04,$22,$00,$00,$00,$00,$02,$08,$10,$04,$00,$00,$02,$02
	$C4F3               .byte $E0,$04,$FE
DataTableEntry_04F6
	$C4F6               .byte $00,$00,$01,$06,$E8,$04,$50,$18,$D5,$12,$E8,$00,$50,$20,$DB,$22
	$C506               .byte $F0,$00,$00,$00,$03,$0C,$30,$04,$30,$78,$A0,$12,$30,$00,$30,$A8
	$C516               .byte $A0,$12,$38,$00,$30,$49,$A0,$12,$40,$00,$70,$70,$A0,$12,$48,$00
	$C526               .byte $70,$A0,$A0,$12,$50,$00,$70,$D7,$A0,$12,$58,$00,$00,$00,$23,$02
	$C536               .byte $40,$04,$00,$00,$23,$02,$58,$04,$00,$00,$00,$04,$00,$04,$10,$B7
	$C546               .byte $04,$22,$00,$00,$00,$00,$02,$08,$10,$04,$4C,$9F,$98,$22,$10,$00
	$C556               .byte $CC,$67,$98,$22,$20,$00,$00,$00,$03,$0C,$60,$04,$00,$00,$01,$16
	$C566               .byte $90,$04,$FE
DataTableEntry_0569
	$C569               .byte $00,$00,$01,$06,$E8,$04,$50,$18,$D5,$12,$E8,$00,$50,$20,$DB,$22
	$C579               .byte $F0,$00,$00,$00,$03,$04,$D0,$04,$14,$6E,$F6,$21,$D0,$00,$7C,$46
	$C589               .byte $F6,$21,$D8,$00,$00,$00,$01,$20,$50,$04,$00,$00,$00,$04,$00,$04
	$C599               .byte $38,$C7,$04,$22,$00,$00,$00,$00,$02,$10,$10,$04,$FE
_DataPointerTable_05A6
	$C5A6  B3 C4:       .word (DataTableEntry_04B3) ;C4B3 (4B3) ()
	$C5A8  F6 C4:       .word (DataTableEntry_04F6) ;C4F6 (4F6) ()
	$C5AA  F6 C4:       .word (DataTableEntry_04F6) ;C4F6 (4F6) ()
	$C5AC  69 C5:       .word (DataTableEntry_0569) ;C569 (569) ()
_data_05AE_indexed
	$C5AE  7F 7F:       .word ($7F7F) ;7F7F (0) ()
	$C5B0  7F 00:       .word ($7F) ;7F (0) ()
	$C5B2  5F 3F:       .word ($3F5F) ;3F5F (0) ()
	$C5B4  00 2F:       .word ($2F00) ;2F00 (0) ()
	$C5B6  7F 7F:       .word ($7F7F) ;7F7F (0) ()
	$C5B8  00 A9:       .word (DataTableEntry_2900) ;A900 (2900) ()
	$C5BA  A9 81:       .word (DataTableEntry_01A9) ;81A9 (1A9) ()
	$C5BC  81 59:       .word ($5981) ;5981 (0) ()
	$C5BE  59 31:       .word ($3159) ;3159 (0) ()
	$C5C0  31 00:       .word ($31) ;31 (0) ()
_data_05C2_indexed
	$C5C2  30 4C:       .word ($4C30) ;4C30 (0) ()
	$C5C4  D5 00:       .word ($D5) ;D5 (0) ()
	$C5C6  10 E0:       .word (DataTableEntry_2010) ;E010 (2010) ()
	$C5C8  00 24:       .word ($2400) ;2400 (0) ()
	$C5CA  50 C0:       .word (DataTableEntry_0050) ;C050 (50) ()
	$C5CC  00 3B:       .word ($3B00) ;3B00 (0) ()
	$C5CE  B3 3B:       .word ($3BB3) ;3BB3 (0) ()
	$C5D0  B3 3B:       .word ($3BB3) ;3BB3 (0) ()
	$C5D2  B3 38:       .word ($38B3) ;38B3 (0) ()
	$C5D4  B3 00:       .word ($B3) ;B3 (0) ()
_data_05D6_indexed
	$C5D6  22 22:       .word ($2222) ;2222 (0) ()
	$C5D8  22 00:       .word ($22) ;22 (0) ()
	$C5DA  21 21:       .word ($2121) ;2121 (0) ()
	$C5DC  00 20:       .word ($2000) ;2000 (0) ()
	$C5DE  22 22:       .word ($2222) ;2222 (0) ()
	$C5E0  00 22:       .word ($2200) ;2200 (0) ()
	$C5E2  22 22:       .word ($2222) ;2222 (0) ()
	$C5E4  22 21:       .word ($2122) ;2122 (0) ()
	$C5E6  21 21:       .word ($2121) ;2121 (0) ()
	$C5E8  21 06:       .word ($0621) ;621 (0) ()
	$C5EA  0A 1B:       .word ($1B0A) ;1B0A (0) ()
	$C5EC  00 82:       .word (DataTableEntry_0200) ;8200 (200) ()
	$C5EE  1C 00:       .word ($1C) ;1C (0) ()
	$C5F0  C5 0A:       .word ($0AC5) ;AC5 (0) ()
	$C5F2  18 00:       .word ($18) ;18 (0) ()
	$C5F4  E8 F7:       .word (DataTableEntry_37E8) ;F7E8 (37E8) ()
	$C5F6  48 57:       .word ($5748) ;5748 (0) ()
	$C5F8  A8 B7:       .word (DataTableEntry_37A8) ;B7A8 (37A8) ()
_data_05FA_indexed
	$C5FA  08 17:       .word ($1708) ;1708 (0) ()
	$C5FC  00 04:       .word ($0400) ;400 (0) ()
	$C5FE               .byte $07
_data_05FF
	$C5FF               .byte $0B
DataTableEntry_0600
	$C600               .byte $01,$03,$05,$08
_data_0604_indexed
	$C604               .byte $D0,$D1,$D2,$D3
_data_0608_indexed
	$C608               .byte $84,$8D,$84,$8D
DataTableEntry_060C
	$C60C               .byte $46,$76,$77,$78,$79,$7A,$7B,$7C,$7D,$7E,$7F,$80,$81,$82,$83,$84
	$C61C               .byte $85,$24,$24,$86,$87,$24,$24,$24,$88
DataTableEntry_0625
	$C625               .byte $46,$24,$9C,$9D,$9E,$9F,$A0,$A1,$A2,$A3,$A4,$A5,$A6,$A7,$A8,$A9
	$C635               .byte $AA,$AB,$AC,$AD,$AE,$24,$AF,$B0,$B1
DataTableEntry_063E
	$C63E               .byte $46,$24,$24,$24,$89,$24,$24,$8A,$8B,$8C,$8D,$8E,$8F,$90,$91,$92
	$C64E               .byte $93,$94,$95,$96,$97,$98,$99,$9A,$9B
DataTableEntry_0657
	$C657               .byte $46,$24,$B2,$68,$9E,$B5,$B6,$6C,$C7,$A3,$A4,$69,$A6,$A7,$A8,$6B
	$C667               .byte $AA,$C9,$CA,$6D,$BF,$24,$CD,$6A,$B1
DataTableEntry_0670
	$C670               .byte $46,$C2,$C3,$24,$9E,$C4,$C5,$C6,$C7,$A3,$B9,$A5,$A6,$A7,$BB,$6B
	$C680               .byte $C8,$C9,$CA,$CB,$CC,$24,$CD,$CE,$CF
DataTableEntry_0689
	$C689               .byte $46,$24,$B2,$B3,$B4,$B5,$B6,$B7,$B8,$A3,$B9,$69,$BA,$A7,$BB,$A9
	$C699               .byte $AA,$BC,$BD,$BE,$BF,$C0,$C1,$24,$B1
DataTableEntry_06A2
	$C6A2               .byte $13,$2C,$16,$13
DataTableEntry_06A6
	$C6A6               .byte $13,$16,$30,$37
_data_06AA_indexed
	$C6AA               .byte $23,$DB,$42,$A0,$21,$CA,$4C,$24,$21,$EA,$0C,$24,$24,$19,$15,$0A
	$C6BA               .byte $22,$0E,$1B,$24,$66,$24,$24,$00
_data_06C2_indexed
	$C6C2               .byte $23,$E2,$04,$08,$0A,$0A,$02,$22,$0A,$4C,$24,$22,$2A,$0C,$24,$10
	$C6D2               .byte $0A,$16,$0E,$24,$24,$18,$1F,$0E,$1B,$24,$22,$4A,$4C,$24,$00
DataTableEntry_06E1
	$C6E1               .byte $12,$24,$24
DataTableEntry_06E4
	$C6E4               .byte $20,$63,$5B,$24,$20,$94,$4A,$24,$20,$B4,$4A,$24,$00
DataTableEntry_06F1
	$C6F1               .byte $21,$09,$4E,$24,$21,$A9,$4E,$24,$22,$49,$4E,$24,$22,$E9,$4E,$24
	$C701               .byte $3F,$1D,$03,$30,$36,$06,$00
DataTableEntry_0708
	$C708               .byte $20,$8D,$46,$24,$20,$AD,$46,$24,$20,$CD,$46,$24,$20,$ED,$46,$24
	$C718               .byte $00
DataTableEntry_0719
	$C719               .byte $12,$AA,$AA
DataTableEntry_071C
	$C71C               .byte $46,$24,$24,$DC,$DD,$D4,$D5,$DE,$DF,$D6,$D7,$E0,$E1,$D8,$D9,$E2
	$C72C               .byte $E3,$DA,$DB,$E4,$E5,$24,$24,$E6,$E7
DataTableEntry_0735
	$C735               .byte $46,$E8,$E9,$EA,$EB,$EC,$ED,$EE,$EF,$24,$F0,$F1,$F2,$24,$F3,$F4
	$C745               .byte $F5,$F6,$F7,$F8,$F9,$FA,$FB,$FC,$FD
DataTableEntry_074E
	$C74E               .byte $21,$08,$50,$62,$00
DataTableEntry_0753
	$C753               .byte $23,$09,$4E,$62,$23,$29,$4E,$62,$23,$49,$4E,$62,$00
DataTableEntry_0760
	$C760               .byte $20,$C5,$42,$24,$20,$CA,$42,$24,$20,$EA,$42,$24,$20,$E5,$42,$24
	$C770               .byte $22,$0A,$42,$24,$22,$2A,$42,$24,$22,$18,$42,$24,$00
DataTableEntry_077D
	$C77D               .byte $22,$38,$42,$24,$21,$29,$C4,$24,$21,$36,$C4,$24,$21,$D0,$C4,$24
	$C78D               .byte $22,$6C,$C4,$24,$22,$73,$C4,$24,$23,$0F,$C3,$24,$00
_data_079A_indexed
	$C79A               .byte $FF,$01
_data_079C_indexed
	$C79C               .byte $01,$FF
_Reset	$C79E  78:          sei  				# disable interrupts
	$C79F  D8:          cld 					# clear decimal

	# background pattern at 0x1000
	$C7A0  A9 10:       lda #$10
	$C7A2  8D 00 20:    sta $2000

	# init stack
	$C7A5  A2 FF:       ldx #$FF
	$C7A7  9A:          txs 

	# wait for vblank
-	$C7A8  AD 02 20:    lda $2002
	$C7AB  29 80:       and #$80
	$C7AD  F0 F9:       beq -		; $C7A8


	# clear cpu memory in range 0x0000 - 0x0700
	$C7AF  A0 07:       ldy #$07
	$C7B1  84 01:       sty $01
	$C7B3  A0 00:       ldy #$00
	$C7B5  84 00:       sty $00
	$C7B7  A9 00:       lda #$00
-	$C7B9  91 00:       sta ($00),y
	$C7BB  88:          dey 
	$C7BC  D0 FB:       bne -		; $C7B9
	$C7BE  C6 01:       dec $01
	$C7C0  10 F7:       bpl -		; $C7B9


	$C7C2  20 E7 C7:    jsr _func_07E7_init_ppu # RTS $F1EB

	# some constants?
	$C7C5  A9 7F:       lda #$7F
	$C7C7  8D 11 05:    sta $0511
	$C7CA  A9 18:       lda #$18
	$C7CC  85 51:       sta $51
	$C7CE  A9 01:       lda #$01
	$C7D0  85 4E:       sta $4E
	$C7D2  85 55:       sta $55
	$C7D4  A9 00:       lda #$00
	$C7D6  85 4F:       sta $4F

	# generate NMI at the start of the VBI
	$C7D8  A5 10:       lda $10
	$C7DA  49 80:       eor #$80
	$C7DC  8D 00 20:    sta $2000
	$C7DF  85 10:       sta $10

	# enter endless loop
-	$C7E1  20 ED F4:    jsr _func_34ED_memory_loop
	$C7E4  4C E1 C7:    jmp -		; $C7E1
;------------------------------------------
_func_07E7_init_ppu
	# set bg pattern table to 0x1000
	$C7E7  A9 10:       lda #$10
	$C7E9  8D 00 20:    sta $2000 

    # ?
	$C7EC  85 10:       sta $10

	#	set mask
	$C7EE  A9 06:       lda #$06
	$C7F0  8D 01 20:    sta $2001

	# ?
	$C7F3  85 11:       sta $11

	# set scroll x, y
		$C7F5  A9 00:       lda #$00

		#x
		$C7F7  8D 05 20:    sta $2005
		$C7FA  85 12:       sta $12

		# y
		$C7FC  8D 05 20:    sta $2005
		$C7FF  85 13:       sta $13

	$C801  20 AE CB:    jsr _func_0BAE_init_ram
	$C804  4C B7 CB:    jmp _func_0BB7_init_ppu2
;------------------------------------------
_func_0807
	$C807  AA:          tax 
	$C808  BD A7 C4:    lda _data_04A7_indexed,x
	$C80B  85 00:       sta $00
	$C80D  BD A8 C4:    lda _data_04A8_indexed,x
	$C810  85 01:       sta $01
	$C812  4C 28 F2:    jmp _func_3228_something_at_0x331_and_scroll_set
;------------------------------------------
_func_0815
	$C815  AA:          tax 
	$C816  BD 3C C0:    lda _DataPointerTable_003C,x
	$C819  85 02:       sta $02
	$C81B  BD 3D C0:    lda _DataPointerTable_003C+1,x
	$C81E  85 03:       sta $03
_loc_0820
	$C820  4C D7 F2:    jmp _loc_32D7
;------------------------------------------
_func_0823
	$C823  AA:          tax 
	$C824  BD 3C C0:    lda _DataPointerTable_003C,x
	$C827  85 00:       sta $00
	$C829  BD 3D C0:    lda _DataPointerTable_003C+1,x
	$C82C  85 01:       sta $01
	$C82E  4C 76 CD:    jmp _loc_0D76
;------------------------------------------
_func_0831
	$C831  AA:          tax 
	$C832  BD 3C C0:    lda _DataPointerTable_003C,x
	$C835  85 04:       sta $04
	$C837  BD 3D C0:    lda _DataPointerTable_003C+1,x
	$C83A  85 05:       sta $05
	$C83C  BD 44 C0:    lda _data_0044_indexed,x
	$C83F  85 06:       sta $06
	$C841  BD 45 C0:    lda _data_0045_indexed,x
	$C844  85 07:       sta $07
	$C846  60:          rts 
;------------------------------------------
_func_0847
	$C847  AA:          tax 
	$C848  BD 3C C0:    lda _DataPointerTable_003C,x
	$C84B  85 02:       sta $02
	$C84D  BD 3D C0:    lda _DataPointerTable_003C+1,x
	$C850  85 03:       sta $03
	$C852  60:          rts 
;------------------------------------------
_func_0853
	$C853  AA:          tax 
	$C854  BD 3C C0:    lda _DataPointerTable_003C,x
	$C857  85 08:       sta $08
	$C859  BD 3D C0:    lda _DataPointerTable_003C+1,x
	$C85C  85 09:       sta $09
	$C85E  60:          rts 
;------------------------------------------
_NMI	
	# save A
	$C85F  48:          pha 

	# disable NMI generating
	$C860  A5 10:        lda $10
	$C862  29 7F:        and #$7F
	$C864  8D 00 20:     sta $2000
	$C867  85 10:        sta $10

	# DMA transfer from 0x200 cpu to 0x0 OAM
	$C869  A9 00:        lda #$00
	$C86B  8D 03 20:     sta $2003
	$C86E  A9 02:        lda #$02
	$C870  8D 14 40:     sta $4014

	# mem[0] = 0x31
	# mem[1] = 0x3 used as address to function arg 0x331
	$C873  A9 31:        lda #$31
	$C875  85 00:        sta $00
	$C877  A9 03:        lda #$03
	$C879  85 01:        sta $01
	$C87B  20 28 F2:     jsr _func_3228_something_at_0x331_and_scroll_set

	# mem[0x330] = mem[0x331] = 0
	$C87E  A9 00:        lda #$00
	$C880  8D 30 03:     sta $0330
	$C883  8D 31 03:     sta $0331

	$C886  20 0E F5:     jsr _func_350E_handle_input

	# show bg and sprites
	$C889  A5 11:        lda $11
	$C88B  49 18:        eor #$18
	$C88D  8D 01 20:     sta $2001

	$C890  20 48 FA:     jsr _func_3A48_sram_related

	# check 0x4e
	$C893  A5 4E:        lda $4E
	$C895  D0 2A:        bne ++		; $C8C1

	# if mem[0x4e] == 0
	$C897  A5 4F:        lda $4F
	$C899  F0 39:        beq +++		; $C8D4


	$C89B  A5 9A:        lda $9A
	$C89D  D0 06:        bne +		; $C8A5
	$C89F  20 7C CE:     jsr _func_0E7C
	$C8A2  4C D7 C8:     jmp ++++		; $C8D7

+	$C8A5  AD 4F 04:     lda $044F
	$C8A8  C9 08:        cmp #$08
	$C8AA  D0 28:        bne +++		; $C8D4
	$C8AC  20 F4 CC:     jsr _func_0CF4
	$C8AF  A5 43:        lda $43
	$C8B1  D0 24:        bne ++++		; $C8D7
	$C8B3  A9 00:        lda #$00
	$C8B5  8D 4F 04:     sta $044F
	$C8B8  85 4F:        sta $4F
	$C8BA  A9 79:        lda #$79
	$C8BC  85 43:        sta $43
	$C8BE  4C D7 C8:     jmp ++++		; $C8D7

	# if mem[0x4e] != 0
++	$C8C1  A5 55:        lda $55
	$C8C3  D0 06:        bne +		; $C8CB
	$C8C5  20 30 CA:     jsr _func_0A30
	$C8C8  4C D7 C8:     jmp ++++		; $C8D7

+	$C8CB  20 F3 C8:     jsr _func_08F3
	$C8CE  20 AC F4:     jsr _func_34AC
	$C8D1  4C D7 C8:     jmp ++++		; $C8D7

+++	$C8D4  20 C9 CA:     jsr _func_0AC9
++++	
	# expansion rom? probably regular ram
	$C8D7  AD 05 05:     lda $0505
	$C8DA  C9 01:        cmp #$01
	$C8DC  D0 0A:        bne +		; $C8E8
	$C8DE  A5 51:        lda $51
	$C8E0  85 00:        sta $00
	$C8E2  20 3C F2:     jsr _func_323C
	$C8E5  CE 05 05:     dec $0505

	# enable NMI generation
+	$C8E8  A5 10:        lda $10
	$C8EA  49 80:        eor #$80
	$C8EC  8D 00 20:     sta $2000
	$C8EF  85 10:        sta $10
	$C8F1  68:          pla 
	$C8F2  40:          rti 
;------------------------------------------
_func_08F3
	$C8F3  AD 02 01:    lda $0102
	$C8F6  D0 06:       bne +		; $C8FE
	$C8F8  8D 15 40:    sta $4015
	$C8FB  8D 00 01:    sta $0100
+	$C8FE  AD 18 05:    lda $0518
	$C901  D0 11:       bne +		; $C914
	$C903  A9 80:       lda #$80
	$C905  85 FD:       sta $FD
	$C907  A9 04:       lda #$04
	$C909  8D 18 05:    sta $0518
	$C90C  A9 0F:       lda #$0F
	$C90E  8D 15 40:    sta $4015
	$C911  8D 00 01:    sta $0100
+	$C914  AD 10 05:    lda $0510
	$C917  D0 27:       bne +		; $C940
	$C919  20 9A D1:    jsr _func_119A_hide_bg_and_sprites
	$C91C  A9 08:       lda #$08
	$C91E  20 07 C8:    jsr _func_0807
	$C921  AD 11 05:    lda $0511
	$C924  8D 00 02:    sta $0200
	$C927  A9 A2:       lda #$A2
	$C929  8D 01 02:    sta $0201
	$C92C  A9 00:       lda #$00
	$C92E  8D 02 02:    sta $0202
	$C931  85 58:       sta $58
	$C933  A9 38:       lda #$38
	$C935  8D 03 02:    sta $0203
	$C938  8D 10 05:    sta $0510
	$C93B  A9 20:       lda #$20
	$C93D  85 44:       sta $44
	$C93F  60:          rts 

+	$C940  A5 15:       lda $15
	$C942  29 20:       and #$20
	$C944  D0 17:       bne ++		; $C95D
	$C946  A5 15:       lda $15
	$C948  29 10:       and #$10
	$C94A  D0 3E:       bne +++		; $C98A
	$C94C  A9 00:       lda #$00
	$C94E  8D 12 05:    sta $0512
	$C951  A5 44:       lda $44
	$C953  D0 07:       bne +		; $C95C -> rts
	$C955  A9 01:       lda #$01
	$C957  85 58:       sta $58
	$C959  4C B1 C9:    jmp ++++		; $C9B1

+	$C95C  60:          rts 

++	$C95D  A9 40:       lda #$40
	$C95F  85 44:       sta $44
	$C961  AD 12 05:    lda $0512
	$C964  D0 1F:       bne ++		; $C985
	$C966  A9 40:       lda #$40
	$C968  85 35:       sta $35
	$C96A  AD 00 02:    lda $0200
	$C96D  18:          clc 
	$C96E  69 10:       adc #$10
_loc_0970
	$C970  C9 BF:       cmp #$BF
	$C972  D0 02:       bne +		; $C976
	$C974  A9 7F:       lda #$7F
+	$C976  8D 00 02:    sta $0200
	$C979  8D 11 05:    sta $0511
	$C97C  EE 12 05:    inc $0512
	$C97F  A9 0A:       lda #$0A
	$C981  8D 13 05:    sta $0513
	$C984  60:          rts 

++	$C985  A5 35:       lda $35
	$C987  D0 00:       bne +		; $C989 -> rts
+	$C989  60:          rts 

+++ --	$C98A  8D 14 05:    sta $0514
	$C98D  A2 0A:       ldx #$0A
	$C98F  A9 00:       lda #$00
-	$C991  95 24:       sta $24,x
	$C993  CA:          dex 
	$C994  D0 FB:       bne -		; $C991
	$C996  AD 11 05:    lda $0511
	$C999  4A:          lsr a
	$C99A  4A:          lsr a
	$C99B  4A:          lsr a
	$C99C  4A:          lsr a
	$C99D  38:          sec 
	$C99E  E9 07:       sbc #$07
	$C9A0  85 50:       sta $50
	$C9A2  C9 02:       cmp #$02
	$C9A4  30 07:       bmi +		; $C9AD
	$C9A6  A9 1C:       lda #$1C
	$C9A8  85 51:       sta $51
	$C9AA  4C B1 C9:    jmp ++++		; $C9B1

+	$C9AD  A9 18:       lda #$18
	$C9AF  85 51:       sta $51
++++	$C9B1  A5 50:       lda $50
	$C9B3  29 01:       and #$01
	$C9B5  0A:          asl a
	$C9B6  AA:          tax 
	$C9B7  BD 07 05:    lda $0507,x
	$C9BA  85 21:       sta $21
	$C9BC  BD 08 05:    lda $0508,x
	$C9BF  85 22:       sta $22
	$C9C1  A9 0F:       lda #$0F
	$C9C3  85 18:       sta $18
	$C9C5  A9 13:       lda #$13
	$C9C7  85 19:       sta $19
	$C9C9  A9 00:       lda #$00
	$C9CB  85 4E:       sta $4E
	$C9CD  8D 06 04:    sta $0406
	$C9D0  8D 07 04:    sta $0407
	$C9D3  85 4F:       sta $4F
	$C9D5  8D 10 05:    sta $0510
	$C9D8  8D 0B 05:    sta $050B
	$C9DB  8D 12 05:    sta $0512
	$C9DE  A9 01:       lda #$01
	$C9E0  85 53:       sta $53
	$C9E2  8D 00 04:    sta $0400
	$C9E5  8D 01 04:    sta $0401
	$C9E8  A9 00:       lda #$00
	$C9EA  85 54:       sta $54
	$C9EC  8D 02 04:    sta $0402
	$C9EF  8D 03 04:    sta $0403
	$C9F2  A9 00:       lda #$00
	$C9F4  85 52:       sta $52
	$C9F6  8D 08 04:    sta $0408
	$C9F9  8D 09 04:    sta $0409
	$C9FC  85 FC:       sta $FC
	$C9FE  A9 03:       lda #$03
	$CA00  A6 58:       ldx $58
	$CA02  F0 02:       beq +		; $CA06
	$CA04  A9 01:       lda #$01
+	$CA06  85 55:       sta $55
	$CA08  8D 04 04:    sta $0404
	$CA0B  8D 05 04:    sta $0405
	$CA0E  8D 0B 04:    sta $040B
	$CA11  A5 58:       lda $58
	$CA13  D0 11:       bne +		; $CA26
	$CA15  A9 97:       lda #$97
	$CA17  85 43:       sta $43
	$CA19  A9 01:       lda #$01
	$CA1B  85 FD:       sta $FD
	$CA1D  A9 0F:       lda #$0F
	$CA1F  8D 15 40:    sta $4015
	$CA22  8D 00 01:    sta $0100
	$CA25  60:          rts 

+	$CA26  CE 18 05:    dec $0518
	$CA29  A9 75:       lda #$75
	$CA2B  85 43:       sta $43
	$CA2D  4C AE CB:    jmp _func_0BAE_init_ram
;------------------------------------------
_func_0A30
	$CA30  20 AC F4:    jsr _func_34AC
	$CA33  A5 58:       lda $58
	$CA35  D0 13:       bne +		; $CA4A
	$CA37  A5 43:       lda $43
	$CA39  C9 75:       cmp #$75
	$CA3B  F0 1D:       beq ++		; $CA5A
	$CA3D  C9 74:       cmp #$74
	$CA3F  F0 1E:       beq +++		; $CA5F
	$CA41  C9 73:       cmp #$73
	$CA43  F0 1F:       beq ++++		; $CA64
	$CA45  C9 5F:       cmp #$5F
	$CA47  F0 30:       beq _loc_0A79
	$CA49  60:          rts 

+	$CA4A  85 55:       sta $55
	$CA4C  A9 00:       lda #$00
	$CA4E  85 58:       sta $58
	$CA50  8D 10 05:    sta $0510
_func_0A53
	$CA53  20 B7 CB:    jsr _func_0BB7_init_ppu2
	$CA56  20 AE CB:    jsr _func_0BAE_init_ram
	$CA59  60:          rts 

++	$CA5A  C6 43:       dec $43
	$CA5C  4C AE CB:    jmp _func_0BAE_init_ram

+++	$CA5F  C6 43:       dec $43
	$CA61  4C CA CB:    jmp _func_0BCA

++++	$CA64  C6 43:       dec $43
	$CA66  A5 50:       lda $50
	$CA68  29 01:       and #$01
	$CA6A  0A:          asl a
	$CA6B  AA:          tax 
	$CA6C  A5 21:       lda $21
	$CA6E  9D 07 05:    sta $0507,x
	$CA71  A5 22:       lda $22
	$CA73  9D 08 05:    sta $0508,x
	$CA76  4C F5 CB:    jmp _loc_0BF5
;------------------------------------------
_loc_0A79
	$CA79  A6 52:       ldx $52
	$CA7B  A9 01:       lda #$01
	$CA7D  9D 06 04:    sta $0406,x
	$CA80  85 4E:       sta $4E
	$CA82  A5 51:       lda $51
	$CA84  C9 1C:       cmp #$1C
	$CA86  D0 0C:       bne +		; $CA94
	$CA88  A5 52:       lda $52
	$CA8A  49 01:       eor #$01
	$CA8C  AA:          tax 
	$CA8D  BD 06 04:    lda $0406,x
	$CA90  85 4E:       sta $4E
	$CA92  F0 05:       beq ++		; $CA99
+	$CA94  85 55:       sta $55
	$CA96  4C 53 CA:    jmp _func_0A53

++	$CA99  A9 85:       lda #$85
	$CA9B  85 43:       sta $43
	$CA9D  8D 0B 04:    sta $040B
	$CAA0  A0 00:       ldy #$00
	$CAA2  84 4F:       sty $4F
	$CAA4  86 52:       stx $52
	$CAA6  4C A9 CA:    jmp _func_0AA9
;------------------------------------------
_func_0AA9
	$CAA9  A0 00:       ldy #$00
-	$CAAB  BD 00 04:    lda $0400,x
	$CAAE  99 53 00:    sta $0053,y
	$CAB1  E8:          inx 
	$CAB2  E8:          inx 
	$CAB3  C8:          iny 
	$CAB4  C0 03:       cpy #$03
	$CAB6  D0 F3:       bne -		; $CAAB
	$CAB8  60:          rts 
;------------------------------------------
_func_0AB9
	$CAB9  A0 00:       ldy #$00
-	$CABB  B9 53 00:    lda $0053,y
	$CABE  9D 00 04:    sta $0400,x
	$CAC1  E8:          inx 
	$CAC2  E8:          inx 
	$CAC3  C8:          iny 
	$CAC4  C0 03:       cpy #$03
	$CAC6  D0 F3:       bne -		; $CABB
	$CAC8  60:          rts 
;------------------------------------------
_func_0AC9
	$CAC9  20 AC F4:    jsr _func_34AC
	$CACC  A5 53:       lda $53
	$CACE  C9 01:       cmp #$01
	$CAD0  F0 06:       beq +		; $CAD8
	$CAD2  A5 43:       lda $43
	$CAD4  C9 84:       cmp #$84
	$CAD6  F0 2A:       beq +++		; $CB02
+	$CAD8  A5 43:       lda $43
	$CADA  C9 72:       cmp #$72
	$CADC  B0 3A:       bcs ++++		; $CB18 -> $CB1B
	$CADE  C9 6D:       cmp #$6D
	$CAE0  F0 05:       beq +		; $CAE7
	$CAE2  C9 62:       cmp #$62
	$CAE4  F0 14:       beq ++		; $CAFA
	$CAE6  60:          rts 

+	$CAE7  AD 0B 04:    lda $040B
	$CAEA  F0 0A:       beq +		; $CAF6
	$CAEC  A9 00:       lda #$00
	$CAEE  8D 0B 04:    sta $040B
	$CAF1  C6 55:       dec $55
	$CAF3  20 BD CB:    jsr _func_0BBD_init_ppu2_part
+	$CAF6  20 34 CC:    jsr _func_0C34
	$CAF9  60:          rts 

++	$CAFA  A9 01:       lda #$01
	$CAFC  85 4F:       sta $4F
	$CAFE  20 47 CC:    jsr _func_0C47
	$CB01  60:          rts 

+++	$CB02  A6 52:       ldx $52
	$CB04  A5 53:       lda $53
	$CB06  DD 00 04:    cmp $0400,x
	$CB09  F0 0A:       beq +		; $CB15
	$CB0B  C9 01:       cmp #$01
	$CB0D  F0 06:       beq +		; $CB15
	$CB0F  20 24 CC:    jsr _func_0C24
	$CB12  20 04 CC:    jsr _func_0C04
+	$CB15  C6 43:       dec $43
	$CB17  60:          rts 

++++	$CB18  4C 1B CB:    jmp +		; $CB1B

+	$CB1B  C9 7A:       cmp #$7A
	$CB1D  F0 11:       beq +		; $CB30
	$CB1F  C9 75:       cmp #$75
	$CB21  F0 16:       beq +++		; $CB39
	$CB23  C9 74:       cmp #$74
	$CB25  F0 0F:       beq ++		; $CB36
	$CB27  C9 73:       cmp #$73
	$CB29  F0 2D:       beq _loc_0B58
	$CB2B  C9 72:       cmp #$72
	$CB2D  F0 18:       beq ++++		; $CB47
	$CB2F  60:          rts 

+	$CB30  20 53 CA:    jsr _func_0A53
	$CB33  20 CA CB:    jsr _func_0BCA
++	$CB36  C6 43:       dec $43
	$CB38  60:          rts 

+++	$CB39  20 B7 CB:    jsr _func_0BB7_init_ppu2
	$CB3C  C6 43:       dec $43
	$CB3E  A5 58:       lda $58
	$CB40  D0 04:       bne +		; $CB46 -> rts
	$CB42  A9 08:       lda #$08
	$CB44  85 FD:       sta $FD
+	$CB46  60:          rts 

++++	$CB47  C6 43:       dec $43
	$CB49  A6 53:       ldx $53
	$CB4B  CA:          dex 
	$CB4C  BD 08 C6:    lda _data_0608_indexed,x
	$CB4F  85 00:       sta $00
	$CB51  A9 20:       lda #$20
	$CB53  85 01:       sta $01
	$CB55  4C A6 EB:    jmp _func_2BA6
;------------------------------------------
_loc_0B58
	$CB58  20 9A D1:    jsr _func_119A_hide_bg_and_sprites
	$CB5B  A6 53:       ldx $53
	$CB5D  CA:          dex 
	$CB5E  8A:          txa 
	$CB5F  0A:          asl a
	$CB60  20 07 C8:    jsr _func_0807
	$CB63  A9 0A:       lda #$0A
	$CB65  20 07 C8:    jsr _func_0807
	$CB68  A5 51:       lda $51
	$CB6A  C9 1C:       cmp #$1C
	$CB6C  F0 0D:       beq +		; $CB7B
	$CB6E  A9 76:       lda #$76
	$CB70  85 00:       sta $00
	$CB72  A9 20:       lda #$20
	$CB74  85 01:       sta $01
	$CB76  A9 04:       lda #$04
	$CB78  20 15 C8:    jsr _func_0815
+	$CB7B  A9 01:       lda #$01
	$CB7D  8D 05 05:    sta $0505
	$CB80  20 32 D0:    jsr _func_1032
	$CB83  20 BD CB:    jsr _func_0BBD_init_ppu2_part
	$CB86  A9 BC:       lda #$BC
	$CB88  85 00:       sta $00
	$CB8A  A4 54:       ldy $54
	$CB8C  C8:          iny 
	$CB8D  20 C2 F4:    jsr _func_34C2
	$CB90  A9 00:       lda #$00
	$CB92  85 2C:       sta $2C
	$CB94  A9 80:       lda #$80
	$CB96  88:          dey 
	$CB97  C0 04:       cpy #$04
	$CB99  10 03:       bpl +		; $CB9E
	$CB9B  B9 07 C2:    lda _data_0207_indexed,y
+	$CB9E  85 2E:       sta $2E
	$CBA0  A9 0D:       lda #$0D
	$CBA2  85 45:       sta $45
	$CBA4  A9 02:       lda #$02
	$CBA6  85 00:       sta $00
	$CBA8  20 3C F2:    jsr _func_323C
	$CBAB  C6 43:       dec $43
	$CBAD  60:          rts 
;------------------------------------------
_func_0BAE_init_ram
	# mem[4] = 0, A = 0xFF
	$CBAE  A9 00:       lda #$00
	$CBB0  85 04:       sta $04
	$CBB2  A9 FF:       lda #$FF

	$CBB4  4C 92 F0:    jmp _func_3092_init_ram
;------------------------------------------
_func_0BB7_init_ppu2
	$CBB7  20 9A D1:    jsr _func_119A_hide_bg_and_sprites
	$CBBA  4C B4 F1:    jmp _loc_31B4_clear_ppu_memory
;------------------------------------------
_func_0BBD_init_ppu2_part
	# 0x20B5 as function args
	# Y = 0x55
	$CBBD  A9 B5:       lda #$B5
	$CBBF  85 00:       sta $00
	$CBC1  A9 20:       lda #$20
	$CBC3  85 01:       sta $01
	$CBC5  A4 55:       ldy $55

	$CBC7  4C C2 F4:    jmp _func_34C2
;------------------------------------------
_func_0BCA
	$CBCA  A5 58:       lda $58
	$CBCC  D0 26:       bne ++		; $CBF4 -> rts
	$CBCE  A5 51:       lda $51
	$CBD0  C9 1C:       cmp #$1C
	$CBD2  D0 20:       bne ++		; $CBF4 -> rts
	$CBD4  A6 52:       ldx $52
	$CBD6  A5 53:       lda $53
	$CBD8  DD 00 04:    cmp $0400,x
	$CBDB  D0 17:       bne ++		; $CBF4 -> rts
	$CBDD  A0 00:       ldy #$00
-	$CBDF  B9 AA C6:    lda _data_06AA_indexed,y
	$CBE2  99 31 03:    sta $0331,y
	$CBE5  F0 04:       beq +		; $CBEB
	$CBE7  C8:          iny 
	$CBE8  4C DF CB:    jmp -		; $CBDF

+	$CBEB  A5 52:       lda $52
	$CBED  F0 05:       beq ++		; $CBF4 -> rts
	$CBEF  A9 67:       lda #$67
	$CBF1  8D 45 03:    sta $0345
++	$CBF4  60:          rts 
;------------------------------------------
_loc_0BF5
	$CBF5  A0 00:       ldy #$00
-	$CBF7  B9 C2 C6:    lda _data_06C2_indexed,y
	$CBFA  99 31 03:    sta $0331,y
	$CBFD  F0 04:       beq +		; $CC03 -> rts
	$CBFF  C8:          iny 
	$CC00  4C F7 CB:    jmp -		; $CBF7

+	$CC03  60:          rts 
;------------------------------------------
_func_0C04
	$CC04  A5 58:       lda $58
	$CC06  D0 1B:       bne +		; $CC23 -> rts
	$CC08  A6 52:       ldx $52
	$CC0A  BD 08 04:    lda $0408,x
	$CC0D  D0 14:       bne +		; $CC23 -> rts
	$CC0F  8A:          txa 
	$CC10  A8:          tay 
	$CC11  18:          clc 
	$CC12  0A:          asl a
	$CC13  0A:          asl a
	$CC14  AA:          tax 
	$CC15  B5 25:       lda $25,x
	$CC17  C9 02:       cmp #$02
	$CC19  90 08:       bcc +		; $CC23 -> rts
	$CC1B  99 08 04:    sta $0408,y
	$CC1E  E6 55:       inc $55
	$CC20  20 BD CB:    jsr _func_0BBD_init_ppu2_part
+	$CC23  60:          rts 
;------------------------------------------
_func_0C24
	$CC24  A5 2E:       lda $2E
	$CC26  85 00:       sta $00
	$CC28  A5 52:       lda $52
	$CC2A  09 08:       ora #$08
	$CC2C  85 01:       sta $01
	$CC2E  20 42 F3:    jsr _func_3342
	$CC31  4C 32 D0:    jmp _func_1032
;------------------------------------------
_func_0C34
	$CC34  A9 01:       lda #$01
	$CC36  8D 05 05:    sta $0505
	$CC39  20 32 D0:    jsr _func_1032
	$CC3C  A9 00:       lda #$00
	$CC3E  8D 0B 05:    sta $050B
	$CC41  20 C1 CC:    jsr _func_0CC1
	$CC44  4C F2 D7:    jmp _func_17F2
;------------------------------------------
_func_0C47
	$CC47  A9 00:       lda #$00
	$CC49  AA:          tax 
-	$CC4A  95 59:       sta $59,x
	$CC4C  9D 0D 04:    sta $040D,x
	$CC4F  E8:          inx 
	$CC50  E0 89:       cpx #$89
	$CC52  D0 F6:       bne -		; $CC4A
	$CC54  A9 01:       lda #$01
	$CC56  85 59:       sta $59
	$CC58  85 96:       sta $96
	$CC5A  8D 3E 04:    sta $043E
	$CC5D  8D 51 04:    sta $0451
	$CC60  8D 52 04:    sta $0452
	$CC63  85 9F:       sta $9F
	$CC65  8D 03 05:    sta $0503
	$CC68  A9 04:       lda #$04
	$CC6A  85 97:       sta $97
	$CC6C  A9 58:       lda #$58
	$CC6E  8D 3D 04:    sta $043D
	$CC71  A9 20:       lda #$20
	$CC73  85 A2:       sta $A2
	$CC75  A9 80:       lda #$80
	$CC77  85 18:       sta $18
	$CC79  A9 0A:       lda #$0A
	$CC7B  85 34:       sta $34
	$CC7D  A6 52:       ldx $52
	$CC7F  20 B9 CA:    jsr _func_0AB9
	$CC82  A9 BB:       lda #$BB
	$CC84  85 39:       sta $39
	$CC86  A9 27:       lda #$27
	$CC88  85 44:       sta $44
	$CC8A  A5 53:       lda $53
	$CC8C  C9 01:       cmp #$01
	$CC8E  F0 09:       beq +		; $CC99
	$CC90  C9 03:       cmp #$03
	$CC92  F0 12:       beq ++		; $CCA6
	$CC94  A9 10:       lda #$10
	$CC96  85 FC:       sta $FC
	$CC98  60:          rts 

+	$CC99  A9 38:       lda #$38
	$CC9B  85 36:       sta $36
	$CC9D  A9 40:       lda #$40
	$CC9F  85 43:       sta $43
	$CCA1  A9 02:       lda #$02
	$CCA3  85 FC:       sta $FC
	$CCA5  60:          rts 

++	$CCA6  A9 20:       lda #$20
	$CCA8  85 36:       sta $36
	$CCAA  A9 50:       lda #$50
	$CCAC  8D 3F 04:    sta $043F
	$CCAF  8D 41 04:    sta $0441
	$CCB2  8D 43 04:    sta $0443
	$CCB5  A9 03:       lda #$03
	$CCB7  8D 40 04:    sta $0440
	$CCBA  8D 42 04:    sta $0442
	$CCBD  8D 44 04:    sta $0444
	$CCC0  60:          rts 
;------------------------------------------
_func_0CC1
	$CCC1  A5 53:       lda $53
	$CCC3  38:          sec 
	$CCC4  E9 01:       sbc #$01
	$CCC6  0A:          asl a
	$CCC7  AA:          tax 
	$CCC8  BD A6 C5:    lda _DataPointerTable_05A6,x
	$CCCB  85 09:       sta $09
	$CCCD  BD A7 C5:    lda _DataPointerTable_05A6+1,x
	$CCD0  85 0A:       sta $0A
	$CCD2  A2 00:       ldx #$00
	$CCD4  A0 00:       ldy #$00
-	$CCD6  B1 09:       lda ($09),y
	$CCD8  C9 FE:       cmp #$FE
	$CCDA  F0 17:       beq +		; $CCF3 -> rts
	$CCDC  95 00:       sta $00,x
	$CCDE  C8:          iny 
	$CCDF  E8:          inx 
	$CCE0  E0 05:       cpx #$05
	$CCE2  D0 F2:       bne -		; $CCD6
	$CCE4  84 86:       sty $86
	$CCE6  B1 09:       lda ($09),y
	$CCE8  20 96 F0:    jsr _func_3096
	$CCEB  A4 86:       ldy $86
	$CCED  C8:          iny 
	$CCEE  A2 00:       ldx #$00
	$CCF0  4C D6 CC:    jmp -		; $CCD6

+	$CCF3  60:          rts 
;------------------------------------------
_func_0CF4
	$CCF4  AD 50 04:    lda $0450
	$CCF7  D0 0E:       bne +		; $CD07
	$CCF9  A9 01:       lda #$01
	$CCFB  8D 50 04:    sta $0450
	$CCFE  A9 0A:       lda #$0A
	$CD00  85 34:       sta $34
	$CD02  A9 10:       lda #$10
	$CD04  85 FD:       sta $FD
	$CD06  60:          rts 

+	$CD07  A5 43:       lda $43
	$CD09  C9 58:       cmp #$58
	$CD0B  90 06:       bcc +		; $CD13
	$CD0D  20 AC F4:    jsr _func_34AC
	$CD10  4C 22 CD:    jmp ++		; $CD22

+	$CD13  20 24 CC:    jsr _func_0C24
	$CD16  20 04 CC:    jsr _func_0C04
	$CD19  A9 00:       lda #$00
	$CD1B  85 43:       sta $43
	$CD1D  85 9A:       sta $9A
	$CD1F  4C 53 CA:    jmp _func_0A53

++	$CD22  A5 43:       lda $43
	$CD24  C9 9F:       cmp #$9F
	$CD26  F0 1D:       beq +		; $CD45
	$CD28  C9 9E:       cmp #$9E
	$CD2A  F0 1E:       beq ++		; $CD4A
	$CD2C  C9 9D:       cmp #$9D
	$CD2E  F0 1F:       beq +++		; $CD4F
	$CD30  C9 9C:       cmp #$9C
	$CD32  F0 24:       beq ++++		; $CD58
	$CD34  C9 9B:       cmp #$9B
	$CD36  F0 29:       beq _loc_0D61
	$CD38  C9 90:       cmp #$90
	$CD3A  B0 2A:       bcs _loc_0D66		; $CD66 -> _loc_0D9D
	$CD3C  C9 86:       cmp #$86
	$CD3E  B0 29:       bcs _loc_0D69		; $CD69 -> _loc_0DB1
	$CD40  C9 70:       cmp #$70
	$CD42  B0 28:       bcs _loc_0D6C		; $CD6C -> _loc_0E24
	$CD44  60:          rts 

+	$CD45  C6 43:       dec $43
	$CD47  4C 6F CD:    jmp _loc_0D6F

++	$CD4A  C6 43:       dec $43
	$CD4C  4C 7F CD:    jmp _loc_0D7F

+++	$CD4F  A0 1C:       ldy #$1C
	$CD51  C6 43:       dec $43
	$CD53  A9 06:       lda #$06
	$CD55  4C 23 C8:    jmp _func_0823

++++	$CD58  A0 1C:       ldy #$1C
	$CD5A  C6 43:       dec $43
	$CD5C  A9 08:       lda #$08
	$CD5E  4C 23 C8:    jmp _func_0823
;------------------------------------------
_loc_0D61
	$CD61  C6 43:       dec $43
	$CD63  4C 89 CD:    jmp _loc_0D89
;------------------------------------------
_loc_0D66
	$CD66  4C 9D CD:    jmp _loc_0D9D
;------------------------------------------
_loc_0D69
	$CD69  4C B1 CD:    jmp _loc_0DB1
;------------------------------------------
_loc_0D6C
	$CD6C  4C 24 CE:    jmp _loc_0E24
;------------------------------------------
_loc_0D6F
	$CD6F  A0 0C:       ldy #$0C
	$CD71  A9 0A:       lda #$0A
	$CD73  4C 23 C8:    jmp _func_0823
;------------------------------------------
_loc_0D76
	$CD76  B1 00:       lda ($00),y
	$CD78  99 31 03:    sta $0331,y
	$CD7B  88:          dey 
	$CD7C  10 F8:       bpl _loc_0D76
	$CD7E  60:          rts 
;------------------------------------------
_loc_0D7F
	$CD7F  20 AE CB:    jsr _func_0BAE_init_ram
	$CD82  A0 16:       ldy #$16
	$CD84  A9 0C:       lda #$0C
	$CD86  4C 23 C8:    jmp _func_0823
;------------------------------------------
_loc_0D89
	$CD89  A0 0C:       ldy #$0C
	$CD8B  A9 0E:       lda #$0E
	$CD8D  20 23 C8:    jsr _func_0823
	$CD90  A9 03:       lda #$03
	$CD92  85 02:       sta $02
	$CD94  A9 18:       lda #$18
	$CD96  85 03:       sta $03
	$CD98  A9 50:       lda #$50
	$CD9A  4C 8C F0:    jmp _func_308C
;------------------------------------------
_loc_0D9D
	$CD9D  A9 8D:       lda #$8D
	$CD9F  85 00:       sta $00
	$CDA1  A9 20:       lda #$20
	$CDA3  85 01:       sta $01
	$CDA5  A5 43:       lda $43
	$CDA7  29 01:       and #$01
	$CDA9  F0 03:       beq +		; $CDAE -> _loc_2B92
	$CDAB  4C 89 EB:    jmp _loc_2B89

+	$CDAE  4C 92 EB:    jmp _loc_2B92
;------------------------------------------
_loc_0DB1
	$CDB1  C9 8F:       cmp #$8F
	$CDB3  D0 22:       bne +		; $CDD7
	$CDB5  C6 43:       dec $43
	$CDB7  A0 10:       ldy #$10
	$CDB9  A9 10:       lda #$10
	$CDBB  20 23 C8:    jsr _func_0823
	$CDBE  A9 01:       lda #$01
	$CDC0  85 FE:       sta $FE
	$CDC2  A9 68:       lda #$68
	$CDC4  85 00:       sta $00
	$CDC6  A9 3E:       lda #$3E
	$CDC8  85 01:       sta $01
-	$CDCA  A9 40:       lda #$40
	$CDCC  85 02:       sta $02
	$CDCE  A9 46:       lda #$46
	$CDD0  85 03:       sta $03
	$CDD2  A9 50:       lda #$50
	$CDD4  4C 80 F0:    jmp _func_3080

+	$CDD7  AD 50 02:    lda $0250
	$CDDA  C9 A0:       cmp #$A0
	$CDDC  F0 11:       beq +		; $CDEF
	$CDDE  C9 FF:       cmp #$FF
	$CDE0  F0 11:       beq ++		; $CDF3
	$CDE2  18:          clc 
	$CDE3  69 02:       adc #$02
	$CDE5  85 01:       sta $01
	$CDE7  AD 53 02:    lda $0253
	$CDEA  85 00:       sta $00
	$CDEC  4C CA CD:    jmp -		; $CDCA

+	$CDEF  A9 80:       lda #$80
	$CDF1  85 FE:       sta $FE
++	$CDF3  A9 18:       lda #$18
	$CDF5  85 03:       sta $03
	$CDF7  A9 50:       lda #$50
	$CDF9  20 8C F0:    jsr _func_308C
	$CDFC  A9 EB:       lda #$EB
	$CDFE  85 00:       sta $00
	$CE00  A9 23:       lda #$23
	$CE02  85 01:       sta $01
	$CE04  A9 12:       lda #$12
	$CE06  20 15 C8:    jsr _func_0815
	$CE09  A9 01:       lda #$01
	$CE0B  4C 0E CE:    jmp +		; $CE0E

+ -	$CE0E  08:          php 
	$CE0F  A9 8D:        lda #$8D
	$CE11  85 00:        sta $00
	$CE13  A9 22:        lda #$22
	$CE15  85 01:        sta $01
	$CE17  28:          plp 
	$CE18  D0 05:       bne +		; $CE1F
	$CE1A  A9 16:       lda #$16
	$CE1C  4C 15 C8:    jmp _func_0815

+	$CE1F  A9 14:       lda #$14
	$CE21  4C 15 C8:    jmp _func_0815
;------------------------------------------
_loc_0E24
	$CE24  C9 85:       cmp #$85
	$CE26  F0 07:       beq +		; $CE2F
	$CE28  A5 43:       lda $43
	$CE2A  29 01:       and #$01
	$CE2C  4C 0E CE:    jmp -		; $CE0E

+	$CE2F  A9 04:       lda #$04
	$CE31  85 FD:       sta $FD
	$CE33  A0 04:       ldy #$04
	$CE35  A9 18:       lda #$18
	$CE37  20 23 C8:    jsr _func_0823
	$CE3A  A9 78:       lda #$78
	$CE3C  85 00:       sta $00
	$CE3E  A9 20:       lda #<_loc_0820
	$CE40  85 01:       sta $01
	$CE42  A9 C8:       lda #>_loc_0820
	$CE44  85 02:       sta $02
	$CE46  A9 22:       lda #$22
	$CE48  85 03:       sta $03
	$CE4A  A9 B0:       lda #$B0
	$CE4C  20 80 F0:    jsr _func_3080
	$CE4F  C6 43:       dec $43
	$CE51  A9 A0:       lda #$A0
	$CE53  85 00:       sta $00
	$CE55  A9 30:       lda #$30
	$CE57  85 01:       sta $01
	$CE59  A9 04:       lda #$04
	$CE5B  20 D4 EA:    jsr _func_2AD4
	$CE5E  A9 00:       lda #$00
	$CE60  20 86 F0:    jsr _func_3086
	$CE63  A9 28:       lda #$28
	$CE65  8D E8 02:    sta $02E8
	$CE68  8D EC 02:    sta $02EC
	$CE6B  A9 30:       lda #$30
	$CE6D  8D F0 02:    sta $02F0
	$CE70  8D F8 02:    sta $02F8
	$CE73  A9 38:       lda #$38
	$CE75  8D F4 02:    sta $02F4
	$CE78  8D FC 02:    sta $02FC
	$CE7B  60:          rts 
;------------------------------------------
_func_0E7C
	$CE7C  A5 58:       lda $58
	$CE7E  F0 14:       beq ++		; $CE94
	$CE80  AD 02 01:    lda $0102
	$CE83  D0 06:       bne +		; $CE8B
	$CE85  8D 15 40:    sta $4015
	$CE88  8D 00 01:    sta $0100
+	$CE8B  A5 15:       lda $15
	$CE8D  29 20:       and #$20
	$CE8F  F0 03:       beq ++		; $CE94
	$CE91  4C 2B CF:    jmp _loc_0F2B

++	$CE94  AD 16 05:    lda $0516
	$CE97  D0 15:       bne ++		; $CEAE -> _loc_0F1C
	$CE99  AD 17 05:    lda $0517
	$CE9C  F0 04:       beq +		; $CEA2
	$CE9E  CE 17 05:    dec $0517
	$CEA1  60:          rts 

+	$CEA2  20 04 CC:    jsr _func_0C04
	$CEA5  20 A8 CF:    jsr _func_0FA8
	$CEA8  A5 9A:       lda $9A
	$CEAA  C9 01:       cmp #$01
	$CEAC  D0 03:       bne +++		; $CEB1
++	$CEAE  4C 1C CF:    jmp _loc_0F1C

+++	$CEB1  A5 BF:       lda $BF
	$CEB3  F0 03:       beq +		; $CEB8
	$CEB5  4C 13 CF:    jmp +++		; $CF13

+	$CEB8  A5 96:       lda $96
	$CEBA  C9 FF:       cmp #$FF
	$CEBC  D0 03:       bne +		; $CEC1
	$CEBE  4C 19 CF:    jmp ++++		; $CF19

+	$CEC1  C9 08:       cmp #$08
	$CEC3  F0 11:       beq ++		; $CED6
	$CEC5  C9 04:       cmp #$04
	$CEC7  F0 0D:       beq ++		; $CED6
	$CEC9  A5 58:       lda $58
	$CECB  F0 06:       beq +		; $CED3
	$CECD  20 DA EB:    jsr _func_2BDA
	$CED0  4C D6 CE:    jmp ++		; $CED6

+	$CED3  20 75 D1:    jsr _func_1175
++	$CED6  20 06 EB:    jsr _func_2B06
	$CED9  20 B6 EB:    jsr _func_2BB6
	$CEDC  20 41 D0:    jsr _func_1041
	$CEDF  20 A4 D1:    jsr _func_11A4
	$CEE2  20 5F EA:    jsr _func_2A5F
	$CEE5  20 E5 E1:    jsr _func_21E5
	$CEE8  20 79 EE:    jsr _func_2E79
	$CEEB  A5 53:       lda $53
	$CEED  C9 03:       cmp #$03
	$CEEF  F0 10:       beq _loc_0F01
	$CEF1  C9 04:       cmp #$04
	$CEF3  F0 18:       beq _loc_0F0D
	$CEF5  20 16 DA:    jsr _func_1A16
	$CEF8  20 9A E1:    jsr _func_219A
	$CEFB  20 29 EC:    jsr _func_2C29
	$CEFE  4C 1C CF:    jmp _loc_0F1C
;------------------------------------------
_loc_0F01
	$CF01  20 34 E8:    jsr _func_2834
	$CF04  20 81 E9:    jsr _func_2981
	$CF07  20 29 EC:    jsr _func_2C29
	$CF0A  4C 1C CF:    jmp _loc_0F1C
;------------------------------------------
_loc_0F0D
	$CF0D  20 29 EC:    jsr _func_2C29
	$CF10  4C 1C CF:    jmp _loc_0F1C

+++	$CF13  20 0C EE:    jsr _func_2E0C
	$CF16  4C 1C CF:    jmp _loc_0F1C

++++	$CF19  20 C0 D0:    jsr _func_10C0
_loc_0F1C
	$CF1C  20 42 CF:    jsr _func_0F42
	$CF1F  AD 16 05:    lda $0516
	$CF22  D0 06:       bne +		; $CF2A -> rts
	$CF24  20 4C D0:    jsr _func_104C
	$CF27  20 AC F4:    jsr _func_34AC
+	$CF2A  60:          rts 
;------------------------------------------
_loc_0F2B
	$CF2B  A9 01:       lda #$01
	$CF2D  85 4E:       sta $4E
	$CF2F  8D 12 05:    sta $0512
	$CF32  85 55:       sta $55
	$CF34  A9 20:       lda #$20
	$CF36  85 44:       sta $44
	$CF38  A9 00:       lda #$00
	$CF3A  85 58:       sta $58
	$CF3C  8D 10 05:    sta $0510
	$CF3F  4C 53 CA:    jmp _func_0A53
;------------------------------------------
_func_0F42
	$CF42  A5 15:       lda $15
	$CF44  29 10:       and #$10
	$CF46  F0 47:       beq ++++		; $CF8F
	$CF48  A5 58:       lda $58
	$CF4A  F0 09:       beq +		; $CF55
	$CF4C  A9 00:       lda #$00
	$CF4E  85 58:       sta $58
	$CF50  A5 15:       lda $15
	$CF52  4C 8A C9:    jmp --		; $C98A

+	$CF55  A5 15:       lda $15
	$CF57  CD 14 05:    cmp $0514
	$CF5A  F0 36:       beq _loc_0F92
	$CF5C  8D 14 05:    sta $0514
	$CF5F  AD 16 05:    lda $0516
	$CF62  F0 16:       beq ++		; $CF7A
	$CF64  AD 17 05:    lda $0517
	$CF67  D0 10:       bne +		; $CF79 -> rts
	$CF69  8D 16 05:    sta $0516
	$CF6C  A5 0F:       lda $0F
	$CF6E  85 FC:       sta $FC
	$CF70  A5 11:       lda $11
	$CF72  29 EF:       and #$EF
	$CF74  85 11:       sta $11
	$CF76  4C 87 CF:    jmp +++		; $CF87

+	$CF79  60:          rts 

++	$CF7A  A9 01:       lda #$01
	$CF7C  8D 16 05:    sta $0516
	$CF7F  A5 FC:       lda $FC
	$CF81  85 0F:       sta $0F
	$CF83  A9 00:       lda #$00
	$CF85  85 FC:       sta $FC
+++	$CF87  A9 40:       lda #$40
	$CF89  8D 17 05:    sta $0517
	$CF8C  85 FD:       sta $FD
	$CF8E  60:          rts 

++++	$CF8F  8D 14 05:    sta $0514
_loc_0F92
	$CF92  AD 17 05:    lda $0517
	$CF95  F0 04:       beq +		; $CF9B
	$CF97  CE 17 05:    dec $0517
	$CF9A  60:          rts 

+	$CF9B  AD 16 05:    lda $0516
	$CF9E  D0 01:       bne +		; $CFA1
	$CFA0  60:          rts 

+	$CFA1  A5 11:       lda $11
	$CFA3  09 10:       ora #$10
	$CFA5  85 11:       sta $11
	$CFA7  60:          rts 
;------------------------------------------
_func_0FA8
	$CFA8  A2 00:       ldx #$00
	$CFAA  A0 00:       ldy #$00
-	$CFAC  B5 41:       lda $41,x
	$CFAE  D0 08:       bne +		; $CFB8
	$CFB0  A9 FF:       lda #$FF
	$CFB2  99 C0 02:    sta $02C0,y
	$CFB5  99 C4 02:    sta $02C4,y
+	$CFB8  E8:          inx 
	$CFB9  C8:          iny 
	$CFBA  C8:          iny 
	$CFBB  C8:          iny 
	$CFBC  C8:          iny 
	$CFBD  C8:          iny 
	$CFBE  C8:          iny 
	$CFBF  C8:          iny 
	$CFC0  C8:          iny 
	$CFC1  E0 02:       cpx #$02
	$CFC3  30 E7:       bmi -		; $CFAC
	$CFC5  60:          rts 
;------------------------------------------
_func_0FC6
	$CFC6  A0 00:       ldy #$00
	$CFC8  84 0F:       sty $0F
	$CFCA  20 08 D0:    jsr _func_1008
-	$CFCD  B9 C0 02:    lda $02C0,y
	$CFD0  C9 FF:       cmp #$FF
	$CFD2  D0 25:       bne +		; $CFF9
	$CFD4  A5 05:       lda $05
	$CFD6  99 C3 02:    sta $02C3,y
	$CFD9  18:          clc 
	$CFDA  69 08:       adc #$08
	$CFDC  99 C7 02:    sta $02C7,y
	$CFDF  A5 06:       lda $06
	$CFE1  99 C0 02:    sta $02C0,y
	$CFE4  99 C4 02:    sta $02C4,y
	$CFE7  BD 04 C6:    lda _data_0604_indexed,x
	$CFEA  99 C1 02:    sta $02C1,y
	$CFED  A9 D4:       lda #$D4
	$CFEF  99 C5 02:    sta $02C5,y
	$CFF2  A6 0F:       ldx $0F
	$CFF4  A9 03:       lda #$03
	$CFF6  95 41:       sta $41,x
	$CFF8  60:          rts 

+	$CFF9  C8:          iny 
	$CFFA  C8:          iny 
	$CFFB  C8:          iny 
	$CFFC  C8:          iny 
	$CFFD  C8:          iny 
	$CFFE  C8:          iny 
	$CFFF  C8:          iny 
	$D000  C8:          iny 
	$D001  E6 0F:       inc $0F
	$D003  C0 10:       cpy #$10
	$D005  30 C6:       bmi -		; $CFCD
	$D007  60:          rts 
;------------------------------------------
_func_1008
	$D008  8A:          txa 
	$D009  48:          pha 
	$D00A  98:           tya 
	$D00B  48:           pha 
	$D00C  A5 58:         lda $58
	$D00E  D0 1A:         bne +		; $D02A
	$D010  A5 52:         lda $52
	$D012  09 18:         ora #$18
	$D014  85 01:         sta $01
	$D016  BD 00 C6:      lda DataTableEntry_0600,x
	$D019  85 00:         sta $00
	$D01B  A5 05:         lda $05
	$D01D  48:            pha 
	$D01E  A5 06:          lda $06
	$D020  48:             pha 
	$D021  20 42 F3:        jsr _func_3342
	$D024  68:             pla 
	$D025  85 06:          sta $06
	$D027  68:            pla 
	$D028  85 05:         sta $05
+	$D02A  20 32 D0:      jsr _func_1032
	$D02D  68:           pla 
	$D02E  A8:           tay 
	$D02F  68:          pla 
	$D030  AA:          tax 
	$D031  60:          rts 
;------------------------------------------
_func_1032
	$D032  AD 05 05:    lda $0505
	$D035  09 01:       ora #$01
	$D037  8D 05 05:    sta $0505
	$D03A  A9 F9:       lda #$F9
	$D03C  85 00:       sta $00
	$D03E  4C 35 F4:    jmp _loc_3435
;------------------------------------------
_func_1041
	$D041  A5 2E:       lda $2E
	$D043  C9 10:       cmp #$10
	$D045  10 04:       bpl +		; $D04B -> rts
	$D047  A9 20:       lda #$20
	$D049  85 FC:       sta $FC
+	$D04B  60:          rts 
;------------------------------------------
_func_104C
	$D04C  A5 9A:       lda $9A
	$D04E  D0 42:       bne ++++		; $D092
	$D050  A6 53:       ldx $53
	$D052  E0 04:       cpx #$04
	$D054  F0 0D:       beq +		; $D063
	$D056  A5 5A:       lda $5A
	$D058  F0 65:       beq _loc_10BF		; $D0BF -> rts
	$D05A  CA:          dex 
	$D05B  BD FA C1:    lda _data_01FA_indexed,x
	$D05E  C5 59:       cmp $59
	$D060  F0 12:       beq ++		; $D074
	$D062  60:          rts 

+	$D063  A2 00:       ldx #$00
-	$D065  B5 C1:       lda $C1,x
	$D067  F0 56:       beq _loc_10BF		; $D0BF -> rts
	$D069  E8:          inx 
	$D06A  8E 4F 04:    stx $044F
	$D06D  E0 08:       cpx #$08
	$D06F  D0 F4:       bne -		; $D065
	$D071  4C 86 D0:    jmp +++		; $D086

++	$D074  20 E1 EA:    jsr _func_2AE1
	$D077  A9 04:       lda #$04
	$D079  20 D4 EA:    jsr _func_2AD4
	$D07C  20 CD EA:    jsr _func_2ACD
	$D07F  20 88 F0:    jsr _func_3088
	$D082  A9 02:       lda #$02
	$D084  85 FD:       sta $FD
+++	$D086  A9 00:       lda #$00
	$D088  85 FC:       sta $FC
	$D08A  A9 01:       lda #$01
	$D08C  85 9A:       sta $9A
	$D08E  A9 00:       lda #$00
	$D090  85 3A:       sta $3A
++++	$D092  A5 3A:       lda $3A
	$D094  D0 29:       bne _loc_10BF		; $D0BF -> rts
	$D096  E6 53:       inc $53
	$D098  A5 53:       lda $53
	$D09A  C9 02:       cmp #$02
	$D09C  F0 07:       beq +		; $D0A5
	$D09E  C9 05:       cmp #$05
	$D0A0  B0 08:       bcs ++		; $D0AA
	$D0A2  4C B5 D0:    jmp +++		; $D0B5

+	$D0A5  E6 53:       inc $53
	$D0A7  4C B5 D0:    jmp +++		; $D0B5

++	$D0AA  A9 01:       lda #$01
	$D0AC  85 53:       sta $53
	$D0AE  E6 54:       inc $54
	$D0B0  A9 A0:       lda #$A0
	$D0B2  85 43:       sta $43
	$D0B4  60:          rts 

+++	$D0B5  A9 8D:       lda #$8D
	$D0B7  85 43:       sta $43
	$D0B9  A9 00:       lda #$00
	$D0BB  85 4F:       sta $4F
	$D0BD  85 9A:       sta $9A
_loc_10BF
	$D0BF  60:          rts 
;------------------------------------------
_func_10C0
	$D0C0  A9 00:       lda #$00
	$D0C2  85 FC:       sta $FC
	$D0C4  A9 10:       lda #$10
	$D0C6  20 E6 D9:    jsr _func_19E6
	$D0C9  F0 6D:       beq ++++		; $D138 -> rts
	$D0CB  A5 98:       lda $98
	$D0CD  C9 FF:       cmp #$FF
	$D0CF  F0 5F:       beq +++		; $D130
	$D0D1  A5 98:       lda $98
	$D0D3  D0 0F:       bne ++		; $D0E4
	$D0D5  A5 58:       lda $58
	$D0D7  D0 04:       bne +		; $D0DD
	$D0D9  A9 80:       lda #$80
	$D0DB  85 FE:       sta $FE
+	$D0DD  A9 40:       lda #$40
	$D0DF  85 3A:       sta $3A
	$D0E1  E6 98:       inc $98
	$D0E3  60:          rts 

++	$D0E4  A5 3A:       lda $3A
	$D0E6  F0 10:       beq ++		; $D0F8
	$D0E8  C9 0E:       cmp #$0E
	$D0EA  90 4C:       bcc ++++		; $D138 -> rts
	$D0EC  A5 58:       lda $58
	$D0EE  D0 04:       bne +		; $D0F4
	$D0F0  A9 01:       lda #$01
	$D0F2  85 FF:       sta $FF
+	$D0F4  A9 00:       lda #$00
	$D0F6  85 3A:       sta $3A
++	$D0F8  AD 01 02:    lda $0201
	$D0FB  C9 6C:       cmp #$6C
	$D0FD  B0 02:       bcs +		; $D101
	$D0FF  A9 6C:       lda #$6C
+	$D101  18:          clc 
	$D102  69 04:       adc #$04
	$D104  C9 7C:       cmp #$7C
	$D106  90 17:       bcc ++		; $D11F
	$D108  E6 98:       inc $98
	$D10A  A5 98:       lda $98
	$D10C  C9 05:       cmp #$05
	$D10E  F0 05:       beq +		; $D115
	$D110  A9 6C:       lda #$6C
	$D112  4C 1F D1:    jmp ++		; $D11F

+	$D115  A5 58:       lda $58
	$D117  F0 04:       beq +		; $D11D
	$D119  A9 7D:       lda #$7D
	$D11B  85 3A:       sta $3A
+	$D11D  A9 7C:       lda #$7C
++	$D11F  85 02:       sta $02
	$D121  20 E1 EA:    jsr _func_2AE1
	$D124  20 CD EA:    jsr _func_2ACD
	$D127  20 82 F0:    jsr _func_3082
	$D12A  A5 98:       lda $98
	$D12C  C9 05:       cmp #$05
	$D12E  D0 08:       bne ++++		; $D138 -> rts
+++	$D130  A9 FF:       lda #$FF
	$D132  85 98:       sta $98
	$D134  A5 3A:       lda $3A
	$D136  F0 01:       beq _loc_1139
++++	$D138  60:          rts 
;------------------------------------------
_loc_1139
	$D139  A6 52:       ldx $52
	$D13B  20 B9 CA:    jsr _func_0AB9
	$D13E  A5 55:       lda $55
	$D140  D0 09:       bne +		; $D14B
	$D142  A9 01:       lda #$01
	$D144  85 4E:       sta $4E
	$D146  A9 87:       lda #$87
	$D148  85 43:       sta $43
	$D14A  60:          rts 

+	$D14B  A5 51:       lda $51
	$D14D  C9 1C:       cmp #$1C
	$D14F  D0 18:       bne ++		; $D169
	$D151  A5 52:       lda $52
	$D153  49 01:       eor #$01
	$D155  AA:          tax 
	$D156  86 52:       stx $52
	$D158  BD 06 04:    lda $0406,x
	$D15B  F0 09:       beq +		; $D166
	$D15D  8A:          txa 
	$D15E  49 01:       eor #$01
	$D160  AA:          tax 
	$D161  86 52:       stx $52
	$D163  4C 69 D1:    jmp ++		; $D169

+	$D166  20 A9 CA:    jsr _func_0AA9
++	$D169  A9 87:       lda #$87
	$D16B  85 43:       sta $43
	$D16D  8D 0B 04:    sta $040B
	$D170  A9 00:       lda #$00
	$D172  85 4F:       sta $4F
	$D174  60:          rts 
;------------------------------------------
_func_1175
	$D175  A5 52:       lda $52
	$D177  0A:          asl a
	$D178  AA:          tax 
	$D179  B5 15:       lda $15,x
	$D17B  29 0F:       and #$0F
	$D17D  85 56:       sta $56
	$D17F  F0 08:       beq +		; $D189
	$D181  4A:          lsr a
	$D182  4A:          lsr a
	$D183  D0 04:       bne +		; $D189
	$D185  A5 56:       lda $56
	$D187  85 57:       sta $57
+	$D189  A5 96:       lda $96
	$D18B  C9 01:       cmp #$01
	$D18D  D0 0A:       bne +		; $D199 -> rts
	$D18F  B5 15:       lda $15,x
	$D191  29 80:       and #$80
	$D193  F0 04:       beq +		; $D199 -> rts
	$D195  A9 04:       lda #$04
	$D197  85 96:       sta $96
+	$D199  60:          rts 
;------------------------------------------
_func_119A_hide_bg_and_sprites
	$D19A  A5 11:       lda $11
	$D19C  29 E7:       and #$E7
	$D19E  8D 01 20:    sta $2001
	$D1A1  85 11:       sta $11
	$D1A3  60:          rts 
;------------------------------------------
_func_11A4
	$D1A4  A5 96:       lda $96
	$D1A6  C9 01:       cmp #$01
	$D1A8  F0 11:       beq +		; $D1BB
-	$D1AA  C9 02:       cmp #$02
	$D1AC  F0 15:       beq ++		; $D1C3 -> _loc_137E
	$D1AE  C9 04:       cmp #$04
	$D1B0  F0 14:       beq +++		; $D1C6 -> _loc_1547
	$D1B2  C9 08:       cmp #$08
	$D1B4  F0 13:       beq ++++		; $D1C9 -> _loc_1697
	$D1B6  C9 0A:       cmp #$0A
	$D1B8  F0 12:       beq _loc_11CC		; $D1CC -> _loc_16C6
	$D1BA  60:          rts 

+	$D1BB  20 CF D1:    jsr _func_11CF
	$D1BE  A5 96:       lda $96
	$D1C0  4C AA D1:    jmp -		; $D1AA

++	$D1C3  4C 7E D3:    jmp _loc_137E

+++	$D1C6  4C 47 D5:    jmp _loc_1547

++++	$D1C9  4C 97 D6:    jmp _loc_1697
;------------------------------------------
_loc_11CC
	$D1CC  4C C6 D6:    jmp _loc_16C6
;------------------------------------------
_func_11CF
	$D1CF  A5 56:       lda $56
	$D1D1  C9 01:       cmp #$01
	$D1D3  F0 10:       beq ++		; $D1E5
	$D1D5  C9 02:       cmp #$02
	$D1D7  F0 0C:       beq ++		; $D1E5
	$D1D9  C9 04:       cmp #$04
	$D1DB  F0 05:       beq +		; $D1E2 -> _loc_128B
	$D1DD  C9 08:       cmp #$08
	$D1DF  F0 01:       beq +		; $D1E2 -> _loc_128B
	$D1E1  60:          rts 

+	$D1E2  4C 8B D2:    jmp _loc_128B

++	$D1E5  A9 DB:       lda #$DB
	$D1E7  85 0A:       sta $0A
	$D1E9  A9 36:       lda #$36
	$D1EB  20 E8 D9:    jsr _func_19E8
	$D1EE  D0 03:       bne +		; $D1F3
	$D1F0  4C 75 D2:    jmp _loc_1275

+	$D1F3  20 90 D9:    jsr _func_1990
	$D1F6  F0 01:       beq +		; $D1F9
	$D1F8  60:          rts 

+	$D1F9  A5 56:       lda $56
	$D1FB  C9 02:       cmp #$02
	$D1FD  F0 06:       beq +		; $D205
	$D1FF  EE 03 02:    inc $0203
	$D202  4C 08 D2:    jmp ++		; $D208

+	$D205  CE 03 02:    dec $0203
++	$D208  20 CB D2:    jsr _func_12CB
	$D20B  85 5A:       sta $5A
	$D20D  AD 00 02:    lda $0200
	$D210  20 16 E0:    jsr _func_2016
	$D213  85 59:       sta $59
	$D215  20 EB D8:    jsr _func_18EB
	$D218  F0 19:       beq ++		; $D233
	$D21A  A6 53:       ldx $53
	$D21C  E0 01:       cpx #$01
	$D21E  D0 07:       bne +		; $D227
	$D220  18:          clc 
	$D221  6D 00 02:    adc $0200
	$D224  8D 00 02:    sta $0200
+	$D227  20 6A D3:    jsr _func_136A
	$D22A  C9 00:       cmp #$00
	$D22C  F0 05:       beq ++		; $D233
	$D22E  A9 08:       lda #$08
	$D230  85 96:       sta $96
	$D232  60:          rts 

++	$D233  A5 9B:       lda $9B
	$D235  D0 07:       bne +		; $D23E
	$D237  A9 01:       lda #$01
	$D239  85 9B:       sta $9B
	$D23B  4C 75 D2:    jmp _loc_1275

+	$D23E  A9 08:       lda #$08
	$D240  85 FF:       sta $FF
	$D242  A9 00:       lda #$00
	$D244  85 9B:       sta $9B
	$D246  A5 97:       lda $97
	$D248  F0 18:       beq +++		; $D262
	$D24A  C9 08:       cmp #$08
	$D24C  F0 1F:       beq ++++		; $D26D
	$D24E  A9 04:       lda #$04
	$D250  85 97:       sta $97
	$D252  A5 85:       lda $85
	$D254  F0 05:       beq +		; $D25B
	$D256  A9 00:       lda #$00
	$D258  4C 5D D2:    jmp ++		; $D25D

+	$D25B  A9 08:       lda #$08
++	$D25D  85 97:       sta $97
	$D25F  4C 75 D2:    jmp _loc_1275

+++	$D262  A9 04:       lda #$04
	$D264  85 97:       sta $97
	$D266  A9 00:       lda #$00
	$D268  85 85:       sta $85
	$D26A  4C 75 D2:    jmp _loc_1275

++++	$D26D  A9 04:       lda #$04
	$D26F  85 97:       sta $97
	$D271  A9 01:       lda #$01
	$D273  85 85:       sta $85
_loc_1275
	$D275  20 E1 EA:    jsr _func_2AE1
	$D278  A5 97:       lda $97
	$D27A  85 02:       sta $02
	$D27C  20 CD EA:    jsr _func_2ACD
	$D27F  A5 56:       lda $56
	$D281  C9 02:       cmp #$02
	$D283  F0 03:       beq +		; $D288 -> _func_3088
	$D285  4C 82 F0:    jmp _func_3082

+	$D288  4C 88 F0:    jmp _func_3088
;------------------------------------------
_loc_128B
	$D28B  20 E1 EA:    jsr _func_2AE1
	$D28E  A9 86:       lda #<DataTableEntry_0186
	$D290  85 02:       sta $02
	$D292  A9 C1:       lda #>DataTableEntry_0186
	$D294  85 03:       sta $03
	$D296  20 EB EF:    jsr _func_2FEB
	$D299  A5 53:       lda $53
	$D29B  38:          sec 
	$D29C  E9 01:       sbc #$01
	$D29E  0A:          asl a
	$D29F  AA:          tax 
	$D2A0  BD 7B C4:    lda _data_047B_indexed,x
	$D2A3  85 04:       sta $04
	$D2A5  BD 7C C4:    lda _data_047C_indexed,x
	$D2A8  85 05:       sta $05
	$D2AA  BD 83 C4:    lda _data_0483_indexed,x
	$D2AD  85 06:       sta $06
	$D2AF  BD 84 C4:    lda _data_0484_indexed,x
	$D2B2  85 07:       sta $07
	$D2B4  20 AD D8:    jsr _func_18AD
	$D2B7  F0 11:       beq +		; $D2CA -> rts
	$D2B9  A5 00:       lda $00
	$D2BB  38:          sec 
	$D2BC  E9 04:       sbc #$04
	$D2BE  85 A1:       sta $A1
	$D2C0  A9 02:       lda #$02
	$D2C2  85 96:       sta $96
	$D2C4  A9 00:       lda #$00
	$D2C6  85 5B:       sta $5B
	$D2C8  85 5C:       sta $5C
+	$D2CA  60:          rts 
;------------------------------------------
_func_12CB
	$D2CB  20 E1 EA:    jsr _func_2AE1
	$D2CE  A5 96:       lda $96
	$D2D0  C9 04:       cmp #$04
	$D2D2  F0 09:       beq +		; $D2DD
	$D2D4  C9 08:       cmp #$08
	$D2D6  F0 05:       beq +		; $D2DD
	$D2D8  A9 2C:       lda #$2C
	$D2DA  4C DF D2:    jmp ++		; $D2DF

+	$D2DD  A9 4A:       lda #$4A
++	$D2DF  20 E8 EF:    jsr _func_2FE8
	$D2E2  A5 53:       lda $53
	$D2E4  C9 01:       cmp #$01
	$D2E6  F0 08:       beq +		; $D2F0
	$D2E8  38:          sec 
	$D2E9  E9 01:       sbc #$01
	$D2EB  0A:          asl a
	$D2EC  AA:          tax 
	$D2ED  4C FD D2:    jmp ++		; $D2FD

+	$D2F0  A9 1A:       lda #$1A
	$D2F2  20 31 C8:    jsr _func_0831
	$D2F5  20 1A D9:    jsr _func_191A
	$D2F8  85 0C:       sta $0C
	$D2FA  4C 23 D3:    jmp +++		; $D323

++	$D2FD  BD 6B C4:    lda _data_046B_indexed,x
	$D300  85 04:       sta $04
	$D302  BD 6C C4:    lda _data_046C_indexed,x
	$D305  85 05:       sta $05
	$D307  BD 73 C4:    lda _data_0473_indexed,x
	$D30A  85 06:       sta $06
	$D30C  BD 74 C4:    lda _data_0474_indexed,x
	$D30F  85 07:       sta $07
	$D311  20 AD D8:    jsr _func_18AD
	$D314  85 0C:       sta $0C
	$D316  D0 0B:       bne +++		; $D323
	$D318  A5 53:       lda $53
	$D31A  C9 03:       cmp #$03
	$D31C  D0 05:       bne +++		; $D323
	$D31E  20 26 D3:    jsr _func_1326
	$D321  85 0C:       sta $0C
+++	$D323  A5 0C:       lda $0C
	$D325  60:          rts 
;------------------------------------------
_func_1326
	$D326  A9 2A:       lda #$2A
	$D328  20 47 C8:    jsr _func_0847
	$D32B  A9 00:       lda #$00
	$D32D  85 D2:       sta $D2
-	$D32F  A5 D2:       lda $D2
	$D331  C9 06:       cmp #$06
	$D333  F0 30:       beq +++		; $D365
	$D335  AA:          tax 
	$D336  BC CC C2:    ldy _data_02CC_indexed,x
	$D339  B9 00 02:    lda $0200,y
	$D33C  C9 FF:       cmp #$FF
	$D33E  F0 0E:       beq +		; $D34E
	$D340  85 01:       sta $01
	$D342  B9 03 02:    lda $0203,y
	$D345  85 00:       sta $00
	$D347  20 EF EF:    jsr _func_2FEF
	$D34A  C9 01:       cmp #$01
	$D34C  F0 05:       beq ++		; $D353
+	$D34E  E6 D2:       inc $D2
	$D350  4C 2F D3:    jmp -		; $D32F

++	$D353  A5 D2:       lda $D2
	$D355  C9 03:       cmp #$03
	$D357  B0 05:       bcs +		; $D35E
	$D359  A9 01:       lda #$01
	$D35B  4C 60 D3:    jmp ++		; $D360

+	$D35E  A9 02:       lda #$02
++	$D360  85 DA:       sta $DA
	$D362  A9 01:       lda #$01
	$D364  60:          rts 

+++	$D365  A9 00:       lda #$00
	$D367  85 DA:       sta $DA
	$D369  60:          rts 
;------------------------------------------
_func_136A
	$D36A  A5 53:       lda $53
	$D36C  C9 01:       cmp #$01
	$D36E  F0 03:       beq +		; $D373
	$D370  4C 7B D3:    jmp ++		; $D37B

+	$D373  A9 1C:       lda #$1C
	$D375  20 31 C8:    jsr _func_0831
	$D378  4C AD D8:    jmp _func_18AD

++	$D37B  A9 01:       lda #$01
	$D37D  60:          rts 
;------------------------------------------
_loc_137E
	$D37E  A5 56:       lda $56
	$D380  C9 08:       cmp #$08
	$D382  F0 0A:       beq ++		; $D38E
	$D384  C9 04:       cmp #$04
	$D386  F0 03:       beq +		; $D38B -> _loc_1432
	$D388  4C CF D4:    jmp _loc_14CF

+	$D38B  4C 32 D4:    jmp _loc_1432

++	$D38E  A5 5A:       lda $5A
	$D390  F0 0A:       beq +		; $D39C
	$D392  20 E1 EA:    jsr _func_2AE1
	$D395  C6 01:       dec $01
	$D397  20 0A D5:    jsr _func_150A
	$D39A  D0 31:       bne ++		; $D3CD -> _loc_14CF
+	$D39C  A9 24:       lda #$24
	$D39E  85 0A:       sta $0A
	$D3A0  A9 49:       lda #$49
	$D3A2  20 E8 D9:    jsr _func_19E8
	$D3A5  D0 08:       bne +		; $D3AF
	$D3A7  AD 00 02:    lda $0200
	$D3AA  85 01:       sta $01
	$D3AC  4C CF D4:    jmp _loc_14CF

+	$D3AF  20 0A D5:    jsr _func_150A
	$D3B2  F0 33:       beq _loc_13E7
	$D3B4  C9 02:       cmp #$02
	$D3B6  D0 03:       bne +		; $D3BB
	$D3B8  4C CF D4:    jmp _loc_14CF

+	$D3BB  A5 5B:       lda $5B
	$D3BD  F0 11:       beq +++		; $D3D0
	$D3BF  18:          clc 
	$D3C0  69 01:       adc #$01
	$D3C2  C9 10:       cmp #$10
	$D3C4  F0 0C:       beq ++++		; $D3D2
	$D3C6  90 0A:       bcc ++++		; $D3D2
	$D3C8  A9 10:       lda #$10
	$D3CA  4C D2 D3:    jmp ++++		; $D3D2

++	$D3CD  4C CF D4:    jmp _loc_14CF

+++	$D3D0  A9 01:       lda #$01
++++	$D3D2  85 5B:       sta $5B
	$D3D4  AA:          tax 
	$D3D5  CA:          dex 
	$D3D6  BD 47 C1:    lda _data_0147_indexed,x
	$D3D9  85 02:       sta $02
	$D3DB  A9 00:       lda #$00
	$D3DD  85 5A:       sta $5A
	$D3DF  85 5C:       sta $5C
	$D3E1  20 EE D4:    jsr _func_14EE
	$D3E4  4C 0D D4:    jmp _loc_140D
;------------------------------------------
_loc_13E7
	$D3E7  A5 5C:       lda $5C
	$D3E9  F0 0E:       beq +		; $D3F9
	$D3EB  18:          clc 
	$D3EC  69 01:       adc #$01
	$D3EE  C9 06:       cmp #$06
	$D3F0  F0 09:       beq ++		; $D3FB
	$D3F2  90 07:       bcc ++		; $D3FB
	$D3F4  A9 01:       lda #$01
	$D3F6  4C FB D3:    jmp ++		; $D3FB

+	$D3F9  A9 02:       lda #$02
++	$D3FB  85 5C:       sta $5C
	$D3FD  AA:          tax 
	$D3FE  CA:          dex 
	$D3FF  BD 59 C1:    lda _data_0159_indexed,x
	$D402  85 02:       sta $02
	$D404  A9 00:       lda #$00
	$D406  85 5A:       sta $5A
	$D408  85 5B:       sta $5B
	$D40A  20 EE D4:    jsr _func_14EE
_loc_140D
	$D40D  A5 A1:       lda $A1
	$D40F  85 00:       sta $00
	$D411  8D 03 02:    sta $0203
	$D414  20 D1 EA:    jsr _func_2AD1
	$D417  A9 00:       lda #$00
	$D419  85 04:       sta $04
	$D41B  A5 02:       lda $02
	$D41D  C9 54:       cmp #$54
	$D41F  F0 05:       beq +		; $D426
	$D421  A9 00:       lda #$00
	$D423  4C 2C D4:    jmp ++		; $D42C

+	$D426  A9 24:       lda #$24
	$D428  85 02:       sta $02
	$D42A  A9 01:       lda #$01
++	$D42C  20 96 F0:    jsr _func_3096
	$D42F  4C CF D4:    jmp _loc_14CF
;------------------------------------------
_loc_1432
	$D432  A5 5A:       lda $5A
	$D434  F0 0F:       beq +		; $D445
	$D436  20 E1 EA:    jsr _func_2AE1
	$D439  E6 01:       inc $01
	$D43B  20 0A D5:    jsr _func_150A
	$D43E  C9 01:       cmp #$01
	$D440  F0 03:       beq +		; $D445
	$D442  4C CF D4:    jmp _loc_14CF

+	$D445  A9 24:       lda #$24
	$D447  85 0A:       sta $0A
	$D449  A9 49:       lda #$49
	$D44B  85 0B:       sta $0B
	$D44D  20 E6 D9:    jsr _func_19E6
	$D450  D0 08:       bne +		; $D45A
	$D452  AD 00 02:    lda $0200
	$D455  85 01:       sta $01
	$D457  4C CF D4:    jmp _loc_14CF

+	$D45A  20 0A D5:    jsr _func_150A
	$D45D  F0 2C:       beq ++++		; $D48B
	$D45F  C9 02:       cmp #$02
	$D461  F0 28:       beq ++++		; $D48B
	$D463  A5 5B:       lda $5B
	$D465  F0 0A:       beq +		; $D471
	$D467  38:          sec 
	$D468  E9 01:       sbc #$01
	$D46A  C9 01:       cmp #$01
	$D46C  90 08:       bcc ++		; $D476
	$D46E  4C 78 D4:    jmp +++		; $D478

+	$D471  A9 0D:       lda #$0D
	$D473  4C 78 D4:    jmp +++		; $D478

++	$D476  A9 01:       lda #$01
+++	$D478  85 5B:       sta $5B
	$D47A  AA:          tax 
	$D47B  CA:          dex 
	$D47C  BD 47 C1:    lda _data_0147_indexed,x
	$D47F  85 02:       sta $02
	$D481  A9 03:       lda #$03
	$D483  85 5C:       sta $5C
	$D485  20 F9 D4:    jsr _func_14F9
	$D488  4C B1 D4:    jmp _loc_14B1

++++	$D48B  A5 5C:       lda $5C
	$D48D  F0 0E:       beq +		; $D49D
	$D48F  18:          clc 
	$D490  69 01:       adc #$01
	$D492  C9 06:       cmp #$06
	$D494  F0 09:       beq ++		; $D49F
	$D496  90 07:       bcc ++		; $D49F
	$D498  A9 01:       lda #$01
	$D49A  4C 9F D4:    jmp ++		; $D49F

+	$D49D  A9 01:       lda #$01
++	$D49F  85 5C:       sta $5C
	$D4A1  38:          sec 
	$D4A2  E9 01:       sbc #$01
	$D4A4  AA:          tax 
	$D4A5  BD 59 C1:    lda _data_0159_indexed,x
	$D4A8  85 02:       sta $02
	$D4AA  A9 00:       lda #$00
	$D4AC  85 5B:       sta $5B
	$D4AE  20 F9 D4:    jsr _func_14F9
_loc_14B1
	$D4B1  A5 A1:       lda $A1
	$D4B3  8D 03 02:    sta $0203
	$D4B6  85 00:       sta $00
	$D4B8  20 CD EA:    jsr _func_2ACD
	$D4BB  A5 02:       lda $02
	$D4BD  C9 54:       cmp #$54
	$D4BF  F0 05:       beq +		; $D4C6
	$D4C1  A9 00:       lda #$00
	$D4C3  4C CC D4:    jmp ++		; $D4CC

+	$D4C6  A9 24:       lda #$24
	$D4C8  85 02:       sta $02
	$D4CA  A9 01:       lda #$01
++	$D4CC  20 96 F0:    jsr _func_3096
_loc_14CF
	$D4CF  20 CB D2:    jsr _func_12CB
	$D4D2  85 5A:       sta $5A
	$D4D4  F0 17:       beq +		; $D4ED -> rts
	$D4D6  AD 00 02:    lda $0200
	$D4D9  18:          clc 
	$D4DA  69 08:       adc #$08
	$D4DC  20 16 E0:    jsr _func_2016
	$D4DF  85 59:       sta $59
	$D4E1  A9 01:       lda #$01
	$D4E3  85 96:       sta $96
	$D4E5  A9 00:       lda #$00
	$D4E7  85 5C:       sta $5C
	$D4E9  85 5B:       sta $5B
	$D4EB  85 85:       sta $85
+	$D4ED  60:          rts 
;------------------------------------------
_func_14EE
	$D4EE  AD 00 02:    lda $0200
	$D4F1  38:          sec 
	$D4F2  E9 01:       sbc #$01
	$D4F4  85 01:       sta $01
	$D4F6  4C 01 D5:    jmp +		; $D501
;------------------------------------------
_func_14F9
	$D4F9  AD 00 02:    lda $0200
	$D4FC  18:          clc 
	$D4FD  69 01:       adc #$01
	$D4FF  85 01:       sta $01
+	$D501  29 06:       and #$06
	$D503  D0 04:       bne +		; $D509 -> rts
	$D505  A9 08:       lda #$08
	$D507  85 FF:       sta $FF
+	$D509  60:          rts 
;------------------------------------------
_func_150A
	$D50A  20 E1 EA:    jsr _func_2AE1
	$D50D  A9 2C:       lda #$2C
	$D50F  20 E8 EF:    jsr _func_2FE8
	$D512  A5 53:       lda $53
	$D514  38:          sec 
	$D515  E9 01:       sbc #$01
	$D517  0A:          asl a
	$D518  AA:          tax 
	$D519  BD 8B C4:    lda _data_048B_indexed,x
	$D51C  85 04:       sta $04
	$D51E  BD 8C C4:    lda _data_048C_indexed,x
	$D521  85 05:       sta $05
	$D523  A9 43:       lda #<_data_0143
	$D525  85 06:       sta $06
	$D527  A9 C1:       lda #>_data_0143
	$D529  85 07:       sta $07
	$D52B  20 AD D8:    jsr _func_18AD
	$D52E  85 08:       sta $08
	$D530  A5 53:       lda $53
	$D532  C9 01:       cmp #$01
	$D534  D0 0E:       bne +		; $D544
	$D536  A9 1E:       lda #$1E
	$D538  20 31 C8:    jsr _func_0831
	$D53B  20 AD D8:    jsr _func_18AD
	$D53E  F0 04:       beq +		; $D544
	$D540  A9 02:       lda #$02
	$D542  85 08:       sta $08
+	$D544  A5 08:       lda $08
	$D546  60:          rts 
;------------------------------------------
_loc_1547
	$D547  A9 FF:       lda #$FF
	$D549  20 E6 D9:    jsr _func_19E6
	$D54C  C9 00:       cmp #$00
	$D54E  D0 01:       bne +		; $D551
	$D550  60:          rts 

+	$D551  A5 94:       lda $94
	$D553  C9 F0:       cmp #$F0
	$D555  90 03:       bcc +		; $D55A
	$D557  4C 0D D6:    jmp _loc_160D

+	$D55A  20 90 D9:    jsr _func_1990
	$D55D  F0 11:       beq +++		; $D570
	$D55F  A5 56:       lda $56
	$D561  C9 01:       cmp #$01
	$D563  D0 05:       bne +		; $D56A
	$D565  A9 02:       lda #$02
	$D567  4C 6C D5:    jmp ++		; $D56C

+	$D56A  A9 01:       lda #$01
++	$D56C  85 56:       sta $56
	$D56E  85 57:       sta $57
+++	$D570  AD 00 02:    lda $0200
	$D573  85 01:       sta $01
	$D575  A9 00:       lda #$00
	$D577  20 72 EF:    jsr _func_2F72
	$D57A  A5 01:       lda $01
	$D57C  8D 00 02:    sta $0200
	$D57F  A5 56:       lda $56
	$D581  C9 01:       cmp #$01
	$D583  F0 07:       beq +		; $D58C
	$D585  C9 02:       cmp #$02
	$D587  F0 18:       beq ++		; $D5A1
	$D589  4C B3 D5:    jmp +++		; $D5B3

+	$D58C  A5 9E:       lda $9E
	$D58E  F0 0A:       beq +		; $D59A
	$D590  EE 03 02:    inc $0203
	$D593  A9 00:       lda #$00
	$D595  85 9E:       sta $9E
	$D597  4C B3 D5:    jmp +++		; $D5B3

+	$D59A  A9 01:       lda #$01
	$D59C  85 9E:       sta $9E
	$D59E  4C B3 D5:    jmp +++		; $D5B3

++	$D5A1  A5 9E:       lda $9E
	$D5A3  F0 0A:       beq +		; $D5AF
	$D5A5  CE 03 02:    dec $0203
	$D5A8  A9 00:       lda #$00
	$D5AA  85 9E:       sta $9E
	$D5AC  4C B3 D5:    jmp +++		; $D5B3

+	$D5AF  A9 01:       lda #$01
	$D5B1  85 9E:       sta $9E
+++	$D5B3  AD 03 02:    lda $0203
	$D5B6  85 00:       sta $00
	$D5B8  20 00 D8:    jsr _func_1800
	$D5BB  A5 94:       lda $94
	$D5BD  F0 23:       beq ++		; $D5E2
	$D5BF  A5 01:       lda $01
	$D5C1  38:          sec 
	$D5C2  E9 10:       sbc #$10
	$D5C4  C5 95:       cmp $95
	$D5C6  90 04:       bcc +		; $D5CC
	$D5C8  A9 FF:       lda #$FF
	$D5CA  85 95:       sta $95
+	$D5CC  20 CB D2:    jsr _func_12CB
	$D5CF  85 5A:       sta $5A
	$D5D1  F0 1E:       beq +++		; $D5F1
	$D5D3  A5 4B:       lda $4B
	$D5D5  38:          sec 
	$D5D6  E9 11:       sbc #$11
	$D5D8  8D 00 02:    sta $0200
	$D5DB  A9 01:       lda #$01
	$D5DD  85 5A:       sta $5A
	$D5DF  4C F6 D5:    jmp ++++		; $D5F6

++	$D5E2  A9 04:       lda #$04
	$D5E4  85 FF:       sta $FF
	$D5E6  A9 01:       lda #$01
	$D5E8  85 94:       sta $94
	$D5EA  A5 01:       lda $01
	$D5EC  85 95:       sta $95
	$D5EE  4C F1 D5:    jmp +++		; $D5F1

+++	$D5F1  A9 28:       lda #$28
	$D5F3  4C 70 F0:    jmp _func_3070

++++	$D5F6  20 E1 EA:    jsr _func_2AE1
	$D5F9  A9 2C:       lda #$2C
	$D5FB  85 02:       sta $02
	$D5FD  20 CD EA:    jsr _func_2ACD
	$D600  A5 57:       lda $57
	$D602  29 03:       and #$03
	$D604  4A:          lsr a
	$D605  20 96 F0:    jsr _func_3096
	$D608  A9 F0:       lda #$F0
	$D60A  85 94:       sta $94
	$D60C  60:          rts 
;------------------------------------------
_loc_160D
	$D60D  E6 94:       inc $94
	$D60F  A5 94:       lda $94
	$D611  C9 F4:       cmp #$F4
	$D613  D0 3A:       bne ++		; $D64F -> rts
	$D615  A5 95:       lda $95
	$D617  C9 FF:       cmp #$FF
	$D619  F0 27:       beq +		; $D642
	$D61B  A9 04:       lda #$04
	$D61D  20 70 F0:    jsr _func_3070
	$D620  A9 00:       lda #$00
	$D622  8D 2C 04:    sta $042C
	$D625  85 94:       sta $94
	$D627  85 95:       sta $95
	$D629  A9 01:       lda #$01
	$D62B  85 96:       sta $96
	$D62D  A5 A0:       lda $A0
	$D62F  F0 1E:       beq ++		; $D64F -> rts
	$D631  A9 01:       lda #$01
	$D633  85 9F:       sta $9F
	$D635  A9 4B:       lda #$4B
	$D637  85 3F:       sta $3F
	$D639  A9 0A:       lda #$0A
	$D63B  85 96:       sta $96
	$D63D  A9 40:       lda #$40
	$D63F  85 FC:       sta $FC
	$D641  60:          rts 

+	$D642  A9 00:       lda #$00
	$D644  8D 2C 04:    sta $042C
	$D647  85 94:       sta $94
	$D649  85 95:       sta $95
	$D64B  A9 FF:       lda #$FF
	$D64D  85 96:       sta $96
++	$D64F  60:          rts 

	$D650               .byte $A9,$FE,$8D,$72,$04,$8D,$73,$04,$A2,$00,$A0,$60,$B9,$00,$02,$C9
	$D660               .byte $FF,$F0,$0F,$9D,$61,$04,$B9,$03,$02,$38,$E9,$08,$9D,$60,$04,$4C
	$D670               .byte $7A,$D6,$A9,$00,$9D,$61,$04,$9D,$60,$04,$98,$18,$69,$08,$A8,$E8
	$D680               .byte $E8,$E8,$C0,$90,$D0,$D6,$A9,$20,$20,$31,$C8,$20,$AD,$D8,$F0,$06
	$D690               .byte $A9,$08,$85,$96,$A9,$01,$60
_loc_1697
	$D697  A9 FF:       lda #$FF
	$D699  20 E6 D9:    jsr _func_19E6
	$D69C  F0 27:       beq +++		; $D6C5 -> rts
	$D69E  20 E1 EA:    jsr _func_2AE1
	$D6A1  E6 01:       inc $01
	$D6A3  E6 01:       inc $01
	$D6A5  A5 57:       lda $57
	$D6A7  C9 02:       cmp #$02
	$D6A9  F0 06:       beq +		; $D6B1
	$D6AB  AD 01 02:    lda $0201
	$D6AE  4C B7 D6:    jmp ++		; $D6B7

+	$D6B1  AD 01 02:    lda $0201
	$D6B4  38:          sec 
	$D6B5  E9 02:       sbc #$02
++	$D6B7  85 02:       sta $02
	$D6B9  20 75 F0:    jsr _func_3075
	$D6BC  20 CB D2:    jsr _func_12CB
	$D6BF  F0 04:       beq +++		; $D6C5 -> rts
	$D6C1  A9 FF:       lda #$FF
	$D6C3  85 96:       sta $96
+++	$D6C5  60:          rts 
;------------------------------------------
_loc_16C6
	$D6C6  A5 3F:       lda $3F
	$D6C8  D0 03:       bne +		; $D6CD
	$D6CA  4C BF D7:    jmp _loc_17BF

+	$D6CD  A9 DB:       lda #$DB
	$D6CF  85 0A:       sta $0A
	$D6D1  A9 36:       lda #$36
	$D6D3  20 E8 D9:    jsr _func_19E8
	$D6D6  D0 01:       bne +		; $D6D9
	$D6D8  60:          rts 

+	$D6D9  20 90 D9:    jsr _func_1990
	$D6DC  D0 0A:       bne +		; $D6E8
	$D6DE  A5 56:       lda $56
	$D6E0  C9 01:       cmp #$01
	$D6E2  F0 26:       beq ++++		; $D70A
	$D6E4  C9 02:       cmp #$02
	$D6E6  F0 28:       beq _loc_1710
+	$D6E8  A5 A2:       lda $A2
	$D6EA  0A:          asl a
	$D6EB  85 A2:       sta $A2
	$D6ED  F0 03:       beq +		; $D6F2
	$D6EF  4C 53 D7:    jmp _loc_1753

+	$D6F2  A9 20:       lda #$20
	$D6F4  85 A2:       sta $A2
	$D6F6  A5 9F:       lda $9F
	$D6F8  F0 04:       beq +		; $D6FE
	$D6FA  C9 04:       cmp #$04
	$D6FC  90 05:       bcc ++		; $D703
+	$D6FE  A9 02:       lda #$02
	$D700  4C 05 D7:    jmp +++		; $D705

++	$D703  A9 05:       lda #$05
+++	$D705  85 9F:       sta $9F
	$D707  4C 53 D7:    jmp _loc_1753

++++	$D70A  EE 03 02:    inc $0203
	$D70D  4C 13 D7:    jmp _loc_1713
;------------------------------------------
_loc_1710
	$D710  CE 03 02:    dec $0203
_loc_1713
	$D713  20 CB D2:    jsr _func_12CB
	$D716  85 5A:       sta $5A
	$D718  AD 00 02:    lda $0200
	$D71B  20 16 E0:    jsr _func_2016
	$D71E  85 59:       sta $59
	$D720  20 EB D8:    jsr _func_18EB
	$D723  F0 19:       beq ++		; $D73E
	$D725  A6 53:       ldx $53
	$D727  E0 01:       cpx #$01
	$D729  D0 07:       bne +		; $D732
	$D72B  18:          clc 
	$D72C  6D 00 02:    adc $0200
	$D72F  8D 00 02:    sta $0200
+	$D732  20 6A D3:    jsr _func_136A
	$D735  F0 07:       beq ++		; $D73E
	$D737  A9 08:       lda #$08
	$D739  85 96:       sta $96
	$D73B  4C BF D7:    jmp _loc_17BF

++	$D73E  A9 08:       lda #$08
	$D740  85 FF:       sta $FF
	$D742  A5 9F:       lda $9F
	$D744  F0 09:       beq +		; $D74F
	$D746  C9 06:       cmp #$06
	$D748  B0 05:       bcs +		; $D74F
	$D74A  E6 9F:       inc $9F
	$D74C  4C 53 D7:    jmp _loc_1753

+	$D74F  A9 01:       lda #$01
	$D751  85 9F:       sta $9F
_loc_1753
	$D753  A6 9F:       ldx $9F
	$D755  CA:          dex 
	$D756  BD A2 C1:    lda _data_01A2_indexed,x
	$D759  20 70 F0:    jsr _func_3070
	$D75C  A5 9F:       lda $9F
	$D75E  4A:          lsr a
	$D75F  4A:          lsr a
	$D760  F0 05:       beq +		; $D767
	$D762  A9 00:       lda #$00
	$D764  4C 69 D7:    jmp ++		; $D769

+	$D767  A9 01:       lda #$01
++	$D769  F0 1B:       beq +		; $D786
	$D76B  A9 04:       lda #$04
	$D76D  18:          clc 
	$D76E  6D 03 02:    adc $0203
	$D771  85 00:       sta $00
	$D773  AD 00 02:    lda $0200
	$D776  38:          sec 
	$D777  E9 0E:       sbc #$0E
	$D779  85 01:       sta $01
	$D77B  A9 21:       lda #$21
	$D77D  85 03:       sta $03
	$D77F  A9 F6:       lda #$F6
	$D781  85 02:       sta $02
	$D783  4C AD D7:    jmp +++		; $D7AD

+	$D786  A5 57:       lda $57
	$D788  C9 01:       cmp #$01
	$D78A  D0 09:       bne +		; $D795
	$D78C  A9 0E:       lda #$0E
	$D78E  18:          clc 
	$D78F  6D 03 02:    adc $0203
	$D792  4C 9B D7:    jmp ++		; $D79B

+	$D795  AD 03 02:    lda $0203
	$D798  38:          sec 
	$D799  E9 0E:       sbc #$0E
++	$D79B  85 00:       sta $00
	$D79D  A9 06:       lda #$06
	$D79F  18:          clc 
	$D7A0  6D 00 02:    adc $0200
	$D7A3  85 01:       sta $01
	$D7A5  A9 12:       lda #$12
	$D7A7  85 03:       sta $03
	$D7A9  A9 FA:       lda #$FA
	$D7AB  85 02:       sta $02
+++	$D7AD  A5 A0:       lda $A0
	$D7AF  C9 01:       cmp #$01
	$D7B1  F0 05:       beq +		; $D7B8
	$D7B3  A9 D8:       lda #$D8
	$D7B5  4C BA D7:    jmp ++		; $D7BA

+	$D7B8  A9 D0:       lda #$D0
++	$D7BA  85 04:       sta $04
	$D7BC  4C 78 F0:    jmp _loc_3078
;------------------------------------------
_loc_17BF
	$D7BF  A9 12:       lda #$12
	$D7C1  85 03:       sta $03
	$D7C3  A5 A0:       lda $A0
	$D7C5  C9 01:       cmp #$01
	$D7C7  F0 0A:       beq +		; $D7D3
	$D7C9  A9 00:       lda #$00
	$D7CB  8D 52 04:    sta $0452
	$D7CE  A9 D8:       lda #$D8
	$D7D0  4C DA D7:    jmp ++		; $D7DA

+	$D7D3  A9 00:       lda #$00
	$D7D5  8D 51 04:    sta $0451
	$D7D8  A9 D0:       lda #$D0
++	$D7DA  85 04:       sta $04
	$D7DC  20 94 F0:    jsr _func_3094
	$D7DF  20 F2 D7:    jsr _func_17F2
	$D7E2  A9 01:       lda #$01
	$D7E4  85 96:       sta $96
	$D7E6  A9 00:       lda #$00
	$D7E8  85 A0:       sta $A0
	$D7EA  85 9F:       sta $9F
	$D7EC  AD 19 05:    lda $0519
	$D7EF  85 FC:       sta $FC
	$D7F1  60:          rts 
;------------------------------------------
_func_17F2
	$D7F2  A9 19:       lda #$19
	$D7F4  85 00:       sta $00
	$D7F6  A9 3F:       lda #$3F
	$D7F8  85 01:       sta $01
	$D7FA  A9 4E:       lda #$4E
	$D7FC  20 15 C8:    jsr _func_0815
	$D7FF  60:          rts 
;------------------------------------------
_func_1800
	$D800  A5 A0:       lda $A0
	$D802  F0 01:       beq +		; $D805
	$D804  60:          rts 

+	$D805  A4 53:       ldy $53
	$D807  C0 03:       cpy #$03
	$D809  D0 03:       bne +		; $D80E
	$D80B  4C A8 D8:    jmp ++++		; $D8A8

+	$D80E  AD 03 02:    lda $0203
	$D811  C0 01:       cpy #$01
	$D813  F0 09:       beq +		; $D81E
	$D815  C9 88:       cmp #$88
	$D817  F0 0E:       beq ++		; $D827
	$D819  90 0C:       bcc ++		; $D827
	$D81B  4C A8 D8:    jmp ++++		; $D8A8

+	$D81E  C9 28:       cmp #$28
	$D820  F0 05:       beq ++		; $D827
	$D822  90 03:       bcc ++		; $D827
	$D824  4C A8 D8:    jmp ++++		; $D8A8

++	$D827  AD 00 02:    lda $0200
	$D82A  18:          clc 
	$D82B  69 08:       adc #$08
	$D82D  20 16 E0:    jsr _func_2016
	$D830  85 59:       sta $59
	$D832  A5 53:       lda $53
	$D834  38:          sec 
	$D835  E9 01:       sbc #$01
	$D837  0A:          asl a
	$D838  AA:          tax 
	$D839  A5 59:       lda $59
	$D83B  DD A8 C1:    cmp _data_01A8_indexed,x
	$D83E  F0 09:       beq +		; $D849
	$D840  E8:          inx 
	$D841  DD A8 C1:    cmp _data_01A8_indexed,x
	$D844  F0 03:       beq +		; $D849
	$D846  4C A8 D8:    jmp ++++		; $D8A8

+	$D849  8A:          txa 
	$D84A  29 01:       and #$01
	$D84C  F0 19:       beq ++		; $D867
	$D84E  AD 52 04:    lda $0452
	$D851  D0 03:       bne +		; $D856
	$D853  4C A8 D8:    jmp ++++		; $D8A8

+	$D856  A9 02:       lda #$02
	$D858  85 A0:       sta $A0
	$D85A  AD D8 02:    lda $02D8
	$D85D  85 01:       sta $01
	$D85F  AD DB 02:    lda $02DB
	$D862  85 00:       sta $00
	$D864  4C 7D D8:    jmp +++		; $D87D

++	$D867  AD 51 04:    lda $0451
	$D86A  D0 03:       bne +		; $D86F
	$D86C  4C A8 D8:    jmp ++++		; $D8A8

+	$D86F  A9 01:       lda #$01
	$D871  85 A0:       sta $A0
	$D873  AD D0 02:    lda $02D0
	$D876  85 01:       sta $01
	$D878  AD D3 02:    lda $02D3
	$D87B  85 00:       sta $00
+++	$D87D  A9 2E:       lda #$2E
	$D87F  20 E8 EF:    jsr _func_2FE8
	$D882  20 E1 EA:    jsr _func_2AE1
	$D885  A9 30:       lda #$30
	$D887  20 47 C8:    jsr _func_0847
	$D88A  20 EF EF:    jsr _func_2FEF
	$D88D  F0 19:       beq ++++		; $D8A8
	$D88F  A5 FC:       lda $FC
	$D891  8D 19 05:    sta $0519
	$D894  A5 53:       lda $53
	$D896  C9 04:       cmp #$04
	$D898  D0 0D:       bne +		; $D8A7 -> rts
	$D89A  A9 19:       lda #$19
	$D89C  85 00:       sta $00
	$D89E  A9 3F:       lda #$3F
	$D8A0  85 01:       sta $01
	$D8A2  A9 46:       lda #$46
	$D8A4  20 15 C8:    jsr _func_0815
+	$D8A7  60:          rts 

++++	$D8A8  A9 00:       lda #$00
	$D8AA  85 A0:       sta $A0
	$D8AC  60:          rts 
;------------------------------------------
_func_18AD
	$D8AD  A9 F3:       lda #$F3
	$D8AF  85 0B:       sta $0B
	$D8B1  A9 00:       lda #$00
	$D8B3  85 86:       sta $86
	$D8B5  A0 00:       ldy #$00
	$D8B7  B1 04:       lda ($04),y
-	$D8B9  85 00:       sta $00
	$D8BB  C8:          iny 
	$D8BC  B1 04:       lda ($04),y
	$D8BE  85 01:       sta $01
	$D8C0  C8:          iny 
	$D8C1  B1 04:       lda ($04),y
	$D8C3  18:          clc 
	$D8C4  65 06:       adc $06
	$D8C6  85 02:       sta $02
	$D8C8  A5 07:       lda $07
	$D8CA  69 00:       adc #$00
	$D8CC  85 03:       sta $03
	$D8CE  84 86:       sty $86
	$D8D0  20 F3 EF:    jsr _func_2FF3
	$D8D3  D0 0C:       bne +		; $D8E1
	$D8D5  A4 86:       ldy $86
	$D8D7  C8:          iny 
	$D8D8  B1 04:       lda ($04),y
	$D8DA  C9 FE:       cmp #$FE
	$D8DC  F0 08:       beq ++		; $D8E6
	$D8DE  4C B9 D8:    jmp -		; $D8B9

+	$D8E1  A9 01:       lda #$01
	$D8E3  4C E8 D8:    jmp +++		; $D8E8

++	$D8E6  A9 00:       lda #$00
+++	$D8E8  85 0C:       sta $0C
	$D8EA  60:          rts 
;------------------------------------------
_func_18EB
	$D8EB  A5 5A:       lda $5A
	$D8ED  D0 28:       bne ++++		; $D917
	$D8EF  A5 59:       lda $59
	$D8F1  F0 24:       beq ++++		; $D917
	$D8F3  29 01:       and #$01
	$D8F5  D0 0D:       bne +		; $D904
	$D8F7  A5 56:       lda $56
	$D8F9  C9 01:       cmp #$01
	$D8FB  F0 17:       beq +++		; $D914
	$D8FD  C9 02:       cmp #$02
	$D8FF  F0 10:       beq ++		; $D911
	$D901  4C 17 D9:    jmp ++++		; $D917

+	$D904  A5 56:       lda $56
	$D906  C9 01:       cmp #$01
	$D908  F0 07:       beq ++		; $D911
	$D90A  C9 02:       cmp #$02
	$D90C  F0 06:       beq +++		; $D914
	$D90E  4C 17 D9:    jmp ++++		; $D917

++	$D911  A9 FF:       lda #$FF
	$D913  60:          rts 

+++	$D914  A9 01:       lda #$01
	$D916  60:          rts 

++++	$D917  A9 00:       lda #$00
	$D919  60:          rts 
;------------------------------------------
_func_191A
	$D91A  AD 00 02:    lda $0200
	$D91D  18:          clc 
	$D91E  69 08:       adc #$08
	$D920  20 16 E0:    jsr _func_2016
	$D923  85 59:       sta $59
	$D925  C9 01:       cmp #$01
	$D927  F0 0F:       beq +		; $D938
	$D929  A2 02:       ldx #$02
	$D92B  A9 0C:       lda #$0C
-	$D92D  E4 59:       cpx $59
	$D92F  F0 0A:       beq ++		; $D93B
	$D931  18:          clc 
	$D932  69 06:       adc #$06
	$D934  E8:          inx 
	$D935  4C 2D D9:    jmp -		; $D92D

+	$D938  38:          sec 
	$D939  E9 01:       sbc #$01
++	$D93B  AA:          tax 
--	$D93C  A9 00:       lda #$00
	$D93E  85 86:       sta $86
	$D940  BD 8C C0:    lda DataTableEntry_008C,x
	$D943  85 00:       sta $00
	$D945  E8:          inx 
	$D946  BD 8C C0:    lda DataTableEntry_008C,x
	$D949  85 01:       sta $01
	$D94B  E8:          inx 
	$D94C  BD 8C C0:    lda DataTableEntry_008C,x
	$D94F  18:          clc 
	$D950  65 06:       adc $06
	$D952  85 02:       sta $02
	$D954  A5 07:       lda $07
	$D956  85 03:       sta $03
	$D958  E8:          inx 
	$D959  BD 8C C0:    lda DataTableEntry_008C,x
	$D95C  85 08:       sta $08
	$D95E  E8:          inx 
	$D95F  BD 8C C0:    lda DataTableEntry_008C,x
	$D962  85 09:       sta $09
-	$D964  20 EF EF:    jsr _func_2FEF
	$D967  D0 22:       bne ++		; $D98B
	$D969  A5 00:       lda $00
	$D96B  18:          clc 
	$D96C  65 08:       adc $08
	$D96E  85 00:       sta $00
	$D970  C6 01:       dec $01
	$D972  E6 86:       inc $86
	$D974  A5 09:       lda $09
	$D976  C5 86:       cmp $86
	$D978  D0 EA:       bne -		; $D964
	$D97A  E8:          inx 
	$D97B  BD 8C C0:    lda DataTableEntry_008C,x
	$D97E  C9 FE:       cmp #$FE
	$D980  F0 04:       beq +		; $D986
	$D982  E8:          inx 
	$D983  4C 3C D9:    jmp --		; $D93C

+	$D986  A9 00:       lda #$00
	$D988  4C 8D D9:    jmp +++		; $D98D

++	$D98B  A9 01:       lda #$01
+++	$D98D  85 5A:       sta $5A
	$D98F  60:          rts 
;------------------------------------------
_func_1990
	$D990  A5 56:       lda $56
	$D992  C9 01:       cmp #$01
	$D994  F0 07:       beq +		; $D99D
	$D996  C9 02:       cmp #$02
	$D998  F0 15:       beq ++		; $D9AF
	$D99A  4C E3 D9:    jmp ++++		; $D9E3

+	$D99D  A5 53:       lda $53
	$D99F  0A:          asl a
	$D9A0  AA:          tax 
	$D9A1  CA:          dex 
	$D9A2  BD B4 C1:    lda _data_01B4_indexed,x
	$D9A5  CD 03 02:    cmp $0203
	$D9A8  F0 36:       beq +++		; $D9E0
	$D9AA  90 34:       bcc +++		; $D9E0
	$D9AC  4C E3 D9:    jmp ++++		; $D9E3

++	$D9AF  A5 53:       lda $53
	$D9B1  0A:          asl a
	$D9B2  AA:          tax 
	$D9B3  CA:          dex 
	$D9B4  CA:          dex 
	$D9B5  BD B4 C1:    lda _data_01B4_indexed,x
	$D9B8  CD 03 02:    cmp $0203
	$D9BB  B0 23:       bcs +++		; $D9E0
	$D9BD  A5 53:       lda $53
	$D9BF  C9 04:       cmp #$04
	$D9C1  F0 20:       beq ++++		; $D9E3
	$D9C3  A6 59:       ldx $59
	$D9C5  C9 03:       cmp #$03
	$D9C7  F0 07:       beq +		; $D9D0
	$D9C9  E0 06:       cpx #$06
	$D9CB  D0 16:       bne ++++		; $D9E3
	$D9CD  4C D4 D9:    jmp ++		; $D9D4

+	$D9D0  E0 05:       cpx #$05
	$D9D2  D0 0F:       bne ++++		; $D9E3
++	$D9D4  AD 03 02:    lda $0203
	$D9D7  C9 68:       cmp #$68
	$D9D9  F0 05:       beq +++		; $D9E0
	$D9DB  90 03:       bcc +++		; $D9E0
	$D9DD  4C E3 D9:    jmp ++++		; $D9E3

+++	$D9E0  A9 01:       lda #$01
	$D9E2  60:          rts 

++++	$D9E3  A9 00:       lda #$00
	$D9E5  60:          rts 
;------------------------------------------
_func_19E6
	$D9E6  85 0A:       sta $0A
_func_19E8
	$D9E8  85 0B:       sta $0B
	$D9EA  E6 88:       inc $88
	$D9EC  A5 88:       lda $88
	$D9EE  C9 0F:       cmp #$0F
	$D9F0  B0 03:       bcs +		; $D9F5
	$D9F2  4C F9 D9:    jmp ++		; $D9F9

+	$D9F5  A9 00:       lda #$00
	$D9F7  85 88:       sta $88
++	$D9F9  C9 08:       cmp #$08
	$D9FB  B0 09:       bcs +		; $DA06
	$D9FD  AA:          tax 
	$D9FE  BD BC C1:    lda _data_01BC_indexed,x
	$DA01  25 0A:       and $0A
	$DA03  4C 0F DA:    jmp ++		; $DA0F

+	$DA06  38:          sec 
	$DA07  E9 08:       sbc #$08
	$DA09  AA:          tax 
	$DA0A  BD BC C1:    lda _data_01BC_indexed,x
	$DA0D  25 0B:       and $0B
++	$DA0F  F0 02:       beq +		; $DA13
	$DA11  A9 01:       lda #$01
+	$DA13  85 BE:       sta $BE
	$DA15  60:          rts 
;------------------------------------------
_func_1A16
	$DA16  20 66 E1:    jsr _func_2166
	$DA19  A9 00:       lda #$00
	$DA1B  85 5D:       sta $5D
-	$DA1D  20 D5 EF:    jsr _func_2FD5
	$DA20  BD 00 02:    lda $0200,x
	$DA23  C9 FF:       cmp #$FF
	$DA25  D0 16:       bne +		; $DA3D
	$DA27  A5 36:       lda $36
	$DA29  D0 15:       bne ++		; $DA40
	$DA2B  A9 80:       lda #$80
	$DA2D  A6 5D:       ldx $5D
	$DA2F  95 5E:       sta $5E,x
	$DA31  A9 10:       lda #$10
	$DA33  85 37:       sta $37
	$DA35  20 F7 EA:    jsr _func_2AF7
	$DA38  BD 43 C4:    lda _data_0443_indexed,x
	$DA3B  85 36:       sta $36
+	$DA3D  20 4C DA:    jsr _func_1A4C
++	$DA40  A5 5D:       lda $5D
	$DA42  18:          clc 
	$DA43  69 01:       adc #$01
	$DA45  85 5D:       sta $5D
	$DA47  C9 09:       cmp #$09
	$DA49  D0 D2:       bne -		; $DA1D
	$DA4B  60:          rts 
;------------------------------------------
_func_1A4C
	$DA4C  A6 5D:       ldx $5D
	$DA4E  B5 5E:       lda $5E,x
	$DA50  C9 80:       cmp #$80
	$DA52  F0 29:       beq +		; $DA7D -> _loc_1A9C
	$DA54  C9 81:       cmp #$81
	$DA56  F0 28:       beq ++		; $DA80 -> _loc_1B00
	$DA58  C9 01:       cmp #$01
	$DA5A  F0 27:       beq +++		; $DA83 -> _loc_1B2C
	$DA5C  C9 02:       cmp #$02
	$DA5E  F0 26:       beq ++++		; $DA86 -> _loc_1C30
	$DA60  C9 C0:       cmp #$C0
	$DA62  F0 25:       beq _loc_1A89
	$DA64  C9 C1:       cmp #$C1
	$DA66  F0 21:       beq _loc_1A89
	$DA68  C9 C2:       cmp #$C2
	$DA6A  F0 1D:       beq _loc_1A89
	$DA6C  C9 08:       cmp #$08
	$DA6E  F0 1F:       beq _loc_1A8F		; $DA8F -> _loc_1C69
	$DA70  C9 10:       cmp #$10
	$DA72  F0 1E:       beq _loc_1A92		; $DA92 -> _loc_1CD0
	$DA74  C9 20:       cmp #$20
	$DA76  F0 1D:       beq _loc_1A95		; $DA95 -> _loc_1D32
	$DA78  C9 40:       cmp #$40
	$DA7A  F0 1C:       beq _loc_1A98
	$DA7C  60:          rts 

+	$DA7D  4C 9C DA:    jmp _loc_1A9C

++	$DA80  4C 00 DB:    jmp _loc_1B00

+++	$DA83  4C 2C DB:    jmp _loc_1B2C

++++	$DA86  4C 30 DC:    jmp _loc_1C30
;------------------------------------------
_loc_1A89
	$DA89  BD 21 04:    lda $0421,x
	$DA8C  4C 8B DD:    jmp _loc_1D8B
;------------------------------------------
_loc_1A8F
	$DA8F  4C 69 DC:    jmp _loc_1C69
;------------------------------------------
_loc_1A92
	$DA92  4C D0 DC:    jmp _loc_1CD0
;------------------------------------------
_loc_1A95
	$DA95  4C 32 DD:    jmp _loc_1D32
;------------------------------------------
_loc_1A98
	$DA98  20 07 DF:    jsr _func_1F07
	$DA9B  60:          rts 
;------------------------------------------
_loc_1A9C
	$DA9C  20 D5 EF:    jsr _func_2FD5
	$DA9F  A9 30:       lda #$30
	$DAA1  85 00:       sta $00
	$DAA3  85 01:       sta $01
	$DAA5  A9 90:       lda #$90
	$DAA7  85 02:       sta $02
	$DAA9  86 04:       stx $04
	$DAAB  20 DB EA:    jsr _func_2ADB
	$DAAE  A5 37:       lda $37
	$DAB0  D0 4D:       bne ++++		; $DAFF -> rts
	$DAB2  A9 81:       lda #$81
	$DAB4  A6 5D:       ldx $5D
	$DAB6  95 5E:       sta $5E,x
	$DAB8  A9 00:       lda #$00
	$DABA  95 8A:       sta $8A,x
	$DABC  A5 AD:       lda $AD
	$DABE  F0 03:       beq +		; $DAC3
	$DAC0  4C D5 DA:    jmp ++		; $DAD5

+	$DAC3  A5 5D:       lda $5D
	$DAC5  D0 38:       bne ++++		; $DAFF -> rts
	$DAC7  A9 C0:       lda #$C0
	$DAC9  A6 5D:       ldx $5D
	$DACB  95 5E:       sta $5E,x
	$DACD  A9 01:       lda #$01
	$DACF  9D 21 04:    sta $0421,x
	$DAD2  4C F7 DA:    jmp +++		; $DAF7

++	$DAD5  A5 43:       lda $43
	$DAD7  D0 26:       bne ++++		; $DAFF -> rts
	$DAD9  A5 5D:       lda $5D
	$DADB  D0 22:       bne ++++		; $DAFF -> rts
	$DADD  A9 C0:       lda #$C0
	$DADF  A6 5D:       ldx $5D
	$DAE1  95 5E:       sta $5E,x
	$DAE3  BD 21 04:    lda $0421,x
	$DAE6  C9 01:       cmp #$01
	$DAE8  D0 08:       bne +		; $DAF2
	$DAEA  A9 03:       lda #$03
	$DAEC  9D 21 04:    sta $0421,x
	$DAEF  4C F7 DA:    jmp +++		; $DAF7

+	$DAF2  A9 01:       lda #$01
	$DAF4  9D 21 04:    sta $0421,x
+++	$DAF7  20 F7 EA:    jsr _func_2AF7
	$DAFA  BD 4D C4:    lda _data_044D_indexed,x
	$DAFD  85 43:       sta $43
++++	$DAFF  60:          rts 
;------------------------------------------
_loc_1B00
	$DB00  A9 55:       lda #$55
	$DB02  20 E4 DF:    jsr _func_1FE4
	$DB05  D0 1A:       bne +		; $DB21
	$DB07  20 D5 EF:    jsr _func_2FD5
	$DB0A  A9 4D:       lda #$4D
	$DB0C  85 00:       sta $00
	$DB0E  A9 32:       lda #<DataTableEntry_0432
	$DB10  85 01:       sta $01
	$DB12  A9 84:       lda #>DataTableEntry_0432
	$DB14  85 02:       sta $02
	$DB16  86 04:       stx $04
	$DB18  20 DB EA:    jsr _func_2ADB
	$DB1B  EE 15 05:    inc $0515
	$DB1E  4C 2B DB:    jmp ++		; $DB2B -> rts

+	$DB21  A6 5D:       ldx $5D
	$DB23  A9 01:       lda #$01
	$DB25  95 5E:       sta $5E,x
	$DB27  A9 84:       lda #$84
	$DB29  95 72:       sta $72,x
++	$DB2B  60:          rts 
;------------------------------------------
_loc_1B2C
	$DB2C  A9 FF:       lda #$FF
	$DB2E  20 E4 DF:    jsr _func_1FE4
	$DB31  D0 01:       bne +		; $DB34
	$DB33  60:          rts 

+	$DB34  20 D5 EF:    jsr _func_2FD5
	$DB37  48:          pha 
	$DB38  20 EC EA:     jsr _func_2AEC
	$DB3B  A5 01:        lda $01
	$DB3D  20 16 E0:     jsr _func_2016
	$DB40  A4 5D:        ldy $5D
	$DB42  99 68 00:     sta $0068,y
	$DB45  29 01:        and #$01
	$DB47  D0 05:        bne +		; $DB4E
	$DB49  E6 00:        inc $00
	$DB4B  4C 50 DB:     jmp ++		; $DB50

+	$DB4E  C6 00:        dec $00
++	$DB50  A5 00:        lda $00
	$DB52  20 5A E0:     jsr _func_205A
	$DB55  85 7D:        sta $7D
	$DB57  20 48 E0:     jsr _func_2048
	$DB5A  18:           clc 
	$DB5B  65 01:        adc $01
	$DB5D  85 01:        sta $01
	$DB5F  20 EE DB:     jsr _func_1BEE
	$DB62  A6 5D:        ldx $5D
	$DB64  B5 72:        lda $72,x
	$DB66  20 D4 EA:     jsr _func_2AD4
	$DB69  68:          pla 
	$DB6A  AA:          tax 
	$DB6B  20 80 F0:    jsr _func_3080
	$DB6E  A5 00:       lda $00
	$DB70  20 AE E0:    jsr _func_20AE
	$DB73  F0 37:       beq ++		; $DBAC
	$DB75  20 F7 EA:    jsr _func_2AF7
	$DB78  BD 48 C4:    lda _data_0448_indexed,x
	$DB7B  25 19:       and $19
	$DB7D  D0 2D:       bne ++		; $DBAC
	$DB7F  A6 5D:       ldx $5D
	$DB81  B5 68:       lda $68,x
	$DB83  AA:          tax 
	$DB84  CA:          dex 
	$DB85  B5 7E:       lda $7E,x
	$DB87  C9 04:       cmp #$04
	$DB89  B0 21:       bcs ++		; $DBAC
	$DB8B  A5 96:       lda $96
	$DB8D  C9 02:       cmp #$02
	$DB8F  D0 12:       bne +		; $DBA3
	$DB91  A6 04:       ldx $04
	$DB93  BD 00 02:    lda $0200,x
	$DB96  CD 00 02:    cmp $0200
	$DB99  B0 08:       bcs +		; $DBA3
	$DB9B  18:          clc 
	$DB9C  69 0F:       adc #$0F
	$DB9E  CD 00 02:    cmp $0200
	$DBA1  B0 09:       bcs ++		; $DBAC
+	$DBA3  A9 02:       lda #$02
	$DBA5  A6 5D:       ldx $5D
	$DBA7  95 5E:       sta $5E,x
	$DBA9  D6 68:       dec $68,x
	$DBAB  60:          rts 

++	$DBAC  A5 00:       lda $00
	$DBAE  20 90 E0:    jsr _func_2090
	$DBB1  F0 03:       beq +		; $DBB6
	$DBB3  4C E7 DB:    jmp ++		; $DBE7

+	$DBB6  20 40 DF:    jsr _func_1F40
	$DBB9  A6 5D:       ldx $5D
	$DBBB  B5 68:       lda $68,x
	$DBBD  C9 01:       cmp #$01
	$DBBF  D0 2C:       bne +++		; $DBED -> rts
	$DBC1  20 C3 DF:    jsr _func_1FC3
	$DBC4  A5 00:       lda $00
	$DBC6  C9 20:       cmp #$20
	$DBC8  F0 03:       beq +		; $DBCD
	$DBCA  90 01:       bcc +		; $DBCD
	$DBCC  60:          rts 

+	$DBCD  A9 03:       lda #$03
	$DBCF  85 02:       sta $02
	$DBD1  A9 04:       lda #$04
	$DBD3  85 03:       sta $03
	$DBD5  20 8E F0:    jsr _func_308E
	$DBD8  A9 01:       lda #$01
	$DBDA  85 AD:       sta $AD
	$DBDC  A9 00:       lda #$00
	$DBDE  A6 5D:       ldx $5D
	$DBE0  95 68:       sta $68,x
	$DBE2  A9 80:       lda #$80
	$DBE4  85 FE:       sta $FE
	$DBE6  60:          rts 

++	$DBE7  A6 5D:       ldx $5D
	$DBE9  A9 08:       lda #$08
	$DBEB  95 5E:       sta $5E,x
+++	$DBED  60:          rts 
;------------------------------------------
_func_1BEE
	$DBEE  A6 5D:       ldx $5D
	$DBF0  FE 0D 04:    inc $040D,x
	$DBF3  BD 0D 04:    lda $040D,x
	$DBF6  C9 06:       cmp #$06
	$DBF8  B0 01:       bcs +		; $DBFB
	$DBFA  60:          rts 

+	$DBFB  A9 00:       lda #$00
	$DBFD  9D 0D 04:    sta $040D,x
	$DC00  B5 68:       lda $68,x
	$DC02  29 01:       and #$01
	$DC04  F0 15:       beq ++		; $DC1B
	$DC06  B5 72:       lda $72,x
	$DC08  18:          clc 
	$DC09  69 04:       adc #$04
	$DC0B  C9 80:       cmp #$80
	$DC0D  90 07:       bcc +		; $DC16
	$DC0F  C9 90:       cmp #$90
	$DC11  B0 03:       bcs +		; $DC16
	$DC13  4C 2D DC:    jmp +++		; $DC2D

+	$DC16  A9 80:       lda #$80
	$DC18  4C 2D DC:    jmp +++		; $DC2D

++	$DC1B  B5 72:       lda $72,x
	$DC1D  38:          sec 
	$DC1E  E9 04:       sbc #$04
	$DC20  C9 80:       cmp #$80
	$DC22  90 07:       bcc +		; $DC2B
	$DC24  C9 90:       cmp #$90
	$DC26  B0 03:       bcs +		; $DC2B
	$DC28  4C 2D DC:    jmp +++		; $DC2D

+	$DC2B  A9 8C:       lda #$8C
+++	$DC2D  95 72:       sta $72,x
	$DC2F  60:          rts 
;------------------------------------------
_loc_1C30
	$DC30  A9 55:       lda #$55
	$DC32  20 E4 DF:    jsr _func_1FE4
	$DC35  F0 31:       beq +++		; $DC68 -> rts
	$DC37  20 D5 EF:    jsr _func_2FD5
	$DC3A  86 04:       stx $04
	$DC3C  20 EC EA:    jsr _func_2AEC
	$DC3F  E6 01:       inc $01
	$DC41  A4 5D:       ldy $5D
	$DC43  B9 72 00:    lda $0072,y
	$DC46  C9 90:       cmp #$90
	$DC48  D0 05:       bne +		; $DC4F
	$DC4A  A9 94:       lda #$94
	$DC4C  4C 51 DC:    jmp ++		; $DC51

+	$DC4F  A9 90:       lda #$90
++	$DC51  85 02:       sta $02
	$DC53  A6 5D:       ldx $5D
	$DC55  95 72:       sta $72,x
	$DC57  20 DB EA:    jsr _func_2ADB
	$DC5A  A5 01:       lda $01
	$DC5C  A6 5D:       ldx $5D
	$DC5E  D5 A3:       cmp $A3,x
	$DC60  D0 06:       bne +++		; $DC68 -> rts
	$DC62  A6 5D:       ldx $5D
	$DC64  A9 01:       lda #$01
	$DC66  95 5E:       sta $5E,x
+++	$DC68  60:          rts 
;------------------------------------------
_loc_1C69
	$DC69  A9 FF:       lda #$FF
	$DC6B  20 E4 DF:    jsr _func_1FE4
	$DC6E  D0 01:       bne +		; $DC71
	$DC70  60:          rts 

+	$DC71  20 D5 EF:    jsr _func_2FD5
	$DC74  86 04:       stx $04
	$DC76  20 EC EA:    jsr _func_2AEC
	$DC79  E6 01:       inc $01
	$DC7B  A5 01:       lda $01
	$DC7D  29 01:       and #$01
	$DC7F  F0 0F:       beq ++		; $DC90
	$DC81  A6 5D:       ldx $5D
	$DC83  B5 68:       lda $68,x
	$DC85  29 01:       and #$01
	$DC87  F0 05:       beq +		; $DC8E
	$DC89  C6 00:       dec $00
	$DC8B  4C 90 DC:    jmp ++		; $DC90

+	$DC8E  E6 00:       inc $00
++	$DC90  20 EE DB:    jsr _func_1BEE
	$DC93  A6 5D:       ldx $5D
	$DC95  B5 72:       lda $72,x
	$DC97  85 02:       sta $02
	$DC99  20 DB EA:    jsr _func_2ADB
	$DC9C  A9 32:       lda #$32
	$DC9E  20 53 C8:    jsr _func_0853
	$DCA1  A5 01:       lda $01
	$DCA3  20 12 E1:    jsr _func_2112
	$DCA6  F0 27:       beq +++		; $DCCF -> rts
	$DCA8  A6 5D:       ldx $5D
	$DCAA  A9 10:       lda #$10
	$DCAC  95 5E:       sta $5E,x
	$DCAE  20 30 E1:    jsr _func_2130
	$DCB1  F0 09:       beq +		; $DCBC
	$DCB3  A5 19:       lda $19
	$DCB5  29 01:       and #$01
	$DCB7  F0 03:       beq +		; $DCBC
	$DCB9  4C C9 DC:    jmp ++		; $DCC9

+	$DCBC  A6 5D:       ldx $5D
	$DCBE  B5 68:       lda $68,x
	$DCC0  AA:          tax 
	$DCC1  CA:          dex 
	$DCC2  B5 7E:       lda $7E,x
	$DCC4  C9 04:       cmp #$04
	$DCC6  B0 01:       bcs ++		; $DCC9
	$DCC8  60:          rts 

++	$DCC9  A6 5D:       ldx $5D
	$DCCB  A9 20:       lda #$20
	$DCCD  95 5E:       sta $5E,x
+++	$DCCF  60:          rts 
;------------------------------------------
_loc_1CD0
	$DCD0  A9 77:       lda #$77
	$DCD2  20 E4 DF:    jsr _func_1FE4
	$DCD5  D0 01:       bne +		; $DCD8
	$DCD7  60:          rts 

+	$DCD8  20 D5 EF:    jsr _func_2FD5
	$DCDB  86 04:       stx $04
	$DCDD  20 EC EA:    jsr _func_2AEC
	$DCE0  A5 01:       lda $01
	$DCE2  20 16 E0:    jsr _func_2016
	$DCE5  A6 5D:       ldx $5D
	$DCE7  95 68:       sta $68,x
	$DCE9  29 01:       and #$01
	$DCEB  D0 13:       bne +		; $DD00
	$DCED  E6 00:       inc $00
	$DCEF  A5 00:       lda $00
	$DCF1  A2 00:       ldx #$00
-	$DCF3  DD FC C3:    cmp _data_03FC_indexed,x
	$DCF6  F0 1B:       beq ++		; $DD13
	$DCF8  E8:          inx 
	$DCF9  E0 0B:       cpx #$0B
	$DCFB  F0 28:       beq +++		; $DD25
	$DCFD  4C F3 DC:    jmp -		; $DCF3

+	$DD00  C6 00:       dec $00
	$DD02  A5 00:       lda $00
	$DD04  A2 00:       ldx #$00
-	$DD06  DD 12 C4:    cmp _data_0412_indexed,x
	$DD09  F0 08:       beq ++		; $DD13
	$DD0B  E8:          inx 
	$DD0C  E0 0B:       cpx #$0B
	$DD0E  F0 15:       beq +++		; $DD25
	$DD10  4C 06 DD:    jmp -		; $DD06

++	$DD13  A5 01:       lda $01
	$DD15  18:          clc 
	$DD16  7D 07 C4:    adc _data_0407_indexed,x
	$DD19  85 01:       sta $01
	$DD1B  E0 0A:       cpx #$0A
	$DD1D  D0 06:       bne +++		; $DD25
	$DD1F  A6 5D:       ldx $5D
	$DD21  A9 01:       lda #$01
	$DD23  95 5E:       sta $5E,x
+++	$DD25  20 EE DB:    jsr _func_1BEE
	$DD28  A6 5D:       ldx $5D
	$DD2A  B5 72:       lda $72,x
	$DD2C  85 02:       sta $02
	$DD2E  20 DB EA:    jsr _func_2ADB
	$DD31  60:          rts 
;------------------------------------------
_loc_1D32
	$DD32  A9 55:       lda #$55
	$DD34  20 E4 DF:    jsr _func_1FE4
	$DD37  D0 01:       bne +		; $DD3A
	$DD39  60:          rts 

+	$DD3A  20 D5 EF:    jsr _func_2FD5
	$DD3D  86 04:       stx $04
	$DD3F  20 EC EA:    jsr _func_2AEC
	$DD42  A5 01:       lda $01
	$DD44  20 16 E0:    jsr _func_2016
	$DD47  A6 5D:       ldx $5D
	$DD49  95 68:       sta $68,x
	$DD4B  29 01:       and #$01
	$DD4D  D0 11:       bne ++		; $DD60
	$DD4F  C6 00:       dec $00
	$DD51  A5 01:       lda $01
	$DD53  C9 14:       cmp #$14
	$DD55  D0 02:       bne +		; $DD59
	$DD57  C6 01:       dec $01
+	$DD59  A5 00:       lda $00
	$DD5B  D0 16:       bne +++		; $DD73
	$DD5D  4C 7F DD:    jmp ++++		; $DD7F

++	$DD60  E6 00:       inc $00
	$DD62  A5 01:       lda $01
	$DD64  C9 EC:       cmp #$EC
	$DD66  D0 02:       bne +		; $DD6A
	$DD68  C6 01:       dec $01
+	$DD6A  A5 00:       lda $00
	$DD6C  C9 F4:       cmp #$F4
	$DD6E  D0 03:       bne +++		; $DD73
	$DD70  4C 7F DD:    jmp ++++		; $DD7F

+++	$DD73  20 EE DB:    jsr _func_1BEE
	$DD76  A6 5D:       ldx $5D
	$DD78  B5 72:       lda $72,x
	$DD7A  85 02:       sta $02
	$DD7C  4C DB EA:    jmp _func_2ADB

++++	$DD7F  A9 22:       lda #$22
	$DD81  20 92 F0:    jsr _func_3092_init_ram
	$DD84  A9 00:       lda #$00
	$DD86  A6 5D:       ldx $5D
	$DD88  95 68:       sta $68,x
	$DD8A  60:          rts 
;------------------------------------------
_loc_1D8B
	$DD8B  85 07:       sta $07
	$DD8D  A6 5D:       ldx $5D
	$DD8F  B5 5E:       lda $5E,x
	$DD91  C9 C2:       cmp #$C2
	$DD93  D0 03:       bne +		; $DD98
	$DD95  4C 82 DE:    jmp _loc_1E82

+	$DD98  C9 C1:       cmp #$C1
	$DD9A  F0 3B:       beq ++++		; $DDD7
	$DD9C  A5 07:       lda $07
	$DD9E  C9 02:       cmp #$02
	$DDA0  F0 09:       beq +		; $DDAB
	$DDA2  C9 03:       cmp #$03
	$DDA4  F0 0A:       beq ++		; $DDB0
	$DDA6  A9 34:       lda #$34
	$DDA8  4C B2 DD:    jmp +++		; $DDB2

+	$DDAB  A9 36:       lda #$36
	$DDAD  4C B2 DD:    jmp +++		; $DDB2

++	$DDB0  A9 38:       lda #$38
+++	$DDB2  20 53 C8:    jsr _func_0853
	$DDB5  20 D5 EF:    jsr _func_2FD5
	$DDB8  86 04:       stx $04
	$DDBA  BD 00 02:    lda $0200,x
	$DDBD  20 12 E1:    jsr _func_2112
	$DDC0  A4 0A:       ldy $0A
	$DDC2  C0 04:       cpy #$04
	$DDC4  D0 03:       bne +		; $DDC9
	$DDC6  4C 73 DE:    jmp _loc_1E73

+	$DDC9  C9 00:       cmp #$00
	$DDCB  F0 0A:       beq ++++		; $DDD7
	$DDCD  A6 5D:       ldx $5D
	$DDCF  A9 01:       lda #$01
	$DDD1  95 8A:       sta $8A,x
	$DDD3  A9 C1:       lda #$C1
	$DDD5  95 5E:       sta $5E,x
++++	$DDD7  20 D5 EF:    jsr _func_2FD5
	$DDDA  86 04:       stx $04
	$DDDC  A6 5D:       ldx $5D
	$DDDE  B5 5E:       lda $5E,x
	$DDE0  C9 C1:       cmp #$C1
	$DDE2  D0 2F:       bne ++++		; $DE13
	$DDE4  A9 20:       lda #$20
	$DDE6  20 E4 DF:    jsr _func_1FE4
	$DDE9  D0 0A:       bne +		; $DDF5
	$DDEB  A6 04:       ldx $04
	$DDED  BD 00 02:    lda $0200,x
	$DDF0  85 01:       sta $01
	$DDF2  4C 27 DE:    jmp _loc_1E27

+	$DDF5  A6 5D:       ldx $5D
	$DDF7  A9 C0:       lda #$C0
	$DDF9  95 5E:       sta $5E,x
	$DDFB  A5 07:       lda $07
	$DDFD  C9 03:       cmp #$03
	$DDFF  D0 0F:       bne +++		; $DE10 -> _loc_1E1A
	$DE01  BD 17 04:    lda $0417,x
	$DE04  F0 05:       beq +		; $DE0B
	$DE06  A9 00:       lda #$00
	$DE08  4C 0D DE:    jmp ++		; $DE0D

+	$DE0B  A9 01:       lda #$01
++	$DE0D  9D 17 04:    sta $0417,x
+++	$DE10  4C 1A DE:    jmp _loc_1E1A

++++	$DE13  A9 FF:       lda #$FF
	$DE15  20 E4 DF:    jsr _func_1FE4
	$DE18  F0 6B:       beq _loc_1E85		; $DE85 -> rts
_loc_1E1A
	$DE1A  A6 04:       ldx $04
	$DE1C  A9 01:       lda #$01
	$DE1E  18:          clc 
	$DE1F  7D 00 02:    adc $0200,x
	$DE22  85 01:       sta $01
	$DE24  20 86 DE:    jsr _func_1E86
_loc_1E27
	$DE27  E8:          inx 
	$DE28  E8:          inx 
	$DE29  E8:          inx 
	$DE2A  A5 07:       lda $07
	$DE2C  C9 02:       cmp #$02
	$DE2E  D0 06:       bne +		; $DE36
	$DE30  FE 00 02:    inc $0200,x
	$DE33  4C 56 DE:    jmp ++		; $DE56

+	$DE36  C9 03:       cmp #$03
	$DE38  D0 1C:       bne ++		; $DE56
	$DE3A  A5 01:       lda $01
	$DE3C  29 01:       and #$01
	$DE3E  F0 16:       beq ++		; $DE56
	$DE40  A4 5D:       ldy $5D
	$DE42  B9 17 04:    lda $0417,y
	$DE45  D0 09:       bne +		; $DE50
	$DE47  FE 00 02:    inc $0200,x
	$DE4A  FE 00 02:    inc $0200,x
	$DE4D  4C 56 DE:    jmp ++		; $DE56

+	$DE50  DE 00 02:    dec $0200,x
	$DE53  DE 00 02:    dec $0200,x
++	$DE56  BD 00 02:    lda $0200,x
	$DE59  85 00:       sta $00
	$DE5B  A6 5D:       ldx $5D
	$DE5D  B5 72:       lda $72,x
	$DE5F  C9 90:       cmp #$90
	$DE61  D0 05:       bne +		; $DE68
	$DE63  A9 94:       lda #$94
	$DE65  4C 6A DE:    jmp ++		; $DE6A

+	$DE68  A9 90:       lda #$90
++	$DE6A  85 02:       sta $02
	$DE6C  A6 5D:       ldx $5D
	$DE6E  95 72:       sta $72,x
	$DE70  4C DB EA:    jmp _func_2ADB
;------------------------------------------
_loc_1E73
	$DE73  A9 C2:       lda #$C2
	$DE75  A6 5D:       ldx $5D
	$DE77  95 5E:       sta $5E,x
	$DE79  A6 04:       ldx $04
	$DE7B  BD 03 02:    lda $0203,x
	$DE7E  8D 2B 04:    sta $042B
	$DE81  60:          rts 
;------------------------------------------
_loc_1E82
	$DE82  20 A5 DE:    jsr _func_1EA5
_loc_1E85
	$DE85  60:          rts 
;------------------------------------------
_func_1E86
	$DE86  A5 07:       lda $07
	$DE88  C9 01:       cmp #$01
	$DE8A  D0 18:       bne ++		; $DEA4 -> rts
	$DE8C  A0 00:       ldy #$00
	$DE8E  A5 01:       lda $01
-	$DE90  D9 1D C4:    cmp _data_041D_indexed,y
	$DE93  90 0A:       bcc +		; $DE9F
	$DE95  D9 20 C4:    cmp _data_0420_indexed,y
	$DE98  B0 05:       bcs +		; $DE9F
	$DE9A  E6 01:       inc $01
	$DE9C  4C A4 DE:    jmp ++		; $DEA4 -> rts

+	$DE9F  C8:          iny 
	$DEA0  C0 03:       cpy #$03
	$DEA2  D0 EC:       bne -		; $DE90
++	$DEA4  60:          rts 
;------------------------------------------
_func_1EA5
	$DEA5  20 D5 EF:    jsr _func_2FD5
	$DEA8  86 04:       stx $04
	$DEAA  20 EC EA:    jsr _func_2AEC
	$DEAD  C6 00:       dec $00
	$DEAF  AD 2B 04:    lda $042B
	$DEB2  38:          sec 
	$DEB3  E9 01:       sbc #$01
	$DEB5  C5 00:       cmp $00
	$DEB7  F0 2F:       beq +		; $DEE8
	$DEB9  38:          sec 
	$DEBA  E9 01:       sbc #$01
	$DEBC  C5 00:       cmp $00
	$DEBE  F0 28:       beq +		; $DEE8
	$DEC0  38:          sec 
	$DEC1  E9 01:       sbc #$01
	$DEC3  C5 00:       cmp $00
	$DEC5  F0 2B:       beq +++		; $DEF2
	$DEC7  38:          sec 
	$DEC8  E9 08:       sbc #$08
	$DECA  C5 00:       cmp $00
	$DECC  F0 1F:       beq ++		; $DEED
	$DECE  38:          sec 
	$DECF  E9 01:       sbc #$01
	$DED1  C5 00:       cmp $00
	$DED3  F0 18:       beq ++		; $DEED
	$DED5  38:          sec 
	$DED6  E9 01:       sbc #$01
	$DED8  C5 00:       cmp $00
	$DEDA  D0 1F:       bne ++++		; $DEFB
-	$DEDC  A9 01:       lda #$01
	$DEDE  A6 5D:       ldx $5D
	$DEE0  95 5E:       sta $5E,x
	$DEE2  A9 00:       lda #$00
	$DEE4  9D 17 04:    sta $0417,x
	$DEE7  60:          rts 

+	$DEE8  C6 01:       dec $01
	$DEEA  4C FB DE:    jmp ++++		; $DEFB

++	$DEED  E6 01:       inc $01
	$DEEF  4C FB DE:    jmp ++++		; $DEFB

+++	$DEF2  A6 5D:       ldx $5D
	$DEF4  BD 21 04:    lda $0421,x
	$DEF7  C9 01:       cmp #$01
	$DEF9  F0 E1:       beq -		; $DEDC
++++	$DEFB  A9 84:       lda #$84
	$DEFD  A6 5D:       ldx $5D
	$DEFF  95 72:       sta $72,x
	$DF01  85 02:       sta $02
	$DF03  20 DB EA:    jsr _func_2ADB
	$DF06  60:          rts 
;------------------------------------------
_func_1F07
	$DF07  A9 55:       lda #$55
	$DF09  20 E4 DF:    jsr _func_1FE4
	$DF0C  D0 01:       bne +		; $DF0F
	$DF0E  60:          rts 

+	$DF0F  20 D5 EF:    jsr _func_2FD5
	$DF12  86 04:       stx $04
	$DF14  20 EC EA:    jsr _func_2AEC
	$DF17  E6 01:       inc $01
	$DF19  BD 01 02:    lda $0201,x
	$DF1C  C9 90:       cmp #$90
	$DF1E  F0 05:       beq +		; $DF25
	$DF20  A9 90:       lda #$90
	$DF22  4C 27 DF:    jmp ++		; $DF27

+	$DF25  A9 94:       lda #$94
++	$DF27  85 02:       sta $02
	$DF29  20 DB EA:    jsr _func_2ADB
	$DF2C  A5 C0:       lda $C0
	$DF2E  C5 01:       cmp $01
	$DF30  F0 03:       beq +		; $DF35
	$DF32  90 01:       bcc +		; $DF35
	$DF34  60:          rts 

+	$DF35  A6 5D:       ldx $5D
	$DF37  A9 01:       lda #$01
	$DF39  95 5E:       sta $5E,x
	$DF3B  A9 00:       lda #$00
	$DF3D  85 C0:       sta $C0
	$DF3F  60:          rts 
;------------------------------------------
_func_1F40
	$DF40  A5 C0:       lda $C0
	$DF42  F0 01:       beq +		; $DF45
	$DF44  60:          rts 

+	$DF45  A5 96:       lda $96
	$DF47  C9 0A:       cmp #$0A
	$DF49  F0 01:       beq +		; $DF4C
	$DF4B  60:          rts 

+	$DF4C  A5 59:       lda $59
	$DF4E  C9 03:       cmp #$03
	$DF50  F0 03:       beq +		; $DF55
	$DF52  4C 72 DF:    jmp ++		; $DF72

+	$DF55  A2 03:       ldx #$03
	$DF57  B5 7E:       lda $7E,x
	$DF59  C9 05:       cmp #$05
	$DF5B  B0 01:       bcs +		; $DF5E
	$DF5D  60:          rts 

+	$DF5E  A2 00:       ldx #$00
-	$DF60  B5 5E:       lda $5E,x
	$DF62  C9 01:       cmp #$01
	$DF64  D0 06:       bne +		; $DF6C
	$DF66  B5 68:       lda $68,x
	$DF68  C9 03:       cmp #$03
	$DF6A  F0 23:       beq +++		; $DF8F
+	$DF6C  E8:          inx 
	$DF6D  E0 0A:       cpx #$0A
	$DF6F  D0 EF:       bne -		; $DF60
	$DF71  60:          rts 

++	$DF72  A2 05:       ldx #$05
	$DF74  B5 7E:       lda $7E,x
	$DF76  C9 05:       cmp #$05
	$DF78  B0 01:       bcs +		; $DF7B
	$DF7A  60:          rts 

+	$DF7B  A2 00:       ldx #$00
-	$DF7D  B5 5E:       lda $5E,x
	$DF7F  C9 01:       cmp #$01
	$DF81  D0 06:       bne +		; $DF89
	$DF83  B5 68:       lda $68,x
	$DF85  C9 05:       cmp #$05
	$DF87  F0 06:       beq +++		; $DF8F
+	$DF89  E8:          inx 
	$DF8A  C9 0A:       cmp #$0A
	$DF8C  D0 EF:       bne -		; $DF7D
	$DF8E  60:          rts 

+++	$DF8F  A9 40:       lda #$40
	$DF91  95 5E:       sta $5E,x
	$DF93  D6 68:       dec $68,x
	$DF95  8A:          txa 
	$DF96  18:          clc 
	$DF97  69 03:       adc #$03
	$DF99  0A:          asl a
	$DF9A  0A:          asl a
	$DF9B  0A:          asl a
	$DF9C  0A:          asl a
	$DF9D  A8:          tay 
	$DF9E  B9 00 02:    lda $0200,y
	$DFA1  85 01:       sta $01
	$DFA3  B9 03 02:    lda $0203,y
	$DFA6  85 00:       sta $00
	$DFA8  AD EB C1:    lda _data_01EB
	$DFAB  A0 00:       ldy #$00
-	$DFAD  C5 00:       cmp $00
	$DFAF  B0 07:       bcs +		; $DFB8
	$DFB1  18:          clc 
	$DFB2  69 18:       adc #$18
	$DFB4  C8:          iny 
	$DFB5  4C AD DF:    jmp -		; $DFAD

+	$DFB8  98:          tya 
	$DFB9  0A:          asl a
	$DFBA  18:          clc 
	$DFBB  69 15:       adc #$15
	$DFBD  18:          clc 
	$DFBE  65 01:       adc $01
	$DFC0  85 C0:       sta $C0
	$DFC2  60:          rts 
;------------------------------------------
_func_1FC3
	$DFC3  A6 5D:       ldx $5D
	$DFC5  B5 68:       lda $68,x
	$DFC7  C9 01:       cmp #$01
	$DFC9  D0 18:       bne +		; $DFE3 -> rts
	$DFCB  20 D5 EF:    jsr _func_2FD5
	$DFCE  BD 03 02:    lda $0203,x
	$DFD1  C9 30:       cmp #$30
	$DFD3  B0 0E:       bcs +		; $DFE3 -> rts
	$DFD5  A9 23:       lda #$23
	$DFD7  9D 02 02:    sta $0202,x
	$DFDA  9D 06 02:    sta $0206,x
	$DFDD  9D 0A 02:    sta $020A,x
	$DFE0  9D 0E 02:    sta $020E,x
+	$DFE3  60:          rts 
;------------------------------------------
_func_1FE4
	$DFE4  85 0A:       sta $0A
	$DFE6  85 0B:       sta $0B
_func_1FE8
	$DFE8  A6 5D:       ldx $5D
	$DFEA  F6 8A:       inc $8A,x
	$DFEC  B5 8A:       lda $8A,x
	$DFEE  30 07:       bmi +		; $DFF7
	$DFF0  C9 10:       cmp #$10
	$DFF2  B0 03:       bcs +		; $DFF7
	$DFF4  4C FB DF:    jmp ++		; $DFFB

+	$DFF7  A9 00:       lda #$00
	$DFF9  95 8A:       sta $8A,x
++	$DFFB  C9 08:       cmp #$08
	$DFFD  B0 09:       bcs +		; $E008
	$DFFF  AA:          tax 
	$E000  BD BC C1:    lda _data_01BC_indexed,x
	$E003  25 0A:       and $0A
	$E005  4C 11 E0:    jmp ++		; $E011

+	$E008  38:          sec 
	$E009  E9 08:       sbc #$08
	$E00B  AA:          tax 
	$E00C  BD BC C1:    lda _data_01BC_indexed,x
	$E00F  25 0B:       and $0B
++	$E011  F0 02:       beq +		; $E015 -> rts
	$E013  A9 01:       lda #$01
+	$E015  60:          rts 
;------------------------------------------
_func_2016
	$E016  85 0A:       sta $0A
	$E018  A5 53:       lda $53
	$E01A  38:          sec 
	$E01B  E9 01:       sbc #$01
	$E01D  0A:          asl a
	$E01E  AA:          tax 
	$E01F  BD 93 C4:    lda _DataPointerTable_0493,x
	$E022  85 08:       sta $08
	$E024  BD 94 C4:    lda _DataPointerTable_0493+1,x
	$E027  85 09:       sta $09
	$E029  A0 00:       ldy #$00
	$E02B  A9 01:       lda #$01
	$E02D  85 0B:       sta $0B
-	$E02F  B1 08:       lda ($08),y
	$E031  C9 FF:       cmp #$FF
	$E033  F0 0C:       beq +		; $E041
	$E035  C5 0A:       cmp $0A
	$E037  F0 0C:       beq ++		; $E045
	$E039  90 0A:       bcc ++		; $E045
	$E03B  E6 0B:       inc $0B
	$E03D  C8:          iny 
	$E03E  4C 2F E0:    jmp -		; $E02F

+	$E041  A9 07:       lda #$07
	$E043  85 0B:       sta $0B
++	$E045  A5 0B:       lda $0B
	$E047  60:          rts 
;------------------------------------------
_func_2048
	$E048  A6 5D:       ldx $5D
	$E04A  B5 5E:       lda $5E,x
	$E04C  C9 01:       cmp #$01
	$E04E  D0 07:       bne +		; $E057
	$E050  A5 7D:       lda $7D
	$E052  D0 03:       bne +		; $E057
	$E054  A9 01:       lda #$01
	$E056  60:          rts 

+	$E057  A9 00:       lda #$00
	$E059  60:          rts 
;------------------------------------------
_func_205A
	$E05A  85 0C:       sta $0C
	$E05C  A6 5D:       ldx $5D
	$E05E  B5 68:       lda $68,x
	$E060  C9 01:       cmp #$01
	$E062  F0 15:       beq +		; $E079
	$E064  C9 06:       cmp #$06
	$E066  F0 11:       beq +		; $E079
	$E068  A2 00:       ldx #$00
-	$E06A  BD C4 C1:    lda _data_01C4_indexed,x
	$E06D  C5 0C:       cmp $0C
	$E06F  F0 19:       beq ++		; $E08A
	$E071  E8:          inx 
	$E072  E0 09:       cpx #$09
	$E074  F0 17:       beq +++		; $E08D
	$E076  4C 6A E0:    jmp -		; $E06A

+	$E079  A2 04:       ldx #$04
-	$E07B  BD C4 C1:    lda _data_01C4_indexed,x
	$E07E  C5 0C:       cmp $0C
	$E080  F0 08:       beq ++		; $E08A
	$E082  E8:          inx 
	$E083  E0 09:       cpx #$09
	$E085  F0 06:       beq +++		; $E08D
	$E087  4C 7B E0:    jmp -		; $E07B

++	$E08A  A9 00:       lda #$00
	$E08C  60:          rts 

+++	$E08D  A9 01:       lda #$01
	$E08F  60:          rts 
;------------------------------------------
_func_2090
	$E090  85 0C:       sta $0C
	$E092  A6 5D:       ldx $5D
	$E094  B5 68:       lda $68,x
	$E096  29 01:       and #$01
	$E098  F0 05:       beq +		; $E09F
	$E09A  A2 00:       ldx #$00
	$E09C  4C A1 E0:    jmp ++		; $E0A1

+	$E09F  A2 01:       ldx #$01
++	$E0A1  BD CD C1:    lda _data_01CD_indexed,x
	$E0A4  C5 0C:       cmp $0C
	$E0A6  F0 03:       beq +		; $E0AB
	$E0A8  A9 00:       lda #$00
	$E0AA  60:          rts 

+	$E0AB  A9 01:       lda #$01
	$E0AD  60:          rts 
;------------------------------------------
_func_20AE
	$E0AE  85 0C:       sta $0C
	$E0B0  A6 5D:       ldx $5D
	$E0B2  B5 68:       lda $68,x
	$E0B4  C9 02:       cmp #$02
	$E0B6  F0 13:       beq +		; $E0CB
	$E0B8  C9 03:       cmp #$03
	$E0BA  F0 0F:       beq +		; $E0CB
	$E0BC  C9 04:       cmp #$04
	$E0BE  F0 11:       beq ++		; $E0D1
	$E0C0  C9 05:       cmp #$05
	$E0C2  F0 19:       beq +++		; $E0DD
	$E0C4  C9 06:       cmp #$06
	$E0C6  F0 21:       beq ++++		; $E0E9
	$E0C8  4C EC E0:    jmp _loc_20EC

+	$E0CB  20 F1 E0:    jsr _func_20F1
	$E0CE  4C EC E0:    jmp _loc_20EC

++	$E0D1  20 F1 E0:    jsr _func_20F1
	$E0D4  A0 89:       ldy #$89
	$E0D6  C9 C4:       cmp #$C4
	$E0D8  F0 2F:       beq _loc_2109
	$E0DA  4C EC E0:    jmp _loc_20EC

+++	$E0DD  20 F1 E0:    jsr _func_20F1
	$E0E0  A0 71:       ldy #$71
	$E0E2  C9 B4:       cmp #$B4
	$E0E4  F0 23:       beq _loc_2109
	$E0E6  4C EC E0:    jmp _loc_20EC

++++	$E0E9  20 F1 E0:    jsr _func_20F1
_loc_20EC
	$E0EC  A9 00:       lda #$00
	$E0EE  4C 0F E1:    jmp _loc_210F
;------------------------------------------
_func_20F1
	$E0F1  AA:          tax 
	$E0F2  CA:          dex 
	$E0F3  CA:          dex 
	$E0F4  A5 0C:       lda $0C
	$E0F6  BC 72 C1:    ldy _data_0172_indexed,x
	$E0F9  DD 77 C1:    cmp _data_0177_indexed,x
	$E0FC  F0 09:       beq _loc_2107
	$E0FE  BC 7C C1:    ldy _data_017C_indexed,x
	$E101  DD 81 C1:    cmp _data_0181_indexed,x
	$E104  F0 01:       beq _loc_2107
	$E106  60:          rts 
;------------------------------------------
_loc_2107
	$E107  68:          pla 
	$E108  68:          pla 
_loc_2109
	$E109  A6 5D:       ldx $5D
	$E10B  94 A3:       sty $A3,x
	$E10D  A9 01:       lda #$01
_loc_210F
	$E10F  85 0C:       sta $0C
	$E111  60:          rts 
;------------------------------------------
_func_2112
	$E112  85 0B:       sta $0B
	$E114  A0 00:       ldy #$00
-	$E116  B1 08:       lda ($08),y
	$E118  C9 FE:       cmp #$FE
	$E11A  F0 0D:       beq ++		; $E129
	$E11C  C5 0B:       cmp $0B
	$E11E  F0 04:       beq +		; $E124
	$E120  C8:          iny 
	$E121  4C 16 E1:    jmp -		; $E116

+	$E124  A9 01:       lda #$01
	$E126  4C 2B E1:    jmp +++		; $E12B

++	$E129  A9 00:       lda #$00
+++	$E12B  85 0C:       sta $0C
	$E12D  84 0A:       sty $0A
	$E12F  60:          rts 
;------------------------------------------
_func_2130
	$E130  A6 5D:       ldx $5D
	$E132  B5 68:       lda $68,x
	$E134  38:          sec 
	$E135  E5 59:       sbc $59
	$E137  F0 05:       beq +		; $E13E
	$E139  30 03:       bmi +		; $E13E
	$E13B  4C 41 E1:    jmp ++		; $E141

+	$E13E  A9 01:       lda #$01
	$E140  60:          rts 

++	$E141  A9 00:       lda #$00
	$E143  60:          rts 

	$E144               .byte $A2,$00,$A0,$20,$B9,$00,$02,$C9,$FF,$F0,$08,$20,$16,$E0,$95,$68
	$E154               .byte $4C,$5B,$E1,$A9,$00,$95,$68,$98,$18,$69,$10,$A8,$E8,$E0,$0A,$D0
	$E164               .byte $E3,$60
_func_2166
	$E166  A9 00:       lda #$00
	$E168  A0 06:       ldy #$06
-	$E16A  99 7E 00:    sta $007E,y
	$E16D  88:          dey 
	$E16E  10 FA:       bpl -		; $E16A
	$E170  A0 00:       ldy #$00
-	$E172  B9 68 00:    lda $0068,y
	$E175  F0 08:       beq +		; $E17F
	$E177  AA:          tax 
	$E178  B5 7E:       lda $7E,x
	$E17A  18:          clc 
	$E17B  69 01:       adc #$01
	$E17D  95 7E:       sta $7E,x
+	$E17F  C0 09:       cpy #$09
	$E181  F0 04:       beq +		; $E187
	$E183  C8:          iny 
	$E184  4C 72 E1:    jmp -		; $E172

+	$E187  A6 59:       ldx $59
	$E189  E0 07:       cpx #$07
	$E18B  F0 0C:       beq +		; $E199 -> rts
	$E18D  F6 7E:       inc $7E,x
	$E18F  A5 96:       lda $96
	$E191  C9 0A:       cmp #$0A
	$E193  D0 04:       bne +		; $E199 -> rts
	$E195  A6 59:       ldx $59
	$E197  F6 7E:       inc $7E,x
+	$E199  60:          rts 
;------------------------------------------
_func_219A
	$E19A  A5 AD:       lda $AD
	$E19C  D0 01:       bne +		; $E19F
	$E19E  60:          rts 

+	$E19F  C9 01:       cmp #$01
	$E1A1  D0 1C:       bne +		; $E1BF
	$E1A3  A9 20:       lda #<_data_0020
	$E1A5  85 00:       sta $00
	$E1A7  A9 C0:       lda #>_data_0020
	$E1A9  85 01:       sta $01
	$E1AB  A9 FC:       lda #$FC
	$E1AD  85 02:       sta $02
	$E1AF  A9 12:       lda #$12
	$E1B1  85 03:       sta $03
	$E1B3  A9 E0:       lda #$E0
	$E1B5  20 80 F0:    jsr _func_3080
	$E1B8  A9 02:       lda #$02
	$E1BA  85 AD:       sta $AD
	$E1BC  4C E0 E1:    jmp +++		; $E1E0

+	$E1BF  A5 38:       lda $38
	$E1C1  D0 21:       bne ++++		; $E1E4 -> rts
	$E1C3  A9 03:       lda #$03
	$E1C5  85 AD:       sta $AD
	$E1C7  A2 E1:       ldx #$E1
	$E1C9  BD 00 02:    lda $0200,x
	$E1CC  C9 FC:       cmp #$FC
	$E1CE  F0 05:       beq +		; $E1D5
	$E1D0  A9 FC:       lda #$FC
	$E1D2  4C D7 E1:    jmp ++		; $E1D7

+	$E1D5  A9 FE:       lda #$FE
++	$E1D7  9D 00 02:    sta $0200,x
	$E1DA  18:          clc 
	$E1DB  69 01:       adc #$01
	$E1DD  9D 04 02:    sta $0204,x
+++	$E1E0  A9 10:       lda #$10
	$E1E2  85 38:       sta $38
++++	$E1E4  60:          rts 
;------------------------------------------
_func_21E5
	$E1E5  A9 00:       lda #$00
	$E1E7  85 AE:       sta $AE
-	$E1E9  20 DD EF:    jsr _func_2FDD
	$E1EC  BD 00 02:    lda $0200,x
	$E1EF  C9 FF:       cmp #$FF
	$E1F1  D0 32:       bne ++++		; $E225
	$E1F3  A5 53:       lda $53
	$E1F5  C9 01:       cmp #$01
	$E1F7  F0 07:       beq +		; $E200
	$E1F9  C9 04:       cmp #$04
	$E1FB  F0 16:       beq ++		; $E213
	$E1FD  4C 25 E2:    jmp ++++		; $E225

+	$E200  A5 40:       lda $40
	$E202  D0 24:       bne _loc_2228
	$E204  A5 AD:       lda $AD
	$E206  F0 20:       beq _loc_2228
	$E208  C9 02:       cmp #$02
	$E20A  D0 1C:       bne _loc_2228
	$E20C  A9 19:       lda #$19
	$E20E  85 40:       sta $40
	$E210  4C 1F E2:    jmp +++		; $E21F

++	$E213  A5 40:       lda $40
	$E215  D0 11:       bne _loc_2228
	$E217  20 F7 EA:    jsr _func_2AF7
	$E21A  BD 66 C4:    lda _data_0466_indexed,x
	$E21D  85 40:       sta $40
+++	$E21F  A9 06:       lda #$06
	$E221  A6 AE:       ldx $AE
	$E223  95 AF:       sta $AF,x
++++	$E225  20 50 E2:    jsr _func_2250
_loc_2228
	$E228  A6 53:       ldx $53
	$E22A  CA:          dex 
	$E22B  E6 AE:       inc $AE
	$E22D  A5 AE:       lda $AE
	$E22F  DD F6 C1:    cmp _data_01F6_indexed,x
	$E232  F0 03:       beq +		; $E237
	$E234  4C E9 E1:    jmp -		; $E1E9

+	$E237  A5 53:       lda $53
	$E239  C9 03:       cmp #$03
	$E23B  F0 12:       beq +		; $E24F -> rts
	$E23D  A5 3B:       lda $3B
	$E23F  D0 0E:       bne +		; $E24F -> rts
	$E241  A9 00:       lda #$00
	$E243  85 D2:       sta $D2
	$E245  85 D3:       sta $D3
	$E247  85 D4:       sta $D4
	$E249  85 D5:       sta $D5
	$E24B  A9 BC:       lda #$BC
	$E24D  85 3B:       sta $3B
+	$E24F  60:          rts 
;------------------------------------------
_func_2250
	$E250  A6 AE:       ldx $AE
	$E252  B5 AF:       lda $AF,x
-	$E254  29 0F:       and #$0F
	$E256  F0 3A:       beq ++++		; $E292 -> _loc_22F9
	$E258  C9 06:       cmp #$06
	$E25A  F0 33:       beq +++		; $E28F -> _loc_2538
	$E25C  C9 08:       cmp #$08
	$E25E  F0 2F:       beq +++		; $E28F -> _loc_2538
	$E260  C9 01:       cmp #$01
	$E262  F0 31:       beq _loc_2295
	$E264  C9 02:       cmp #$02
	$E266  F0 32:       beq _loc_229A
	$E268  C9 03:       cmp #$03
	$E26A  F0 35:       beq _loc_22A1
	$E26C  A5 53:       lda $53
	$E26E  C9 03:       cmp #$03
	$E270  F0 06:       beq +		; $E278
	$E272  20 B6 E2:    jsr _func_22B6
	$E275  4C 80 E2:    jmp ++		; $E280

+	$E278  B5 19:       lda $19,x
	$E27A  29 03:       and #$03
	$E27C  A6 AE:       ldx $AE
	$E27E  95 AF:       sta $AF,x
++	$E280  B5 AF:       lda $AF,x
	$E282  C9 01:       cmp #$01
	$E284  F0 04:       beq +		; $E28A
	$E286  C9 02:       cmp #$02
	$E288  D0 02:       bne ++		; $E28C -> $E254
+	$E28A  95 B3:       sta $B3,x
++	$E28C  4C 54 E2:    jmp -		; $E254

+++	$E28F  4C 38 E5:    jmp _loc_2538

++++ -	$E292  4C F9 E2:    jmp _loc_22F9
;------------------------------------------
_loc_2295
	$E295  A9 00:       lda #$00
	$E297  4C 9C E2:    jmp _loc_229C
;------------------------------------------
_loc_229A
	$E29A  A9 01:       lda #$01
_loc_229C
	$E29C  85 99:       sta $99
	$E29E  4C 68 E3:    jmp _loc_2368
;------------------------------------------
_loc_22A1
	$E2A1  A5 53:       lda $53
	$E2A3  C9 01:       cmp #$01
	$E2A5  D0 0C:       bne +		; $E2B3 -> _loc_241B
	$E2A7  20 26 E6:    jsr _func_2626
	$E2AA  A6 AE:       ldx $AE
	$E2AC  B5 AF:       lda $AF,x
	$E2AE  D0 03:       bne +		; $E2B3 -> _loc_241B
	$E2B0  4C 92 E2:    jmp -		; $E292 -> _loc_22F9

+	$E2B3  4C 1B E4:    jmp _loc_241B
;------------------------------------------
_func_22B6
	$E2B6  A6 AE:       ldx $AE
	$E2B8  B5 D2:       lda $D2,x
	$E2BA  D0 21:       bne ++		; $E2DD
	$E2BC  A9 01:       lda #$01
	$E2BE  95 D2:       sta $D2,x
	$E2C0  A5 AE:       lda $AE
	$E2C2  18:          clc 
	$E2C3  69 01:       adc #$01
	$E2C5  0A:          asl a
	$E2C6  0A:          asl a
	$E2C7  0A:          asl a
	$E2C8  0A:          asl a
	$E2C9  A8:          tay 
	$E2CA  B9 03 02:    lda $0203,y
	$E2CD  CD 03 02:    cmp $0203
	$E2D0  B0 07:       bcs +		; $E2D9
	$E2D2  A9 01:       lda #$01
	$E2D4  95 EC:       sta $EC,x
	$E2D6  4C DD E2:    jmp ++		; $E2DD

+	$E2D9  A9 02:       lda #$02
	$E2DB  95 EC:       sta $EC,x
++	$E2DD  B5 19:       lda $19,x
	$E2DF  29 07:       and #$07
	$E2E1  95 AF:       sta $AF,x
	$E2E3  A8:          tay 
	$E2E4  C9 04:       cmp #$04
	$E2E6  B0 03:       bcs +		; $E2EB
	$E2E8  4C F6 E2:    jmp ++		; $E2F6

+	$E2EB  B4 EC:       ldy $EC,x
	$E2ED  C9 07:       cmp #$07
	$E2EF  B0 03:       bcs +		; $E2F4
	$E2F1  4C F6 E2:    jmp ++		; $E2F6

+	$E2F4  A0 03:       ldy #$03
++	$E2F6  94 AF:       sty $AF,x
	$E2F8  60:          rts 
;------------------------------------------
_loc_22F9
	$E2F9  A9 55:       lda #$55
	$E2FB  85 0A:       sta $0A
	$E2FD  85 0B:       sta $0B
	$E2FF  20 06 E8:    jsr _func_2806
	$E302  D0 01:       bne +		; $E305
	$E304  60:          rts 

+	$E305  20 DD EF:    jsr _func_2FDD
	$E308  86 04:       stx $04
	$E30A  20 EC EA:    jsr _func_2AEC
	$E30D  A6 AE:       ldx $AE
	$E30F  B5 AF:       lda $AF,x
	$E311  C9 20:       cmp #$20
	$E313  D0 05:       bne +		; $E31A
	$E315  A9 FF:       lda #$FF
	$E317  95 AF:       sta $AF,x
	$E319  60:          rts 

+	$E31A  C9 10:       cmp #$10
	$E31C  F0 05:       beq +		; $E323
	$E31E  C6 01:       dec $01
	$E320  4C 25 E3:    jmp ++		; $E325

+	$E323  E6 01:       inc $01
++	$E325  A5 04:       lda $04
	$E327  A8:          tay 
	$E328  C8:          iny 
	$E329  B9 00 02:    lda $0200,y
	$E32C  A6 53:       ldx $53
	$E32E  E0 04:       cpx #$04
	$E330  F0 0E:       beq ++		; $E340
	$E332  C9 9C:       cmp #$9C
	$E334  F0 05:       beq +		; $E33B
	$E336  A9 9C:       lda #$9C
	$E338  4C 4B E3:    jmp +++		; $E34B

+	$E33B  A9 98:       lda #$98
	$E33D  4C 4B E3:    jmp +++		; $E34B

++	$E340  C9 AC:       cmp #$AC
	$E342  F0 05:       beq +		; $E349
	$E344  A9 AC:       lda #$AC
	$E346  4C 4B E3:    jmp +++		; $E34B

+	$E349  A9 A8:       lda #$A8
+++	$E34B  20 D4 EA:    jsr _func_2AD4
	$E34E  A6 AE:       ldx $AE
	$E350  B5 B3:       lda $B3,x
	$E352  4A:          lsr a
	$E353  20 96 F0:    jsr _func_3096
	$E356  A6 AE:       ldx $AE
	$E358  B5 AF:       lda $AF,x
	$E35A  C9 10:       cmp #$10
	$E35C  F0 05:       beq +		; $E363
	$E35E  A9 10:       lda #$10
	$E360  4C 65 E3:    jmp ++		; $E365

+	$E363  A9 20:       lda #$20
++	$E365  95 AF:       sta $AF,x
	$E367  60:          rts 
;------------------------------------------
_loc_2368
	$E368  A9 55:       lda #$55
	$E36A  85 0A:       sta $0A
	$E36C  85 0B:       sta $0B
	$E36E  20 06 E8:    jsr _func_2806
	$E371  D0 01:       bne +		; $E374
	$E373  60:          rts 

+	$E374  20 DD EF:    jsr _func_2FDD
	$E377  86 04:       stx $04
	$E379  20 EC EA:    jsr _func_2AEC
	$E37C  A5 99:       lda $99
	$E37E  D0 05:       bne +		; $E385
	$E380  E6 00:       inc $00
	$E382  4C 87 E3:    jmp ++		; $E387

+	$E385  C6 00:       dec $00
++	$E387  A5 00:       lda $00
	$E389  29 0F:       and #$0F
	$E38B  C9 04:       cmp #$04
	$E38D  F0 07:       beq +		; $E396
	$E38F  C9 0C:       cmp #$0C
	$E391  F0 03:       beq +		; $E396
	$E393  4C 9B E3:    jmp ++		; $E39B

+	$E396  E6 01:       inc $01
	$E398  4C AF E3:    jmp +++		; $E3AF

++	$E39B  A6 99:       ldx $99
	$E39D  DD E2 C3:    cmp _data_03E2_indexed,x
	$E3A0  F0 08:       beq +		; $E3AA
	$E3A2  DD E4 C3:    cmp _data_03E4_indexed,x
	$E3A5  F0 03:       beq +		; $E3AA
	$E3A7  4C AF E3:    jmp +++		; $E3AF

+	$E3AA  C6 01:       dec $01
	$E3AC  4C C0 E3:    jmp ++++		; $E3C0

+++	$E3AF  C9 04:       cmp #$04
	$E3B1  F0 07:       beq +		; $E3BA
	$E3B3  C9 0C:       cmp #$0C
	$E3B5  F0 03:       beq +		; $E3BA
	$E3B7  4C C0 E3:    jmp ++++		; $E3C0

+	$E3BA  A6 AE:       ldx $AE
	$E3BC  A9 FF:       lda #$FF
	$E3BE  95 AF:       sta $AF,x
++++	$E3C0  A4 99:       ldy $99
	$E3C2  20 A5 E6:    jsr _func_26A5
	$E3C5  D0 07:       bne +		; $E3CE
	$E3C7  A9 00:       lda #$00
	$E3C9  A6 AE:       ldx $AE
	$E3CB  95 AF:       sta $AF,x
	$E3CD  60:          rts 

+	$E3CE  A5 99:       lda $99
	$E3D0  F0 1B:       beq +++		; $E3ED
	$E3D2  A5 00:       lda $00
	$E3D4  C9 0C:       cmp #$0C
	$E3D6  F0 05:       beq +		; $E3DD
	$E3D8  90 0C:       bcc ++		; $E3E6
	$E3DA  4C ED E3:    jmp +++		; $E3ED

+	$E3DD  A9 00:       lda #$00
	$E3DF  A6 AE:       ldx $AE
	$E3E1  95 AF:       sta $AF,x
	$E3E3  4C ED E3:    jmp +++		; $E3ED

++	$E3E6  A9 00:       lda #$00
	$E3E8  A6 AE:       ldx $AE
	$E3EA  95 AF:       sta $AF,x
	$E3EC  60:          rts 

+++	$E3ED  A5 04:       lda $04
	$E3EF  A8:          tay 
	$E3F0  C8:          iny 
	$E3F1  B9 00 02:    lda $0200,y
	$E3F4  A6 53:       ldx $53
	$E3F6  E0 04:       cpx #$04
	$E3F8  F0 0E:       beq ++		; $E408
	$E3FA  C9 9C:       cmp #$9C
	$E3FC  B0 05:       bcs +		; $E403
	$E3FE  A9 9C:       lda #$9C
	$E400  4C 13 E4:    jmp +++		; $E413

+	$E403  A9 98:       lda #$98
	$E405  4C 13 E4:    jmp +++		; $E413

++	$E408  C9 AC:       cmp #$AC
	$E40A  B0 05:       bcs +		; $E411
	$E40C  A9 AC:       lda #$AC
	$E40E  4C 13 E4:    jmp +++		; $E413

+	$E411  A9 A8:       lda #$A8
+++	$E413  20 D4 EA:    jsr _func_2AD4
	$E416  A5 99:       lda $99
	$E418  4C 96 F0:    jmp _func_3096
;------------------------------------------
_loc_241B
	$E41B  A6 AE:       ldx $AE
	$E41D  B5 AF:       lda $AF,x
	$E41F  4A:          lsr a
	$E420  4A:          lsr a
	$E421  4A:          lsr a
	$E422  AA:          tax 
	$E423  A5 53:       lda $53
	$E425  C9 04:       cmp #$04
	$E427  F0 0D:       beq +		; $E436
-	$E429  BD F4 C3:    lda _data_03F4_indexed,x
	$E42C  85 0A:       sta $0A
	$E42E  BD F5 C3:    lda _data_03F5_indexed,x
	$E431  85 0B:       sta $0B
	$E433  4C 4B E4:    jmp ++		; $E44B

+	$E436  A5 50:       lda $50
	$E438  29 01:       and #$01
	$E43A  18:          clc 
	$E43B  65 54:       adc $54
	$E43D  C9 03:       cmp #$03
	$E43F  90 E8:       bcc -		; $E429
	$E441  BD F8 C3:    lda _data_03F8_indexed,x
	$E444  85 0A:       sta $0A
	$E446  BD F9 C3:    lda _data_03F9_indexed,x
	$E449  85 0B:       sta $0B
++	$E44B  20 06 E8:    jsr _func_2806
	$E44E  D0 01:       bne +		; $E451
	$E450  60:          rts 

+	$E451  20 DD EF:    jsr _func_2FDD
	$E454  86 04:       stx $04
	$E456  20 EC EA:    jsr _func_2AEC
	$E459  A6 AE:       ldx $AE
	$E45B  B5 E8:       lda $E8,x
	$E45D  F0 0E:       beq ++		; $E46D
	$E45F  C9 03:       cmp #$03
	$E461  F0 03:       beq +		; $E466
	$E463  4C 6D E4:    jmp ++		; $E46D

+	$E466  A9 00:       lda #$00
	$E468  95 E8:       sta $E8,x
	$E46A  4C 7A E4:    jmp +++		; $E47A

++	$E46D  A5 01:       lda $01
	$E46F  29 03:       and #$03
	$E471  D0 07:       bne +++		; $E47A
	$E473  A9 01:       lda #$01
	$E475  F6 E8:       inc $E8,x
	$E477  4C 0C E5:    jmp _loc_250C

+++	$E47A  A5 53:       lda $53
	$E47C  C9 01:       cmp #$01
	$E47E  F0 35:       beq ++++		; $E4B5
	$E480  20 A3 E7:    jsr _func_27A3
	$E483  C9 03:       cmp #$03
	$E485  F0 07:       beq +		; $E48E
	$E487  C9 13:       cmp #$13
	$E489  F0 10:       beq ++		; $E49B
	$E48B  4C 0C E5:    jmp _loc_250C

+	$E48E  C6 01:       dec $01
	$E490  A5 01:       lda $01
	$E492  A6 AE:       ldx $AE
	$E494  D5 DB:       cmp $DB,x
	$E496  F0 10:       beq +++		; $E4A8
	$E498  4C 0C E5:    jmp _loc_250C

++	$E49B  E6 01:       inc $01
	$E49D  A5 01:       lda $01
	$E49F  A6 AE:       ldx $AE
	$E4A1  D5 DB:       cmp $DB,x
	$E4A3  F0 03:       beq +++		; $E4A8
	$E4A5  4C 0C E5:    jmp _loc_250C

+++	$E4A8  A9 01:       lda #$01
	$E4AA  A6 AE:       ldx $AE
	$E4AC  95 AF:       sta $AF,x
	$E4AE  A9 00:       lda #$00
	$E4B0  95 DB:       sta $DB,x
	$E4B2  4C 0C E5:    jmp _loc_250C

++++	$E4B5  A6 AE:       ldx $AE
	$E4B7  B5 AF:       lda $AF,x
	$E4B9  C9 13:       cmp #$13
	$E4BB  F0 03:       beq +		; $E4C0
	$E4BD  4C D6 E4:    jmp ++		; $E4D6

+	$E4C0  E6 01:       inc $01
	$E4C2  A5 AE:       lda $AE
	$E4C4  0A:          asl a
	$E4C5  AA:          tax 
	$E4C6  E8:          inx 
	$E4C7  B5 B9:       lda $B9,x
	$E4C9  C5 01:       cmp $01
	$E4CB  D0 06:       bne +		; $E4D3 -> _loc_250C
	$E4CD  A9 01:       lda #$01
	$E4CF  A6 AE:       ldx $AE
	$E4D1  95 AF:       sta $AF,x
+	$E4D3  4C 0C E5:    jmp _loc_250C

++	$E4D6  C6 01:       dec $01
	$E4D8  A6 AE:       ldx $AE
	$E4DA  E0 00:       cpx #$00
	$E4DC  D0 1B:       bne +		; $E4F9
	$E4DE  A6 AE:       ldx $AE
	$E4E0  B5 E0:       lda $E0,x
	$E4E2  C9 02:       cmp #$02
	$E4E4  F0 13:       beq +		; $E4F9
	$E4E6  A5 AE:       lda $AE
	$E4E8  0A:          asl a
	$E4E9  AA:          tax 
	$E4EA  B5 B9:       lda $B9,x
	$E4EC  C5 01:       cmp $01
	$E4EE  D0 1C:       bne _loc_250C
	$E4F0  A9 02:       lda #$02
	$E4F2  A6 AE:       ldx $AE
	$E4F4  95 AF:       sta $AF,x
	$E4F6  4C 0C E5:    jmp _loc_250C

+	$E4F9  A5 AE:       lda $AE
	$E4FB  0A:          asl a
	$E4FC  AA:          tax 
	$E4FD  B5 B9:       lda $B9,x
	$E4FF  18:          clc 
	$E500  69 0D:       adc #$0D
	$E502  C5 01:       cmp $01
	$E504  D0 06:       bne _loc_250C
	$E506  A9 13:       lda #$13
	$E508  A6 AE:       ldx $AE
	$E50A  95 AF:       sta $AF,x
_loc_250C
	$E50C  A5 04:       lda $04
	$E50E  A8:          tay 
	$E50F  C8:          iny 
	$E510  B9 00 02:    lda $0200,y
	$E513  A6 53:       ldx $53
	$E515  E0 04:       cpx #$04
	$E517  F0 0E:       beq ++		; $E527
	$E519  C9 9C:       cmp #$9C
	$E51B  B0 05:       bcs +		; $E522
	$E51D  A9 9C:       lda #$9C
	$E51F  4C 32 E5:    jmp +++		; $E532

+	$E522  A9 98:       lda #$98
	$E524  4C 32 E5:    jmp +++		; $E532

++	$E527  C9 AC:       cmp #$AC
	$E529  B0 05:       bcs +		; $E530
	$E52B  A9 AC:       lda #$AC
	$E52D  4C 32 E5:    jmp +++		; $E532

+	$E530  A9 A8:       lda #$A8
+++	$E532  20 D4 EA:    jsr _func_2AD4
	$E535  4C 88 F0:    jmp _func_3088
;------------------------------------------
_loc_2538
	$E538  A6 AE:       ldx $AE
	$E53A  B5 AF:       lda $AF,x
	$E53C  C9 06:       cmp #$06
	$E53E  F0 08:       beq ++		; $E548
	$E540  C9 08:       cmp #$08
	$E542  F0 01:       beq +		; $E545 -> _loc_259F
	$E544  60:          rts 

+	$E545  4C 9F E5:    jmp _loc_259F

++	$E548  A5 53:       lda $53
	$E54A  C9 01:       cmp #$01
	$E54C  F0 05:       beq +		; $E553
	$E54E  C9 04:       cmp #$04
	$E550  F0 12:       beq ++		; $E564
	$E552  60:          rts 

+	$E553  A9 20:       lda #<_data_3820
	$E555  85 00:       sta $00
	$E557  A9 B8:       lda #>_data_3820
	$E559  85 01:       sta $01
	$E55B  A6 AE:       ldx $AE
	$E55D  A9 08:       lda #$08
	$E55F  95 AF:       sta $AF,x
	$E561  4C 92 E5:    jmp +++		; $E592

++	$E564  AD 03 02:    lda $0203
	$E567  C9 78:       cmp #$78
	$E569  90 05:       bcc +		; $E570
	$E56B  A0 00:       ldy #$00
	$E56D  4C 72 E5:    jmp ++		; $E572

+	$E570  A0 08:       ldy #$08
++	$E572  84 0C:       sty $0C
	$E574  A5 19:       lda $19
	$E576  29 03:       and #$03
	$E578  0A:          asl a
	$E579  18:          clc 
	$E57A  65 0C:       adc $0C
	$E57C  AA:          tax 
	$E57D  BD CE C3:    lda _data_03CE_indexed,x
	$E580  85 00:       sta $00
	$E582  BD CF C3:    lda _data_03CF_indexed,x
	$E585  85 01:       sta $01
	$E587  A6 AE:       ldx $AE
	$E589  A9 00:       lda #$00
	$E58B  95 AF:       sta $AF,x
	$E58D  A9 A8:       lda #$A8
	$E58F  4C 94 E5:    jmp ++++		; $E594

+++	$E592  A9 98:       lda #$98
++++	$E594  20 D4 EA:    jsr _func_2AD4
	$E597  20 DD EF:    jsr _func_2FDD
	$E59A  85 04:       sta $04
	$E59C  4C 82 F0:    jmp _func_3082
;------------------------------------------
_loc_259F
	$E59F  20 DD EF:    jsr _func_2FDD
	$E5A2  86 04:       stx $04
	$E5A4  20 EC EA:    jsr _func_2AEC
	$E5A7  BD 01 02:    lda $0201,x
	$E5AA  20 D4 EA:    jsr _func_2AD4
	$E5AD  A5 53:       lda $53
	$E5AF  C9 01:       cmp #$01
	$E5B1  F0 01:       beq +		; $E5B4
	$E5B3  60:          rts 

+	$E5B4  E6 00:       inc $00
	$E5B6  A5 00:       lda $00
	$E5B8  C9 2C:       cmp #$2C
	$E5BA  F0 02:       beq +		; $E5BE
	$E5BC  90 27:       bcc +++		; $E5E5 -> _func_3082
+	$E5BE  E6 01:       inc $01
	$E5C0  A5 01:       lda $01
	$E5C2  C9 C5:       cmp #$C5
	$E5C4  D0 1F:       bne +++		; $E5E5 -> _func_3082
	$E5C6  A9 00:       lda #$00
	$E5C8  A6 AE:       ldx $AE
	$E5CA  95 AF:       sta $AF,x
	$E5CC  C6 00:       dec $00
	$E5CE  A5 00:       lda $00
	$E5D0  C9 68:       cmp #$68
	$E5D2  B0 05:       bcs +		; $E5D9
	$E5D4  E6 01:       inc $01
	$E5D6  4C DB E5:    jmp ++		; $E5DB

+	$E5D9  C6 01:       dec $01
++	$E5DB  C9 60:       cmp #$60
	$E5DD  D0 06:       bne +++		; $E5E5 -> _func_3082
	$E5DF  A6 AE:       ldx $AE
	$E5E1  A9 00:       lda #$00
	$E5E3  95 AF:       sta $AF,x
+++	$E5E5  4C 82 F0:    jmp _func_3082
;------------------------------------------
_func_25E8
	$E5E8  85 0C:       sta $0C
	$E5EA  A6 AE:       ldx $AE
	$E5EC  B5 E0:       lda $E0,x
	$E5EE  C9 01:       cmp #$01
	$E5F0  F0 1D:       beq +++		; $E60F
	$E5F2  C9 06:       cmp #$06
	$E5F4  F0 19:       beq +++		; $E60F
	$E5F6  A2 00:       ldx #$00
	$E5F8  A9 18:       lda #$18
-	$E5FA  C5 0C:       cmp $0C
	$E5FC  F0 0B:       beq +		; $E609
	$E5FE  E8:          inx 
	$E5FF  E0 09:       cpx #$09
	$E601  F0 09:       beq ++		; $E60C
	$E603  BD C4 C1:    lda _data_01C4_indexed,x
	$E606  4C FA E5:    jmp -		; $E5FA

+	$E609  A9 00:       lda #$00
	$E60B  60:          rts 

++	$E60C  A9 01:       lda #$01
	$E60E  60:          rts 

+++	$E60F  A2 04:       ldx #$04
-	$E611  BD C4 C1:    lda _data_01C4_indexed,x
	$E614  C5 0C:       cmp $0C
	$E616  F0 08:       beq +		; $E620
	$E618  E8:          inx 
	$E619  E0 09:       cpx #$09
	$E61B  F0 06:       beq ++		; $E623
	$E61D  4C 11 E6:    jmp -		; $E611

+	$E620  A9 00:       lda #$00
	$E622  60:          rts 

++	$E623  A9 01:       lda #$01
	$E625  60:          rts 
;------------------------------------------
_func_2626
	$E626  A6 AE:       ldx $AE
	$E628  B5 AF:       lda $AF,x
	$E62A  C9 13:       cmp #$13
	$E62C  D0 01:       bne +		; $E62F
	$E62E  60:          rts 

+	$E62F  20 DD EF:    jsr _func_2FDD
	$E632  20 EC EA:    jsr _func_2AEC
	$E635  A6 AE:       ldx $AE
	$E637  B5 E0:       lda $E0,x
	$E639  C9 01:       cmp #$01
	$E63B  F0 03:       beq +		; $E640
	$E63D  4C 6D E6:    jmp +++		; $E66D

+	$E640  A5 00:       lda $00
	$E642  C9 5C:       cmp #$5C
	$E644  F0 07:       beq +		; $E64D
	$E646  C9 C4:       cmp #$C4
	$E648  F0 13:       beq ++		; $E65D
	$E64A  4C 9E E6:    jmp _loc_269E

+	$E64D  A5 AE:       lda $AE
	$E64F  0A:          asl a
	$E650  AA:          tax 
	$E651  A9 A6:       lda #$A6
	$E653  95 B9:       sta $B9,x
	$E655  E8:          inx 
	$E656  A9 C7:       lda #$C7
	$E658  95 B9:       sta $B9,x
	$E65A  4C 97 E6:    jmp ++++		; $E697

++	$E65D  A5 AE:       lda $AE
	$E65F  0A:          asl a
	$E660  AA:          tax 
	$E661  A9 AB:       lda #$AB
	$E663  95 B9:       sta $B9,x
	$E665  E8:          inx 
	$E666  A9 C3:       lda #$C3
	$E668  95 B9:       sta $B9,x
	$E66A  4C 97 E6:    jmp ++++		; $E697

+++	$E66D  A5 00:       lda $00
	$E66F  C9 2C:       cmp #$2C
	$E671  F0 07:       beq +		; $E67A
	$E673  C9 6C:       cmp #$6C
	$E675  F0 13:       beq ++		; $E68A
	$E677  4C 9E E6:    jmp _loc_269E

+	$E67A  A5 AE:       lda $AE
	$E67C  0A:          asl a
	$E67D  AA:          tax 
	$E67E  A9 8D:       lda #$8D
	$E680  95 B9:       sta $B9,x
	$E682  E8:          inx 
	$E683  A9 A4:       lda #$A4
	$E685  95 B9:       sta $B9,x
	$E687  4C 97 E6:    jmp ++++		; $E697

++	$E68A  A5 AE:       lda $AE
	$E68C  0A:          asl a
	$E68D  AA:          tax 
	$E68E  A9 8A:       lda #$8A
	$E690  95 B9:       sta $B9,x
	$E692  E8:          inx 
	$E693  A9 A7:       lda #$A7
	$E695  95 B9:       sta $B9,x
++++	$E697  A9 03:       lda #$03
	$E699  A6 AE:       ldx $AE
	$E69B  95 AF:       sta $AF,x
	$E69D  60:          rts 
;------------------------------------------
_loc_269E
	$E69E  A9 00:       lda #$00
	$E6A0  A6 AE:       ldx $AE
	$E6A2  95 AF:       sta $AF,x
	$E6A4  60:          rts 
;------------------------------------------
_func_26A5
	$E6A5  A5 01:       lda $01
	$E6A7  18:          clc 
	$E6A8  69 0B:       adc #$0B
	$E6AA  20 16 E0:    jsr _func_2016
	$E6AD  A4 99:       ldy $99
	$E6AF  A6 AE:       ldx $AE
	$E6B1  95 E0:       sta $E0,x
	$E6B3  A5 53:       lda $53
	$E6B5  C9 01:       cmp #$01
	$E6B7  D0 03:       bne +		; $E6BC
	$E6B9  4C C6 E6:    jmp ++		; $E6C6

+	$E6BC  C9 03:       cmp #$03
	$E6BE  D0 03:       bne +		; $E6C3 -> _loc_273C
	$E6C0  4C 02 E7:    jmp ++++		; $E702

+	$E6C3  4C 3C E7:    jmp _loc_273C

++	$E6C6  A5 00:       lda $00
	$E6C8  20 E8 E5:    jsr _func_25E8
	$E6CB  D0 16:       bne +++		; $E6E3
	$E6CD  A6 AE:       ldx $AE
	$E6CF  B5 E0:       lda $E0,x
	$E6D1  29 01:       and #$01
	$E6D3  F0 06:       beq +		; $E6DB
	$E6D5  B9 9A C7:    lda _data_079A_indexed,y
	$E6D8  4C DE E6:    jmp ++		; $E6DE

+	$E6DB  B9 9C C7:    lda _data_079C_indexed,y
++	$E6DE  18:          clc 
	$E6DF  65 01:       adc $01
	$E6E1  85 01:       sta $01
+++	$E6E3  A6 AE:       ldx $AE
	$E6E5  B5 E0:       lda $E0,x
	$E6E7  C9 01:       cmp #$01
	$E6E9  F0 08:       beq +		; $E6F3
	$E6EB  A5 00:       lda $00
	$E6ED  D9 E6 C3:    cmp _data_03E6_indexed,y
	$E6F0  F0 09:       beq ++		; $E6FB
	$E6F2  60:          rts 

+	$E6F3  A5 00:       lda $00
	$E6F5  D9 E8 C3:    cmp _data_03E8_indexed,y
	$E6F8  F0 01:       beq ++		; $E6FB
	$E6FA  60:          rts 

++	$E6FB  A9 00:       lda #$00
	$E6FD  A6 AE:       ldx $AE
	$E6FF  95 AF:       sta $AF,x
	$E701  60:          rts 

++++	$E702  A6 AE:       ldx $AE
	$E704  B5 E0:       lda $E0,x
	$E706  C9 02:       cmp #$02
	$E708  D0 0F:       bne +		; $E719
	$E70A  A5 00:       lda $00
	$E70C  D9 EA C3:    cmp _data_03EA_indexed,y
	$E70F  F0 24:       beq ++++		; $E735
	$E711  D9 EC C3:    cmp _data_03EC_indexed,y
	$E714  F0 1F:       beq ++++		; $E735
	$E716  4C 2D E7:    jmp ++		; $E72D -> rts

+	$E719  C0 01:       cpy #$01
	$E71B  D0 04:       bne +		; $E721
	$E71D  C9 04:       cmp #$04
	$E71F  F0 0D:       beq +++		; $E72E
+	$E721  A5 00:       lda $00
	$E723  D9 EE C3:    cmp _data_03EE_indexed,y
	$E726  F0 0D:       beq ++++		; $E735
	$E728  D9 F0 C3:    cmp _data_03F0_indexed,y
	$E72B  F0 08:       beq ++++		; $E735
++	$E72D  60:          rts 

+++	$E72E  A5 00:       lda $00
	$E730  C9 DB:       cmp #$DB
	$E732  F0 01:       beq ++++		; $E735
	$E734  60:          rts 

++++	$E735  A6 AE:       ldx $AE
	$E737  A9 00:       lda #$00
	$E739  95 AF:       sta $AF,x
	$E73B  60:          rts 
;------------------------------------------
_loc_273C
	$E73C  A6 AE:       ldx $AE
	$E73E  B5 E0:       lda $E0,x
	$E740  A8:          tay 
	$E741  88:          dey 
	$E742  A6 99:       ldx $99
	$E744  BD F2 C3:    lda _data_03F2_indexed,x
-	$E747  C0 00:       cpy #$00
	$E749  F0 11:       beq +++		; $E75C
	$E74B  E0 00:       cpx #$00
	$E74D  F0 06:       beq +		; $E755
	$E74F  18:          clc 
	$E750  69 08:       adc #$08
	$E752  4C 58 E7:    jmp ++		; $E758

+	$E755  38:          sec 
	$E756  E9 08:       sbc #$08
++	$E758  88:          dey 
	$E759  4C 47 E7:    jmp -		; $E747

+++	$E75C  C5 00:       cmp $00
	$E75E  F0 09:       beq +		; $E769
	$E760  A5 99:       lda $99
	$E762  0A:          asl a
	$E763  20 70 E7:    jsr _func_2770
	$E766  F0 01:       beq +		; $E769
	$E768  60:          rts 

+	$E769  A6 AE:       ldx $AE
	$E76B  A9 00:       lda #$00
	$E76D  95 AF:       sta $AF,x
	$E76F  60:          rts 
;------------------------------------------
_func_2770
	$E770  85 09:       sta $09
	$E772  20 DD EF:    jsr _func_2FDD
	$E775  BD 03 02:    lda $0203,x
	$E778  85 0A:       sta $0A
	$E77A  A6 AE:       ldx $AE
	$E77C  B5 E0:       lda $E0,x
	$E77E  38:          sec 
	$E77F  E9 02:       sbc #$02
	$E781  0A:          asl a
	$E782  AA:          tax 
	$E783  B5 C1:       lda $C1,x
	$E785  F0 09:       beq +		; $E790
	$E787  A4 09:       ldy $09
	$E789  B9 DE C3:    lda _data_03DE_indexed,y
	$E78C  C5 0A:       cmp $0A
	$E78E  F0 0D:       beq ++		; $E79D
+	$E790  B5 C2:       lda $C2,x
	$E792  F0 0C:       beq +++		; $E7A0
	$E794  A4 09:       ldy $09
	$E796  B9 DF C3:    lda _data_03DF_indexed,y
	$E799  C5 0A:       cmp $0A
	$E79B  D0 03:       bne +++		; $E7A0
++	$E79D  A9 00:       lda #$00
	$E79F  60:          rts 

+++	$E7A0  A9 01:       lda #$01
	$E7A2  60:          rts 
;------------------------------------------
_func_27A3
	$E7A3  A6 AE:       ldx $AE
	$E7A5  B5 DB:       lda $DB,x
	$E7A7  F0 05:       beq +		; $E7AE
	$E7A9  A6 AE:       ldx $AE
	$E7AB  B5 AF:       lda $AF,x
	$E7AD  60:          rts 

+	$E7AE  A5 53:       lda $53
	$E7B0  38:          sec 
	$E7B1  E9 02:       sbc #$02
	$E7B3  0A:          asl a
	$E7B4  A8:          tay 
	$E7B5  B9 9B C4:    lda _DataPointerTable_049B,y
	$E7B8  85 07:       sta $07
	$E7BA  B9 9C C4:    lda _DataPointerTable_049B+1,y
	$E7BD  85 08:       sta $08
	$E7BF  A6 AE:       ldx $AE
	$E7C1  B4 E0:       ldy $E0,x
	$E7C3  F0 2D:       beq +		; $E7F2
	$E7C5  88:          dey 
	$E7C6  B1 07:       lda ($07),y
	$E7C8  85 09:       sta $09
	$E7CA  C8:          iny 
	$E7CB  B1 07:       lda ($07),y
	$E7CD  85 0A:       sta $0A
	$E7CF  A5 53:       lda $53
	$E7D1  38:          sec 
	$E7D2  E9 02:       sbc #$02
	$E7D4  0A:          asl a
	$E7D5  A8:          tay 
	$E7D6  B9 A1 C4:    lda _DataPointerTable_04A1,y
	$E7D9  85 07:       sta $07
	$E7DB  B9 A2 C4:    lda _DataPointerTable_04A1+1,y
	$E7DE  85 08:       sta $08
	$E7E0  A4 09:       ldy $09
-	$E7E2  C4 0A:       cpy $0A
	$E7E4  F0 0C:       beq +		; $E7F2
	$E7E6  B1 07:       lda ($07),y
	$E7E8  C5 00:       cmp $00
	$E7EA  F0 0D:       beq ++		; $E7F9
	$E7EC  C8:          iny 
	$E7ED  C8:          iny 
	$E7EE  C8:          iny 
	$E7EF  4C E2 E7:    jmp -		; $E7E2

+	$E7F2  A9 00:       lda #$00
	$E7F4  A6 AE:       ldx $AE
	$E7F6  95 AF:       sta $AF,x
	$E7F8  60:          rts 

++	$E7F9  C8:          iny 
	$E7FA  B1 07:       lda ($07),y
	$E7FC  A6 AE:       ldx $AE
	$E7FE  95 DB:       sta $DB,x
	$E800  C8:          iny 
	$E801  B1 07:       lda ($07),y
	$E803  95 AF:       sta $AF,x
	$E805  60:          rts 
;------------------------------------------
_func_2806
	$E806  A6 AE:       ldx $AE
	$E808  F6 E4:       inc $E4,x
	$E80A  B5 E4:       lda $E4,x
	$E80C  30 07:       bmi +		; $E815
	$E80E  C9 10:       cmp #$10
	$E810  B0 03:       bcs +		; $E815
	$E812  4C 19 E8:    jmp ++		; $E819

+	$E815  A9 00:       lda #$00
	$E817  95 E4:       sta $E4,x
++	$E819  C9 08:       cmp #$08
	$E81B  B0 09:       bcs +		; $E826
	$E81D  AA:          tax 
	$E81E  BD BC C1:    lda _data_01BC_indexed,x
	$E821  25 0A:       and $0A
	$E823  4C 2F E8:    jmp ++		; $E82F

+	$E826  38:          sec 
	$E827  E9 08:       sbc #$08
	$E829  AA:          tax 
	$E82A  BD BC C1:    lda _data_01BC_indexed,x
	$E82D  25 0B:       and $0B
++	$E82F  F0 02:       beq +		; $E833 -> rts
	$E831  A9 01:       lda #$01
+	$E833  60:          rts 
;------------------------------------------
_func_2834
	$E834  20 F7 EA:    jsr _func_2AF7
	$E837  BD 5C C4:    lda _data_045C_indexed,x
	$E83A  85 0A:       sta $0A
	$E83C  BD 61 C4:    lda _data_0461_indexed,x
	$E83F  85 0B:       sta $0B
	$E841  A9 00:       lda #$00
	$E843  85 5D:       sta $5D
	$E845  20 E8 DF:    jsr _func_1FE8
	$E848  D0 01:       bne +		; $E84B
	$E84A  60:          rts 

+	$E84B  A9 00:       lda #$00
	$E84D  85 D2:       sta $D2
_loc_284F
	$E84F  A5 D2:       lda $D2
	$E851  C9 03:       cmp #$03
	$E853  B0 54:       bcs ++++		; $E8A9
	$E855  AA:          tax 
	$E856  D0 12:       bne +		; $E86A
	$E858  A5 DA:       lda $DA
	$E85A  C9 01:       cmp #$01
	$E85C  D0 0C:       bne +		; $E86A
	$E85E  CE 00 02:    dec $0200
	$E861  CE 04 02:    dec $0204
	$E864  CE 08 02:    dec $0208
	$E867  CE 0C 02:    dec $020C
+	$E86A  BC CC C2:    ldy _data_02CC_indexed,x
	$E86D  B9 00 02:    lda $0200,y
	$E870  C9 FF:       cmp #$FF
	$E872  F0 30:       beq +++		; $E8A4
	$E874  98:          tya 
	$E875  AA:          tax 
	$E876  DE 00 02:    dec $0200,x
	$E879  DE 04 02:    dec $0204,x
	$E87C  BD 00 02:    lda $0200,x
	$E87F  C9 50:       cmp #$50
	$E881  D0 06:       bne +		; $E889
	$E883  20 68 E9:    jsr _func_2968
	$E886  4C 90 E8:    jmp ++		; $E890

+	$E889  C9 C8:       cmp #$C8
	$E88B  D0 03:       bne ++		; $E890
	$E88D  20 71 E9:    jsr _func_2971
++	$E890  B9 00 02:    lda $0200,y
	$E893  C9 70:       cmp #$70
	$E895  D0 04:       bne +		; $E89B
	$E897  A9 01:       lda #$01
	$E899  85 D8:       sta $D8
+	$E89B  B9 00 02:    lda $0200,y
	$E89E  C9 48:       cmp #$48
	$E8A0  F0 5F:       beq _loc_2901
	$E8A2  90 5D:       bcc _loc_2901
+++	$E8A4  E6 D2:       inc $D2
	$E8A6  4C 4F E8:    jmp _loc_284F

++++	$E8A9  C9 06:       cmp #$06
	$E8AB  F0 61:       beq _loc_290E
	$E8AD  AA:          tax 
	$E8AE  C9 03:       cmp #$03
	$E8B0  D0 12:       bne +		; $E8C4
	$E8B2  A5 DA:       lda $DA
	$E8B4  C9 02:       cmp #$02
	$E8B6  D0 0C:       bne +		; $E8C4
	$E8B8  EE 00 02:    inc $0200
	$E8BB  EE 04 02:    inc $0204
	$E8BE  EE 08 02:    inc $0208
	$E8C1  EE 0C 02:    inc $020C
+	$E8C4  BC CC C2:    ldy _data_02CC_indexed,x
	$E8C7  B9 00 02:    lda $0200,y
	$E8CA  C9 FF:       cmp #$FF
	$E8CC  F0 2E:       beq +++		; $E8FC
	$E8CE  98:          tya 
	$E8CF  AA:          tax 
	$E8D0  FE 00 02:    inc $0200,x
	$E8D3  FE 04 02:    inc $0204,x
	$E8D6  BD 00 02:    lda $0200,x
	$E8D9  C9 50:       cmp #$50
	$E8DB  D0 06:       bne +		; $E8E3
	$E8DD  20 71 E9:    jsr _func_2971
	$E8E0  4C EA E8:    jmp ++		; $E8EA

+	$E8E3  C9 C8:       cmp #$C8
	$E8E5  D0 03:       bne ++		; $E8EA
	$E8E7  20 68 E9:    jsr _func_2968
++	$E8EA  B9 00 02:    lda $0200,y
	$E8ED  C9 A8:       cmp #$A8
	$E8EF  D0 07:       bne +		; $E8F8
	$E8F1  A9 01:       lda #$01
	$E8F3  85 D9:       sta $D9
	$E8F5  B9 00 02:    lda $0200,y
+	$E8F8  C9 D0:       cmp #$D0
	$E8FA  B0 05:       bcs _loc_2901
+++	$E8FC  E6 D2:       inc $D2
	$E8FE  4C 4F E8:    jmp _loc_284F
;------------------------------------------
_loc_2901
	$E901  A9 FF:       lda #$FF
	$E903  99 00 02:    sta $0200,y
	$E906  99 04 02:    sta $0204,y
	$E909  E6 D2:       inc $D2
	$E90B  4C 4F E8:    jmp _loc_284F
;------------------------------------------
_loc_290E
	$E90E  A5 D8:       lda $D8
	$E910  C9 01:       cmp #$01
	$E912  D0 27:       bne ++		; $E93B
	$E914  A9 00:       lda #$00
	$E916  85 D2:       sta $D2
-	$E918  A5 D2:       lda $D2
	$E91A  C9 03:       cmp #$03
	$E91C  F0 49:       beq +++		; $E967 -> rts
	$E91E  AA:          tax 
	$E91F  BC CC C2:    ldy _data_02CC_indexed,x
	$E922  B9 00 02:    lda $0200,y
	$E925  C9 FF:       cmp #$FF
	$E927  F0 05:       beq +		; $E92E
	$E929  E6 D2:       inc $D2
	$E92B  4C 18 E9:    jmp -		; $E918

+	$E92E  A9 D0:       lda #$D0
	$E930  20 7A E9:    jsr _func_297A
	$E933  20 68 E9:    jsr _func_2968
	$E936  A9 00:       lda #$00
	$E938  85 D8:       sta $D8
	$E93A  60:          rts 

++	$E93B  A5 D9:       lda $D9
	$E93D  C9 01:       cmp #$01
	$E93F  D0 26:       bne +++		; $E967 -> rts
	$E941  A9 03:       lda #$03
	$E943  85 D2:       sta $D2
-	$E945  A5 D2:       lda $D2
	$E947  C9 06:       cmp #$06
	$E949  F0 1C:       beq +++		; $E967 -> rts
	$E94B  AA:          tax 
	$E94C  BC CC C2:    ldy _data_02CC_indexed,x
	$E94F  B9 00 02:    lda $0200,y
	$E952  C9 FF:       cmp #$FF
	$E954  F0 05:       beq +		; $E95B
	$E956  E6 D2:       inc $D2
	$E958  4C 45 E9:    jmp -		; $E945

+	$E95B  A9 48:       lda #$48
	$E95D  20 7A E9:    jsr _func_297A
	$E960  20 68 E9:    jsr _func_2968
	$E963  A9 00:       lda #$00
	$E965  85 D9:       sta $D9
+++	$E967  60:          rts 
;------------------------------------------
_func_2968
	$E968  A9 23:       lda #$23
	$E96A  99 02 02:    sta $0202,y
	$E96D  99 06 02:    sta $0206,y
	$E970  60:          rts 
;------------------------------------------
_func_2971
	$E971  A9 03:       lda #$03
	$E973  99 02 02:    sta $0202,y
	$E976  99 06 02:    sta $0206,y
	$E979  60:          rts 
;------------------------------------------
_func_297A
	$E97A  99 00 02:    sta $0200,y
	$E97D  99 04 02:    sta $0204,y
	$E980  60:          rts 
;------------------------------------------
_func_2981
	$E981  A9 00:       lda #$00
	$E983  8D 45 04:    sta $0445
-	$E986  AD 45 04:    lda $0445
	$E989  20 D7 EF:    jsr _func_2FD7
	$E98C  8A:          txa 
	$E98D  18:          clc 
	$E98E  69 30:       adc #$30
	$E990  AA:          tax 
	$E991  86 04:       stx $04
	$E993  20 EC EA:    jsr _func_2AEC
	$E996  C9 FF:       cmp #$FF
	$E998  F0 56:       beq _loc_29F0
	$E99A  AE 45 04:    ldx $0445
	$E99D  BD 46 04:    lda $0446,x
	$E9A0  18:          clc 
	$E9A1  69 B0:       adc #$B0
	$E9A3  C5 00:       cmp $00
	$E9A5  90 0D:       bcc +		; $E9B4
	$E9A7  A5 01:       lda $01
	$E9A9  C9 26:       cmp #$26
	$E9AB  B0 11:       bcs ++		; $E9BE
	$E9AD  A9 C0:       lda #$C0
	$E9AF  85 02:       sta $02
	$E9B1  4C DA E9:    jmp +++		; $E9DA

+	$E9B4  20 01 EA:    jsr _func_2A01
	$E9B7  C9 FF:       cmp #$FF
	$E9B9  F0 38:       beq _loc_29F3
	$E9BB  4C EA E9:    jmp ++++		; $E9EA

++	$E9BE  A9 C4:       lda #$C4
	$E9C0  85 02:       sta $02
	$E9C2  A5 01:       lda $01
	$E9C4  C9 2E:       cmp #$2E
	$E9C6  90 12:       bcc +++		; $E9DA
	$E9C8  A9 02:       lda #$02
	$E9CA  85 FE:       sta $FE
	$E9CC  A9 2E:       lda #$2E
	$E9CE  85 01:       sta $01
	$E9D0  AD 45 04:    lda $0445
	$E9D3  0A:          asl a
	$E9D4  AA:          tax 
	$E9D5  A9 00:       lda #$00
	$E9D7  9D 2E 04:    sta $042E,x
+++	$E9DA  A5 00:       lda $00
	$E9DC  18:          clc 
	$E9DD  69 02:       adc #$02
	$E9DF  85 00:       sta $00
	$E9E1  AD 45 04:    lda $0445
	$E9E4  18:          clc 
	$E9E5  69 01:       adc #$01
	$E9E7  20 72 EF:    jsr _func_2F72
++++	$E9EA  20 DB EA:    jsr _func_2ADB
	$E9ED  4C F3 E9:    jmp _loc_29F3
;------------------------------------------
_loc_29F0
	$E9F0  20 34 EA:    jsr _func_2A34
_loc_29F3
	$E9F3  EE 45 04:    inc $0445
	$E9F6  AD 45 04:    lda $0445
	$E9F9  C9 03:       cmp #$03
	$E9FB  F0 03:       beq +		; $EA00 -> rts
	$E9FD  4C 86 E9:    jmp -		; $E986

+	$EA00  60:          rts 
;------------------------------------------
_func_2A01
	$EA01  A5 01:       lda $01
	$EA03  E6 01:       inc $01
	$EA05  E6 01:       inc $01
	$EA07  E6 01:       inc $01
	$EA09  C9 26:       cmp #$26
	$EA0B  D0 04:       bne +		; $EA11
	$EA0D  A2 01:       ldx #$01
	$EA0F  86 FE:       stx $FE
+	$EA11  C9 50:       cmp #$50
	$EA13  90 15:       bcc +		; $EA2A
	$EA15  C9 90:       cmp #$90
	$EA17  90 16:       bcc ++		; $EA2F
	$EA19  C9 C0:       cmp #$C0
	$EA1B  90 0D:       bcc +		; $EA2A
	$EA1D  C9 D8:       cmp #$D8
	$EA1F  90 0E:       bcc ++		; $EA2F
	$EA21  20 D1 EA:    jsr _func_2AD1
	$EA24  20 94 F0:    jsr _func_3094
	$EA27  A9 FF:       lda #$FF
	$EA29  60:          rts 

+	$EA2A  A9 C4:       lda #$C4
	$EA2C  85 02:       sta $02
	$EA2E  60:          rts 

++	$EA2F  A9 C0:       lda #$C0
	$EA31  85 02:       sta $02
	$EA33  60:          rts 
;------------------------------------------
_func_2A34
	$EA34  A5 36:       lda $36
	$EA36  D0 26:       bne +		; $EA5E -> rts
	$EA38  A5 19:       lda $19
	$EA3A  29 03:       and #$03
	$EA3C  AA:          tax 
	$EA3D  BD FF C1:    lda _data_01FF_indexed,x
	$EA40  18:          clc 
	$EA41  69 10:       adc #$10
	$EA43  AE 45 04:    ldx $0445
	$EA46  9D 46 04:    sta $0446,x
	$EA49  85 00:       sta $00
	$EA4B  A9 30:       lda #<_data_0430
	$EA4D  85 01:       sta $01
	$EA4F  A9 C4:       lda #>_data_0430
	$EA51  85 02:       sta $02
	$EA53  20 DB EA:    jsr _func_2ADB
	$EA56  20 F7 EA:    jsr _func_2AF7
	$EA59  BD 57 C4:    lda _data_0457_indexed,x
	$EA5C  85 36:       sta $36
+	$EA5E  60:          rts 
;------------------------------------------
_func_2A5F
	$EA5F  A5 39:       lda $39
	$EA61  F0 01:       beq +		; $EA64
	$EA63  60:          rts 

+	$EA64  A9 08:       lda #$08
	$EA66  85 0A:       sta $0A
	$EA68  A9 00:       lda #$00
	$EA6A  85 0B:       sta $0B
	$EA6C  20 A1 EA:    jsr _func_2AA1
	$EA6F  D0 01:       bne +		; $EA72
	$EA71  60:          rts 

+	$EA72  A9 50:       lda #$50
	$EA74  85 00:       sta $00
	$EA76  A9 20:       lda #$20
	$EA78  85 01:       sta $01
	$EA7A  AD F1 02:    lda $02F1
	$EA7D  C9 DB:       cmp #$DB
	$EA7F  F0 07:       beq +		; $EA88
	$EA81  E6 B7:       inc $B7
	$EA83  A9 DB:       lda #$DB
	$EA85  4C 8A EA:    jmp ++		; $EA8A

+	$EA88  A9 D7:       lda #$D7
++	$EA8A  20 D4 EA:    jsr _func_2AD4
	$EA8D  A9 F0:       lda #$F0
	$EA8F  20 80 F0:    jsr _func_3080
	$EA92  A5 B7:       lda $B7
	$EA94  C9 04:       cmp #$04
	$EA96  D0 08:       bne +		; $EAA0 -> rts
	$EA98  A9 00:       lda #$00
	$EA9A  85 B7:       sta $B7
	$EA9C  A9 BB:       lda #$BB
	$EA9E  85 39:       sta $39
+	$EAA0  60:          rts 
;------------------------------------------
_func_2AA1
	$EAA1  E6 B8:       inc $B8
	$EAA3  A5 B8:       lda $B8
	$EAA5  30 07:       bmi +		; $EAAE
	$EAA7  C9 10:       cmp #$10
	$EAA9  B0 03:       bcs +		; $EAAE
	$EAAB  4C B2 EA:    jmp ++		; $EAB2

+	$EAAE  A9 00:       lda #$00
	$EAB0  85 B8:       sta $B8
++	$EAB2  C9 08:       cmp #$08
	$EAB4  B0 09:       bcs +		; $EABF
	$EAB6  AA:          tax 
	$EAB7  BD BC C1:    lda _data_01BC_indexed,x
	$EABA  25 0A:       and $0A
	$EABC  4C C8 EA:    jmp ++		; $EAC8

+	$EABF  38:          sec 
	$EAC0  E9 08:       sbc #$08
	$EAC2  AA:          tax 
	$EAC3  BD BC C1:    lda _data_01BC_indexed,x
	$EAC6  25 0B:       and $0B
++	$EAC8  F0 02:       beq +		; $EACC -> rts
	$EACA  A9 01:       lda #$01
+	$EACC  60:          rts 
;------------------------------------------
_func_2ACD
	$EACD  A9 00:       lda #$00
	$EACF  85 04:       sta $04
_func_2AD1
	$EAD1  4C D6 EA:    jmp +		; $EAD6
;------------------------------------------
_func_2AD4
	$EAD4  85 02:       sta $02
+	$EAD6  A9 22:       lda #$22
	$EAD8  85 03:       sta $03
	$EADA  60:          rts 
;------------------------------------------
_func_2ADB
	$EADB  20 D1 EA:    jsr _func_2AD1
	$EADE  4C 82 F0:    jmp _func_3082
;------------------------------------------
_func_2AE1
	$EAE1  AD 03 02:    lda $0203
	$EAE4  85 00:       sta $00
	$EAE6  AD 00 02:    lda $0200
	$EAE9  85 01:       sta $01
	$EAEB  60:          rts 
;------------------------------------------
_func_2AEC
	$EAEC  BD 03 02:    lda $0203,x
	$EAEF  85 00:       sta $00
	$EAF1  BD 00 02:    lda $0200,x
	$EAF4  85 01:       sta $01
	$EAF6  60:          rts 
;------------------------------------------
_func_2AF7
	$EAF7  A5 50:       lda $50
	$EAF9  29 01:       and #$01
	$EAFB  18:          clc 
	$EAFC  65 54:       adc $54
	$EAFE  AA:          tax 
	$EAFF  E0 04:       cpx #$04
	$EB01  90 02:       bcc +		; $EB05 -> rts
	$EB03  A2 04:       ldx #$04
+	$EB05  60:          rts 
;------------------------------------------
_func_2B06
	$EB06  AD 03 05:    lda $0503
	$EB09  D0 01:       bne +		; $EB0C
	$EB0B  60:          rts 

+	$EB0C  AD 05 05:    lda $0505
	$EB0F  29 0F:       and #$0F
	$EB11  8D 05 05:    sta $0505
	$EB14  A5 53:       lda $53
	$EB16  AA:          tax 
	$EB17  A8:          tay 
	$EB18  CA:          dex 
	$EB19  BD 08 C6:    lda _data_0608_indexed,x
	$EB1C  85 00:       sta $00
	$EB1E  A9 20:       lda #$20
	$EB20  85 01:       sta $01
	$EB22  98:          tya 
	$EB23  C9 02:       cmp #$02
	$EB25  30 2D:       bmi +++		; $EB54
	$EB27  A5 44:       lda $44
	$EB29  F0 24:       beq ++		; $EB4F
-	$EB2B  C9 13:       cmp #$13
	$EB2D  D0 03:       bne +		; $EB32
	$EB2F  4C 85 EB:    jmp ++++		; $EB85

+	$EB32  C9 0F:       cmp #$0F
	$EB34  D0 03:       bne +		; $EB39
	$EB36  4C 8E EB:    jmp _loc_2B8E

+	$EB39  C9 0B:       cmp #$0B
	$EB3B  D0 03:       bne +		; $EB40
	$EB3D  4C 85 EB:    jmp ++++		; $EB85

+	$EB40  C9 08:       cmp #$08
	$EB42  D0 03:       bne +		; $EB47
	$EB44  4C 8E EB:    jmp _loc_2B8E

+	$EB47  C9 04:       cmp #$04
	$EB49  D0 03:       bne +		; $EB4E -> rts
	$EB4B  20 A6 EB:    jsr _func_2BA6
+	$EB4E  60:          rts 

++	$EB4F  A9 25:       lda #$25
	$EB51  85 44:       sta $44
	$EB53  60:          rts 

+++	$EB54  A5 36:       lda $36
	$EB56  C9 18:       cmp #$18
	$EB58  F0 1A:       beq ++		; $EB74
	$EB5A  C9 00:       cmp #$00
	$EB5C  F0 1D:       beq +++		; $EB7B
	$EB5E  AD 15 05:    lda $0515
	$EB61  F0 0C:       beq +		; $EB6F
	$EB63  20 A1 EB:    jsr _func_2BA1
	$EB66  A9 00:       lda #$00
	$EB68  8D 15 05:    sta $0515
	$EB6B  A9 1A:       lda #$1A
	$EB6D  85 44:       sta $44
+	$EB6F  A5 44:       lda $44
	$EB71  4C 2B EB:    jmp -		; $EB2B

++	$EB74  A9 30:       lda #$30
	$EB76  85 44:       sta $44
	$EB78  4C 9C EB:    jmp _loc_2B9C

+++	$EB7B  A9 1A:       lda #$1A
	$EB7D  85 44:       sta $44
	$EB7F  20 97 EB:    jsr _func_2B97
	$EB82  4C 2B EB:    jmp -		; $EB2B

++++	$EB85  A9 80:       lda #$80
	$EB87  85 FE:       sta $FE
_loc_2B89
	$EB89  A9 40:       lda #$40
	$EB8B  4C A8 EB:    jmp _loc_2BA8
;------------------------------------------
_loc_2B8E
	$EB8E  A9 80:       lda #$80
	$EB90  85 FE:       sta $FE
_loc_2B92
	$EB92  A9 42:       lda #$42
	$EB94  4C A8 EB:    jmp _loc_2BA8
;------------------------------------------
_func_2B97
	$EB97  A9 44:       lda #$44
	$EB99  4C A8 EB:    jmp _loc_2BA8
;------------------------------------------
_loc_2B9C
	$EB9C  A9 3E:       lda #$3E
	$EB9E  4C A8 EB:    jmp _loc_2BA8
;------------------------------------------
_func_2BA1
	$EBA1  A9 00:       lda #$00
	$EBA3  4C A8 EB:    jmp _loc_2BA8
;------------------------------------------
_func_2BA6
	$EBA6  A9 02:       lda #$02
_loc_2BA8
	$EBA8  20 15 C8:    jsr _func_0815
	$EBAB  C6 44:       dec $44
	$EBAD  AD 05 05:    lda $0505
	$EBB0  09 10:       ora #$10
	$EBB2  8D 05 05:    sta $0505
	$EBB5  60:          rts 
;------------------------------------------
_func_2BB6
	$EBB6  A5 45:       lda $45
	$EBB8  F0 01:       beq +		; $EBBB
	$EBBA  60:          rts 

+	$EBBB  A5 2E:       lda $2E
	$EBBD  D0 05:       bne +		; $EBC4
	$EBBF  A9 FF:       lda #$FF
	$EBC1  85 96:       sta $96
	$EBC3  60:          rts 

+	$EBC4  A9 0B:       lda #$0B
	$EBC6  85 45:       sta $45
	$EBC8  A9 01:       lda #$01
	$EBCA  85 00:       sta $00
	$EBCC  A9 0A:       lda #$0A
	$EBCE  85 01:       sta $01
	$EBD0  20 3E F3:    jsr _func_333E
	$EBD3  A9 02:       lda #$02
	$EBD5  85 00:       sta $00
	$EBD7  4C 3C F2:    jmp _func_323C
;------------------------------------------
_func_2BDA
	$EBDA  AD 0B 05:    lda $050B
	$EBDD  D0 0E:       bne +		; $EBED
	$EBDF  A9 01:       lda #$01
	$EBE1  8D 0B 05:    sta $050B
	$EBE4  A9 00:       lda #$00
	$EBE6  8D 0E 05:    sta $050E
	$EBE9  8D 0C 05:    sta $050C
	$EBEC  60:          rts 

+	$EBED  AD 0C 05:    lda $050C
	$EBF0  F0 24:       beq ++++		; $EC16
	$EBF2  AD 0D 05:    lda $050D
	$EBF5  C9 05:       cmp #$05
	$EBF7  D0 11:       bne ++		; $EC0A
	$EBF9  A5 96:       lda $96
	$EBFB  C9 0A:       cmp #$0A
	$EBFD  D0 04:       bne +		; $EC03
	$EBFF  A9 00:       lda #$00
	$EC01  F0 07:       beq ++		; $EC0A

+	$EC03  A9 04:       lda #$04
	$EC05  85 96:       sta $96
	$EC07  4C 12 EC:    jmp +++		; $EC12

++	$EC0A  85 56:       sta $56
	$EC0C  29 03:       and #$03
	$EC0E  F0 02:       beq +++		; $EC12
	$EC10  85 57:       sta $57
+++	$EC12  CE 0C 05:    dec $050C
	$EC15  60:          rts 

++++	$EC16  AE 0E 05:    ldx $050E
	$EC19  BD 28 C0:    lda _data_0028_indexed,x
	$EC1C  8D 0C 05:    sta $050C
	$EC1F  BD 14 C0:    lda _data_0014_indexed,x
	$EC22  8D 0D 05:    sta $050D
	$EC25  EE 0E 05:    inc $050E
	$EC28  60:          rts 
;------------------------------------------
_func_2C29
	$EC29  20 E1 EA:    jsr _func_2AE1
	$EC2C  A9 4C:       lda #$4C
	$EC2E  20 E8 EF:    jsr _func_2FE8
	$EC31  A5 53:       lda $53
	$EC33  C9 03:       cmp #$03
	$EC35  F0 04:       beq +		; $EC3B
	$EC37  C9 01:       cmp #$01
	$EC39  D0 03:       bne ++		; $EC3E
+	$EC3B  20 44 EC:    jsr _func_2C44
++	$EC3E  20 8A ED:    jsr _func_2D8A
	$EC41  4C C5 ED:    jmp _loc_2DC5
;------------------------------------------
_func_2C44
	$EC44  A9 00:       lda #$00
	$EC46  85 5D:       sta $5D
-	$EC48  A9 3A:       lda #$3A
	$EC4A  20 47 C8:    jsr _func_0847
	$EC4D  20 D5 EF:    jsr _func_2FD5
	$EC50  A5 53:       lda $53
	$EC52  C9 01:       cmp #$01
	$EC54  F0 05:       beq +		; $EC5B
	$EC56  8A:          txa 
	$EC57  18:          clc 
	$EC58  69 30:       adc #$30
	$EC5A  AA:          tax 
+	$EC5B  20 EC EA:    jsr _func_2AEC
	$EC5E  20 EF EF:    jsr _func_2FEF
	$EC61  D0 44:       bne ++++		; $ECA7
	$EC63  A5 96:       lda $96
	$EC65  C9 04:       cmp #$04
	$EC67  D0 2E:       bne +++		; $EC97
	$EC69  A5 56:       lda $56
	$EC6B  29 03:       and #$03
	$EC6D  D0 07:       bne +		; $EC76
	$EC6F  A5 9C:       lda $9C
	$EC71  F0 0D:       beq ++		; $EC80
	$EC73  4C 97 EC:    jmp +++		; $EC97

+	$EC76  A5 9C:       lda $9C
	$EC78  C9 03:       cmp #$03
	$EC7A  B0 1B:       bcs +++		; $EC97
	$EC7C  A5 9E:       lda $9E
	$EC7E  D0 17:       bne +++		; $EC97
++	$EC80  A5 9D:       lda $9D
	$EC82  C9 18:       cmp #$18
	$EC84  B0 11:       bcs +++		; $EC97
	$EC86  A5 00:       lda $00
	$EC88  85 05:       sta $05
	$EC8A  A5 01:       lda $01
	$EC8C  85 06:       sta $06
	$EC8E  A2 00:       ldx #$00
	$EC90  20 C6 CF:    jsr _func_0FC6
	$EC93  A9 20:       lda #$20
	$EC95  85 FD:       sta $FD
+++	$EC97  E6 5D:       inc $5D
	$EC99  A5 53:       lda $53
	$EC9B  4A:          lsr a
	$EC9C  AA:          tax 
	$EC9D  A5 5D:       lda $5D
	$EC9F  DD FD C1:    cmp _data_01FD_indexed,x
	$ECA2  F0 0B:       beq _loc_2CAF
	$ECA4  4C 48 EC:    jmp -		; $EC48

++++	$ECA7  20 51 EF:    jsr _func_2F51
	$ECAA  A9 FF:       lda #$FF
	$ECAC  85 96:       sta $96
	$ECAE  60:          rts 
;------------------------------------------
_loc_2CAF
	$ECAF  A5 53:       lda $53
	$ECB1  C9 03:       cmp #$03
	$ECB3  F0 09:       beq +		; $ECBE -> rts
	$ECB5  A5 96:       lda $96
	$ECB7  C9 0A:       cmp #$0A
	$ECB9  D0 03:       bne +		; $ECBE -> rts
	$ECBB  4C BF EC:    jmp _func_2CBF

+	$ECBE  60:          rts 
;------------------------------------------
_func_2CBF
	$ECBF  A5 A0:       lda $A0
	$ECC1  D0 03:       bne +		; $ECC6
	$ECC3  4C 87 ED:    jmp ++++		; $ED87

+	$ECC6  A5 9F:       lda $9F
	$ECC8  4A:          lsr a
	$ECC9  4A:          lsr a
	$ECCA  F0 05:       beq +		; $ECD1
	$ECCC  A9 00:       lda #$00
	$ECCE  4C D3 EC:    jmp ++		; $ECD3

+	$ECD1  A9 01:       lda #$01
++	$ECD3  F0 13:       beq +		; $ECE8
	$ECD5  A9 04:       lda #$04
	$ECD7  18:          clc 
	$ECD8  6D 03 02:    adc $0203
	$ECDB  85 00:       sta $00
	$ECDD  AD 00 02:    lda $0200
	$ECE0  38:          sec 
	$ECE1  E9 10:       sbc #$10
	$ECE3  85 01:       sta $01
	$ECE5  4C 07 ED:    jmp +++		; $ED07

+	$ECE8  A5 57:       lda $57
	$ECEA  C9 01:       cmp #$01
	$ECEC  F0 09:       beq +		; $ECF7
	$ECEE  AD 03 02:    lda $0203
	$ECF1  38:          sec 
	$ECF2  E9 10:       sbc #$10
	$ECF4  4C FD EC:    jmp ++		; $ECFD

+	$ECF7  AD 03 02:    lda $0203
	$ECFA  18:          clc 
	$ECFB  69 10:       adc #$10
++	$ECFD  85 00:       sta $00
	$ECFF  AD 00 02:    lda $0200
	$ED02  18:          clc 
	$ED03  69 06:       adc #$06
	$ED05  85 01:       sta $01
+++	$ED07  A9 3C:       lda #$3C
	$ED09  20 E8 EF:    jsr _func_2FE8
	$ED0C  A5 53:       lda $53
	$ED0E  C9 01:       cmp #$01
	$ED10  D0 22:       bne +		; $ED34
	$ED12  A9 00:       lda #$00
	$ED14  85 5D:       sta $5D
-	$ED16  20 D5 EF:    jsr _func_2FD5
	$ED19  20 EC EA:    jsr _func_2AEC
	$ED1C  A9 3A:       lda #$3A
	$ED1E  20 47 C8:    jsr _func_0847
	$ED21  20 EF EF:    jsr _func_2FEF
	$ED24  D0 31:       bne ++		; $ED57
	$ED26  A5 5D:       lda $5D
	$ED28  18:          clc 
	$ED29  69 01:       adc #$01
	$ED2B  85 5D:       sta $5D
	$ED2D  C9 09:       cmp #$09
	$ED2F  F0 54:       beq +++		; $ED85
	$ED31  4C 16 ED:    jmp -		; $ED16

+	$ED34  A9 00:       lda #$00
	$ED36  85 AE:       sta $AE
-	$ED38  20 DD EF:    jsr _func_2FDD
	$ED3B  20 EC EA:    jsr _func_2AEC
	$ED3E  A9 3A:       lda #$3A
	$ED40  20 47 C8:    jsr _func_0847
	$ED43  20 EF EF:    jsr _func_2FEF
	$ED46  D0 0F:       bne ++		; $ED57
	$ED48  E6 AE:       inc $AE
	$ED4A  A5 AE:       lda $AE
	$ED4C  A6 53:       ldx $53
	$ED4E  CA:          dex 
	$ED4F  DD F6 C1:    cmp _data_01F6_indexed,x
	$ED52  F0 31:       beq +++		; $ED85
	$ED54  4C 38 ED:    jmp -		; $ED38

++	$ED57  A9 02:       lda #$02
	$ED59  85 FF:       sta $FF
	$ED5B  A5 00:       lda $00
	$ED5D  85 05:       sta $05
	$ED5F  A5 01:       lda $01
	$ED61  85 06:       sta $06
	$ED63  A5 53:       lda $53
	$ED65  C9 01:       cmp #$01
	$ED67  D0 0B:       bne +		; $ED74
	$ED69  A9 00:       lda #$00
	$ED6B  A6 5D:       ldx $5D
	$ED6D  95 68:       sta $68,x
	$ED6F  A9 01:       lda #$01
	$ED71  4C 87 ED:    jmp ++++		; $ED87

+	$ED74  A9 10:       lda #$10
	$ED76  85 40:       sta $40
	$ED78  A9 00:       lda #$00
	$ED7A  A6 AE:       ldx $AE
	$ED7C  95 E0:       sta $E0,x
	$ED7E  95 DB:       sta $DB,x
	$ED80  A9 01:       lda #$01
	$ED82  4C 87 ED:    jmp ++++		; $ED87

+++	$ED85  A9 00:       lda #$00
++++	$ED87  85 BF:       sta $BF
	$ED89  60:          rts 
;------------------------------------------
_func_2D8A
	$ED8A  A9 00:       lda #$00
	$ED8C  85 AE:       sta $AE
	$ED8E  A9 3A:       lda #$3A
	$ED90  20 47 C8:    jsr _func_0847
-	$ED93  20 DD EF:    jsr _func_2FDD
	$ED96  20 EC EA:    jsr _func_2AEC
	$ED99  20 EF EF:    jsr _func_2FEF
	$ED9C  D0 0F:       bne +		; $EDAD
	$ED9E  E6 AE:       inc $AE
	$EDA0  A5 AE:       lda $AE
	$EDA2  A6 53:       ldx $53
	$EDA4  CA:          dex 
	$EDA5  DD F6 C1:    cmp _data_01F6_indexed,x
	$EDA8  F0 0B:       beq ++		; $EDB5
	$EDAA  4C 93 ED:    jmp -		; $ED93

+	$EDAD  20 51 EF:    jsr _func_2F51
	$EDB0  A9 FF:       lda #$FF
	$EDB2  85 96:       sta $96
	$EDB4  60:          rts 

++	$EDB5  A5 96:       lda $96
	$EDB7  C9 0A:       cmp #$0A
	$EDB9  D0 09:       bne +		; $EDC4 -> rts
	$EDBB  A5 53:       lda $53
	$EDBD  C9 01:       cmp #$01
	$EDBF  F0 03:       beq +		; $EDC4 -> rts
	$EDC1  20 BF EC:    jsr _func_2CBF
+	$EDC4  60:          rts 
;------------------------------------------
_loc_2DC5
	$EDC5  A5 53:       lda $53
	$EDC7  C9 03:       cmp #$03
	$EDC9  D0 07:       bne +		; $EDD2
	$EDCB  A4 96:       ldy $96
	$EDCD  C0 01:       cpy #$01
	$EDCF  F0 01:       beq +		; $EDD2
	$EDD1  60:          rts 

+	$EDD2  38:          sec 
	$EDD3  E9 01:       sbc #$01
	$EDD5  0A:          asl a
	$EDD6  AA:          tax 
	$EDD7  BD 2B C4:    lda _data_042B_indexed,x
	$EDDA  85 02:       sta $02
	$EDDC  BD 2C C4:    lda _data_042C_indexed,x
	$EDDF  85 03:       sta $03
	$EDE1  BD 23 C4:    lda _data_0423_indexed,x
	$EDE4  85 00:       sta $00
	$EDE6  BD 24 C4:    lda _data_0424_indexed,x
	$EDE9  85 01:       sta $01
-	$EDEB  20 EF EF:    jsr _func_2FEF
	$EDEE  D0 17:       bne +		; $EE07
	$EDF0  A5 53:       lda $53
	$EDF2  C9 03:       cmp #$03
	$EDF4  D0 15:       bne ++		; $EE0B -> rts
	$EDF6  A5 01:       lda $01
	$EDF8  C9 C9:       cmp #$C9
	$EDFA  F0 0F:       beq ++		; $EE0B -> rts
	$EDFC  A9 70:       lda #<_loc_0970
	$EDFE  85 00:       sta $00
	$EE00  A9 C9:       lda #>_loc_0970
	$EE02  85 01:       sta $01
	$EE04  4C EB ED:    jmp -		; $EDEB

+	$EE07  A9 FF:       lda #$FF
	$EE09  85 96:       sta $96
++	$EE0B  60:          rts 
;------------------------------------------
_func_2E0C
	$EE0C  A9 80:       lda #<_data_0080
	$EE0E  85 0A:       sta $0A
	$EE10  A9 80:       lda #>_data_0080
	$EE12  85 0B:       sta $0B
	$EE14  20 E4 DF:    jsr _func_1FE4
	$EE17  D0 01:       bne +		; $EE1A
	$EE19  60:          rts 

+	$EE1A  A5 53:       lda $53
	$EE1C  C9 01:       cmp #$01
	$EE1E  D0 06:       bne +		; $EE26
	$EE20  20 D5 EF:    jsr _func_2FD5
	$EE23  4C 29 EE:    jmp ++		; $EE29

+	$EE26  20 DD EF:    jsr _func_2FDD
++	$EE29  86 04:       stx $04
	$EE2B  20 EC EA:    jsr _func_2AEC
	$EE2E  A5 BF:       lda $BF
	$EE30  C9 01:       cmp #$01
	$EE32  D0 04:       bne +		; $EE38
	$EE34  A0 02:       ldy #$02
	$EE36  84 FF:       sty $FF
+	$EE38  C9 0B:       cmp #$0B
	$EE3A  F0 15:       beq +		; $EE51
	$EE3C  A6 BF:       ldx $BF
	$EE3E  CA:          dex 
	$EE3F  BD EC C1:    lda _data_01EC_indexed,x
	$EE42  85 02:       sta $02
	$EE44  20 DB EA:    jsr _func_2ADB
	$EE47  A6 04:       ldx $04
	$EE49  A9 02:       lda #$02
	$EE4B  20 6C EE:    jsr _func_2E6C
	$EE4E  E6 BF:       inc $BF
	$EE50  60:          rts 

+	$EE51  A5 53:       lda $53
	$EE53  C9 01:       cmp #$01
	$EE55  D0 05:       bne +		; $EE5C
	$EE57  A9 03:       lda #$03
	$EE59  20 6C EE:    jsr _func_2E6C
+	$EE5C  20 D1 EA:    jsr _func_2AD1
	$EE5F  20 94 F0:    jsr _func_3094
	$EE62  A2 02:       ldx #$02
	$EE64  20 C6 CF:    jsr _func_0FC6
	$EE67  A9 00:       lda #$00
	$EE69  85 BF:       sta $BF
	$EE6B  60:          rts 
;------------------------------------------
_func_2E6C
	$EE6C  9D 02 02:    sta $0202,x
	$EE6F  9D 06 02:    sta $0206,x
	$EE72  9D 0A 02:    sta $020A,x
	$EE75  9D 0E 02:    sta $020E,x
	$EE78  60:          rts 
;------------------------------------------
_func_2E79
	$EE79  A4 53:       ldy $53
	$EE7B  C0 01:       cpy #$01
	$EE7D  D0 01:       bne +		; $EE80
	$EE7F  60:          rts 

+	$EE80  A5 BE:       lda $BE
	$EE82  F0 54:       beq +		; $EED8 -> rts
	$EE84  C0 04:       cpy #$04
	$EE86  D0 68:       bne ++++		; $EEF0
	$EE88  A0 00:       ldy #$00
	$EE8A  AE FF C5:    ldx _data_05FF
-	$EE8D  BD C2 C5:    lda _data_05C2_indexed,x
	$EE90  CD 03 02:    cmp $0203
	$EE93  D0 52:       bne +++		; $EEE7
	$EE95  BD AE C5:    lda _data_05AE_indexed,x
	$EE98  CD 00 02:    cmp $0200
	$EE9B  90 4A:       bcc +++		; $EEE7
	$EE9D  38:          sec 
	$EE9E  E9 11:       sbc #$11
	$EEA0  CD 00 02:    cmp $0200
	$EEA3  B0 42:       bcs +++		; $EEE7
	$EEA5  B9 C1 00:    lda $00C1,y
	$EEA8  C9 00:       cmp #$00
	$EEAA  D0 2D:       bne ++		; $EED9
	$EEAC  A5 96:       lda $96
	$EEAE  C9 08:       cmp #$08
	$EEB0  F0 26:       beq +		; $EED8 -> rts
	$EEB2  C9 FF:       cmp #$FF
	$EEB4  F0 22:       beq +		; $EED8 -> rts
	$EEB6  A9 11:       lda #$11
	$EEB8  85 CC:       sta $CC
	$EEBA  A9 01:       lda #$01
	$EEBC  99 C1 00:    sta $00C1,y
	$EEBF  20 38 EF:    jsr _func_2F38
	$EEC2  AD 00 02:    lda $0200
	$EEC5  18:          clc 
	$EEC6  69 10:       adc #$10
	$EEC8  85 06:       sta $06
	$EECA  AD 03 02:    lda $0203
	$EECD  85 05:       sta $05
	$EECF  A2 00:       ldx #$00
	$EED1  20 C6 CF:    jsr _func_0FC6
	$EED4  A9 20:       lda #$20
	$EED6  85 FD:       sta $FD
+	$EED8  60:          rts 

++	$EED9  A5 96:       lda $96
	$EEDB  C9 04:       cmp #$04
	$EEDD  F0 07:       beq +		; $EEE6 -> rts
	$EEDF  20 51 EF:    jsr _func_2F51
	$EEE2  A9 08:       lda #$08
	$EEE4  85 96:       sta $96
+	$EEE6  60:          rts 

+++	$EEE7  C0 07:       cpy #$07
	$EEE9  F0 05:       beq ++++		; $EEF0
	$EEEB  E8:          inx 
	$EEEC  C8:          iny 
	$EEED  4C 8D EE:    jmp -		; $EE8D

++++	$EEF0  A4 53:       ldy $53
	$EEF2  BE FA C5:    ldx _data_05FA_indexed,y
	$EEF5  A0 00:       ldy #$00
--	$EEF7  BD AE C5:    lda _data_05AE_indexed,x
	$EEFA  CD 00 02:    cmp $0200
	$EEFD  D0 30:       bne +		; $EF2F
	$EEFF  BD C2 C5:    lda _data_05C2_indexed,x
	$EF02  CD 03 02:    cmp $0203
	$EF05  D0 28:       bne +		; $EF2F
	$EF07  B9 C9 00:    lda $00C9,y
	$EF0A  D0 23:       bne +		; $EF2F
	$EF0C  A9 22:       lda #$22
	$EF0E  85 CC:       sta $CC
	$EF10  A9 01:       lda #$01
	$EF12  99 C9 00:    sta $00C9,y
	$EF15  20 38 EF:    jsr _func_2F38
	$EF18  AD 00 02:    lda $0200
	$EF1B  38:          sec 
	$EF1C  E9 08:       sbc #$08
	$EF1E  85 06:       sta $06
	$EF20  AD 03 02:    lda $0203
	$EF23  85 05:       sta $05
	$EF25  A2 03:       ldx #$03
	$EF27  20 C6 CF:    jsr _func_0FC6
	$EF2A  A9 20:       lda #$20
	$EF2C  85 FD:       sta $FD
-	$EF2E  60:          rts 

+	$EF2F  C0 02:       cpy #$02
	$EF31  F0 FB:       beq -		; $EF2E -> rts
	$EF33  E8:          inx 
	$EF34  C8:          iny 
	$EF35  4C F7 EE:    jmp --		; $EEF7
;------------------------------------------
_func_2F38
	$EF38  A9 24:       lda #$24
	$EF3A  85 CD:       sta $CD
	$EF3C  85 CE:       sta $CE
	$EF3E  85 CF:       sta $CF
	$EF40  85 D0:       sta $D0
	$EF42  BD D6 C5:    lda _data_05D6_indexed,x
	$EF45  85 01:       sta $01
	$EF47  BD E9 C5:    lda _data_05E9_indexed,x
	$EF4A  85 00:       sta $00
	$EF4C  A9 48:       lda #$48
	$EF4E  4C 15 C8:    jmp _func_0815
;------------------------------------------
_func_2F51
	$EF51  A5 96:       lda $96
	$EF53  C9 0A:       cmp #$0A
	$EF55  D0 1A:       bne +		; $EF71 -> rts
	$EF57  A5 A0:       lda $A0
	$EF59  F0 16:       beq +		; $EF71 -> rts
	$EF5B  38:          sec 
	$EF5C  E9 01:       sbc #$01
	$EF5E  AA:          tax 
	$EF5F  A9 00:       lda #$00
	$EF61  9D 51 04:    sta $0451,x
	$EF64  8A:          txa 
	$EF65  0A:          asl a
	$EF66  0A:          asl a
	$EF67  0A:          asl a
	$EF68  AA:          tax 
	$EF69  A9 FF:       lda #$FF
	$EF6B  9D D0 02:    sta $02D0,x
	$EF6E  9D D4 02:    sta $02D4,x
+	$EF71  60:          rts 
;------------------------------------------
_func_2F72
	$EF72  86 0F:       stx $0F
	$EF74  0A:          asl a
	$EF75  AA:          tax 
	$EF76  BD 2C 04:    lda $042C,x
	$EF79  D0 19:       bne +++		; $EF94
	$EF7B  9D 36 04:    sta $0436,x
	$EF7E  E0 00:       cpx #$00
	$EF80  D0 05:       bne +		; $EF87
	$EF82  A9 08:       lda #$08
	$EF84  4C 89 EF:    jmp ++		; $EF89

+	$EF87  A9 80:       lda #$80
++	$EF89  9D 35 04:    sta $0435,x
	$EF8C  A9 F0:       lda #$F0
	$EF8E  9D 2D 04:    sta $042D,x
	$EF91  4C AD EF:    jmp ++++		; $EFAD

+++	$EF94  BD 35 04:    lda $0435,x
	$EF97  E0 00:       cpx #$00
	$EF99  D0 05:       bne +		; $EFA0
	$EF9B  69 10:       adc #$10
	$EF9D  4C A2 EF:    jmp ++		; $EFA2

+	$EFA0  69 30:       adc #$30
++	$EFA2  9D 35 04:    sta $0435,x
	$EFA5  BD 36 04:    lda $0436,x
	$EFA8  69 00:       adc #$00
	$EFAA  9D 36 04:    sta $0436,x
++++	$EFAD  BD 2D 04:    lda $042D,x
	$EFB0  38:          sec 
	$EFB1  FD 3D 04:    sbc $043D,x
	$EFB4  9D 2D 04:    sta $042D,x
	$EFB7  A5 01:       lda $01
	$EFB9  FD 3E 04:    sbc $043E,x
	$EFBC  85 01:       sta $01
	$EFBE  18:          clc 
	$EFBF  BD 2D 04:    lda $042D,x
	$EFC2  7D 35 04:    adc $0435,x
	$EFC5  9D 2D 04:    sta $042D,x
	$EFC8  A5 01:       lda $01
	$EFCA  7D 36 04:    adc $0436,x
	$EFCD  85 01:       sta $01
	$EFCF  FE 2C 04:    inc $042C,x
	$EFD2  A6 0F:       ldx $0F
	$EFD4  60:          rts 
;------------------------------------------
_func_2FD5
	$EFD5  A5 5D:       lda $5D
_func_2FD7
	$EFD7  18:          clc 
	$EFD8  69 03:       adc #$03
	$EFDA  4C E2 EF:    jmp +		; $EFE2
;------------------------------------------
_func_2FDD
	$EFDD  A5 AE:       lda $AE
	$EFDF  18:          clc 
	$EFE0  69 01:       adc #$01
+	$EFE2  0A:          asl a
	$EFE3  0A:          asl a
	$EFE4  0A:          asl a
	$EFE5  0A:          asl a
	$EFE6  AA:          tax 
	$EFE7  60:          rts 
;------------------------------------------
_func_2FE8
	$EFE8  20 47 C8:    jsr _func_0847
_func_2FEB
	$EFEB  A9 00:       lda #$00
	$EFED  F0 06:       beq +		; $EFF5
;------------------------------------------
_func_2FEF
	$EFEF  A9 01:       lda #$01
	$EFF1  D0 02:       bne +		; $EFF5
;------------------------------------------
_func_2FF3
	$EFF3  A9 02:       lda #$02
+	$EFF5  85 0C:       sta $0C
	$EFF7  8A:          txa 
	$EFF8  48:          pha 
	$EFF9  98:           tya 
	$EFFA  48:           pha 
	$EFFB  A0 00:         ldy #$00
	$EFFD  A5 0C:         lda $0C
	$EFFF  D0 17:         bne +		; $F018
	$F001  20 63 F0:      jsr _func_3063
	$F004  85 46:         sta $46
	$F006  20 69 F0:      jsr _func_3069
	$F009  85 47:         sta $47
	$F00B  20 62 F0:      jsr _func_3062
	$F00E  85 48:         sta $48
	$F010  20 69 F0:      jsr _func_3069
	$F013  85 49:         sta $49
	$F015  4C 59 F0:      jmp ++		; $F059

+	$F018  20 63 F0:      jsr _func_3063
	$F01B  85 4A:         sta $4A
	$F01D  20 69 F0:      jsr _func_3069
	$F020  85 4B:         sta $4B
	$F022  20 62 F0:      jsr _func_3062
	$F025  85 4C:         sta $4C
	$F027  20 69 F0:      jsr _func_3069
	$F02A  85 4D:         sta $4D
	$F02C  A5 4A:         lda $4A
	$F02E  38:            sec 
	$F02F  E5 46:         sbc $46
	$F031  85 9C:         sta $9C
	$F033  A5 4B:         lda $4B
	$F035  38:            sec 
	$F036  E5 47:         sbc $47
	$F038  85 9D:         sta $9D
	$F03A  A5 49:         lda $49
	$F03C  C5 4B:         cmp $4B
	$F03E  90 17:         bcc +		; $F057
	$F040  A5 4D:         lda $4D
	$F042  C5 47:         cmp $47
	$F044  90 11:         bcc +		; $F057
	$F046  A5 4C:         lda $4C
	$F048  C5 46:         cmp $46
	$F04A  90 0B:         bcc +		; $F057
	$F04C  A5 48:         lda $48
	$F04E  C5 4A:         cmp $4A
	$F050  90 05:         bcc +		; $F057
	$F052  A9 01:         lda #$01
	$F054  4C 59 F0:      jmp ++		; $F059

+	$F057  A9 00:         lda #$00
++	$F059  85 0C:         sta $0C
	$F05B  68:           pla 
	$F05C  A8:           tay 
	$F05D  68:          pla 
	$F05E  AA:          tax 
	$F05F  A5 0C:       lda $0C
	$F061  60:          rts 
;------------------------------------------
_func_3062
	$F062  C8:          iny 
_func_3063
	$F063  B1 02:       lda ($02),y
	$F065  18:          clc 
	$F066  65 00:       adc $00
	$F068  60:          rts 
;------------------------------------------
_func_3069
	$F069  C8:          iny 
	$F06A  B1 02:       lda ($02),y
	$F06C  18:          clc 
	$F06D  65 01:       adc $01
	$F06F  60:          rts 
;------------------------------------------
_func_3070
	$F070  85 02:       sta $02
	$F072  20 E1 EA:    jsr _func_2AE1
_func_3075
	$F075  20 CD EA:    jsr _func_2ACD
_loc_3078
	$F078  A5 57:       lda $57
	$F07A  29 03:       and #$03
	$F07C  4A:          lsr a
	$F07D  4C 96 F0:    jmp _func_3096
;------------------------------------------
_func_3080
	$F080  85 04:       sta $04
_func_3082
	$F082  A9 00:       lda #$00
	$F084  F0 10:       beq _func_3096
;------------------------------------------
_func_3086
	$F086  85 04:       sta $04
_func_3088
	$F088  A9 01:       lda #$01
	$F08A  D0 0A:       bne _func_3096
;------------------------------------------
_func_308C
	$F08C  85 04:       sta $04
_func_308E
	$F08E  A9 04:       lda #$04
	$F090  D0 04:       bne _func_3096
;------------------------------------------
_func_3092_init_ram
	# A might be used as function param, saved to mem[0x3]
	$F092  85 03:       sta $03
_func_3094
	$F094  A9 0F:       lda #$0F
_func_3096

	# push X, Y on the stack
	# push values from mem at 0x0, 0x5, 0x6, 0x8, 0x9
	$F096  48:          pha 
	$F097  85 0F:        sta $0F
	$F099  8A:           txa 
	$F09A  48:           pha 
	$F09B  98:            tya 
	$F09C  48:            pha 
	$F09D  A5 00:          lda $00
	$F09F  48:             pha 
	$F0A0  A5 05:           lda $05
	$F0A2  48:              pha 
	$F0A3  A5 06:            lda $06
	$F0A5  48:               pha 
	$F0A6  A5 07:             lda $07
	$F0A8  48:                pha 
	$F0A9  A5 08:              lda $08
	$F0AB  48:                 pha 
	$F0AC  A5 09:               lda $09
	$F0AE  48:                  pha 

	# load 2 to mem[5]
	$F0AF  A9 02:                lda #$02
	$F0B1  85 05:                sta $05

	# check something at 0xf
	$F0B3  A5 0F:                lda $0F
	$F0B5  C9 04:                cmp #$04
	# if its eq 4 jump to the end of function
	$F0B7  F0 36:                beq +++		; $F0EF

	# else, take this value at 0xf
	$F0B9  A9 0F:                lda #$0F
	# apply mask passed as function arg (possible)
	$F0BB  25 03:                and $03

	# save result to 0x7
	$F0BD  85 07:                sta $07

		# divide function arg by 16
		$F0BF  A5 03:                lda $03
		$F0C1  4A:                   lsr a
		$F0C2  4A:                   lsr a
		$F0C3  4A:                   lsr a
		$F0C4  4A:                   lsr a

		# result to 0x6 and X
		$F0C5  85 06:                sta $06
		$F0C7  AA:                   tax # %X = 0xf%

		# cleanup
		$F0C8  A9 00:                lda #$00
		$F0CA  18:                   clc 
		# %mem[0x7] == 0xf%

	# Add mem[0x7] to A X times and store to 0x8
-	$F0CB  65 07:                adc $07
	$F0CD  CA:                   dex 
	$F0CE  D0 FB:                bne -		; $F0CB
	# %A = 0xE1%
	$F0D0  85 08:                sta $08

	# check value at 0xf again, although we haven't change it
	$F0D2  A5 0F:                lda $0F %0xf%
	$F0D4  D0 06:                bne +		; $F0DC # %took jump%
	# if zero, call function
		$F0D6  20 1E F1:             jsr _func_311E
		$F0D9  4C E9 F0:             jmp ++		; $F0E9

	# else
+	$F0DC  C9 01:                cmp #$01
	$F0DE  F0 06:                beq +		; $F0E6
	# if 1, call function
		$F0E0  20 95 F1:             jsr _func_3195_fill_every_4_byte_with_ff
		$F0E3  4C F2 F0:             jmp ++++		; $F0F2

	# else call this two functions
+	$F0E6  20 61 F1:             jsr _func_3161
++	$F0E9  20 39 F1:             jsr _func_3139
	$F0EC  4C F2 F0:             jmp ++++		; $F0F2

+++	$F0EF  20 0A F1:             jsr _func_310A
	# function cleanup, restore variables from stack
++++	$F0F2  68:                  pla 
	$F0F3  85 09:               sta $09
	$F0F5  68:                 pla 
	$F0F6  85 08:              sta $08
	$F0F8  68:                pla 
	$F0F9  85 07:             sta $07
	$F0FB  68:               pla 
	$F0FC  85 06:            sta $06
	$F0FE  68:              pla 
	$F0FF  85 05:           sta $05
	$F101  68:             pla 
	$F102  85 00:          sta $00
	$F104  68:            pla 
	$F105  A8:            tay 
	$F106  68:           pla 
	$F107  AA:           tax 
	$F108  68:          pla 
	$F109  60:          rts 
;------------------------------------------
_func_310A
	$F10A  A6 03:       ldx $03
	$F10C  A0 00:       ldy #$00
-	$F10E  A9 FF:       lda #$FF
	$F110  91 04:       sta ($04),y
	$F112  C8:          iny 
	$F113  C8:          iny 
	$F114  A5 02:       lda $02
	$F116  91 04:       sta ($04),y
	$F118  C8:          iny 
	$F119  C8:          iny 
	$F11A  CA:          dex 
	$F11B  D0 F1:       bne -		; $F10E
	$F11D  60:          rts 
;------------------------------------------
_func_311E
	$F11E  A5 02:       lda $02
	$F120  A6 08:       ldx $08
	$F122  A0 01:       ldy #$01
-	$F124  91 04:       sta ($04),y
	$F126  18:          clc 
	$F127  69 01:       adc #$01
	$F129  C8:          iny 
	$F12A  48:          pha 
	$F12B  B1 04:        lda ($04),y
	$F12D  29 3F:        and #$3F
	$F12F  91 04:        sta ($04),y
	$F131  68:          pla 
	$F132  C8:          iny 
	$F133  C8:          iny 
	$F134  C8:          iny 
	$F135  CA:          dex 
	$F136  D0 EC:       bne -		; $F124
	$F138  60:          rts 
;------------------------------------------
_func_3139
	$F139  A0 00:       ldy #$00
--	$F13B  A6 06:       ldx $06
	$F13D  A5 01:       lda $01
	$F13F  85 09:       sta $09
-	$F141  A5 09:       lda $09
	$F143  91 04:       sta ($04),y
	$F145  18:          clc 
	$F146  69 08:       adc #$08
	$F148  85 09:       sta $09
	$F14A  C8:          iny 
	$F14B  C8:          iny 
	$F14C  C8:          iny 
	$F14D  A5 00:       lda $00
	$F14F  91 04:       sta ($04),y
	$F151  C8:          iny 
	$F152  CA:          dex 
	$F153  D0 EC:       bne -		; $F141
	$F155  A5 00:       lda $00
	$F157  18:          clc 
	$F158  69 08:       adc #$08
	$F15A  85 00:       sta $00
	$F15C  C6 07:       dec $07
	$F15E  D0 DB:       bne --		; $F13B
	$F160  60:          rts 
;------------------------------------------
_func_3161
	$F161  A0 01:       ldy #$01
	$F163  84 0A:       sty $0A
	$F165  A5 08:       lda $08
	$F167  38:          sec 
	$F168  E5 06:       sbc $06
--	$F16A  A8:          tay 
	$F16B  85 0B:       sta $0B
	$F16D  A6 06:       ldx $06
-	$F16F  98:          tya 
	$F170  48:          pha 
	$F171  18:           clc 
	$F172  98:           tya 
	$F173  65 02:        adc $02
	$F175  A4 0A:        ldy $0A
	$F177  91 04:        sta ($04),y
	$F179  C8:           iny 
	$F17A  B1 04:        lda ($04),y
	$F17C  29 3F:        and #$3F
	$F17E  49 40:        eor #$40
	$F180  91 04:        sta ($04),y
	$F182  C8:           iny 
	$F183  C8:           iny 
	$F184  C8:           iny 
	$F185  84 0A:        sty $0A
	$F187  68:          pla 
	$F188  A8:          tay 
	$F189  C8:          iny 
	$F18A  CA:          dex 
	$F18B  D0 E2:       bne -		; $F16F
	$F18D  A5 0B:       lda $0B
	$F18F  38:          sec 
	$F190  E5 06:       sbc $06
	$F192  10 D6:       bpl --		; $F16A
	$F194  60:          rts 
;------------------------------------------
_func_3195_fill_every_4_byte_with_ff
	# Fill every 4 byte starting from *04 with 0xff

	# Y = 0
	$F195  A0 00:       ldy #$00

	# X = mem[6] %X - 0xF%
--	$F197  A6 06:       ldx $06

	# mem[9] = mem[1]
	$F199  A5 01:       lda $01
	$F19B  85 09:       sta $09

	# A = 0xff
	$F19D  A9 FF:       lda #$FF

	# for (; X != 0; Y += 4, --X)
	#	mem[ *04 + Y ] = 0xff
-	$F19F  91 04:       sta ($04),y
	$F1A1  C8:          iny 
	$F1A2  C8:          iny 
	$F1A3  C8:          iny 
	$F1A4  C8:          iny 
	$F1A5  CA:          dex 
	$F1A6  D0 F7:       bne -		; $F19F

	# mem[0] += 8;
	$F1A8  A5 00:       lda $00
	$F1AA  18:          clc 
	$F1AB  69 08:       adc #$08
	$F1AD  85 00:       sta $00
	$F1AF  C6 07:       dec $07
	$F1B1  D0 E4:       bne --		; $F197
	$F1B3  60:          rts 
;------------------------------------------
_loc_31B4_clear_ppu_memory
	# fetch PPU status, reset address latch
	$F1B4  AD 02 20:    lda $2002

	# set VRAM address inc to 'add 1'
	$F1B7  A5 10:       lda $10
	$F1B9  29 FB:       and #$FB
	$F1BB  8D 00 20:    sta $2000

	# set ppu addr to 0x2000
	$F1BE  A9 20:       lda #$20
	$F1C0  8D 06 20:    sta $2006
	$F1C3  A9 00:       lda #$00
	$F1C5  8D 06 20:    sta $2006

	# fill nametable_0 and nametable_1 with 0x24
	$F1C8  A2 04:       ldx #$04
	$F1CA  A0 00:       ldy #$00
	$F1CC  A9 24:       lda #$24
-	$F1CE  8D 07 20:    sta $2007
	$F1D1  88:          dey 
	$F1D2  D0 FA:       bne -		; $F1CE
	$F1D4  CA:          dex 
	$F1D5  D0 F7:       bne -		; $F1CE

	# fill attribute_table_0 with 0
	$F1D7  A9 23:       lda #$23
	$F1D9  8D 06 20:    sta $2006
	$F1DC  A9 C0:       lda #$C0
	$F1DE  8D 06 20:    sta $2006
	$F1E1  A0 40:       ldy #$40
	$F1E3  A9 00:       lda #$00
-	$F1E5  8D 07 20:    sta $2007
	$F1E8  88:          dey 
	$F1E9  D0 FA:       bne -		; $F1E5
	$F1EB  60:          rts # RTS for _func_07E7_init_ppu?

--	$F1EC  8D 06 20:    sta $2006
	$F1EF  C8:          iny 
	$F1F0  B1 00:       lda ($00),y
	$F1F2  8D 06 20:    sta $2006
	$F1F5  C8:          iny 
	$F1F6  B1 00:       lda ($00),y
	$F1F8  0A:          asl a
	$F1F9  48:          pha 
	$F1FA  A5 10:        lda $10
	$F1FC  09 04:        ora #$04
	$F1FE  B0 02:        bcs +		; $F202
	$F200  29 FB:        and #$FB
+	$F202  8D 00 20:     sta $2000
	$F205  85 10:        sta $10
	$F207  68:          pla 
	$F208  0A:          asl a
	$F209  90 03:       bcc +		; $F20E
	$F20B  09 02:       ora #$02
	$F20D  C8:          iny 
+	$F20E  4A:          lsr a
	$F20F  4A:          lsr a
	$F210  AA:          tax 
-	$F211  B0 01:       bcs +		; $F214
	$F213  C8:          iny 
+	$F214  B1 00:       lda ($00),y
	$F216  8D 07 20:    sta $2007
	$F219  CA:          dex 
	$F21A  D0 F5:       bne -		; $F211
	$F21C  38:          sec 
	$F21D  98:          tya 
	$F21E  65 00:       adc $00
	$F220  85 00:       sta $00
	$F222  A9 00:       lda #$00
	$F224  65 01:       adc $01
	$F226  85 01:       sta $01
_func_3228_something_at_0x331_and_scroll_set
	# X = ppu status
	$F228  AE 02 20:    ldx $2002

	# A = %0x331%
	$F22B  A0 00:       ldy #$00
	$F22D  B1 00:       lda ($00),y
	$F22F  D0 BB:       bne --		; $F1EC

	# load scroll x,y
	$F231  A5 12:       lda $12
	$F233  8D 05 20:    sta $2005
	$F236  A5 13:       lda $13
	$F238  8D 05 20:    sta $2005

	$F23B  60:          rts 
;------------------------------------------
_func_323C
	$F23C  D8:          cld 
	$F23D  A9 04:       lda #$04
-	$F23F  46 00:       lsr $00
	$F241  90 05:       bcc +		; $F248
	$F243  48:          pha 
	$F244  20 4E F2:     jsr _func_324E
	$F247  68:          pla 
+	$F248  18:          clc 
	$F249  E9 00:       sbc #$00
	$F24B  10 F2:       bpl -		; $F23F
	$F24D  60:          rts 
;------------------------------------------
_func_324E
	$F24E  0A:          asl a
	$F24F  0A:          asl a
	$F250  A8:          tay 
	$F251  85 01:       sta $01
	$F253  AE 30 03:    ldx $0330
	$F256  B9 00 C0:    lda _data_0000_indexed,y
	$F259  9D 31 03:    sta $0331,x
	$F25C  20 2D F3:    jsr _func_332D_compare_x_with_0x3f_pop_stack_twice_if_less
	$F25F  C8:          iny 
	$F260  B9 00 C0:    lda _data_0000_indexed,y
	$F263  9D 31 03:    sta $0331,x
	$F266  20 2D F3:    jsr _func_332D_compare_x_with_0x3f_pop_stack_twice_if_less
	$F269  C8:          iny 
	$F26A  B9 00 C0:    lda _data_0000_indexed,y
	$F26D  29 87:       and #$87
	$F26F  9D 31 03:    sta $0331,x
	$F272  29 07:       and #$07
	$F274  85 02:       sta $02
	$F276  8A:          txa 
	$F277  38:          sec 
	$F278  65 02:       adc $02
	$F27A  20 2F F3:    jsr _func_332F
	$F27D  AA:          tax 
	$F27E  8E 30 03:    stx $0330
	$F281  A9 00:       lda #$00
	$F283  9D 31 03:    sta $0331,x
	$F286  C8:          iny 
	$F287  B9 00 C0:    lda _data_0000_indexed,y
	$F28A  85 03:       sta $03
	$F28C  CA:          dex 
	$F28D  18:          clc 
-	$F28E  B9 20 00:    lda $0020,y
	$F291  29 0F:       and #$0F
	$F293  F0 01:       beq +		; $F296
	$F295  18:          clc 
+	$F296  90 02:       bcc +		; $F29A
	$F298  A9 24:       lda #$24
+	$F29A  9D 31 03:    sta $0331,x
	$F29D  CA:          dex 
	$F29E  C6 02:       dec $02
	$F2A0  F0 22:       beq ++		; $F2C4
	$F2A2  B9 20 00:    lda $0020,y
	$F2A5  29 F0:       and #$F0
	$F2A7  08:          php 
	$F2A8  4A:           lsr a
	$F2A9  4A:           lsr a
	$F2AA  4A:           lsr a
	$F2AB  4A:           lsr a
	$F2AC  28:          plp 
	$F2AD  F0 01:       beq +		; $F2B0
	$F2AF  18:          clc 
+	$F2B0  90 02:       bcc +		; $F2B4
	$F2B2  A9 24:       lda #$24
+	$F2B4  9D 31 03:    sta $0331,x
	$F2B7  A5 03:       lda $03
	$F2B9  29 01:       and #$01
	$F2BB  F0 01:       beq +		; $F2BE
	$F2BD  38:          sec 
+	$F2BE  88:          dey 
	$F2BF  CA:          dex 
	$F2C0  C6 02:       dec $02
	$F2C2  D0 CA:       bne -		; $F28E
++	$F2C4  A5 03:       lda $03
	$F2C6  29 10:       and #$10
	$F2C8  F0 0C:       beq +		; $F2D6 -> rts
	$F2CA  E8:          inx 
	$F2CB  A4 01:       ldy $01
	$F2CD  18:          clc 
	$F2CE  B9 20 00:    lda $0020,y
	$F2D1  69 37:       adc #$37
	$F2D3  9D 31 03:    sta $0331,x
+	$F2D6  60:          rts 
;------------------------------------------
_loc_32D7
	$F2D7  A0 00:       ldy #$00
	$F2D9  B1 02:       lda ($02),y
	$F2DB  29 0F:       and #$0F
	$F2DD  85 05:       sta $05
	$F2DF  B1 02:       lda ($02),y
	$F2E1  4A:          lsr a
	$F2E2  4A:          lsr a
	$F2E3  4A:          lsr a
	$F2E4  4A:          lsr a
	$F2E5  85 04:       sta $04
	$F2E7  AE 30 03:    ldx $0330
--	$F2EA  A5 01:       lda $01
	$F2EC  9D 31 03:    sta $0331,x
	$F2EF  20 2D F3:    jsr _func_332D_compare_x_with_0x3f_pop_stack_twice_if_less
	$F2F2  A5 00:       lda $00
	$F2F4  9D 31 03:    sta $0331,x
	$F2F7  20 2D F3:    jsr _func_332D_compare_x_with_0x3f_pop_stack_twice_if_less
	$F2FA  A5 04:       lda $04
	$F2FC  85 06:       sta $06
	$F2FE  09 80:       ora #$80
	$F300  9D 31 03:    sta $0331,x
-	$F303  20 2D F3:    jsr _func_332D_compare_x_with_0x3f_pop_stack_twice_if_less
	$F306  C8:          iny 
	$F307  B1 02:       lda ($02),y
	$F309  9D 31 03:    sta $0331,x
	$F30C  C6 06:       dec $06
	$F30E  D0 F3:       bne -		; $F303
	$F310  20 2D F3:    jsr _func_332D_compare_x_with_0x3f_pop_stack_twice_if_less
	$F313  18:          clc 
	$F314  A9 01:       lda #$01
	$F316  65 00:       adc $00
	$F318  85 00:       sta $00
	$F31A  A9 00:       lda #$00
	$F31C  65 01:       adc $01
	$F31E  85 01:       sta $01
	$F320  8E 30 03:    stx $0330
	$F323  C6 05:       dec $05
	$F325  D0 C3:       bne --		; $F2EA
	$F327  A9 00:       lda #$00
	$F329  9D 31 03:    sta $0331,x
	$F32C  60:          rts 
;------------------------------------------
_func_332D_compare_x_with_0x3f_pop_stack_twice_if_less
	$F32D  E8:          inx 
	$F32E  8A:          txa 
_func_332F
	# compare X with 0x3f
	$F32F  C9 3F:       cmp #$3F
	$F331  90 0A:       bcc +		; $F33D -> rts
	# if X < 0x3F
	# X = mem[0x330], some offset
	# store zero at mem[0x330 + X]
	$F333  AE 30 03:    ldx $0330
	$F336  A9 00:       lda #$00
	$F338  9D 31 03:    sta $0331,x

	# pop stack two times
	$F33B  68:          pla 
	$F33C  68:          pla 
+	$F33D  60:          rts 
;------------------------------------------
_func_333E
	$F33E  A2 FF:       ldx #$FF
	$F340  D0 02:       bne +		; $F344
;------------------------------------------
_func_3342
	$F342  A2 00:       ldx #$00
+	$F344  86 04:       stx $04
	$F346  A2 00:       ldx #$00
	$F348  86 05:       stx $05
	$F34A  86 06:       stx $06
	$F34C  86 07:       stx $07
	$F34E  A5 01:       lda $01
	$F350  29 08:       and #$08
	$F352  D0 01:       bne +		; $F355
	$F354  E8:          inx 
+	$F355  A5 00:       lda $00
	$F357  95 06:       sta $06,x
	$F359  A5 01:       lda $01
	$F35B  4C 5E F3:    jmp +		; $F35E

+	$F35E  29 07:       and #$07
	$F360  0A:          asl a
	$F361  0A:          asl a
	$F362  AA:          tax 
	$F363  A5 04:       lda $04
	$F365  F0 27:       beq +		; $F38E
	$F367  B5 24:       lda $24,x
	$F369  F0 27:       beq ++		; $F392
-	$F36B  18:          clc 
	$F36C  B5 27:       lda $27,x
	$F36E  85 03:       sta $03
	$F370  A5 07:       lda $07
	$F372  20 E3 F3:    jsr _func_33E3
	$F375  95 27:       sta $27,x
	$F377  B5 26:       lda $26,x
	$F379  85 03:       sta $03
	$F37B  A5 06:       lda $06
	$F37D  20 E3 F3:    jsr _func_33E3
	$F380  95 26:       sta $26,x
	$F382  B5 25:       lda $25,x
	$F384  85 03:       sta $03
	$F386  A5 05:       lda $05
	$F388  20 E3 F3:    jsr _func_33E3
	$F38B  95 25:       sta $25,x
	$F38D  60:          rts 

+	$F38E  B5 24:       lda $24,x
	$F390  F0 D9:       beq -		; $F36B
++	$F392  38:          sec 
	$F393  B5 27:       lda $27,x
	$F395  85 03:       sta $03
	$F397  A5 07:       lda $07
	$F399  20 04 F4:    jsr _func_3404
	$F39C  95 27:       sta $27,x
	$F39E  B5 26:       lda $26,x
	$F3A0  85 03:       sta $03
	$F3A2  A5 06:       lda $06
	$F3A4  20 04 F4:    jsr _func_3404
	$F3A7  95 26:       sta $26,x
	$F3A9  B5 25:       lda $25,x
	$F3AB  85 03:       sta $03
	$F3AD  A5 05:       lda $05
	$F3AF  20 04 F4:    jsr _func_3404
	$F3B2  95 25:       sta $25,x
	$F3B4  B5 25:       lda $25,x
	$F3B6  D0 08:       bne +		; $F3C0
	$F3B8  B5 26:       lda $26,x
	$F3BA  D0 04:       bne +		; $F3C0
	$F3BC  B5 27:       lda $27,x
	$F3BE  F0 06:       beq ++		; $F3C6
+	$F3C0  B0 20:       bcs +++		; $F3E2 -> rts
	$F3C2  B5 24:       lda $24,x
	$F3C4  49 FF:       eor #$FF
++	$F3C6  95 24:       sta $24,x
	$F3C8  38:          sec 
	$F3C9  A9 00:       lda #$00
	$F3CB  85 03:       sta $03
	$F3CD  B5 27:       lda $27,x
	$F3CF  20 04 F4:    jsr _func_3404
	$F3D2  95 27:       sta $27,x
	$F3D4  B5 26:       lda $26,x
	$F3D6  20 04 F4:    jsr _func_3404
	$F3D9  95 26:       sta $26,x
	$F3DB  B5 25:       lda $25,x
	$F3DD  20 04 F4:    jsr _func_3404
	$F3E0  95 25:       sta $25,x
+++	$F3E2  60:          rts 
;------------------------------------------
_func_33E3
	$F3E3  20 26 F4:    jsr _func_3426
	$F3E6  65 01:       adc $01
	$F3E8  C9 0A:       cmp #$0A
	$F3EA  90 02:       bcc +		; $F3EE
	$F3EC  69 05:       adc #$05
+	$F3EE  18:          clc 
	$F3EF  65 02:       adc $02
	$F3F1  85 02:       sta $02
	$F3F3  A5 03:       lda $03
	$F3F5  29 F0:       and #$F0
	$F3F7  65 02:       adc $02
	$F3F9  90 04:       bcc +		; $F3FF
-	$F3FB  69 5F:       adc #$5F
	$F3FD  38:          sec 
	$F3FE  60:          rts 

+	$F3FF  C9 A0:       cmp #$A0
	$F401  B0 F8:       bcs -		; $F3FB
	$F403  60:          rts 
;------------------------------------------
_func_3404
	$F404  20 26 F4:    jsr _func_3426
	$F407  E5 01:       sbc $01
	$F409  85 01:       sta $01
	$F40B  B0 0A:       bcs +		; $F417
	$F40D  69 0A:       adc #$0A
	$F40F  85 01:       sta $01
	$F411  A5 02:       lda $02
	$F413  69 0F:       adc #$0F
	$F415  85 02:       sta $02
+	$F417  A5 03:       lda $03
	$F419  29 F0:       and #$F0
	$F41B  38:          sec 
	$F41C  E5 02:       sbc $02
	$F41E  B0 03:       bcs +		; $F423
	$F420  69 A0:       adc #$A0
	$F422  18:          clc 
+	$F423  05 01:       ora $01
	$F425  60:          rts 
;------------------------------------------
_func_3426
	$F426  48:          pha 
	$F427  29 0F:        and #$0F
	$F429  85 01:        sta $01
	$F42B  68:          pla 
	$F42C  29 F0:       and #$F0
	$F42E  85 02:       sta $02
	$F430  A5 03:       lda $03
	$F432  29 0F:       and #$0F
	$F434  60:          rts 
;------------------------------------------
_loc_3435
	$F435  A9 00:       lda #$00
	$F437  85 04:       sta $04
	$F439  18:          clc 
	$F43A  A5 00:       lda $00
	$F43C  69 10:       adc #$10
	$F43E  29 F0:       and #$F0
	$F440  4A:          lsr a
	$F441  4A:          lsr a
	$F442  A8:          tay 
	$F443  A5 00:       lda $00
	$F445  29 07:       and #$07
	$F447  0A:          asl a
	$F448  0A:          asl a
	$F449  AA:          tax 
	$F44A  B9 20 00:    lda $0020,y
	$F44D  F0 51:       beq ++		; $F4A0
	$F44F  B5 24:       lda $24,x
	$F451  F0 26:       beq +		; $F479
---	$F453  38:          sec 
	$F454  B9 23 00:    lda $0023,y
	$F457  85 03:       sta $03
	$F459  B5 27:       lda $27,x
	$F45B  20 04 F4:    jsr _func_3404
	$F45E  B9 22 00:    lda $0022,y
	$F461  85 03:       sta $03
	$F463  B5 26:       lda $26,x
	$F465  20 04 F4:    jsr _func_3404
	$F468  B9 21 00:    lda $0021,y
	$F46B  85 03:       sta $03
	$F46D  B5 25:       lda $25,x
	$F46F  20 04 F4:    jsr _func_3404
	$F472  B0 30:       bcs +++		; $F4A4
	$F474  B9 20 00:    lda $0020,y
	$F477  D0 30:       bne ++++		; $F4A9
+ --	$F479  A9 FF:       lda #$FF
	$F47B  85 04:       sta $04
	$F47D  38:          sec 
-	$F47E  98:          tya 
	$F47F  D0 1E:       bne +		; $F49F -> rts

	$F481               .byte $90,$10,$B5,$24,$85,$20,$B5,$25,$85,$21,$B5,$26,$85,$22,$B5,$27
	$F491               .byte $85,$23,$A5,$00,$29,$08,$F0,$06,$CA,$CA,$CA,$CA,$10,$AB
+	$F49F  60:          rts 

++	$F4A0  B5 24:       lda $24,x
	$F4A2  F0 AF:       beq ---		; $F453
+++	$F4A4  B9 20 00:    lda $0020,y
	$F4A7  D0 D0:       bne --		; $F479
++++	$F4A9  18:          clc 
	$F4AA  90 D2:       bcc -		; $F47E
_func_34AC
	$F4AC  A2 09:       ldx #$09
	$F4AE  C6 34:       dec $34
	$F4B0  10 06:       bpl +		; $F4B8
	$F4B2  A9 0A:       lda #$0A
	$F4B4  85 34:       sta $34
	$F4B6  A2 10:       ldx #$10
+ -	$F4B8  B5 35:       lda $35,x
	$F4BA  F0 02:       beq +		; $F4BE
	$F4BC  D6 35:       dec $35,x
+	$F4BE  CA:          dex 
	$F4BF  10 F7:       bpl -		; $F4B8
	$F4C1  60:          rts 
;------------------------------------------
_func_34C2
	# X = mem[0x330]
	$F4C2  AE 30 03:    ldx $0330
	$F4C5  A5 01:       lda $01
	$F4C7  9D 31 03:    sta $0331,x
	$F4CA  20 2D F3:    jsr _func_332D_compare_x_with_0x3f_pop_stack_twice_if_less

	$F4CD  A5 00:       lda $00
	$F4CF  9D 31 03:    sta $0331,x
	$F4D2  20 2D F3:    jsr _func_332D_compare_x_with_0x3f_pop_stack_twice_if_less

	$F4D5  A9 01:       lda #$01
	$F4D7  9D 31 03:    sta $0331,x
	$F4DA  20 2D F3:    jsr _func_332D_compare_x_with_0x3f_pop_stack_twice_if_less

	$F4DD  98:          tya 
	$F4DE  9D 31 03:    sta $0331,x
	$F4E1  20 2D F3:    jsr _func_332D_compare_x_with_0x3f_pop_stack_twice_if_less

	$F4E4  A9 00:       lda #$00
	$F4E6  9D 31 03:    sta $0331,x
	$F4E9  8E 30 03:    stx $0330
	$F4EC  60:          rts 
;------------------------------------------
_func_34ED_memory_loop
	# mem[0] = mem[0x18] | mem[0x19]
	$F4ED  A5 18:       lda $18
	$F4EF  29 02:       and #$02
	$F4F1  85 00:       sta $00
	$F4F3  A5 19:       lda $19
	$F4F5  29 02:       and #$02
	$F4F7  45 00:       eor $00

	$F4F9  18:          clc 
	$F4FA  F0 01:       beq +		; $F4FD
	$F4FC  38:          sec 

	# set MSB of mem[0x18-0x1f]?
+	$F4FD  66 18:       ror $18
	$F4FF  66 19:       ror $19
	$F501  66 1A:       ror $1A
	$F503  66 1B:       ror $1B
	$F505  66 1C:       ror $1C
	$F507  66 1D:       ror $1D
	$F509  66 1E:       ror $1E
	$F50B  66 1F:       ror $1F
	$F50D  60:          rts 
;------------------------------------------
_func_350E_handle_input
	# joystick 0 strobe
	$F50E  A9 01:       lda #$01
	$F510  8D 16 40:    sta $4016
	$F513  A2 00:       ldx #$00
	$F515  A9 00:       lda #$00
	$F517  8D 16 40:    sta $4016

	$F51A  20 22 F5:    jsr _func_3522_get_buttons_state
	$F51D  E8:          inx 
	$F51E  20 22 F5:    jsr _func_3522_get_buttons_state
	$F521  60:          rts 
;------------------------------------------
_func_3522_get_buttons_state
	# Y = 8, assume number of buttons
	$F522  A0 08:       ldy #$08

	# save A
-	$F524  48:          pha 
	# read button state value to A, 
	# X == 0 for first joystick and X == 1 for second
	$F525  BD 16 40:     lda $4016,x
	# mem[0] = A
	$F528  85 00:        sta $00
	$F52A  4A:           lsr a
	$F52B  05 00:        ora $00
	$F52D  4A:           lsr a
	$F52E  68:          pla 
	$F52F  2A:          rol a
	$F530  88:          dey 
	$F531  D0 F1:       bne -		; $F524

	# set buttons states in some format in 0x14 and 0x15
	$F533  86 00:       stx $00
	$F535  06 00:       asl $00
	$F537  A6 00:       ldx $00
	$F539  B4 14:       ldy $14,x
	$F53B  84 00:       sty $00
	$F53D  95 14:       sta $14,x
	$F53F  29 FF:       and #$FF
	$F541  10 06:       bpl +		; $F549
	$F543  24 00:       bit $00
	$F545  10 02:       bpl +		; $F549
	$F547  29 7F:       and #$7F
+	$F549  B4 15:       ldy $15,x
	$F54B  95 15:       sta $15,x
	$F54D  98:          tya 
	$F54E  29 0F:       and #$0F
	$F550  35 15:       and $15,x
	$F552  F0 06:       beq +		; $F55A -> rts
	$F554  09 F0:       ora #$F0
	$F556  35 15:       and $15,x
	$F558  95 15:       sta $15,x
+	$F55A  60:          rts 
;------------------------------------------
DataTableEntry_355B
	$F55B               .byte $3F,$00,$20,$0F,$15,$2C,$12,$0F,$27,$02,$17,$0F,$30,$36,$06,$0F
	$F56B               .byte $30,$2C,$24,$0F,$02,$36,$16,$0F,$30,$27,$24,$0F,$16,$30,$37,$0F
	$F57B               .byte $06,$27,$02,$23,$C0,$48,$FF,$23,$C8,$03,$55,$AA,$22,$23,$CD,$43
	$F58B               .byte $0F,$20,$2C,$C7,$3F,$20,$81,$84,$50,$51,$52,$53,$20,$82,$84,$54
	$F59B               .byte $55,$56,$57,$20,$83,$84,$58,$59,$5A,$5B,$20,$2A,$C7,$3F,$20,$AD
	$F5AB               .byte $46,$30,$20,$CA,$43,$30,$20,$D2,$C2,$3F,$21,$02,$4E,$30,$21,$10
	$F5BB               .byte $0C,$3E,$3E,$45,$3D,$3D,$3D,$3C,$3C,$3C,$3B,$3B,$3B,$21,$2D,$0F
	$F5CB               .byte $3F,$24,$24,$37,$37,$37,$36,$36,$36,$35,$35,$35,$49,$34,$34,$21
	$F5DB               .byte $59,$01,$3F,$21,$6D,$11,$40,$38,$38,$39,$39,$39,$3A,$3A,$3A,$3B
	$F5EB               .byte $3B,$3B,$43,$3C,$3C,$3D,$3D,$21,$84,$1A,$3D,$3D,$3D,$3E,$3E,$3E
	$F5FB               .byte $30,$30,$30,$31,$31,$31,$32,$32,$32,$33,$33,$33,$34,$49,$34,$35
	$F60B               .byte $35,$35,$36,$36,$21,$A4,$06,$36,$36,$4B,$37,$37,$37,$21,$C6,$01
	$F61B               .byte $3F,$21,$E2,$17,$30,$30,$3E,$3E,$45,$3D,$3D,$3D,$3C,$43,$3C,$3B
	$F62B               .byte $3B,$3B,$3A,$3A,$3A,$39,$39,$39,$38,$40,$38,$21,$AB,$C2,$3F,$22
	$F63B               .byte $04,$18,$37,$37,$37,$36,$36,$36,$4A,$35,$35,$34,$34,$34,$48,$33
	$F64B               .byte $33,$32,$32,$32,$31,$31,$31,$30,$30,$30,$22,$30,$C2,$3F,$22,$39
	$F65B               .byte $01,$3F,$22,$4A,$01,$3F,$22,$59,$05,$40,$38,$38,$39,$39,$22,$64
	$F66B               .byte $1A,$39,$39,$39,$3A,$3A,$3A,$42,$3B,$3B,$3C,$3C,$3C,$44,$3D,$3D
	$F67B               .byte $3E,$3E,$3E,$30,$30,$30,$31,$31,$31,$32,$32,$22,$84,$12,$32,$32
	$F68B               .byte $47,$33,$33,$33,$34,$34,$34,$35,$4A,$35,$36,$36,$36,$37,$37,$37
	$F69B               .byte $22,$A6,$01,$3F,$22,$AE,$C2,$3F,$22,$C2,$0B,$3B,$3B,$3A,$3A,$41
	$F6AB               .byte $39,$39,$39,$38,$38,$38,$22,$E2,$1A,$34,$34,$33,$33,$33,$32,$32
	$F6BB               .byte $32,$31,$31,$46,$30,$30,$30,$3E,$3E,$3E,$3D,$3D,$3D,$3C,$3C,$3C
	$F6CB               .byte $3B,$3B,$3B,$23,$0C,$10,$3F,$24,$24,$24,$37,$37,$37,$36,$36,$36
	$F6DB               .byte $35,$35,$35,$49,$34,$34,$23,$39,$01,$3F,$23,$4C,$13,$3F,$24,$24
	$F6EB               .byte $24,$38,$38,$38,$39,$39,$39,$3A,$3A,$3A,$42,$3B,$3B,$3C,$3C,$3C
	$F6FB               .byte $23,$61,$4F,$30,$23,$70,$0F,$31,$31,$31,$32,$32,$32,$33,$33,$33
	$F70B               .byte $34,$34,$34,$35,$35,$35,$23,$24,$82,$4C,$4D,$23,$25,$82,$4E,$4F
	$F71B               .byte $00
DataTableEntry_371C
	$F71C               .byte $3F,$00,$08,$0F,$2C,$27,$02,$0F,$30,$12,$24,$3F,$1D,$03,$06,$30
	$F72C               .byte $12,$23,$C0,$48,$FF,$23,$C9,$07,$55,$00,$AA,$AA,$0F,$0F,$0F,$23
	$F73C               .byte $E2,$05,$04,$00,$00,$00,$01,$20,$C5,$02,$70,$72,$20,$E5,$02,$71
	$F74C               .byte $73,$20,$CA,$42,$62,$21,$05,$56,$62,$21,$A4,$58,$62,$22,$43,$5A
	$F75C               .byte $62,$22,$E2,$5C,$62,$23,$61,$5E,$62,$21,$08,$01,$63,$21,$17,$01
	$F76C               .byte $63,$21,$A8,$01,$63,$21,$B7,$01,$63,$22,$48,$01,$63,$22,$57,$01
	$F77C               .byte $63,$22,$E8,$01,$63,$22,$F7,$01,$63,$21,$25,$C4,$3F,$21,$29,$C4
	$F78C               .byte $3F,$21,$36,$C4,$3F,$21,$3A,$C4,$3F,$21,$C4,$C4,$3F,$21,$D0,$C4
	$F79C               .byte $3F,$21,$DB,$C4,$3F,$22,$63,$C4,$3F,$22,$6C,$C4
DataTableEntry_37A8
	$F7A8               .byte $3F,$22,$73,$C4,$3F,$22,$7C,$C4,$3F,$23,$02,$C3,$3F,$23,$0F,$C3
	$F7B8               .byte $3F,$23,$1D,$C3,$3F,$22,$0A,$82,$6E,$6F,$22,$18,$82,$70,$71,$22
	$F7C8               .byte $19,$82,$72,$73,$00
DataTableEntry_37CD
	$F7CD               .byte $3F,$00,$08,$0F,$15,$2C,$06,$0F,$30,$27,$16,$3F,$1D,$03,$12,$37
	$F7DD               .byte $15,$23,$C0,$48,$FF,$23,$C9,$02,$AA,$22,$23
DataTableEntry_37E8
	$F7E8               .byte $CD,$43,$0F,$23,$D1,$82,$84,$48,$23,$D7,$05,$03,$0C,$88,$00,$88
	$F7F8               .byte $23,$E1,$03,$88,$00,$88,$23,$E9,$03,$88,$00,$88,$23,$D3,$82,$84
	$F808               .byte $48,$20,$2C,$C7,$3F,$20,$2A,$C7,$3F,$20,$CA,$43,$30,$20,$AD,$46
	$F818               .byte $30,$20,$D2,$C2,$3F,$21,$02,$55
_data_3820
	$F820               .byte $30,$21,$06,$02,$5E,$5F,$21,$26,$02,$5C,$5D,$21,$0E,$02,$5E,$5F
	$F830               .byte $21,$2E,$02,$5C,$5D,$23,$61,$5E,$30,$23,$46,$02,$5C,$5D,$23,$66
	$F840               .byte $02,$60,$61,$23,$4E,$02,$5C,$5D,$23,$6E,$02,$60,$61,$21,$46,$D0
	$F850               .byte $74,$21,$47,$D0,$75,$21,$5C,$42,$30,$21,$79,$42,$30,$21,$96,$42
	$F860               .byte $30,$21,$B2,$43,$30,$21,$C2,$43,$30,$21,$C9,$44,$30,$21,$F9,$45
	$F870               .byte $30,$22,$33,$42,$30,$22,$56,$42,$30,$22,$79,$42,$30,$22,$9C,$42
	$F880               .byte $30,$22,$82,$43,$30,$22,$CA,$43,$30,$22,$DB,$43,$30,$22,$F8,$42
	$F890               .byte $30,$23,$15,$42,$30,$23,$22,$43,$30,$23,$31,$43,$30,$21,$36,$C3
	$F8A0               .byte $3F,$21,$7C,$C4,$3F,$21,$D3,$C3,$3F,$21,$E4,$C5,$3F,$21,$EA,$C7
	$F8B0               .byte $3F,$21,$EC,$C7,$3F,$22,$19,$C3,$3F,$22,$A3,$C4,$3F,$22,$BC,$01
	$F8C0               .byte $3F,$21,$82,$82,$70,$71,$21,$83,$82,$72,$73,$21,$1D,$82,$6E,$6F
	$F8D0               .byte $21,$4E,$D0,$74,$21,$4F,$D0,$75,$00
DataTableEntry_38D9
	$F8D9               .byte $3F,$00,$0D,$0F,$2C,$38,$12,$0F,$27,$27,$27,$0F,$30,$30,$30,$0F
	$F8E9               .byte $3F,$11,$01,$25,$23,$E0,$50,$55,$23,$F0,$48,$AA,$20,$83,$C5,$62
	$F8F9               .byte $20,$84,$C5,$62,$20,$85,$01,$62,$21,$05,$01,$62,$20,$A6,$C3,$62
	$F909               .byte $20,$88,$C5,$62,$20,$89,$01,$62,$21,$09,$01,$62,$20,$8A,$C5,$62
	$F919               .byte $20,$8C,$C5,$62,$20,$AD,$C2,$62,$20,$CE,$C2,$62,$20,$8F,$C5,$62
	$F929               .byte $20,$91,$C5,$62,$20,$B2,$C2,$62,$20,$B3,$01,$62,$20,$94,$01,$62
	$F939               .byte $20,$F3,$01,$62,$21,$14,$01,$62,$20,$96,$C5,$62,$20,$97,$42,$62
	$F949               .byte $20,$D7,$42,$62,$21,$17,$42,$62,$20,$9A,$C3,$62,$20,$DB,$C3,$62
	$F959               .byte $20,$9C,$C3,$62,$21,$47,$C5,$62,$21,$68,$C2,$62,$21,$69,$01,$62
	$F969               .byte $21,$4A,$01,$62,$21,$A9,$01,$62,$21,$CA,$01,$62,$21,$4C,$C5,$62
	$F979               .byte $21,$4D,$01,$62,$21,$CD,$01,$62,$21,$4E,$C5,$62,$21,$50,$C5,$62
	$F989               .byte $21,$71,$C2,$62,$21,$92,$C2,$62,$21,$53,$C5,$62,$21,$55,$C5,$62
	$F999               .byte $21,$56,$43,$62,$21,$D6,$43,$62,$21,$98,$C2,$62,$21,$97,$01,$62
	$F9A9               .byte $22,$09,$0F,$01,$24,$19,$15,$0A,$22,$0E,$1B,$24,$10,$0A,$16,$0E
	$F9B9               .byte $24,$0A,$22,$49,$0F,$01,$24,$19,$15,$0A,$22,$0E,$1B,$24,$10,$0A
	$F9C9               .byte $16,$0E,$24,$0B,$22,$89,$0F,$02,$24,$19,$15,$0A,$22,$0E,$1B,$24
	$F9D9               .byte $10,$0A,$16,$0E,$24,$0A,$22,$C9,$0F,$02,$24,$19,$15,$0A,$22,$0E
	$F9E9               .byte $1B,$24,$10,$0A,$16,$0E,$24,$0B,$23,$05,$16,$D3,$01,$09,$08,$01
	$F9F9               .byte $24,$17,$12,$17,$1D,$0E,$17,$0D,$18,$24,$0C,$18,$65,$15,$1D,$0D
	$FA09               .byte $64,$23,$4B,$0D,$16,$0A,$0D,$0E,$24,$12,$17,$24,$13,$0A,$19,$0A
	$FA19               .byte $17,$00
DataTableEntry_3A1B
	$FA1B               .byte $20,$63,$01,$FF,$20,$6D,$03,$D0,$D1,$D2,$20,$76,$02,$FE,$FF,$20
	$FA2B               .byte $94,$0A,$25,$16,$2A,$26,$27,$28,$29,$2A,$15,$2D,$20,$B4,$0A,$2B
	$FA3B               .byte $24,$2C,$24,$24,$24,$24,$2C,$24,$2F,$00,$FF,$FF,$FF
_func_3A48_sram_related
	$FA48  A9 C0:       lda #$C0
	$FA4A  8D 17 40:    sta $4017
	$FA4D  20 F2 FB:    jsr _func_3BF2
	$FA50  A2 00:       ldx #$00
	$FA52  86 FF:       stx $FF
	$FA54  86 FE:       stx $FE
	$FA56  86 FD:       stx $FD
	$FA58  AD F0 06:    lda $06F0
	$FA5B  C9 90:       cmp #$90
	$FA5D  B0 05:       bcs +		; $FA64
	$FA5F  A2 00:       ldx #$00
	$FA61  8E F1 06:    stx $06F1
+	$FA64  C9 D8:       cmp #$D8
	$FA66  90 03:       bcc +		; $FA6B
	$FA68  EE F1 06:    inc $06F1
+	$FA6B  A8:          tay 
	$FA6C  4A:          lsr a
	$FA6D  4A:          lsr a
	$FA6E  4A:          lsr a
	$FA6F  4A:          lsr a
	$FA70  4A:          lsr a
	$FA71  4A:          lsr a
	$FA72  85 00:       sta $00
	$FA74  98:          tya 
	$FA75  AE F1 06:    ldx $06F1
	$FA78  D0 05:       bne +		; $FA7F
	$FA7A  38:          sec 
	$FA7B  65 00:       adc $00
	$FA7D  D0 03:       bne ++		; $FA82
+	$FA7F  18:          clc 
	$FA80  E5 00:       sbc $00
++	$FA82  8D F0 06:    sta $06F0
	$FA85  60:          rts 
;------------------------------------------
_func_3A86
	$FA86  A0 07:       ldy #$07
-	$FA88  0A:          asl a
	$FA89  B0 03:       bcs +		; $FA8E -> rts
	$FA8B  88:          dey 
	$FA8C  D0 FA:       bne -		; $FA88
+	$FA8E  60:          rts 
;------------------------------------------
_func_3A8F
	$FA8F  85 F1:       sta $F1
	$FA91  84 F2:       sty $F2
_func_3A93
	$FA93  A0 7F:       ldy #$7F
_func_3A95
	$FA95  8E 00 40:    stx $4000
	$FA98  8C 01 40:    sty $4001
	$FA9B  60:          rts 

	$FA9C               .byte $20,$95,$FA
_func_3A9F
	$FA9F  A2 00:       ldx #$00
-	$FAA1  A8:          tay 
	$FAA2  B9 01 FB:    lda _data_3B01_indexed,y
	$FAA5  F0 0B:       beq +		; $FAB2 -> rts
	$FAA7  9D 02 40:    sta $4002,x
	$FAAA  B9 00 FB:    lda _data_3B00_indexed,y
	$FAAD  09 08:       ora #$08
	$FAAF  9D 03 40:    sta $4003,x
+	$FAB2  60:          rts 
;------------------------------------------
_func_3AB3
	$FAB3  8C 05 40:    sty $4005
	$FAB6  A2 04:       ldx #$04
	$FAB8  D0 E7:       bne -		; $FAA1
;------------------------------------------
_func_3ABA
	$FABA  8D 08 40:    sta $4008
	$FABD  8A:          txa 
	$FABE  29 3E:       and #$3E
	$FAC0  A2 08:       ldx #$08
	$FAC2  D0 DD:       bne -		; $FAA1
;------------------------------------------
_func_3AC4
	$FAC4  AA:          tax 
	$FAC5  6A:          ror a
	$FAC6  8A:          txa 
	$FAC7  2A:          rol a
	$FAC8  2A:          rol a
	$FAC9  2A:          rol a
_func_3ACA
	$FACA  29 07:       and #$07
	$FACC  18:          clc 
	$FACD  6D 8D 06:    adc $068D
	$FAD0  A8:          tay 
	$FAD1  B9 4C FB:    lda _data_3B4C_indexed,y
	$FAD4  60:          rts 
;------------------------------------------
_func_3AD5
	$FAD5  98:          tya 
	$FAD6  4A:          lsr a
_func_3AD7
	$FAD7  4A:          lsr a
	$FAD8  4A:          lsr a
	$FAD9  85 00:       sta $00
	$FADB  98:          tya 
	$FADC  38:          sec 
	$FADD  E5 00:       sbc $00
	$FADF  60:          rts 
;------------------------------------------
_func_3AE0
	$FAE0  A9 90:       lda #$90
	$FAE2  8D 00 40:    sta $4000
_loc_3AE5_indexed
	$FAE5  60:          rts 

	$FAE6               .byte $8D,$8D,$8C,$8C,$8B,$8C,$83,$83,$8F,$8F,$8F,$8F,$8D,$85,$84
_data_3AF5_indexed
	$FAF5               .byte $85,$7F,$85,$85,$85,$7F,$8D,$8D,$8D,$8D,$8D
_data_3B00_indexed
	$FB00               .byte $07
_data_3B01_indexed
	$FB01               .byte $F0,$00,$00,$00,$69,$00,$53,$00,$46,$00,$D4,$00,$BD,$00,$A8,$00
	$FB11               .byte $9F,$00,$8D,$00,$7E,$01,$AB,$01,$7C,$01,$52,$01,$3F,$01,$1C,$00
	$FB21               .byte $FD,$00,$EE,$00,$E1,$03,$57,$02,$F9,$02,$CF,$02,$A6,$02,$80,$02
	$FB31               .byte $3A,$02,$1A,$01,$FC,$01,$DF,$01,$C4,$06,$AE,$05,$9E,$05,$4D,$05
	$FB41               .byte $01,$04,$75,$04,$35,$03,$F8,$03,$BF,$03,$89
_data_3B4C_indexed
	$FB4C               .byte $05,$0A,$14,$28,$50,$1E,$3C,$0B,$06,$0C,$18,$30,$60,$24,$48,$07
	$FB5C               .byte $0D,$1A,$34,$78,$27,$4E
_data_3B62_indexed
	$FB62               .byte $0A,$08,$05,$0A,$09
_data_3B67_indexed
	$FB67               .byte $50,$40,$46,$4A,$50,$56,$5C,$64,$6C,$74,$7C,$88,$90,$9A
_loc_3B75
	$FB75  85 F0:       sta $F0
	$FB77  85 FB:       sta $FB
	$FB79  A0 08:       ldy #$08
	$FB7B  4C 67 FD:    jmp _loc_3D67

----	$FB7E  84 F0:       sty $F0
	$FB80  A9 71:       lda #$71
	$FB82  A0 00:       ldy #$00
	$FB84  A2 9F:       ldx #$9F
	$FB86  20 8F FA:    jsr _func_3A8F
---	$FB89  A6 F2:       ldx $F2
	$FB8B  BC 67 FB:    ldy _data_3B67_indexed,x
	$FB8E  C6 F1:       dec $F1
	$FB90  A5 F1:       lda $F1
	$FB92  F0 E1:       beq _loc_3B75
	$FB94  29 07:       and #$07
	$FB96  D0 08:       bne +		; $FBA0
	$FB98  98:          tya 
	$FB99  4A:          lsr a
	$FB9A  7D 67 FB:    adc _data_3B67_indexed,x
	$FB9D  A8:          tay 
	$FB9E  D0 07:       bne ++		; $FBA7
+	$FBA0  29 03:       and #$03
	$FBA2  D0 0E:       bne +++		; $FBB2
	$FBA4  E6 F2:       inc $F2
	$FBA6  18:          clc 
++	$FBA7  8C 02 40:    sty $4002
	$FBAA  A0 28:       ldy #$28
	$FBAC  90 01:       bcc +		; $FBAF
	$FBAE  C8:          iny 
+	$FBAF  8C 03 40:    sty $4003
+++	$FBB2  A9 00:       lda #$00
	$FBB4  4C 00 FE:    jmp _loc_3E00

--	$FBB7  84 F0:       sty $F0
	$FBB9  A9 54:       lda #$54
	$FBBB  A0 6A:       ldy #$6A
	$FBBD  A2 9C:       ldx #$9C
	$FBBF  20 8F FA:    jsr _func_3A8F
-	$FBC2  A4 F2:       ldy $F2
	$FBC4  A5 F1:       lda $F1
	$FBC6  29 03:       and #$03
	$FBC8  F0 0A:       beq +		; $FBD4
	$FBCA  C9 03:       cmp #$03
	$FBCC  D0 0B:       bne ++		; $FBD9
	$FBCE  20 D5 FA:    jsr _func_3AD5
	$FBD1  85 F2:       sta $F2
	$FBD3  A8:          tay 
+	$FBD4  98:          tya 
	$FBD5  4A:          lsr a
	$FBD6  65 F2:       adc $F2
	$FBD8  A8:          tay 
++	$FBD9  98:          tya 
	$FBDA  2A:          rol a
	$FBDB  2A:          rol a
	$FBDC  2A:          rol a
	$FBDD  8D 02 40:    sta $4002
	$FBE0  2A:          rol a
	$FBE1  8D 03 40:    sta $4003
	$FBE4  A5 F1:       lda $F1
	$FBE6  C9 18:       cmp #$18
	$FBE8  B0 5A:       bcs +++		; $FC44
	$FBEA  4A:          lsr a
	$FBEB  09 90:       ora #$90
	$FBED  8D 00 40:    sta $4000
	$FBF0  D0 52:       bne +++		; $FC44
_func_3BF2
	$FBF2  A4 FF:       ldy $FF
	$FBF4  A5 F0:       lda $F0
	$FBF6  4A:          lsr a
	$FBF7  B0 90:       bcs ---		; $FB89
	$FBF9  46 FF:       lsr $FF
	$FBFB  B0 81:       bcs ----		; $FB7E
	$FBFD  A6 FA:       ldx $FA
	$FBFF  D0 4A:       bne ++++		; $FC4B
	$FC01  4A:          lsr a
	$FC02  B0 BE:       bcs -		; $FBC2
	$FC04  46 FF:       lsr $FF
	$FC06  B0 AF:       bcs --		; $FBB7
	$FC08  4A:          lsr a
	$FC09  B0 1D:       bcs ++		; $FC28
	$FC0B  46 FF:       lsr $FF
	$FC0D  B0 0A:       bcs +		; $FC19
	$FC0F  4A:          lsr a
	$FC10  B0 50:       bcs _loc_3C62
	$FC12  46 FF:       lsr $FF
	$FC14  B0 3B:       bcs _loc_3C51
--	$FC16  4C 90 FC:    jmp _loc_3C90

+	$FC19  84 F0:       sty $F0
	$FC1B  A9 22:       lda #$22
	$FC1D  85 F1:       sta $F1
	$FC1F  A0 0B:       ldy #$0B
	$FC21  84 F2:       sty $F2
	$FC23  A9 20:       lda #$20
	$FC25  20 9F FA:    jsr _func_3A9F
++	$FC28  C6 F2:       dec $F2
	$FC2A  D0 04:       bne +		; $FC30
	$FC2C  A9 07:       lda #$07
	$FC2E  85 F2:       sta $F2
+	$FC30  A6 F2:       ldx $F2
	$FC32  BC F5 FA:    ldy _data_3AF5_indexed,x
	$FC35  A2 5A:       ldx #$5A
	$FC37  A5 F1:       lda $F1
	$FC39  C9 14:       cmp #$14
	$FC3B  B0 04:       bcs +		; $FC41
	$FC3D  4A:          lsr a
	$FC3E  09 50:       ora #$50
	$FC40  AA:          tax 
+ -	$FC41  20 95 FA:    jsr _func_3A95
+++	$FC44  C6 F1:       dec $F1
	$FC46  D0 CE:       bne --		; $FC16 -> _loc_3C90
	$FC48  20 E0 FA:    jsr _func_3AE0
++++	$FC4B  A9 00:       lda #$00
	$FC4D  85 F0:       sta $F0
	$FC4F  F0 C5:       beq --		; $FC16 -> _loc_3C90
;------------------------------------------
_loc_3C51
	$FC51  84 F0:       sty $F0
	$FC53  A9 0A:       lda #$0A
	$FC55  85 F1:       sta $F1
	$FC57  AC F0 06:    ldy $06F0
	$FC5A  8C 02 40:    sty $4002
	$FC5D  A9 88:       lda #$88
	$FC5F  8D 03 40:    sta $4003
_loc_3C62
	$FC62  A5 18:       lda $18
	$FC64  29 08:       and #$08
	$FC66  18:          clc 
	$FC67  65 F1:       adc $F1
	$FC69  69 FE:       adc #$FE
	$FC6B  AA:          tax 
	$FC6C  BC E5 FA:    ldy _loc_3AE5_indexed,x
	$FC6F  A2 41:       ldx #$41
	$FC71  D0 CE:       bne -		; $FC41

--	$FC73  A9 0E:       lda #$0E
	$FC75  8D A5 06:    sta $06A5
	$FC78  A0 85:       ldy #$85
	$FC7A  A9 46:       lda #$46
	$FC7C  20 B3 FA:    jsr _func_3AB3
-	$FC7F  CE A5 06:    dec $06A5
	$FC82  F0 19:       beq _loc_3C9D
	$FC84  AD A5 06:    lda $06A5
	$FC87  09 90:       ora #$90
	$FC89  A8:          tay 
	$FC8A  88:          dey 
	$FC8B  8C 04 40:    sty $4004
	$FC8E  D0 0D:       bne _loc_3C9D
_loc_3C90
	$FC90  A5 F3:       lda $F3
	$FC92  D0 09:       bne _loc_3C9D
	$FC94  AD A5 06:    lda $06A5
	$FC97  D0 E6:       bne -		; $FC7F
	$FC99  A4 FE:       ldy $FE
	$FC9B  30 D6:       bmi --		; $FC73
_loc_3C9D
	$FC9D  A5 FC:       lda $FC
	$FC9F  D0 6A:       bne _loc_3D0B
	$FCA1  A5 F9:       lda $F9
	$FCA3  D0 66:       bne _loc_3D0B
	$FCA5  A4 FE:       ldy $FE
	$FCA7  AD A1 06:    lda $06A1
	$FCAA  46 FE:       lsr $FE
	$FCAC  B0 0C:       bcs +		; $FCBA
	$FCAE  4A:          lsr a
	$FCAF  B0 0D:       bcs ++		; $FCBE
	$FCB1  4A:          lsr a
	$FCB2  B0 3C:       bcs _loc_3CF0
	$FCB4  46 FE:       lsr $FE
	$FCB6  B0 23:       bcs +++		; $FCDB
	$FCB8  90 51:       bcc _loc_3D0B
+	$FCBA  A9 28:       lda #$28
	$FCBC  D0 1F:       bne ++++		; $FCDD

++	$FCBE  A5 F5:       lda $F5
	$FCC0  D0 04:       bne +		; $FCC6
	$FCC2  46 FE:       lsr $FE
	$FCC4  B0 15:       bcs +++		; $FCDB
+	$FCC6  A5 F6:       lda $F6
	$FCC8  4A:          lsr a
	$FCC9  4A:          lsr a
	$FCCA  4A:          lsr a
	$FCCB  4A:          lsr a
	$FCCC  4A:          lsr a
	$FCCD  65 F6:       adc $F6
	$FCCF  90 2F:       bcc _loc_3D00
-	$FCD1  A9 00:       lda #$00
	$FCD3  8D A1 06:    sta $06A1
	$FCD6  8D 08 40:    sta $4008
	$FCD9  F0 30:       beq _loc_3D0B

+++	$FCDB  A9 FE:       lda #$FE
++++	$FCDD  8C A1 06:    sty $06A1
	$FCE0  A2 0E:       ldx #$0E
	$FCE2  86 F5:       stx $F5
	$FCE4  A0 FF:       ldy #$FF
	$FCE6  8C 08 40:    sty $4008
	$FCE9  A0 08:       ldy #$08
	$FCEB  8C 0B 40:    sty $400B
	$FCEE  D0 10:       bne _loc_3D00
;------------------------------------------
_loc_3CF0
	$FCF0  A9 FE:       lda #$FE
	$FCF2  A4 F5:       ldy $F5
	$FCF4  F0 DB:       beq -		; $FCD1
	$FCF6  C0 07:       cpy #$07
	$FCF8  F0 06:       beq _loc_3D00
	$FCFA  A5 F6:       lda $F6
	$FCFC  A8:          tay 
	$FCFD  20 D7 FA:    jsr _func_3AD7
_loc_3D00
	$FD00  85 F6:       sta $F6
	$FD02  8D 0A 40:    sta $400A
	$FD05  A5 F5:       lda $F5
	$FD07  F0 02:       beq _loc_3D0B
	$FD09  C6 F5:       dec $F5
_loc_3D0B
	$FD0B  A6 FA:       ldx $FA
	$FD0D  D0 49:       bne +++		; $FD58
	$FD0F  A5 FC:       lda $FC
	$FD11  D0 05:       bne +		; $FD18
	$FD13  8D A3 06:    sta $06A3
	$FD16  F0 40:       beq +++		; $FD58
+	$FD18  4D A3 06:    eor $06A3
	$FD1B  F0 18:       beq +		; $FD35
-	$FD1D  A5 FC:       lda $FC
	$FD1F  8D A3 06:    sta $06A3
	$FD22  20 86 FA:    jsr _func_3A86
	$FD25  B9 CD FF:    lda _data_3FCD_indexed,y
	$FD28  8D 80 06:    sta $0680
	$FD2B  A9 D4:       lda #<_data_3FD4
	$FD2D  85 F5:       sta $F5
	$FD2F  A9 FF:       lda #>_data_3FD4
	$FD31  85 F6:       sta $F6
	$FD33  D0 05:       bne ++		; $FD3A

+	$FD35  CE 98 06:    dec $0698
	$FD38  D0 1E:       bne +++		; $FD58
++	$FD3A  AC 80 06:    ldy $0680
	$FD3D  EE 80 06:    inc $0680
	$FD40  B1 F5:       lda ($F5),y
	$FD42  F0 D9:       beq -		; $FD1D
	$FD44  AA:          tax 
	$FD45  6A:          ror a
	$FD46  8A:          txa 
	$FD47  2A:          rol a
	$FD48  2A:          rol a
	$FD49  2A:          rol a
	$FD4A  29 07:       and #$07
	$FD4C  A8:          tay 
	$FD4D  B9 62 FB:    lda _data_3B62_indexed,y
	$FD50  8D 98 06:    sta $0698
	$FD53  A9 10:       lda #$10
	$FD55  20 BA FA:    jsr _func_3ABA
+++	$FD58  A5 FD:       lda $FD
	$FD5A  D0 06:       bne +		; $FD62
	$FD5C  AD 02 01:    lda $0102
	$FD5F  D0 3A:       bne _loc_3D9B
	$FD61  60:          rts 

+	$FD62  20 86 FA:    jsr _func_3A86
	$FD65  84 FB:       sty $FB
_loc_3D67
	$FD67  B9 59 FE:    lda _data_3E59_indexed,y
	$FD6A  A8:          tay 
	$FD6B  B9 59 FE:    lda _data_3E59_indexed,y
	$FD6E  8D 8D 06:    sta $068D
	$FD71  B9 5A FE:    lda _DataPointerTable_3E5A,y
	$FD74  85 F7:       sta $F7
	$FD76  B9 5B FE:    lda _DataPointerTable_3E5A+1,y
	$FD79  85 F8:       sta $F8
	$FD7B  B9 5C FE:    lda $FE5C,y
	$FD7E  85 F9:       sta $F9
	$FD80  B9 5D FE:    lda $FE5D,y
	$FD83  85 FA:       sta $FA
	$FD85  A9 01:       lda #$01
	$FD87  8D 95 06:    sta $0695
	$FD8A  8D 96 06:    sta $0696
	$FD8D  8D 98 06:    sta $0698
	$FD90  8D 02 01:    sta $0102
	$FD93  A0 00:       ldy #$00
	$FD95  84 F3:       sty $F3
	$FD97  A5 FB:       lda $FB
	$FD99  F0 09:       beq _loc_3DA4
_loc_3D9B
	$FD9B  A4 FA:       ldy $FA
	$FD9D  F0 39:       beq _loc_3DD8
	$FD9F  CE 96 06:    dec $0696
	$FDA2  D0 34:       bne _loc_3DD8
_loc_3DA4
	$FDA4  E6 FA:       inc $FA
	$FDA6  B1 F7:       lda ($F7),y
	$FDA8  F0 3F:       beq _loc_3DE9
	$FDAA  10 0C:       bpl +		; $FDB8
	$FDAC  20 CA FA:    jsr _func_3ACA
	$FDAF  8D 91 06:    sta $0691
	$FDB2  A4 FA:       ldy $FA
	$FDB4  E6 FA:       inc $FA
	$FDB6  B1 F7:       lda ($F7),y
+	$FDB8  20 9F FA:    jsr _func_3A9F
	$FDBB  D0 04:       bne +		; $FDC1
	$FDBD  A0 10:       ldy #$10
	$FDBF  D0 0E:       bne ++		; $FDCF

+	$FDC1  A2 9F:       ldx #$9F
	$FDC3  A5 FB:       lda $FB
	$FDC5  F0 08:       beq ++		; $FDCF
	$FDC7  A2 06:       ldx #$06
	$FDC9  A5 F9:       lda $F9
	$FDCB  D0 02:       bne ++		; $FDCF
	$FDCD  A2 86:       ldx #$86
++	$FDCF  20 93 FA:    jsr _func_3A93
	$FDD2  AD 91 06:    lda $0691
	$FDD5  8D 96 06:    sta $0696
_loc_3DD8
	$FDD8  A5 FB:       lda $FB
	$FDDA  F0 55:       beq _loc_3E31
	$FDDC  CE 95 06:    dec $0695
	$FDDF  D0 50:       bne _loc_3E31
	$FDE1  A4 F3:       ldy $F3
	$FDE3  E6 F3:       inc $F3
	$FDE5  B1 F7:       lda ($F7),y
	$FDE7  D0 20:       bne _loc_3E09
_loc_3DE9
	$FDE9  20 E0 FA:    jsr _func_3AE0
	$FDEC  A9 00:       lda #$00
	$FDEE  85 FA:       sta $FA
	$FDF0  85 F3:       sta $F3
	$FDF2  85 F9:       sta $F9
	$FDF4  8D 02 01:    sta $0102
	$FDF7  A4 FB:       ldy $FB
	$FDF9  F0 05:       beq _loc_3E00
	$FDFB  AC A1 06:    ldy $06A1
	$FDFE  D0 03:       bne _loc_3E03
_loc_3E00
	$FE00  8D 08 40:    sta $4008
_loc_3E03
	$FE03  A9 10:       lda #$10
	$FE05  8D 04 40:    sta $4004
	$FE08  60:          rts 
;------------------------------------------
_loc_3E09
	$FE09  20 C4 FA:    jsr _func_3AC4
	$FE0C  8D 95 06:    sta $0695
	$FE0F  8A:          txa 
	$FE10  29 3E:       and #$3E
	$FE12  A0 7F:       ldy #$7F
	$FE14  20 B3 FA:    jsr _func_3AB3
	$FE17  D0 04:       bne +		; $FE1D
	$FE19  A2 10:       ldx #$10
	$FE1B  D0 11:       bne ++		; $FE2E

+	$FE1D  A2 89:       ldx #$89
	$FE1F  AD 95 06:    lda $0695
	$FE22  C9 18:       cmp #$18
	$FE24  B0 08:       bcs ++		; $FE2E
	$FE26  A2 86:       ldx #$86
	$FE28  C9 10:       cmp #$10
	$FE2A  B0 02:       bcs ++		; $FE2E
	$FE2C  A2 84:       ldx #$84
++	$FE2E  8E 04 40:    stx $4004
_loc_3E31
	$FE31  A4 F9:       ldy $F9
	$FE33  F0 23:       beq ++		; $FE58 -> rts
	$FE35  CE 98 06:    dec $0698
	$FE38  D0 1E:       bne ++		; $FE58 -> rts
	$FE3A  E6 F9:       inc $F9
	$FE3C  B1 F7:       lda ($F7),y
	$FE3E  20 C4 FA:    jsr _func_3AC4
	$FE41  8D 98 06:    sta $0698
	$FE44  18:          clc 
	$FE45  69 FE:       adc #$FE
	$FE47  0A:          asl a
	$FE48  0A:          asl a
	$FE49  C9 38:       cmp #$38
	$FE4B  90 02:       bcc +		; $FE4F
	$FE4D  A9 38:       lda #$38
+	$FE4F  A4 FB:       ldy $FB
	$FE51  D0 02:       bne +		; $FE55
	$FE53  A9 FF:       lda #$FF
+	$FE55  20 BA FA:    jsr _func_3ABA
++	$FE58  60:          rts 
;------------------------------------------
_data_3E59_indexed
	$FE59               .byte $09
_DataPointerTable_3E5A
	$FE5A  0E 13:       .word ($130E) ;130E (0) ()
	$FE5C  18 1D:       .word ($1D18) ;1D18 (0) ()
	$FE5E  22 27:       .word ($2722) ;2722 (0) ()
	$FE60  2C 31:       .word ($312C) ;312C (0) ()
	$FE62  00 8F:       .word (DataTableEntry_0F00) ;8F00 (F00) ()
	$FE64  FE 1B:       .word ($1BFE) ;1BFE (0) ()
	$FE66  00 08:       .word ($0800) ;800 (0) ()
	$FE68  B0 FE:       .word (DataTableEntry_3EB0) ;FEB0 (3EB0) ()
	$FE6A  00 0C:       .word ($0C00) ;C00 (0) ()
	$FE6C  00 CF:       .word (DataTableEntry_0F00) ;CF00 (F00) ()
	$FE6E  FE 00:       .word ($FE) ;FE (0) ()
	$FE70  1A 08:       .word ($081A) ;81A (0) ()
	$FE72  05 FF:       .word (DataTableEntry_3F05) ;FF05 (3F05) ()
	$FE74  00 0B:       .word ($0B00) ;B00 (0) ()
	$FE76  00 AD:       .word (DataTableEntry_2D00) ;AD00 (2D00) ()
	$FE78  FF 00:       .word ($FF) ;FF (0) ()
	$FE7A  03 00:       .word ($03) ;3 (0) ()
	$FE7C  BE FF:       .word (DataTableEntry_3FBE) ;FFBE (3FBE) ()
	$FE7E  00 00:       .word ($00) ;0 (0) ()
	$FE80  00 C4:       .word (DataTableEntry_0400) ;C400 (400) ()
	$FE82  FF 00:       .word ($FF) ;FF (0) ()
	$FE84  00 0F:       .word ($0F00) ;F00 (0) ()
	$FE86  20 FF:       .word (DataTableEntry_3F20) ;FF20 (3F20) ()
	$FE88  21 3E:       .word ($3E21) ;3E21 (0) ()
	$FE8A  00 A1:       .word (DataTableEntry_2100) ;A100 (2100) ()
	$FE8C  FF 08:       .word ($08FF) ;8FF (0) ()
	$FE8E  00 86:       .word (DataTableEntry_0600) ;8600 (600) ()
	$FE90  46 82:       .word (DataTableEntry_0246) ;8246 (246) ()
	$FE92  4A 83:       .word (DataTableEntry_034A) ;834A (34A) ()
	$FE94  26 46:       .word ($4626) ;4626 (0) ()
	$FE96  80 34:       .word ($3480) ;3480 (0) ()
	$FE98  32 34:       .word ($3432) ;3432 (0) ()
	$FE9A  32 34:       .word ($3432) ;3432 (0) ()
	$FE9C  32 34:       .word ($3432) ;3432 (0) ()
	$FE9E  32 34:       .word ($3432) ;3432 (0) ()
	$FEA0  32 34:       .word ($3432) ;3432 (0) ()
	$FEA2  32 34:       .word ($3432) ;3432 (0) ()
	$FEA4  32 34:       .word ($3432) ;3432 (0) ()
	$FEA6  32 84:       .word (DataTableEntry_0432) ;8432 (432) ()
	$FEA8  34 00:       .word ($34) ;34 (0) ()
	$FEAA  A9 AC:       .word (DataTableEntry_2CA9) ;ACA9 (2CA9) ()
	$FEAC  EE E8:       .word (DataTableEntry_28EE) ;E8EE (28EE) ()
	$FEAE  33 35:       .word ($3533) ;3533 (0) ()
DataTableEntry_3EB0
	$FEB0               .byte $16,$16,$57,$1E,$20,$64,$9E,$1E,$20,$64,$9E,$00,$80,$30,$30,$85
	$FEC0               .byte $30,$80,$1A,$1C,$81,$1E,$82,$1A,$80,$1A,$1C,$81,$1E,$82,$1A,$5E
	$FED0               .byte $5E,$5C,$5C,$5A,$5A,$58,$58,$57,$16,$18,$9A,$96,$59,$18,$1A,$9C
	$FEE0               .byte $98,$5F,$5E,$60,$5E,$5C,$5A,$1F,$00,$81,$1A,$1A,$18,$18,$16,$16
	$FEF0               .byte $38,$38,$82,$26,$42,$26,$42,$28,$46,$28,$46,$30,$28,$30,$28,$81
	$FF00               .byte $3A,$85,$3C,$84,$3A
DataTableEntry_3F05
	$FF05               .byte $5E,$02,$20,$42,$4A,$42,$60,$5E,$60,$1D,$00,$82,$26,$42,$26,$42
	$FF15               .byte $81,$40,$80,$42,$44,$48,$26,$28,$2C,$83,$2E
DataTableEntry_3F20
	$FF20               .byte $56,$56,$E0,$42,$5A,$5E,$5C,$99,$58,$58,$E2,$42,$5E,$60,$5E,$9B
	$FF30               .byte $5A,$5A,$CA,$42,$60,$62,$4A,$8D,$5C,$5E,$E0,$42,$5A,$5C,$5E,$1D
	$FF40               .byte $00,$82,$6F,$6E,$EE,$71,$70,$F0,$77,$76,$F6,$57,$56,$D6,$A0,$9A
	$FF50               .byte $96,$B4,$A2,$9C,$98,$B6,$5C,$9C,$96,$57,$5C,$96,$74,$2F,$85,$02
	$FF60               .byte $81,$2E,$34,$2E,$83,$34,$81,$48,$28,$30,$28,$30,$28,$85,$30,$81
	$FF70               .byte $30,$36,$30,$83,$36,$81,$26,$2C,$30,$2C,$30,$2C,$16,$16,$1A,$16
	$FF80               .byte $34,$16,$1A,$16,$34,$16,$1C,$18,$36,$18,$1C,$18,$36,$18,$16,$2E
	$FF90               .byte $80,$16,$36,$34,$36,$83,$16,$81,$02,$2E,$80,$16,$36,$34,$30,$86
	$FFA0               .byte $2E,$81,$1A,$82,$1E,$30,$83,$16,$00,$42,$96,$B0,$E6,$03,$83,$00
	$FFB0               .byte $87,$42,$3E,$42,$3E,$42,$3E,$42,$3E,$42,$3E,$42,$82,$3E
DataTableEntry_3FBE
	$FFBE               .byte $0A,$0C,$0E,$54,$90,$00,$04,$12,$04,$12,$04,$12,$04,$92,$00
_data_3FCD_indexed
	$FFCD               .byte $00,$00,$00,$00,$09,$0E,$12
_data_3FD4
	$FFD4               .byte $16,$02,$02,$1A,$02,$1E,$20,$1E,$00,$5A,$42,$56,$56,$00,$09,$07
	$FFE4               .byte $05,$00,$CA,$8A,$8A,$CA,$CA,$CE,$CA,$CE,$CA,$CE
_IRQ	$FFF0  8E 8E CE:    stx $CE8E
	$FFF3  CE D2 CE:    dec _data_0ED2
	$FFF6  D2:          .db $D2

	$FFF7               .byte $CE,$00,$FF,$5F,$C8,$9E,$C7,$F0,$FF
