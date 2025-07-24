/// pokemon | Porygon ["RstBoxNms"]<span class="script-pos">1 of 2</span>
    open: true

//// tab | :octicons-cpu-24: ARM assembly
``` { .arm_v4 .annotate linenums="1" }
7C 46           CPY     r4, pc
E4 7D           LDRB    r4, [r4, #23]
00 25           MOV     r5, #0
05 E0           B       #14
CC E7 E8 BC     .byte   "RstB"
E3 EC C8 E1     .byte   "oxNm"
E7 FF 02 02     .byte   "s", #0xFF, #0x02, #0x02

                boxLoop:
28 46           CPY     r0, r5
20 49           LDR     r1, porygonB.GetBoxNamePtr
03 E0           B       #10
00 00
45 BD
00 00
F5 63
8E 46           CPY     lr, r1
00 F8           BL      lr
07 21           MOV     r1, #7
BB 22           MOV     r2, #0xBB
63 08           LSR     r3, r4, #1
00 D2           BCS     #0
44 32           ADD     r2, #0x44

                charLoop:
42 54           STRB    r2, [r0, r1]
01 39           SUB     r1, #1
FC D5           BPL     charLoop
61 08           LSR     r1, r4, #1
1C D2           BCS     porygonB.boxLoopCoda
BC 21           MOV     r1, #0xBC
01 70           STRB    r1, [r0, #0]
01 E0           B       #4
00 00
00 00
C9 21           MOV     r1, #0xC9
41 70           STRB    r1, [r0, #1]
D2 21           MOV     r1, #0xD2
81 70           STRB    r1, [r0, #2]
A2 21           MOV     r1, #0xA2
4A 19           ADD     r2, r1, r5
```
////

//// tab | :octicons-list-unordered-24: Box code
```box_code
Box  1: fE bk fQ Al
Box  2: Be DM 5! i8
Box  3: 4! zI 4e f?
Box  4: Ag Io Ri BJ
Box  5: A! AA AE W9
Box  6: AA D1 Y4 5G
Box  7: AP gH Ib si
Box  8: Yw gA 0k Qy
Box  9: Ql QB Of zV
Box 10: YQ gc 0r wh
Box 11: AX AB 4A AA
Box 12: AA DJ IU Fw
Box 13: 0i GB cK Ih
Box 14: Sh kA AA AA
```
////

//// tab | :octicons-apps-24: PokeGlitzer
``` { .text .copy }
7C 46 E4 7D   00 25 05 E0
CC E7 E8 BC   E3 EC C8 E1
E7 FF 02 02   28 46 20 49
03 E0 00 00   45 BD 00 00
F5 63 8E 46   00 F8 07 21
BB 22 63 08   00 D2 44 32
42 54 01 39   FC D5 61 08
1C D2 BC 21   01 70 01 E0
00 00 00 00   C9 21 41 70
D2 21 81 70   A2 21 4A 19
```
////

//// tab | :octicons-star-fill-24: Markings

///// html | div.markings
+-------------------------------+-------------------------------------------+
| Marking                       | Function                                  |
+===============================+===========================================+
| :material-circle-outline:     | Reset box names to their defaults (e.g.   |
|                               | `BOX1`)                                   |
+-------------------------------+-------------------------------------------+
| :material-circle:             | Set all box names to `AAAAAAAA`           |
+-------------------------------+-------------------------------------------+
| :material-square-outline:     | Leave wallpapers as is                    |
+-------------------------------+-------------------------------------------+
| :material-square:             | Reset wallpapers to their original values |
+-------------------------------+-------------------------------------------+
/////

////

///
