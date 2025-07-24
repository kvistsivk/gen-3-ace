# Respawn Deoxys

Respawns Deoxys.

/// pokemon | Lunatone ["RspDeoxys"]
    open: true

//// tab | :octicons-cpu-24: ARM assembly

///// tab | Emerald
``` { .arm_v4 .annotate linenums="1" }
04 4C           LDR     r4, FlagClear
01 46           NOP
6B 25           MOV     r5, #107
07 E0           B       #18
CC E7 E4 BE     .byte   "RspD"
D9 E3 EC ED     .byte   "eoxy"
E7 FF 02 02     .byte   "s", #0xFF, #0x02, #0x02

                FlagClear:
69 D7 09 08     .word   #0x0809D769
AD 00           LSL     r5, r5, #2
02 E0           B       #8
0F 52
00 00
33 68
28 1C           ADD     r0, r5, #0
A6 46           CPY     lr, r4
00 F8           BL      lr
68 1C           ADD     r0, r4, #1
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
04 4C           LDR     r4, FlagClear
00 46           NOP
B9 25           MOV     r5, #185
07 E0           B       #18
CC E7 E4 BE     .byte   "RspD"
D9 E3 EC ED     .byte   "eoxy"
E7 FF 02 02     .byte   "s", #0xFF, #0x02, #0x02

                FlagClear:
BD E6 06 08     .word   #0x0806E6BD
AD 00           LSL     r5, r5, #2
00 E0           B       #8
73 25
28 46           CPY     r0, r5
A6 46           CPY     lr, r4
00 F8           BL      lr
28 46           CPY     r0, r5
13 30           ADD     r0, #19
A6 46           CPY     lr, r4
00 E0           B       #4
E1 68
00 F8           BL      lr
00 20           MOV     r0, #0
0D E0           B       nextFreeBoxSlot
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
Box  1: BE wB Rm sl
Box  2: B! DM 5! S!
Box  3: 2e Ps 7e f?
Box  4: Ag Jp 1w kI
Box  5: rQ AC 4A 9S
Box  6: AA Az aC gc
Box  7: pk YA !G gc
Box  8: pk YA !A Ag
Box  9: Du AA AA AA
```
/////

///// tab | FireRed/LeafGreen v1.0
```box_code
Box  1: BE wA Rr kl
Box  2: B! DM 5! S!
Box  3: 2e Ps 7e f?
Box  4: Ag Kp 5g YI
Box  5: rQ AA 4H Ml
Box  6: KE am Rg D4
Box  7: KE YT MK ZG
Box  8: AO Dh aA D4
Box  9: AC AN 4A AA
```
/////

///// tab | FireRed/LeafGreen v1.1
```box_code
Box  1: BE wA Rr kl
Box  2: B! DM 5! S!
Box  3: 2e Ps 7e f?
Box  4: Ag K9 5g YI
Box  5: rQ AA 4H Ml
Box  6: KE am Rg D4
Box  7: KE YT MK ZG
Box  8: AO Dh aA D4
Box  9: AC AN 4A AA
```
/////

////

//// tab | :octicons-apps-24: PokeGlitzer

///// tab | Emerald
``` { .text .copy }
04 4C 01 46   6B 25 07 E0
CC E7 E4 BE   D9 E3 EC ED
E7 FF 02 02   69 D7 09 08
AD 00 02 E0   0F 52 00 00
33 68 28 1C   A6 46 00 F8
68 1C A6 46   00 F8 00 20
0E E0 00 00   00 00 00 00
00 00 00 00   00 00 00 00
00 00 00 00   00 00 00 00
00 00 00 00   00 00 00 00
```
/////

///// tab | FireRed/LeafGreen v1.0
``` { .text .copy }
04 4C 00 46   B9 25 07 E0
CC E7 E4 BE   D9 E3 EC ED
E7 FF 02 02   A9 E6 06 08
AD 00 00 E0   73 25 28 46
A6 46 00 F8   28 46 13 30
A6 46 00 E0   E1 68 00 F8
00 20 0D E0   00 00 00 00
00 00 00 00   00 00 00 00
00 00 00 00   00 00 00 00
00 00 00 00   00 00 00 00
```
/////

///// tab | FireRed/LeafGreen v1.1
``` { .text .copy }
04 4C 00 46   B9 25 07 E0
CC E7 E4 BE   D9 E3 EC ED
E7 FF 02 02   BD E6 06 08
AD 00 00 E0   73 25 28 46
A6 46 00 F8   28 46 13 30
A6 46 00 E0   E1 68 00 F8
00 20 0D E0   00 00 00 00
00 00 00 00   00 00 00 00
00 00 00 00   00 00 00 00
00 00 00 00   00 00 00 00
```
/////

////

///
