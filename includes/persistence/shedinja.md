/// pokemon | Shedinja

//// tab | :octicons-cpu-24: ARM assembly

///// tab | Emerald
``` { .arm_v4 .annotate linenums="1" }
40 00 9F E5     LDR     r0, vblankCallback
00 00 90 E5     LDR     r0, [r0]
00 00 50 E3     CMP     r0, #0
0B 00 A0 03     MOVEQ   r0, #11
FF FF 01 F2     NOP
01 00 00 EA     B       #12
FF FF FF 00
8A 4A 00 00
6E 00 A0 13     MOVNE   r0, #110
00 00 00 EA     B       #8
00 00 00 00
18 10 9F E5     LDR     r1, playerMovementId
00 00 C1 E5     STRB    r0, [r1]
21 00 5F E5     LDRB    r0, [pc, #-33]
6F 01 00 F0     NOP
00 00 50 E3     CMP     r0, #0
1E FF 2F 01     BXEQ    lr
01 00 00 1A     BNE     nextBoxSlot

                vblankCallback:
CC 22 00 03     .word   #0x030022CC

                playerMovementId:
56 73 03 02     .word   #0x02037356
```
/////

///// tab | FireRed/LeafGreen
```text
Not available
```
/////

////

//// tab | :octicons-list-unordered-24: Box code

///// tab | Emerald
```box_code
Box  1: QA Cf 5Q AA
Box  2: kO UA AF Dj
Box  3: Cw Cg A? ??
Box  4: Af IB AA Dq
Box  5: ?? ?? AI pK
Box  6: AA Bu AK AT
Box  7: AA AA 6g AA
Box  8: AA AY EJ ?l
Box  9: AA DB 5S EA
Box 10: X! Vv AQ Dw
Box 11: AA BQ 4x 7?
Box 12: Lw EB AA Aa
Box 13: zC IA A1 Zz
Box 14: Aw IA AA AA
```
/////

///// tab | FireRed/LeafGreen
```text
Not available
```
/////

////

//// tab | :octicons-apps-24: PokeGlitzer

///// tab | Emerald
``` { .text .copy }
40 00 9F E5   00 00 90 E5
00 00 50 E3   0B 00 A0 03
FF FF 01 F2   01 00 00 EA
FF FF FF 00   8A 4A 00 00
6E 00 A0 13   00 00 00 EA
00 00 00 00   18 10 9F E5
00 00 C1 E5   21 00 5F E5
6F 01 00 F0   00 00 50 E3
1E FF 2F 01   01 00 00 1A
CC 22 00 03   56 73 03 02
```
/////

///// tab | FireRed/LeafGreen
```text
Not available
```
/////

////

//// tab | :octicons-star-fill-24: Markings

///// html | div.markings
+-------------------------------+-------------------------------------------+
| Marking                       | Function                                  |
+===============================+===========================================+
| :material-star-outline:       | Exit after setting glitch movement type   |
+-------------------------------+-------------------------------------------+
| :material-star:               | Run further code in next box slot         |
+-------------------------------+-------------------------------------------+
/////

////

///
