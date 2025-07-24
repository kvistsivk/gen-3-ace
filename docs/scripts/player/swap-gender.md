# Swap gender

Toggles the player's gender, swapping between Brendan/May on RSE and Red/Leaf on
FRLG. Note that you will need to load a new area before this change will be
visible.

/// pokemon | Starmie ["SwapPlrGen"]
    open: true

//// tab | :octicons-cpu-24: ARM assembly
``` { .arm_v4 .annotate linenums="1" }
02 98           LDR     r0, sp.gSaveBlock2
00 46           NOP
01 7A           LDRB    r1, [r0, #8]
05 E0           B       #14
CD EB D5 E4     .byte   "Swap"
CA E0 E6 C1     .byte   "PlrG"
D9 E2 02 02     .byte   "en", #0x02, #0x02
01 22           MOV     r2, #1
51 40           EOR     r1, r2
01 72           STRB    r1, [r0, #8]
19 E0           B       nextBoxSlot
D6 7E 00 00
7A E2 00 00
00 00 00 00
00 00 00 00
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
////

//// tab | :octicons-list-unordered-24: Box code
```box_code
Box  1: Ap gA Rg F6
Box  2: Be DN 69 Xk
Box  3: yu Dm wd ni
Box  4: Ag IB Il FA
Box  5: AX IZ 4N Z!
Box  6: AA B6 4g AA
```
////

//// tab | :octicons-apps-24: PokeGlitzer
``` { .text .copy }
02 98 00 46   01 7A 05 E0
CD EB D5 E4   CA E0 E6 C1
D9 E2 02 02   01 22 51 40
01 72 19 E0   D6 7E 00 00
7A E2 00 00   00 00 00 00
00 00 00 00   00 00 00 00
00 00 00 00   00 00 00 00
00 00 00 00   00 00 00 00
00 00 00 00   00 00 00 00
00 00 00 00   00 00 00 00
```
////

///
