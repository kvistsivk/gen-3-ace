# Respawn tower duo

Respawns any of Lugia & Ho-Oh.

/// pokemon | Bellsprout ["RspTwrDuo"]
    open: true

//// tab | :octicons-cpu-24: ARM assembly

///// tab | Emerald
``` { .arm_v4 .annotate linenums="1" }
7F 46           CPY     r7, pc
FF 7D           LDRB    r7, [r7, #23]
03 4E           LDR     r6, FlagClear
0A E0           B       #24
CC E7 E4 CE     .byte   "RspT"
EB E6 BE E9     .byte   "wrDu"
E3 FF 02 02     .byte   "o", #0xFF, #0x02, #x02

                FlagClear:
69 D7 09 08     .word   #0x0809D769
FF FF 00 00
F3 95
91 25           MOV     r5, #145
00 24           MOV     r4, #0

                respawnLoop:
7F 08           LSR     r7, r7, #1
0B D3           BCC     respawnLoopCoda
02 D2           BCS     respawnPokemon
00 00
00 00
39 08

                respawnPokemon:
28 19           ADD     r0, r5, r4
B6 46           CPY     lr, r6
00 F8           BL      lr
28 19           ADD     r0, r5, r4
FF 30           ADD     r0, #255
4C 30           ADD     r0, #76
B6 46           CPY     lr, r6
00 F8           BL      lr

                respawnLoopCoda:
01 34           ADD     r4, #1
01 2C           CMP     r4, #1
EE D9           BLS     respawnLoop
00 20           MOV     r0, #0
03 E0           B       nextFreeBoxSlot
00 00 00 00
00 00 00 00
```
/////

///// tab | FireRed/LeafGreen
``` { .arm_v4 .annotate linenums="1" }
7F 46           CPY     r7, pc
FF 7D           LDRB    r7, [r7, #23]
10 4E           LDR     r6, FlagClear
05 E0           B       #14
CC E7 E4 CE     .byte   "RspT"
EB E6 BE E9     .byte   "wrDu"
E3 FF 02 02     .byte   "o", #0xFF, #0x02, #x02
FF 25           MOV     r5, #255
FF 35           ADD     r5, #255
01 E0           B       #6
00 00
36 71
F4 35           ADD     r5, #244
00 24           MOV     r4, #0

                respawnLoop:
7F 08           LSR     r7, r7, #1
0A D3           BCC     respawnLoopCoda
02 D2           BCS     respawnPokemon
00 00
00 00
2A 08

                respawnPokemon:
28 19           ADD     r0, r5, r4
B6 46           CPY     lr, r6
00 F8           BL      lr
28 19           ADD     r0, r5, r4
03 30           ADD     r0, #3
B6 46           CPY     lr, r6
00 F8           BL      lr

                respawnLoopCoda:
01 34           ADD     r4, #1
01 2C           CMP     r4, #1
EF D9           BLS     respawnLoop
00 20           MOV     r0, #0
04 E0           B       nextFreeBoxSlot
00 00

                FlagClear:
BD E6 06 08     .word   #0x0806E6BD
00 00 00 00
```
/////

////

//// tab | :octicons-list-unordered-24: Box code

///// tab | Emerald
```box_code
Box  1: f0 b? fQ NO
Box  2: Cu DM 5! TO
Box  3: 6! a! 6e P?
Box  4: Ag Jp 1w kI
Box  5: ?? 8A AP OV
Box  6: kS UA JH 8I
Box  7: C9 MC 0g AA
Box  8: AA A5 CC gZ
Box  9: tk YA !C gZ
Box 10: ?z BM ML ZG
Box 11: AP gB NA Es
Box 12: 7t kA IA Pg
```
/////

///// tab | FireRed/LeafGreen v1.0
```box_code
Box  1: f0 b? fR BO
Box  2: Be DM 5! TO
Box  3: 6! a! 6e P?
Box  4: Ag L? Jf 81
Box  5: Ae AA AC px
Box  6: 9D UA JH 8I
Box  7: Ct MC 0g AA
Box  8: AA Aq CC gZ
Box  9: tk YA !C gZ
Box 10: Az C2 Rg D4
Box 11: AT QB LO ?Z
Box 12: AC AE 4A AA
Box 13: qe YG CA AA
```
/////

///// tab | FireRed/LeafGreen v1.1
```box_code
Box  1: f0 b? fR BO
Box  2: Be DM 5! TO
Box  3: 6! a! 6e P?
Box  4: Ag L? Jf 81
Box  5: Ae AA AD Zx
Box  6: 9D UA JH 8I
Box  7: Ct MC 0g AA
Box  8: AA Aq CC gZ
Box  9: tk YA !C gZ
Box 10: Az C2 Rg D4
Box 11: AT QB LO ?Z
Box 12: AC AE 4A AA
Box 13: ve YG CA AA
```
/////

////

//// tab | :octicons-apps-24: PokeGlitzer

///// tab | Emerald
``` { .text .copy }
7F 46 FF 7D   03 4E 0A E0
CC E7 E4 CE   EB E6 BE E9
E3 FF 02 02   69 D7 09 08
FF FF 00 00   F3 95 91 25
00 24 7F 08   0B D3 02 D2
00 00 00 00   39 08 28 19
B6 46 00 F8   28 19 FF 30
4C 30 B6 46   00 F8 01 34
01 2C EE D9   00 20 03 E0
00 00 00 00   00 00 00 00
```
/////

///// tab | FireRed/LeafGreen v1.0
``` { .text .copy }
7F 46 FF 7D   10 4E 05 E0
CC E7 E4 CE   EB E6 BE E9
E3 FF 02 02   FF 25 FF 35
01 E0 00 00   2A 71 F4 35
00 24 7F 08   0A D3 02 D2
00 00 00 00   2A 08 28 19
B6 46 00 F8   28 19 03 30
B6 46 00 F8   01 34 01 2C
EF D9 00 20   04 E0 00 00
A9 E6 06 08   00 00 00 00
```
/////

///// tab | FireRed/LeafGreen v1.1
``` { .text .copy }
7F 46 FF 7D   10 4E 05 E0
CC E7 E4 CE   EB E6 BE E9
E3 FF 02 02   FF 25 FF 35
01 E0 00 00   36 71 F4 35
00 24 7F 08   0A D3 02 D2
00 00 00 00   2A 08 28 19
B6 46 00 F8   28 19 03 30
B6 46 00 F8   01 34 01 2C
EF D9 00 20   04 E0 00 00
BD E6 06 08   00 00 00 00
```
/////

////

//// tab | :octicons-star-fill-24: Markings

///// html | div.markings
+-------------------------------+---------------------------+
| Marking                       | Function                  |
+===============================+===========================+
| :material-circle-outline:     | Do not respawn Lugia      |
+-------------------------------+---------------------------+
| :material-circle:             | Respawn Lugia             |
+-------------------------------+---------------------------+
| :material-square-outline:     | Do not respawn Ho-Oh      |
+-------------------------------+---------------------------+
| :material-square:             | Respawn Ho-Oh             |
+-------------------------------+---------------------------+
/////

////

///
