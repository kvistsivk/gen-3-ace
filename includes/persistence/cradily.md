/// pokemon | Cradily

//// tab | :octicons-cpu-24: ARM assembly

///// tab | Emerald
``` { .arm_v4 .annotate linenums="1" }
70 B5           PUSH    { r4-r6, lr }
00 46           NOP
1C A4           ADR     r4, armaldo.payloadDest
70 CC           LDMIA   r4, { r4-r6 }
00 28           CMP     r0, #0
01 D0           BEQ     install

                uninstall:
2E 60           STR     r6, [r5]
14 E0           B       return

                install:
1D A0           ADR     r0, armaldo.interruptHandler
01 42           NOP
21 46           CPY     r1, r4
18 22           MOV     r2, #24

                loop:
83 58           LDR     r3, [r0, r2]
02 E0           B       #8
83 5D
00 00
E9 10
00 2B           CMP     r3, #0
01 D0           BEQ     loopBreak
50 32           ADD     r2, #80
F6 E7           B       loop

                loopBreak:
18 2A           CMP     r2, #24
F0 D0           BEQ     uninstall
52 08           LSR     r2, r2, #1
0B DF           SWI     CpuSet
01 E0           B       #6
00 00
00 00
2C 60           STR     r4, [r5]

                return:
70 BC           POP     { r4-r6 }
01 BC           POP     { r0 }
00 47           BX      r0
```
/////

///// tab | FireRed/LeafGreen
``` { .arm_v4 .annotate linenums="1" }
```
/////

////

//// tab | :octicons-list-unordered-24: Box code

///// tab | Emerald
```box_code
Box  1: cL UA Rh yk
Box  2: cM wA KA HQ
Box  3: Lm AU 4B 2g
Box  4: AU Ih Rh gi
Box  5: g1 gC 4I Nd
Box  6: AA Dp EA Ar
Box  7: Ad BQ Mv bn
Box  8: GC rw 0F II
Box  9: C9 8B 4A AA
Box 10: AA As YH C8
Box 11: Ab wA Rw AA
Box 12: AA AA AA AA
Box 13: AA AA AA AA
Box 14: AA AA AA AA
```
/////

///// tab | FireRed/LeafGreen
```box_code
```
/////

////

//// tab | :octicons-apps-24: PokeGlitzer

///// tab | Emerald
``` { .text .copy }
70 B5 00 46   1C A4 70 CC
00 28 01 D0   2E 60 14 E0
1D A0 01 42   21 46 18 22
83 58 02 E0   83 5D 00 00
E9 10 00 2B   01 D0 50 32
F6 E7 18 2A   F0 D0 52 08
0B DF 01 E0   00 00 00 00
2C 60 70 BC   01 BC 00 47
00 00 00 00   00 00 00 00
00 00 00 00   00 00 00 00
```
/////

///// tab | FireRed/LeafGreen
``` { .text .copy }
```
/////

////

///
