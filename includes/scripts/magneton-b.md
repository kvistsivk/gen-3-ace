/// pokemon | Magneton ["Cont. 1"]<span class="script-pos">2 of 3</span>
    open: true

//// tab | :octicons-cpu-24: ARM assembly
``` { .arm_v4 .annotate linenums="1" }
3F 21           MOV     r1, #63
BE 46           CPY     lr, r7
00 F8           BL      lr
03 E0           B       #10
BD E3 E2 E8     .byte   "Cont"
AD 00 A2 FF     .byte   ". 1", #0xFF
1E 30           ADD     r0, #30
02 42           NOP
01 B4           PUSH    { r0 }
0F 20           MOV     r0, #15
70 43           MUL     r0, r6
00 E0           B       #4
0B 0F
3F 21           MOV     r1, #63
BE 46           CPY     lr, r7
00 F8           BL      lr
81 00           LSL     r1, r0, #2
08 1A           SUB     r0, r1, r0
03 28           CMP     r0, #3
00 D9           BLS     #4
08 30           ADD     r0, #8
0D A1           ADR     r1, magnetonC.typeNames
40 18           ADD     r0, r0, r1
01 B4           PUSH    { r0 }
00 20           MOV     r0, #0
06 BC           POP     { r1, r2 }
09 9B           LDR     r3, sp.WriteBoxNamePrefixed
9E 46           CPY     lr, r3
00 F8           BL      lr
09 E0           B       magnetonC.return
00 00
00 00
6D D9
00 00

                GetBoxMonData:
75 A6 06 08     .word   #0x0806A675

                __udivsi3:
69 7B 2E 08     .word   #0x082E7B69
```
////

//// tab | :octicons-list-unordered-24: Box code

///// tab | Emerald
```box_code
Box  1: Py G! Rg D4
Box  2: A! C9 4! Lo
Box  3: rQ Ci ?x 4w
Box  4: Ak IB tA 8g
Box  5: cE MA 4A sP
Box  6: Py G! Rg D4
Box  7: gQ AI Gg Mo
Box  8: AN kI MA 2h
Box  9: QB gB tA Ag
Box 10: Br wJ m5 5G
Box 11: AP gJ 4A AA
Box 12: AA Bt 2Q AA
Box 13: da YG CG l7
Box 14: Lg gA AA AA
```
/////

///// tab | FireRed v1.0
```box_code
Box  1: Py G! Rg D4
Box  2: A! C9 4! Lo
Box  3: rQ Ci ?x 4w
Box  4: Ak IB tA 8g
Box  5: cE MA 4C qx
Box  6: Py G! Rg D4
Box  7: gQ AI Gg Mo
Box  8: AN kI MA 2h
Box  9: QB gB tA Ag
Box 10: Br wJ m5 5G
Box 11: AP gJ 4A AA
Box 12: AA Bt 2Q AA
Box 13: Rf 0D CA 1G
Box 14: Hg gA AA AA
```
/////

///// tab | FireRed v1.1
```box_code
Box  1: Py G! Rg D4
Box  2: A! C9 4! Lo
Box  3: rQ Ci ?x 4w
Box  4: Ak IB tA 8g
Box  5: cE MA 4C ax
Box  6: Py G! Rg D4
Box  7: gQ AI Gg Mo
Box  8: AN kI MA 2h
Box  9: QB gB tA Ag
Box 10: Br wJ m5 5G
Box 11: AP gJ 4A AA
Box 12: AA Bt 2Q AA
Box 13: Wf 0D CH 1G
Box 14: Hg gA AA AA
```
/////

///// tab | LeafGreen v1.0
```box_code
Box  1: Py G! Rg D4
Box  2: A! C9 4! Lo
Box  3: rQ Ci ?x 4w
Box  4: Ak IB tA 8g
Box  5: cE MA 4M 6u
Box  6: Py G! Rg D4
Box  7: gQ AI Gg Mo
Box  8: AN kI MA 2h
Box  9: QB gB tA Ag
Box 10: Br wJ m5 5G
Box 11: AP gJ 4A AA
Box 12: AA Bt 2Q AA
Box 13: Rf 0D CO lF
Box 14: Hg gA AA AA
```
/////

///// tab | LeafGreen v1.1
```box_code
Box  1: Py G! Rg D4
Box  2: A! C9 4! Lo
Box  3: rQ Ci ?x 4w
Box  4: Ak IB tA 8g
Box  5: cE MA 4E qx
Box  6: Py G! Rg D4
Box  7: gQ AI Gg Mo
Box  8: AN kI MA 2h
Box  9: QB gB tA Ag
Box 10: Br wJ m5 5G
Box 11: AP gJ 4A AA
Box 12: AA Bt 2Q AA
Box 13: Wf 0D CF lG
Box 14: Hg gA AA AA
```
/////

////

//// tab | :octicons-apps-24: PokeGlitzer

///// tab | Emerald
``` { .text .copy }
3F 21 BE 46   00 F8 03 E0
BD E3 E2 E8   AD 00 A2 FF
1E 30 02 42   01 B4 0F 20
70 43 00 E0   0B 0F 3F 21
BE 46 00 F8   81 00 08 1A
03 28 00 D9   08 30 0D A1
40 18 01 B4   00 20 06 BC
09 9B 9E 46   00 F8 09 E0
00 00 00 00   6D D9 00 00
75 A6 06 08   69 7B 2E 08
```
/////

///// tab | FireRed v1.0
``` { .text .copy }
3F 21 BE 46   00 F8 03 E0
BD E3 E2 E8   AD 00 A2 FF
1E 30 02 42   01 B4 0F 20
70 43 00 E0   2A B1 3F 21
BE 46 00 F8   81 00 08 1A
03 28 00 D9   08 30 0D A1
40 18 01 B4   00 20 06 BC
09 9B 9E 46   00 F8 09 E0
00 00 00 00   6D D9 00 00
45 FD 03 08   0D 46 1E 08
```
/////

///// tab | FireRed v1.1
``` { .text .copy }
3F 21 BE 46   00 F8 03 E0
BD E3 E2 E8   AD 00 A2 FF
1E 30 02 42   01 B4 0F 20
70 43 00 E0   26 B1 3F 21
BE 46 00 F8   81 00 08 1A
03 28 00 D9   08 30 0D A1
40 18 01 B4   00 20 06 BC
09 9B 9E 46   00 F8 09 E0
00 00 00 00   6D D9 00 00
59 FD 03 08   7D 46 1E 08
```
/////

///// tab | LeafGreen v1.0
``` { .text .copy }
3F 21 BE 46   00 F8 03 E0
BD E3 E2 E8   AD 00 A2 FF
1E 30 02 42   01 B4 0F 20
70 43 00 E0   CE AE 3F 21
BE 46 00 F8   81 00 08 1A
03 28 00 D9   08 30 0D A1
40 18 01 B4   00 20 06 BC
09 9B 9E 46   00 F8 09 E0
00 00 00 00   6D D9 00 00
45 FD 03 08   E9 45 1E 08
```
/////

///// tab | LeafGreen v1.1
``` { .text .copy }
3F 21 BE 46   00 F8 03 E0
BD E3 E2 E8   AD 00 A2 FF
1E 30 02 42   01 B4 0F 20
70 43 00 E0   4A B1 3F 21
BE 46 00 F8   81 00 08 1A
03 28 00 D9   08 30 0D A1
40 18 01 B4   00 20 06 BC
09 9B 9E 46   00 F8 09 E0
00 00 00 00   6D D9 00 00
59 FD 03 08   59 46 1E 08
```
/////

////

///
