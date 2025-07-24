# Respawn legendary birds

Respawns any of Articuno, Zapdos, & Moltres.

/// pokemon | Fearow ["RstBirds"]
    open: true

//// tab | :octicons-cpu-24: ARM assembly

///// tab | FireRed/LeafGreen
``` { .arm_v4 .annotate linenums="1" }
7F 46           CPY     r7, pc
FF 7D           LDRB    r7, [r7, #23]
0F 4E           LDR     r6, FlagClear
05 E0           B       #14
CC E7 E4 BC     .byte   "RspB"
DD E6 D8 E7     .byte   "irds"
FF FF 02 02     .byte   #0xFF, #0xFF, #0x02, #0x02
2B 25           MOV     r5, #43
2D 01           LSL     r5, r5, #4
01 E0           B       #6
00 00
58 E7
0D 35           ADD     r5, #13
01 24           MOV     r4, #1

                respawnLoop:
7F 08           LSR     r7, r7, #1
06 D3           BCC     respawnLoopCoda
02 D2           BCS     respawnPokemon
00 00
00 00
66 08

                respawnPokemon:
28 19           ADD     r0, r5, r4
B6 46           CPY     lr, r6
00 F8           BL      lr

                respawnLoopCoda:
00 2C           CMP     r4, #0
02 D0           BEQ     return
E4 07           LSL     r4, r4, #31
A4 0F           LSR     r4, r4, #30
F1 E7           B       respawnLoop

                return:
00 20           MOV     r0, #0
06 E0           B       nextFreeBoxSlot
00 00
BD E6 06 08
00 00 00 00
00 00 00 00
```
/////

///// tab | Emerald
```text
Not available
```
/////

////

//// tab | :octicons-list-unordered-24: Box code

///// tab | FireRed/LeafGreen v1.0
```box_code
Box  1: f0 b? fQ 9O
Box  2: Be DM 5! S8
Box  3: 3e bY 5? ??
Box  4: Ag Ir JS 0B
Box  5: Ae AA AG Tn
Box  6: DT UB JH 8I
Box  7: Bt MC 0g AA
Box  8: AA Bm CC gZ
Box  9: tk YA !A As
Box 10: At Dk B6 QP
Box 11: 8e cA IA bg
Box 12: AA Cp 5g YI
```
/////

///// tab | FireRed/LeafGreen v1.1
```box_code
Box  1: f0 b? fQ 9O
Box  2: Be DM 5! S8
Box  3: 3e bY 5? ??
Box  4: Ag Ir JS 0B
Box  5: Ae AA AF jn
Box  6: DT UB JH 8I
Box  7: Bt MC 0g AA
Box  8: AA Bm CC gZ
Box  9: tk YA !A As
Box 10: At Dk B6 QP
Box 11: 8e cA IA bg
Box 12: AA C9 5g YI
```
/////

///// tab | Emerald
```text
Not available
```
/////

////

//// tab | :octicons-apps-24: PokeGlitzer

///// tab | FireRed/LeafGreen v1.0
``` { .text .copy }
7F 46 FF 7D   0F 4E 05 E0
CC E7 E4 BC   DD E6 D8 E7
FF FF 02 02   2B 25 2D 01
01 E0 00 00   64 E7 0D 35
01 24 7F 08   06 D3 02 D2
00 00 00 00   66 08 28 19
B6 46 00 F8   00 2C 02 D0
E4 07 A4 0F   F1 E7 00 20
06 E0 00 00   A9 E6 06 08
00 00 00 00   00 00 00 00
```
/////

///// tab | FireRed/LeafGreen v1.1
``` { .text .copy }
7F 46 FF 7D   0F 4E 05 E0
CC E7 E4 BC   DD E6 D8 E7
FF FF 02 02   2B 25 2D 01
01 E0 00 00   58 E7 0D 35
01 24 7F 08   06 D3 02 D2
00 00 00 00   66 08 28 19
B6 46 00 F8   00 2C 02 D0
E4 07 A4 0F   F1 E7 00 20
06 E0 00 00   BD E6 06 08
00 00 00 00   00 00 00 00
```
/////

///// tab | Emerald
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
| :material-circle-outline:     | Do not respawn Articuno   |
+-------------------------------+---------------------------+
| :material-circle:             | Respawn Articuno          |
+-------------------------------+---------------------------+
| :material-square-outline:     | Do not respawn Zapdos     |
+-------------------------------+---------------------------+
| :material-square:             | Respawn Zapdos            |
+-------------------------------+---------------------------+
| :material-triangle-outline:   | Do not respawn Moltres    |
+-------------------------------+---------------------------+
| :material-triangle:           | Respawn Moltres           |
+-------------------------------+---------------------------+
/////

////

///
