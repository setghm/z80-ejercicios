C0A0 -> C0EF

LD L,#A0	2E A0
LD A,#50	3E 50
LD H,#C0	26 C0
LD (HL),#FF	36 FF
LD H,#C8	26 C8
LD (HL),#F6	36 F6
LD H,#D0	26 D0
LD (HL),#F6	36 F6
LD H,#D8	26 D8
LD (HL),#FF	36 FF
INC HL		23
DEC A		3D
JR NZ,#EC	20 EC
JR #FE		18 FE

2E A0 3E 50 26 C0 36 FF 26 C8 36 F6 26 D0 36 F6 26 D8 36 FF 23 3D 20 EC 18 FE