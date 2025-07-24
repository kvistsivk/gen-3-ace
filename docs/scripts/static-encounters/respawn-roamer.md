# Respawn roamer

/// pokemon | Jumpluff ["RspRoamer"]
    open: true

//// tab | :octicons-cpu-24: ARM assembly

///// tab | Emerald
``` { .arm_v4 .annotate linenums="1" }
7C 46           CPY     r4, pc
E4 7D           LDRB    r4, markings
09 A5           ADR     r5, ClearRoamerData
05 E0           B       #14
CC E7 E4 CC     .byte   "RspR"
E3 D5 E1 D9     .byte   "oame"
E6 FF 02 02     .byte   "r", #0xFF, #0x02, #0x02
E0 CD           LDMIA   r5, { r5-r7 }
AE 46           CPY     lr, r5
03 E0           B       #10

                _/markings:
00 00           .byte   #0x00, #0x00
16 63
00 00
C8 E3
00 F8           BL      lr
B6 46           CPY     lr, r6
00 F8           BL      lr
60 42           NEG     r0, r4
05 E0           B       #14

                ClearRoamerData:
35 1B 16 08     .word   #0x08161B35

                ClearRoamerLocationData:
61 1B 16 08     .word   #0x08161B61

                CreateInitialRoamerMon:
95 1B 16 08     .word   #0x08161B95
C0 0F           LSR     r0, r0, #31
BE 46           CPY     lr, r7
00 F8           BL      lr
01 E0           B       return
00 00 00 00

                return:
00 20           MOV     r0, #0
03 E0           B       nextFreeBoxSlot
00 00 00 00
00 00 00 00
```
/////

///// tab | FireRed/LeafGreen
``` { .arm_v4 .annotate linenums="1" }
7C 46           CPY     r4, pc
E4 7D           LDR     r4, markings
01 9D           LDR     r5, sp.gSaveBlock1
05 E0           B       #14
CC E7 E4 CC     .byte   "RspR"
E3 D5 E1 D9     .byte   "oame"
E6 FF 02 02     .byte   "r", #0xFF, #0x02, #0x02
E9 20           MOV     r0, #233
12 21           MOV     r1, #18
03 E0           B       #10

                _/markings:
00 00           .byte   #0x00, #0x00
85 51
00 00
C0 DB
48 43           MUL     r0, r1
2D 18           ADD     r5, r5, r0
2E 88           LDRH    r6, [r5]
A7 1E           SUB     r7, r4, #2
00 2C           CMP     r4, #0
03 D0           BEQ     respawnBeast

                swapBeast:
03 2C           CMP     r4, #3
0C D0           BEQ     returnErr
04 2C           CMP     r4, #4
0A D8           BHI     returnErr
2F 80           STRH    r7, [r5]

                respawnBeast:
00 48           LDR     r0, InitRoamer
03 E0           B       #10
15 1E 14 08
00 00 00 00
86 46           CPY     lr, r0
00 F8           BL      lr
2E 80           STRH    r6, [r5]

                return:
13 21           MOV     r1, #19

                returnErr:
13 20           MOV     r1, #19
40 1A           SUB     r0, r0, r1
```
/////

////

//// tab | :octicons-list-unordered-24: Box code

///// tab | Emerald
```box_code
Box  1: fE bk fQ ml
Box  2: Be DM 5! TM
Box  3: 49 Xh 2e b?
Box  4: Ag Lg za 5G
Box  5: A! AA AB Zj
Box  6: AA DI 4w D4
Box  7: tk YA !G BC
Box  8: Be A1 Gx YI
Box  9: YR sW CJ Ub
Box 10: Fg jA D7 5G
Box 11: AP gB 4A AA
Box 12: AA AA IA Pg
```
/////

///// tab | FireRed v1.0
```box_code
Box  1: fE bk fQ Gd
Box  2: Be DM 5! TM
Box  3: 49 Xh 2e b?
Box  4: Ag Lp IB Ih
Box  5: A! AA AP 1S
Box  6: AA DA 20 hD
Box  7: LR gu iK ce
Box  8: AC wD 0A Ms
Box  9: DN AE LA rY
Box 10: L4 AA SA Pg
Box 11: nR 0U CA AA
Box 12: AA CG Rg D4
Box 13: Lo AT IR Mg
Box 14: QB oA AA AA
```
/////

///// tab | FireRed v1.1
```box_code
Box  1: fE bk fQ Gd
Box  2: Be DM 5! TM
Box  3: 49 Xh 2e b?
Box  4: Ag Lp IB Ih
Box  5: A! AA AI VR
Box  6: AA DA 20 hD
Box  7: LR gu iK ce
Box  8: AC wD 0A Ms
Box  9: DN AE LA rY
Box 10: L4 AA SA Pg
Box 11: FR 4U CA AA
Box 12: AA CG Rg D4
Box 13: Lo AT IR Mg
Box 14: QB oA AA AA
```
/////

///// tab | LeafGreen v1.0
```box_code
Box  1: fE bk fQ Gd
Box  2: Be DM 5! TM
Box  3: 49 Xh 2e b?
Box  4: Ag Lp IB Ih
Box  5: A! AA AC VS
Box  6: AA DA 20 hD
Box  7: LR gu iK ce
Box  8: AC wD 0A Ms
Box  9: DN AE LA rY
Box 10: L4 AA SA Pg
Box 11: dR 0U CA AA
Box 12: AA CG Rg D4
Box 13: Lo AT IR Mg
Box 14: QB oA AA AA
```
/////

///// tab | LeafGreen v1.1
```box_code
Box  1: fE bk fQ Gd
Box  2: Be DM 5! TM
Box  3: 49 Xh 2e b?
Box  4: Ag Lp IB Ih
Box  5: A! AA AK 1S
Box  6: AA DA 20 hD
Box  7: LR gu iK ce
Box  8: AC wD 0A Ms
Box  9: DN AE LA rY
Box 10: L4 AA SA Pg
Box 11: 7R 0U CA AA
Box 12: AA CG Rg D4
Box 13: Lo AT IR Mg
Box 14: QB oA AA AA
```
/////

////

//// tab | :octicons-apps-24: PokeGlitzer

///// tab | Emerald
``` { .text .copy }
7C 46 E4 7D   09 A5 05 E0
CC E7 E4 CC   E3 D5 E1 D9
E6 FF 02 02   E0 CD AE 46
03 E0 00 00   16 63 00 00
C8 E3 00 F8   B6 46 00 F8
60 42 05 E0   35 1B 16 08
61 1B 16 08   95 1B 16 08
C0 0F BE 46   00 F8 01 E0
00 00 00 00   00 20 03 E0
00 00 00 00   00 00 00 00
```
/////

///// tab | FireRed v1.0
``` { .text .copy }
7C 46 E4 7D   01 9D 05 E0
CC E7 E4 CC   E3 D5 E1 D9
E6 FF 02 02   E9 20 12 21
03 E0 00 00   FD 52 00 00
C0 DB 48 43   2D 18 2E 88
A7 1E 00 2C   03 D0 03 2C
0C D0 04 2C   0A D8 2F 80
00 48 03 E0   9D 1D 14 08
00 00 00 00   86 46 00 F8
2E 80 13 21   13 20 40 1A
```
/////

///// tab | FireRed v1.1
``` { .text .copy }
7C 46 E4 7D   01 9D 05 E0
CC E7 E4 CC   E3 D5 E1 D9
E6 FF 02 02   E9 20 12 21
03 E0 00 00   85 51 00 00
C0 DB 48 43   2D 18 2E 88
A7 1E 00 2C   03 D0 03 2C
0C D0 04 2C   0A D8 2F 80
00 48 03 E0   15 1E 14 08
00 00 00 00   86 46 00 F8
2E 80 13 21   13 20 40 1A
```
/////

///// tab | LeafGreen v1.0
``` { .text .copy }
7C 46 E4 7D   01 9D 05 E0
CC E7 E4 CC   E3 D5 E1 D9
E6 FF 02 02   E9 20 12 21
03 E0 00 00   25 52 00 00
C0 DB 48 43   2D 18 2E 88
A7 1E 00 2C   03 D0 03 2C
0C D0 04 2C   0A D8 2F 80
00 48 03 E0   75 1D 14 08
00 00 00 00   86 46 00 F8
2E 80 13 21   13 20 40 1A
```
/////

///// tab | LeafGreen v1.1
``` { .text .copy }
7C 46 E4 7D   01 9D 05 E0
CC E7 E4 CC   E3 D5 E1 D9
E6 FF 02 02   E9 20 12 21
03 E0 00 00   AD 52 00 00
C0 DB 48 43   2D 18 2E 88
A7 1E 00 2C   03 D0 03 2C
0C D0 04 2C   0A D8 2F 80
00 48 03 E0   ED 1D 14 08
00 00 00 00   86 46 00 F8
2E 80 13 21   13 20 40 1A
```
/////

////

//// tab | :octicons-star-fill-24: Markings

///// html | div.markings
+-------------------------------+---------------------------+
| Marking                       | Function                  |
+===============================+===========================+
| :material-circle-outline:     | Leave roamer as is        |
| :material-square-outline:     |                           |
| :material-triangle-outline:   |                           |
| :material-heart-outline:      |                           |
+-------------------------------+---------------------------+
| :material-circle:             | Swap roamer to Raikou     |
| :material-square-outline:     |                           |
| :material-triangle-outline:   |                           |
| :material-heart-outline:      |                           |
+-------------------------------+---------------------------+
| :material-circle-outline:     | Swap roamer to Entei      |
| :material-square:             |                           |
| :material-triangle-outline:   |                           |
| :material-heart-outline:      |                           |
+-------------------------------+---------------------------+
| :material-circle-outline:     | Swap roamer to Suicune    |
| :material-square-outline:     |                           |
| :material-triangle:           |                           |
| :material-heart-outline:      |                           |
+-------------------------------+---------------------------+
/////

////

///
