/// pokemon | Espeon

//// tab | :octicons-cpu-24: ARM assembly
``` { .arm_v4 .annotate linenums="1" }
16 B5           PUSH    { r1, r2, r4, lr }
0E 49           LDR     r1, GetBoxNamePtr
8E 46           CPY     lr, r1
00 F8           BL      lr
02 BC           POP     { r1  }
02 22           MOV     r2, #2

                prefixCharLoop:
8B 5C           LDRB    r3, [r1, r2]
83 54           STRB    r3, [r0, r2]
00 E0           B       #4
01 02
01 3A           SUB     r2, #1
F9 D5           BPL     prefixCharLoop
00 22           MOV     r2, #0
00 E0           B       #4
F2 67
C2 70           STRB    r2, [r0, #3]
04 30           ADD     r0, #4
02 BC           POP     { r1 }
04 23           MOV     r3, #4
06 4C           LDR     r4, ConvertIntToDecimalStringN
A6 46           CPY     lr, r4
00 F8           BL      lr
10 BC           POP     { r4 }
01 BC           POP     { r0 }
00 47           BX      r0
00 00
00 00 00 00
5C F3 00 00

                GetBoxNamePtr:
D1 20 0D 08     .word   #0x080D20D1

                ConvertIntToDecimalStringN:
C1 8C 00 08     .word   #0x08008CC1
00 00 00 00
00 00 00 00
00 00 00 00
```
////

//// tab | :octicons-list-unordered-24: Box code

///// tab | Emerald
```box_code
Box  1: Fr UO SY 5G
Box  2: AP gC vA Ii
Box  3: i1 yD VA Dg
Box  4: AQ IB Ov nV
Box  5: AC IA 4P Jn
Box  6: wn AE MA K8
Box  7: BC MG TK ZG
Box  8: AP gQ vA G8
Box  9: AE cA AA AA
Box 10: AA Bc 8w AA
Box 11: 0S AN CM GM
Box 12: AA gA AA AA
Box 13: AA AA AA AA
Box 14: AA AA AA AA
```
/////

///// tab | FireRed v1.0
```box_code
Box  1: Fr UO SY 5G
Box  2: AP gC vA Ii
Box  3: i1 yD VA Dg
Box  4: AQ IB Ov nV
Box  5: AC IA 4C ni
Box  6: wn AE MA K8
Box  7: BC MG TK ZG
Box  8: AP gQ vA G8
Box  9: AE cA AA AA
Box 10: AA Bc 8w AA
Box 11: bb 0I CH mO
Box 12: AA gA AA AA
Box 13: AA AA AA AA
Box 14: AA AA AA AA
```
/////

///// tab | FireRed v1.1
```box_code
Box  1: Fr UO SY 5G
Box  2: AP gC vA Ii
Box  3: i1 yD VA Dg
Box  4: AQ IB Ov nV
Box  5: AC IA 4I Hg
Box  6: wn AE MA K8
Box  7: BC MG TK ZG
Box  8: AP gQ vA G8
Box  9: AE cA AA AA
Box 10: AA Bc 8w AA
Box 11: gb 0I CI 2O
Box 12: AA gA AA AA
Box 13: AA AA AA AA
Box 14: AA AA AA AA
```
/////

///// tab | LeafGreen v1.0
```box_code
Box  1: Fr UO SY 5G
Box  2: AP gC vA Ii
Box  3: i1 yD VA Dg
Box  4: AQ IB Ov nV
Box  5: AC IA 4A 3i
Box  6: wn AE MA K8
Box  7: BC MG TK ZG
Box  8: AP gQ vA G8
Box  9: AE cA AA AA
Box 10: AA Bc 8w AA
Box 11: Qb 0I CH mO
Box 12: AA gA AA AA
Box 13: AA AA AA AA
Box 14: AA AA AA AA
```
/////

///// tab | LeafGreen v1.1
```box_code
Box  1: Fr UO SY 5G
Box  2: AP gC vA Ii
Box  3: i1 yD VA Dg
Box  4: AQ IB Ov nV
Box  5: AC IA 4D Xh
Box  6: wn AE MA K8
Box  7: BC MG TK ZG
Box  8: AP gQ vA G8
Box  9: AE cA AA AA
Box 10: AA Bc 8w AA
Box 11: Vb 0I CI 2O
Box 12: AA gA AA AA
Box 13: AA AA AA AA
Box 14: AA AA AA AA
```
/////

////

//// tab | :octicons-apps-24: PokeGlitzer

///// tab | Emerald
``` { .text .copy }
        16 B5 0E 49   8E 46 00 F8
        02 BC 02 22   8B 5C 83 54
        00 E0 01 02   01 3A F9 D5
        00 22 00 E0   F2 67 C2 70
        04 30 02 BC   04 23 06 4C
        A6 46 00 F8   10 BC 01 BC
        00 47 00 00   00 00 00 00
        5C F3 00 00   D1 20 0D 08
        C1 8C 00 08   00 00 00 00
        00 00 00 00   00 00 00 00
```
/////

///// tab | FireRed v1.0
``` { .text .copy }
16 B5 0E 49   8E 46 00 F8
02 BC 02 22   8B 5C 83 54
00 E0 01 02   01 3A F9 D5
00 22 00 E0   29 E2 C2 70
04 30 02 BC   04 23 06 4C
A6 46 00 F8   10 BC 01 BC
00 47 00 00   00 00 00 00
5C F3 00 00   6D BD 08 08
79 8E 00 08   00 00 00 00
00 00 00 00   00 00 00 00
```
/////

///// tab | FireRed v1.1
``` { .text .copy }
16 B5 0E 49   8E 46 00 F8
02 BC 02 22   8B 5C 83 54
00 E0 01 02   01 3A F9 D5
00 22 00 E0   81 E0 C2 70
04 30 02 BC   04 23 06 4C
A6 46 00 F8   10 BC 01 BC
00 47 00 00   00 00 00 00
5C F3 00 00   81 BD 08 08
8D 8E 00 08   00 00 00 00
00 00 00 00   00 00 00 00
```
/////

///// tab | LeafGreen v1.0
``` { .text .copy }
16 B5 0E 49   8E 46 00 F8
02 BC 02 22   8B 5C 83 54
00 E0 01 02   01 3A F9 D5
00 22 00 E0   0D E2 C2 70
04 30 02 BC   04 23 06 4C
A6 46 00 F8   10 BC 01 BC
00 47 00 00   00 00 00 00
5C F3 00 00   41 BD 08 08
79 8E 00 08   00 00 00 00
00 00 00 00   00 00 00 00
```
/////

///// tab | LeafGreen v1.1
``` { .text .copy }
16 B5 0E 49   8E 46 00 F8
02 BC 02 22   8B 5C 83 54
00 E0 01 02   01 3A F9 D5
00 22 00 E0   35 E1 C2 70
04 30 02 BC   04 23 06 4C
A6 46 00 F8   10 BC 01 BC
00 47 00 00   00 00 00 00
5C F3 00 00   55 BD 08 08
8D 8E 00 08   00 00 00 00
00 00 00 00   00 00 00 00
```
/////

////

//// tab | :octicons-arrow-switch-24: Signature

///// html | div.signature
+-------+---------------------------------------+
| IN    | Function                              |
+=======+=======================================+
| `r0`  | Box name index (indexed from zero)    |
+-------+---------------------------------------+
| `r1`  | Address of 3 character prefix         |
+-------+---------------------------------------+
| `r2`  | Value to write after prefix           |
+-------+---------------------------------------+
/////

////

///
