/// pokemon | Porygon ["Cont. 1"]<span class="script-pos">2 of 2</span>
    open: true

//// tab | :octicons-cpu-24: ARM assembly
``` { .arm_v4 .annotate linenums="1" }
08 2D           CMP     r5, #8
00 46           NOP
04 D9           BLS     processBoxLte9
06 D8           BHI     processBoxGte10
BD E3 E2 E8     .byte   "Cont"
AD 00 A2 FF     .byte   ". 1", #0xFF

                processBoxLte9:
C2 70           STRB    r2, [r0, #3]
02 42           NOP
06 E0           B       boxLoopCoda

                processBoxGte10:
0A 3A           SUB     r2, #10
C1 70           STRB    r1, [r0, #3]
02 E0           B       #8
AE 6C
00 00
85 F4
02 71           STRB    r2, [r0, #4]

                boxLoopCoda:
01 35           ADD     r5, #1
0D 2D           CMP     r5, #13
CC D9           BLS     porygonA.boxLoop
A1 08           LSR     r1, r4, #2
09 D3           BCC     return
09 30           ADD     r0, #9
0D 21           MOV     r1, #13
01 E0           B       wallpaperLoop
00 00
00 00

                wallpaperLoop:
03 22           MOV     r2, #3
0A 40           AND     r2, r1
42 54           STRB    r2, [r0, r1]
01 39           SUB     r1, #1
FA D5           BPL     wallpaperLoop

                return:
00 20           MOV     r0, #0
04 E0           B       nextFreeBoxSlot
00 00

                GetBoxNamePtr:
D1 20 0D 08     .word   #0x080D20D1
00 00 00 00
```
////

//// tab | :octicons-list-unordered-24: Box code

///// tab | Emerald
```box_code
Box  1: CC 0A Rg TZ
Box  2: Bt i9 4! Lo
Box  3: rQ Ci ?8 Jw
Box  4: Ak IG 4A o6
Box  5: wX AC 4K 5s
Box  6: AA CF 9A Jx
Box  7: AT UN Lc zZ
Box  8: oQ gJ 0w kw
Box  9: DS EB 4A AA
Box 10: AA AD Ig pA
Box 11: Ql QB Of rV
Box 12: AC AE 4A AA
Box 13: 0S AN CA AA
```
/////

///// tab | FireRed v1.0
```box_code
Box  1: CC 0A Rg TZ
Box  2: Bt i9 4! Lo
Box  3: rQ Ci ?8 Jw
Box  4: Ak IG 4A o6
Box  5: wX AC 4B Hh
Box  6: AA CF 9A Jx
Box  7: AT UN Lc zZ
Box  8: oQ gJ 0w kw
Box  9: DS EB 4A AA
Box 10: AA AD Ig pA
Box 11: Ql QB Of rV
Box 12: AC AE 4A AA
Box 13: Mb 0I CA AA
```
/////

///// tab | FireRed v1.1
```box_code
Box  1: CC 0A Rg TZ
Box  2: Bt i9 4! Lo
Box  3: rQ Ci ?8 Jw
Box  4: Ak IG 4A o6
Box  5: wX AC 4B 3h
Box  6: AA CF 9A Jx
Box  7: AT UN Lc zZ
Box  8: oQ gJ 0w kw
Box  9: DS EB 4A AA
Box 10: AA AD Ig pA
Box 11: Ql QB Of rV
Box 12: AC AE 4A AA
Box 13: Rb 0I CA AA
```
/////

///// tab | LeafGreen v1.0
```box_code
Box  1: CC 0A Rg TZ
Box  2: Bt i9 4! Lo
Box  3: rQ Ci ?8 Jw
Box  4: Ak IG 4A o6
Box  5: wX AC 4N 3g
Box  6: AA CF 9A Jx
Box  7: AT UN Lc zZ
Box  8: oQ gJ 0w kw
Box  9: DS EB 4A AA
Box 10: AA AD Ig pA
Box 11: Ql QB Of rV
Box 12: AC AE 4A AA
Box 13: Bb 0I CA AA
```
/////

///// tab | LeafGreen v1.1
```box_code
Box  1: CC 0A Rg TZ
Box  2: Bt i9 4! Lo
Box  3: rQ Ci ?8 Jw
Box  4: Ak IG 4A o6
Box  5: wX AC 4O ng
Box  6: AA CF 9A Jx
Box  7: AT UN Lc zZ
Box  8: oQ gJ 0w kw
Box  9: DS EB 4A AA
Box 10: AA AD Ig pA
Box 11: Ql QB Of rV
Box 12: AC AE 4A AA
Box 13: Gb 0I CA AA
```
/////

////

//// tab | :octicons-apps-24: PokeGlitzer

///// tab | Emerald
``` { .text .copy }
08 2D 00 46   04 D9 06 D8
BD E3 E2 E8   AD 00 A2 FF
C2 70 02 42   06 E0 0A 3A
C1 70 02 E0   AE 6C 00 00
85 F4 02 71   01 35 0D 2D
CC D9 A1 08   09 D3 09 30
0D 21 01 E0   00 00 00 00
03 22 0A 40   42 54 01 39
FA D5 00 20   04 E0 00 00
D1 20 0D 08   00 00 00 00
```
/////

///// tab | FireRed v1.0
``` { .text .copy }
08 2D 00 46   04 D9 06 D8
BD E3 E2 E8   AD 00 A2 FF
C2 70 02 42   06 E0 0A 3A
C1 70 02 E0   11 E1 00 00
85 F4 02 71   01 35 0D 2D
CC D9 A1 08   09 D3 09 30
0D 21 01 E0   00 00 00 00
03 22 0A 40   42 54 01 39
FA D5 00 20   04 E0 00 00
31 BD 08 08   00 00 00 00
```
/////

///// tab | FireRed v1.1
``` { .text .copy }
08 2D 00 46   04 D9 06 D8
BD E3 E2 E8   AD 00 A2 FF
C2 70 02 42   06 E0 0A 3A
C1 70 02 E0   1D E1 00 00
85 F4 02 71   01 35 0D 2D
CC D9 A1 08   09 D3 09 30
0D 21 01 E0   00 00 00 00
03 22 0A 40   42 54 01 39
FA D5 00 20   04 E0 00 00
45 BD 08 08   00 00 00 00
```
/////

///// tab | LeafGreen v1.0
``` { .text .copy }
08 2D 00 46   04 D9 06 D8
BD E3 E2 E8   AD 00 A2 FF
C2 70 02 42   06 E0 0A 3A
C1 70 02 E0   DD E0 00 00
85 F4 02 71   01 35 0D 2D
CC D9 A1 08   09 D3 09 30
0D 21 01 E0   00 00 00 00
03 22 0A 40   42 54 01 39
FA D5 00 20   04 E0 00 00
05 BD 08 08   00 00 00 00
```
/////

///// tab | LeafGreen v1.1
``` { .text .copy }
08 2D 00 46   04 D9 06 D8
BD E3 E2 E8   AD 00 A2 FF
C2 70 02 42   06 E0 0A 3A
C1 70 02 E0   E9 E0 00 00
85 F4 02 71   01 35 0D 2D
CC D9 A1 08   09 D3 09 30
0D 21 01 E0   00 00 00 00
03 22 0A 40   42 54 01 39
FA D5 00 20   04 E0 00 00
19 BD 08 08   00 00 00 00
```
/////

////

///
