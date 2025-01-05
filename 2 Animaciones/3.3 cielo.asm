C000 -> C04F	CIELO
C050 -> C09F	CIELO
C0A0 -> C0EF	SUELO

F0	1 1 1 1    0 0 0 0
F0	1 1 1 1    0 0 0 0
60	0 1 1 0    0 0 0 0
90	1 0 0 1    0 0 0 0
60	0 1 1 0    0 0 0 0
90	1 0 0 1    0 0 0 0

; CIELO
LD L,#00	    2E 00
LD A,#50	    3E 50
LD H,#C0	    26 C0
LD (HL),#F0	    36 F0
LD H,#C8	    26 C8
LD (HL),#F0	    36 F0
LD H,#D0	    26 D0
LD (HL),#60	    36 60
LD H,#D8	    26 D8
LD (HL),#90	    36 90
LD H,#E0	    26 E0
LD (HL),#60	    36 60
LD H,#E8	    26 E8
LD (HL),#90	    36 90
LD H,#F0	    26 F0
LD (HL),#00	    36 00
LD H,#F8	    26 F8
LD (HL),#00	    36 00
INC HL		    23
DEC A		    3D
JR NZ,#DC	    20 DC
; CIELO
LD L,#50	    2E 50
LD A,L		    7D
LD B,#00	    06 00
LD H,#C0	    26 C0
LD (HL),B	    70
LD H,#C8	    26 C8
LD (HL),B	    70
LD H,#D0	    26 D0
LD (HL),B	    70
LD H,#D8	    26 D8
LD (HL),B	    70
LD H,#E0	    26 E0
LD (HL),B	    70
LD H,#E8	    26 E8
LD (HL),B	    70
LD H,#F0	    26 F0
LD (HL),B	    70
LD H,#F8	    26 F8
LD (HL),B	    70
INC HL		    23
DEC A		    3D
JR NZ,#E4	    20 E4
; SUELO
LD L,#A0	    2E A0
LD A,#50	    3E 50
LD H,#C0	    26 C0
LD (HL),#FF	    36 FF
LD H,#C8	    26 C8
LD (HL),#F6	    36 F6
LD H,#D0	    26 D0
LD (HL),#F6	    36 F6
LD H,#D8	    26 D8
LD (HL),#FF	    36 FF
INC HL		    23
DEC A		    3D
JR NZ,#EC	    20 EC
JR #FE		    18 FE

2E 00 3E 50 26 C0 36 F0 26 C8 36 F0 26 D0 36 60 26 D8 36 90 26 E0 36 60 26 E8 36 90 26 F0 36 00 26 F8 36 00 23 3D 20 DC 2E 50 7D 06 00 26 C0 70 26 C8 70 26 D0 70 26 D8 70 26 E0 70 26 E8 70 26 F0 70 26 F8 70 23 3D 20 E4 2E A0 3E 50 26 C0 36 FF 26 C8 36 F6 26 D0 36 F6 26 D8 36 FF 23 3D 20 EC 18 FE