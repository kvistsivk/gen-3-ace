# Respawn Mew duo

Respawns Mew on Emerald & Mewtwo on FR/LG.

/// pokemon | Chimecho ["RspMewDuo"]
    open: true

//// tab | :octicons-cpu-24: ARM assembly

///// tab | Emerald
``` { .arm_v4 .annotate linenums="1" }
04 4C           LDR     r4, FlagClear
01 46           NOP
FF 25           MOV     r5, #255
07 E0           B       #18
CC E7 E4 C7
D9 EB BE E9
E3 FF 02 02

                FlagClear:
69 D7 09 08     .word   #0x0809D769
C8 35           ADD     r5, #200
02 E0           B       #8
E2 56
00 00
60 68
28 1C           ADD     r0, r5, #0
A6 46           CPY     lr, r4
00 F8           BL      lr
E8 1C           ADD     r0, r5, #3
A6 46           CPY     lr, r4
00 F8           BL      lr
00 20           MOV     r0, #0
0E E0           B       nextFreeBoxSlot
00 00
00 00 00 00
00 00 00 00
00 00 00 00
00 00 00 00
00 00 00 00
00 00 00 00
00 00 00 00
```
/////

///// tab | FireRed/LeafGreen
``` { .arm_v4 .annotate linenums="1" }
04 49           LDR     r1, FlagClear
0A 46           NOP
AF 20           MOV     r0, #175
07 E0           B       #18
CC E7 E4 C7     .bytes  "RspM"
D9 EB BE E9     .bytes  "ewDu"
E3 FF 02 02     .bytes  "o", #0xFF, #0x02, #0x02

                FlagClear:
BD E6 06 08     .word   #0x0806E6BD
80 00           LSL     r0, r0, #2
02 E0           B       #8
14 B7
00 00
30 68
8E 46           CPY     lr, r1
00 F8           BL      lr
00 20           MOV     r0, #0
12 E0           B       nextFreeBoxSlot
00 00
00 00 00 00
00 00 00 00
00 00 00 00
00 00 00 00
00 00 00 00
00 00 00 00
00 00 00 00
00 00 00 00
00 00 00 00
```
/////

////

//// tab | :octicons-list-unordered-24: Box code

///// tab | Emerald
```box_code
Box  1: BE wB Rv 8l
Box  2: B! DM 5! TH
Box  3: 2e u! 6e P?
Box  4: Ag Jp 1w kI
Box  5: yD UC 4O JW
Box  6: AA Bg aC gc
Box  7: pk YA !O gc
Box  8: pk YA !A Ag
Box  9: Du AA AA AA
```
/////

///// tab | FireRed/LeafGreen v1.0
```box_code
Box  1: BE kK Rq 8g
Box  2: B! DM 5! TH
Box  3: 2e u! 6e P?
Box  4: Ag Kp 5g YI
Box  5: gA AC 4B S3
Box  6: AA Aw aI 5G
Box  7: AP gA IB Lg
```
/////

///// tab | FireRed/LeafGreen v1.1
```box_code
Box  1: BE kK Rq 8g
Box  2: B! DM 5! TH
Box  3: 2e u! 6e P?
Box  4: Ag K9 5g YI
Box  5: gA AC 4B S3
Box  6: AA Aw aI 5G
Box  7: AP gA IB Lg
```
/////

////

//// tab | :octicons-apps-24: PokeGlitzer

///// tab | Emerald
``` { .text .copy }
04 4C 01 46   FF 25 07 E0
CC E7 E4 C7   D9 EB BE E9
E3 FF 02 02   69 D7 09 08
C8 35 02 E0   E2 56 00 00
60 68 28 1C   A6 46 00 F8
E8 1C A6 46   00 F8 00 20
0E E0 00 00   00 00 00 00
00 00 00 00   00 00 00 00
00 00 00 00   00 00 00 00
00 00 00 00   00 00 00 00
```
/////

///// tab | FireRed/LeafGreen v1.0
``` { .text .copy }
04 49 0A 46   AF 20 07 E0
CC E7 E4 C7   D9 EB BE E9
E3 FF 02 02   A9 E6 06 08
80 00 02 E0   14 B7 00 00
30 68 8E 46   00 F8 00 20
12 E0 00 00   00 00 00 00
00 00 00 00   00 00 00 00
00 00 00 00   00 00 00 00
00 00 00 00   00 00 00 00
00 00 00 00   00 00 00 00
```
/////

///// tab | FireRed/LeafGreen v1.1
``` { .text .copy }
04 49 0A 46   AF 20 07 E0
CC E7 E4 C7   D9 EB BE E9
E3 FF 02 02   BD E6 06 08
80 00 02 E0   14 B7 00 00
30 68 8E 46   00 F8 00 20
12 E0 00 00   00 00 00 00
00 00 00 00   00 00 00 00
00 00 00 00   00 00 00 00
00 00 00 00   00 00 00 00
00 00 00 00   00 00 00 00
```
/////

////

///
