# Toggle wild encounters on/off

Toggles wild encounters on & off. This effect will not persist across resets.

/// pokemon | Muk ["TogWildEnc"]
    open: true

//// tab | :octicons-cpu-24: ARM assembly
``` { .arm_v4 .annotate linenums="1" }
D2 46           NOP
04 48           LDR     r0, sWildEncountersDisabled
01 78           LDRB    r1, [r0]
07 E0           B       #18
CE E3 DB D1     .byte   "TogW"
DD E0 D8 BF     .byte   "ildE"
E2 D7 02 02     .byte   "nc", #0x02, #0x02

                sWildEncountersDisabled:
00 8C 03 02     .word   #0x02038C00
01 22           MOV     r2, #1
02 E0           B       #8
CA 63
00 00
8A 3E
51 40           EOR     r1, r2
01 70           STRB    r1, [r0]
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
////

//// tab | :octicons-list-unordered-24: Box code

///// tab | Emerald
```box_code
Box  1: 0k YE SA F4
Box  2: B! DO 49 vR
Box  3: 3e DY v! LX
Box  4: Ag IA jA MC
Box  5: AS IC 4M pj
Box  6: AA CK Pl FA
Box  7: AX AA IB Lg
```
/////

///// tab | FireRed/LeafGreen
```box_code
Box  1: 0k YE SA F4
Box  2: B! DO 49 vR
Box  3: 3e DY v! LX
Box  4: Ag Lc hg MC
Box  5: AS IC 4M pj
Box  6: AA CK Pl FA
Box  7: AX AA IB Lg
```
/////

////

//// tab | :octicons-apps-24: PokeGlitzer

///// tab | Emerald
``` { .text .copy }
D2 46 04 48   01 78 07 E0
CE E3 DB D1   DD E0 D8 BF
E2 D7 02 02   00 8C 03 02
01 22 02 E0   CA 63 00 00
8A 3E 51 40   01 70 00 20
12 E0 00 00   00 00 00 00
00 00 00 00   00 00 00 00
00 00 00 00   00 00 00 00
00 00 00 00   00 00 00 00
00 00 00 00   00 00 00 00
```
/////

///// tab | FireRed/LeafGreen
``` { .text .copy }
D2 46 04 48   01 78 07 E0
CE E3 DB D1   DD E0 D8 BF
E2 D7 02 02   DC 86 03 02
01 22 02 E0   CA 63 00 00
8A 3E 51 40   01 70 00 20
12 E0 00 00   00 00 00 00
00 00 00 00   00 00 00 00
00 00 00 00   00 00 00 00
00 00 00 00   00 00 00 00
00 00 00 00   00 00 00 00
```
/////

////

///
