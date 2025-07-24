# Respawn legendary giants

Respawns any of Regirock, Regice, & Registeel.

/// pokemon | Golem ["RspGiants"]
    open: true

//// tab | :octicons-cpu-24: ARM assembly

///// tab | Emerald
``` { .arm_v4 .annotate linenums="1" }
7F 46           CPY     r7, pc
FF 7D           LDRB    r7, [r7, #23]
0D 4E           LDR     r6, FlagClear
05 E0           B       #14
CC E7 E4 C1     .byte   "RspG"
DD D5 E2 E8     .byte   "iant"
E7 FF 02 02     .byte   "s", #0xFF, #0x02, #0x02
FF 25           MOV     r5, #255
BC 35           ADD     r5, #188
01 E0           B       #6
00 00
68 18
00 24           MOV     r4, #0

                respawnLoop:
7F 08           LSR     r7, r7, #1
06 D3           BCC     respawnloopCoda
28 19           ADD     r0, r5, r4
02 E0           B       #8
00 00
00 00
3E 08
B6 46           CPY     lr, r6
00 F8           BL      lr

                respawnLoopCoda:
01 34           ADD     r4, #1
02 2C           CMP     r4, #2
F3 D9           BLS     respawnLoop
00 20           MOV     r0, #0
09 E0           B       nextFreeBoxSlot

                FlagClear:
69 D7 09 08     .word   #0x0809D769
00 00 00 00
00 00 00 00
00 00 00 00
00 00 00 00
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
Box  1: f0 b? fQ 1O
Box  2: Be DM 5! TB
Box  3: 3d Xi 6O f?
Box  4: Ag L? Jb w1
Box  5: Ae AA AG gY
Box  6: AC R? CA bT
Box  7: KB kC 4A AA
Box  8: AA A! CL ZG
Box  9: AP gB NA Is
Box 10: 89 kA IA ng
Box 11: ad cJ CA AA
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
7F 46 FF 7D   0D 4E 05 E0
CC E7 E4 C1   DD D5 E2 E8
E7 FF 02 02   FF 25 BC 35
01 E0 00 00   68 18 00 24
7F 08 06 D3   28 19 02 E0
00 00 00 00   3E 08 B6 46
00 F8 01 34   02 2C F3 D9
00 20 09 E0   69 D7 09 08
00 00 00 00   00 00 00 00
00 00 00 00   00 00 00 00
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
+-------------------------------+---------------------------+
| Marking                       | Function                  |
+===============================+===========================+
| :material-circle-outline:     | Do not respawn Regirock   |
+-------------------------------+---------------------------+
| :material-circle:             | Respawn Regirock          |
+-------------------------------+---------------------------+
| :material-square-outline:     | Do not respawn Regice     |
+-------------------------------+---------------------------+
| :material-square:             | Respawn Regice            |
+-------------------------------+---------------------------+
| :material-triangle-outline:   | Do not respawn Registeel  |
+-------------------------------+---------------------------+
| :material-triangle:           | Respawn Registeel         |
+-------------------------------+---------------------------+
/////

////

///

