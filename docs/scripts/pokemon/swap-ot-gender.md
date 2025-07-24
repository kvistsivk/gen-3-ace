# Swap OT gender

Swaps the gender of the OT trainer for the Pokémon in box 1, slot 1. All this
affects is the color of the OT name.

/// pokemon | Aipom ["SwapOtGen"]

//// tab | :octicons-cpu-24: ARM assembly
``` { .arm_v4 .annotate linenums="1" }
03 9C           LDR     r4, sp.gPokemonStorage
08 46           NOP
20 1D           ADD     r0, r4, #4
05 E0           B       #14
CD EB D5 E4     .byte   "Swap"
C9 E8 C1 D9     .byte   "OtGe"
E2 FF 02 02     .byte   "n", #0xFF, #0x02, #0x02
31 21           MOV     r1, #0x31
09 4A           LDR     r2, GetBoxMonData
96 46           CPY     lr, r2
02 E0           B       #8
BD 9C
00 00
9D 81
00 F8           BL      lr
01 21           MOV     r1, #1
48 40           EOR     r0, r1
01 B4           PUSH    { r0 }
20 1D           ADD     r0, r4, #4
31 21           MOV     r1, #0x31
6A 46           CPY     r2, sp
03 4B           LDR     r3, SetBoxMonData
9E 46           CPY     lr, r3
00 F8           BL      lr
01 B0           ADD     sp, #4
00 20           MOV     r0, #0
09 E0           B       nextBoxSlot

                GetBoxMonData:
75 A6 06 08     .word   #0x0806A675

                SetBoxMonData:
9D AD 06 08     .word   #0x0806AD9D
00 00 00 00
00 00 00 00
00 00 00 00
```
////

//// tab | :octicons-list-unordered-24: Box code

///// tab | Emerald
```box_code
Box  1: A5 wI Ri Ad
Box  2: Be DN 69 Xk
Box  3: ye jB 2e L?
Box  4: Ag Ix IQ lK
Box  5: lk YC 4L 2c
Box  6: AA Cd gQ D4
Box  7: AS FI QA G0
Box  8: IB 0x IW pG
Box  9: A0 ue Rg D4
Box 10: Ab AA IA ng
Box 11: da YG CJ 2t
Box 12: Bg gA AA AA
```
/////

///// tab | FireRed/LeafGreen v1.0
```box_code
Box  1: A5 wI Ri Ad
Box  2: Be DN 69 Xk
Box  3: ye jB 2e L?
Box  4: Ag Ix IQ lK
Box  5: lk YC 4A JL
Box  6: AA Cd gQ D4
Box  7: AS FI QA G0
Box  8: IB 0x IW pG
Box  9: A0 ue Rg D4
Box 10: Ab AA IA ng
Box 11: Rf 0D CN EE
Box 12: BA gA AA AA
```
/////

///// tab | FireRed/LeafGreen v1.1
```box_code
Box  1: A5 wI Ri Ad
Box  2: Be DN 69 Xk
Box  3: ye jB 2e L?
Box  4: Ag Ix IQ lK
Box  5: lk YC 4O pK
Box  6: AA Cd gQ D4
Box  7: AS FI QA G0
Box  8: IB 0x IW pG
Box  9: A0 ue Rg D4
Box 10: Ab AA IA ng
Box 11: Wf 0D CO UE
Box 12: BA gA AA AA
```
/////

////

//// tab | :octicons-apps-24: PokeGlitzer

///// tab | Emerald
``` { .text .copy }
03 9C 08 46   20 1D 05 E0
CD EB D5 E4   C9 E8 C1 D9
E2 FF 02 02   31 21 09 4A
96 46 02 E0   BD 9C 00 00
9D 81 00 F8   01 21 48 40
01 B4 20 1D   31 21 6A 46
03 4B 9E 46   00 F8 01 B0
00 20 09 E0   75 A6 06 08
9D AD 06 08   00 00 00 00
00 00 00 00   00 00 00 00
```
/////

///// tab | FireRed/LeafGreen v1.0
``` { .text .copy }
03 9C 08 46   20 1D 05 E0
CD EB D5 E4   C9 E8 C1 D9
E2 FF 02 02   31 21 09 4A
96 46 02 E0   02 4B 00 00
9D 81 00 F8   01 21 48 40
01 B4 20 1D   31 21 6A 46
03 4B 9E 46   00 F8 01 B0
00 20 09 E0   45 FD 03 08
D1 04 04 08   00 00 00 00
00 00 00 00   00 00 00 00
```
/////

///// tab | FireRed/LeafGreen v1.1
``` { .text .copy }
03 9C 08 46   20 1D 05 E0
CD EB D5 E4   C9 E8 C1 D9
E2 FF 02 02   31 21 09 4A
96 46 02 E0   EA 4A 00 00
9D 81 00 F8   01 21 48 40
01 B4 20 1D   31 21 6A 46
03 4B 9E 46   00 F8 01 B0
00 20 09 E0   59 FD 03 08
E5 04 04 08   00 00 00 00
00 00 00 00   00 00 00 00
```
/////

////

///
