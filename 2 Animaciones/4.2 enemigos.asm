; ENEMY 1	ENEMY 2		ENEMY 3
; FF FF		FF FF		CF 7F
; FF 33		F8 F3		1F FF
; EE 11		C8 F3		3F 7F
; 40 11		F8 F3		DF BF
; 00 11		FC F7		9F DF
; AA BB		FA FB		4F DF
; 55 55		FA FB		CF 3F
; 55 55		F6 FD		BF 7F
;
; PATTERN 123 123 123 123 123 123 123
; 3 ENEMIES = 24 PIXELS
; 21 ENEMIES = 168 PIXELS

LD L,#A0	2E A0	;4000
; SUELO		
LD A,#08	3E 08	;4002
LD B,#09	06 09	;4004
LD H,#C0	26 C0	;4006
LD (HL),#F0	36 F0
LD H,#C8	26 C8
LD (HL),#50	36 50
LD H,#D0	26 D0
LD (HL),#A0	36 A0
LD H,#D8	26 D8
LD (HL),#50	36 50
INC HL		23
DEC B		05
JR NZ,#EC	20 EC
LD H,#C0	26 C0
LD (HL),#F0	36 F0
LD H,#C8	26 C8
LD (HL),#50	36 50
LD H,#D0	26 D0
LD (HL),#E0	36 E0
LD H,#D8	26 D8
LD (HL),#50	36 50
INC HL		23
DEC A		3D
JP NZ,#4004	C2 04 40
; CIELO		
LD L,#00	2E 00
LD A,#50	3E 50
LD H,#C0	26 C0
LD (HL),#00	36 00
LD H,#C8	26 C8
LD (HL),#DD	36 DD
LD H,#D0	26 D0
LD (HL),#00	36 00
LD H,#D8	26 D8
LD (HL),#BB	36 BB
LD H,#E0	26 E0
LD (HL),#00	36 00
LD H,#E8	26 E8
LD (HL),#FF	36 FF
LD H,#F0	26 F0
LD (HL),#FF	36 FF
LD H,#F8	26 F8
LD (HL),#FF	36 FF
INC HL		23
DEC A		3D
JR NZ,#DC	20 DC
LD L,#50	2E 50
LD A,L		7D
LD B,#FF	06 FF
LD H,#C0	26 C0
LD (HL),B	70
LD H,#C8	26 C8
LD (HL),B	70
LD H,#D0	26 D0
LD (HL),B	70
LD H,#D8	26 D8
LD (HL),B	70
LD H,#E0	26 E0
LD (HL),B	70
LD H,#E8	26 E8
LD (HL),B	70
LD H,#F0	26 F0
LD (HL),B	70
LD H,#F8	26 F8
LD (HL),B	70
INC HL		23
DEC A		3D
JR NZ,#E4	20 E4
; PERSONAJE
LD HL,#FFFC	21 FC FF
LD (#C052),HL	22 52 C0
LD (#C852),HL	22 52 C8
LD HL,#7F8F	21 8F 7F
LD (#D052),HL	22 52 D0
LD HL,#008C	21 8C 00
LD (#D852),HL	22 52 D8
LD HL,#73AC	21 AC 73
LD (#E052),HL	22 52 E0
LD HL,#7FCF	21 CF 7F
LD (#E852),HL	22 52 E8
LD HL,#77CC	21 CC 77
LD (#F052),HL	22 52 F0
LD HL,#77DD	21 DD 77
LD (#F852),HL	22 52 F8
; ENEMIGOS 40A5

LD L,#66	2E 66
LD A,#07	3E 07

; ENEMY 1 40A9

LD H,#D0	26 D0
LD (HL),#EE	36 EE
LD H,#D8	26 D8
LD (HL),#40	36 40
LD H,#E0	26 E0
LD (HL),#00	36 00
LD H,#E8	26 E8
LD (HL),#AA	36 AA
LD H,#F0	26 F0
LD (HL),#55	36 55
LD H,#F8	26 F8
LD (HL),#55	36 55
INC HL		23

LD H,#C8	26 C8
LD (HL),#33	36 33
LD B,#11	06 11
LD H,#D0	26 D0
LD (HL),B	70
LD H,#D8	26 D8
LD (HL),B	70
LD H,#E0	26 E0
LD (HL),B	70
LD H,#E8	26 E8
LD (HL),#BB	36 BB
LD H,#F0	26 F0
LD (HL),#55	36 55
LD H,#F8	26 F8
LD (HL),#55	36 55
INC HL		23

; ENEMY 2

LD H,#C8	26 C8
LD (HL),#F8	36 F8
LD H,#D0	26 D0
LD (HL),#C8	36 C8
LD H,#D8	26 D8
LD (HL),#F8	36 F8
LD H,#E0	26 E0
LD (HL),#FC	36 FC
LD H,#E8	26 E8
LD (HL),#FA	36 FA
LD H,#F0	26 F0
LD (HL),#FA	36 FA
LD H,#F8	26 F8
LD (HL),#F6	36 F6
INC HL		23

LD B,#F3	06 F3
LD H,#C8	26 C8
LD (HL),B	70
LD H,#D0	26 D0
LD (HL),B	70
LD H,#D8	26 D8
LD (HL),B	70
LD H,#E0	26 E0
LD (HL),#F7	36 F7
LD H,#E8	26 E8
LD (HL),#FB	36 FB
LD H,#F0	26 F0
LD (HL),#FB	36 FB
LD H,#F8	26 F8
LD (HL),#FD	36 FD
INC HL		23

; ENEMY 3

LD H,#C0	26 C0
LD (HL),#CF	36 CF
LD H,#C8	26 C8
LD (HL),#1F	36 1F
LD H,#D0	26 D0
LD (HL),#3F	36 3F
LD H,#D8	26 D8
LD (HL),#DF	36 DF
LD H,#E0	26 E0
LD (HL),#9F	36 9F
LD H,#E8	26 E8
LD (HL),#4F	36 4F
LD H,#F0	26 F0
LD (HL),#CF	36 CF
LD H,#F8	26 F8
LD (HL),#BF	36 BF
INC HL		23

LD B,#7F	06 7F
LD H,#C0	26 C0
LD (HL),B	70
LD H,#D0	26 D0
LD (HL),B	70
LD H,#D8	26 D8
LD (HL),#BF	36 BF
LD H,#E0	26 E0
LD (HL),#DF	36 DF
LD H,#E8	26 E8
LD (HL),#DF	36 DF
LD H,#F0	26 F0
LD (HL),#3F	36 3F
LD H,#F8	26 F8
LD (HL),B	70
INC HL		23

DEC A		3D
JP NZ,#40A9	C2 A9 40

JR #FE		18 FE

2E A0 3E 08 06 09
26 C0 36 F0 26 C8 36 50 26 D0 36 A0 26 D8 36 50
23 05 20 EC
26 C0 36 F0 26 C8 36 50 26 D0 36 E0 26 D8 36 50
23 3D C2 04 40
2E 00 3E 50
26 C0 36 00 26 C8 36 DD 26 D0 36 00 26 D8 36 BB 26 E0 36 00 26 E8 36 FF 26 F0 36 FF 26 F8 36 FF
23 3D 20 DC
2E 50 7D 06 FF
26 C0 70 26 C8 70 26 D0 70 26 D8 70 26 E0 70 26 E8 70 26 F0 70 26 F8 70
23 3D 20 E4
21 FC FF 22 52 C0 22 52 C8 21 8F 7F 22 52 D0 21 8C 00 22 52 D8 21 AC 73 22 52 E0 21 CF 7F 22 52 E8 21 CC 77 22 52 F0 21 DD 77 22 52 F8
2E 66 3E 07
26 D0 36 EE 26 D8 36 40 26 E0 36 00 26 E8 36 AA 26 F0 36 55 26 F8 36 55 23
26 C8 36 33 06 11 26 D0 70 26 D8 70 26 E0 70 26 E8 36 BB 26 F0 36 55 26 F8 36 55 23
26 C8 36 F8 26 D0 36 C8 26 D8 36 F8 26 E0 36 FC 26 E8 36 FA 26 F0 36 FA 26 F8 36 F6 23
06 F3 26 C8 70 26 D0 70 26 D8 70 26 E0 36 F7 26 E8 36 FB 26 F0 36 FB 26 F8 36 FD 23
26 C0 36 CF 26 C8 36 1F 26 D0 36 3F 26 D8 36 DF 26 E0 36 9F 26 E8 36 4F 26 F0 36 9F 26 F8 36 BF 23
06 7F 26 C0 70 26 D0 70 26 D8 36 BF 26 E0 36 DF 26 E8 36 DF 26 F0 36 3F 26 F8 70 23
3D C2 A9 40
18 FE

2E A0 3E 08 06 09 26 C0 36 F0 26 C8 36 50 26 D0 36 A0 26 D8 36 50 23 05 20 EC 26 C0 36 F0 26 C8 36 50 26 D0 36 E0 26 D8 36 50 23 3D C2 04 40 2E 00 3E 50 26 C0 36 00 26 C8 36 DD 26 D0 36 00 26 D8 36 BB 26 E0 36 00 26 E8 36 FF 26 F0 36 FF 26 F8 36 FF 23 3D 20 DC 2E 50 7D 06 FF 26 C0 70 26 C8 70 26 D0 70 26 D8 70 26 E0 70 26 E8 70 26 F0 70 26 F8 70 23 3D 20 E4 21 FC FF 22 52 C0 22 52 C8 21 8F 7F 22 52 D0 21 8C 00 22 52 D8 21 AC 73 22 52 E0 21 CF 7F 22 52 E8 21 CC 77 22 52 F0 21 DD 77 22 52 F8
2E 66 3E 07 26 D0 36 EE 26 D8 36 40 26 E0 36 00 26 E8 36 AA 26 F0 36 55 26 F8 36 55 23 26 C8 36 33 06 11 26 D0 70 26 D8 70 26 E0 70 26 E8 36 BB 26 F0 36 55 26 F8 36 55 23 26 C8 36 F8 26 D0 36 C8 26 D8 36 F8 26 E0 36 FC 26 E8 36 FA 26 F0 36 FA 26 F8 36 F6 23 06 F3 26 C8 70 26 D0 70 26 D8 70 26 E0 36 F7 26 E8 36 FB 26 F0 36 FB 26 F8 36 FD 23 26 C0 36 CF 26 C8 36 1F 26 D0 36 3F 26 D8 36 DF 26 E0 36 9F 26 E8 36 4F 26 F0 36 9F 26 F8 36 BF 23 06 7F 26 C0 70 26 D0 70 26 D8 36 BF 26 E0 36 DF 26 E8 36 DF 26 F0 36 3F 26 F8 70 23 3D C2 A9 40
18 FE

2E A0 3E 08 06 09 26 C0 36 F0 26 C8 36 50 26 D0 36 A0 26 D8 36 50 23 05 20 EC 26 C0 36 F0 26 C8 36 50 26 D0 36 E0 26 D8 36 50 23 3D C2 04 40 2E 00 3E 50 26 C0 36 00 26 C8 36 DD 26 D0 36 00 26 D8 36 BB 26 E0 36 00 26 E8 36 FF 26 F0 36 FF 26 F8 36 FF 23 3D 20 DC 2E 50 7D 06 FF 26 C0 70 26 C8 70 26 D0 70 26 D8 70 26 E0 70 26 E8 70 26 F0 70 26 F8 70 23 3D 20 E4 21 FC FF 22 52 C0 22 52 C8 21 8F 7F 22 52 D0 21 8C 00 22 52 D8 21 AC 73 22 52 E0 21 CF 7F 22 52 E8 21 CC 77 22 52 F0 21 DD 77 22 52 F8 2E 66 3E 07 26 D0 36 EE 26 D8 36 40 26 E0 36 00 26 E8 36 AA 26 F0 36 55 26 F8 36 55 23 26 C8 36 33 06 11 26 D0 70 26 D8 70 26 E0 70 26 E8 36 BB 26 F0 36 55 26 F8 36 55 23 26 C8 36 F8 26 D0 36 C8 26 D8 36 F8 26 E0 36 FC 26 E8 36 FA 26 F0 36 FA 26 F8 36 F6 23 06 F3 26 C8 70 26 D0 70 26 D8 70 26 E0 36 F7 26 E8 36 FB 26 F0 36 FB 26 F8 36 FD 23 26 C0 36 CF 26 C8 36 1F 26 D0 36 3F 26 D8 36 DF 26 E0 36 9F 26 E8 36 4F 26 F0 36 9F 26 F8 36 BF 23 06 7F 26 C0 70 26 D0 70 26 D8 36 BF 26 E0 36 DF 26 E8 36 DF 26 F0 36 3F 26 F8 70 23 3D C2 A9 40 18 FE
