/// pokemon | Blissey ["Cont. 1"]<span class="script-pos">2 of 2</span>
    open: true

//// tab | :octicons-cpu-24: ARM assembly
``` { .arm_v4 .annotate linenums="1" }
38 58           LDR     r0, [r7, r0]
00 46           NOP
01 B4           PUSH    { r0 }
03 E0           B       #10
BD E3 E2 E8     .byte   "Cont"
AD 00 A2 FF     .byte   ". 1", #0xFF
04 98           LDR     r0, sp.gPokemonStorage
02 42           NOP
04 30           ADD     r0, #4
19 21           MOV     r1, #MON_DATA_EXP
6A 46           CPY     r2, sp
00 E0           B       #4
03 0E
AE 46           CPY     lr, r5
00 F8           BL      lr
01 B0           ADD     sp, #4

                return:
00 20           MOV     r0, #0
13 E0           B       nextFreeBoxSlot

                GetBoxMonData:
75 A6 06 08     .word   #0x0806A675

                SetBoxMonData:
9D AD 06 08     .word   #0x0806AD9D

                gSpeciesInfo:
CC 03 32 08     .word   #0x083203CC

                gExperienceTables:
2C F7 31 08     .word   #0x0831F72C
CB EC

                returnErr:
01 20           MOV     r0, #1
08 E0           B       nextFreeBoxSlot
00 00
00 00 00 00
00 00 00 00
00 00 00 00
00 00 00 00
```
////

//// tab | :octicons-list-unordered-24: Box code

///// tab | Emerald
```box_code
Box  1: OF gA Rg G0
Box  2: A! C9 4! Lo
Box  3: rQ Ci ?w SY
Box  4: Ak IE MB kh
Box  5: ak YA 4A MO
Box  6: rk YA !A Gw
Box  7: AC AT 4H Wm
Box  8: Bg id rQ YI
Box  9: zA My CC z3
Box 10: MQ jL 7A Eg
Box 11: CO AA AA AA
```
/////

///// tab | FireRed v1.0
```box_code
Box  1: OF gA Rg G0
Box  2: A! C9 4! Lo
Box  3: rQ Ci ?w SY
Box  4: Ak IE MB kh
Box  5: ak YA 4O 3z
Box  6: rk YA !A Gw
Box  7: AC AT 4E X9
Box  8: Aw jR BA QI
Box  9: hE cl CO Q6
Box 10: JQ jL 7A Eg
Box 11: CO AA AA AA
```
/////

///// tab | FireRed v1.1
```box_code
Box  1: OF gA Rg G0
Box  2: A! C9 4! Lo
Box  3: rQ Ci ?w SY
Box  4: Ak IE MB kh
Box  5: ak YA 4G X0
Box  6: rk YA !A Gw
Box  7: AC AT 4F n9
Box  8: Aw jl BA QI
Box  9: 9E cl CF Q7
Box 10: JQ jL 7A Eg
Box 11: CO AA AA AA
```
/////

///// tab | LeafGreen v1.0
```box_code
Box  1: OF gA Rg G0
Box  2: A! C9 4! Lo
Box  3: rQ Ci ?w SY
Box  4: Ak IE MB kh
Box  5: ak YA 4K Xz
Box  6: rk YA !A Gw
Box  7: AC AT 4E X9
Box  8: Aw jR BA QI
Box  9: YE cl CM A6
Box 10: JQ jL 7A Eg
Box 11: CO AA AA AA
```
/////

///// tab | LeafGreen v1.1
```box_code
Box  1: OF gA Rg G0
Box  2: A! C9 4! Lo
Box  3: rQ Ci ?w SY
Box  4: Ak IE MB kh
Box  5: ak YA 4B 30
Box  6: rk YA !A Gw
Box  7: AC AT 4F n9
Box  8: Aw jl BA QI
Box  9: 0E cl CD A7
Box 10: JQ jL 7A Eg
Box 11: CO AA AA AA
```
/////

////

//// tab | :octicons-apps-24: PokeGlitzer

///// tab | Emerald
``` { .text .copy }
38 58 00 46   01 B4 03 E0
BD E3 E2 E8   AD 00 A2 FF
04 98 02 42   04 30 19 21
6A 46 00 E0   03 0E AE 46
00 F8 01 B0   00 20 13 E0
75 A6 06 08   9D AD 06 08
CC 03 32 08   2C F7 31 08
CB EC 01 20   08 E0 00 00
00 00 00 00   00 00 00 00
00 00 00 00   00 00 00 00
```
/////

///// tab | FireRed v1.0
``` { .text .copy }
38 58 00 46   01 B4 03 E0
BD E3 E2 E8   AD 00 A2 FF
04 98 02 42   04 30 19 21
6A 46 00 E0   ED F3 AE 46
00 F8 01 B0   00 20 13 E0
45 FD 03 08   D1 04 04 08
84 47 25 08   E4 3A 25 08
CB EC 01 20   08 E0 00 00
00 00 00 00   00 00 00 00
00 00 00 00   00 00 00 00
```
/////

///// tab | FireRed v1.1
``` { .text .copy }
38 58 00 46   01 B4 03 E0
BD E3 E2 E8   AD 00 A2 FF
04 98 02 42   04 30 19 21
6A 46 00 E0   65 F4 AE 46
00 F8 01 B0   00 20 13 E0
59 FD 03 08   E5 04 04 08
F4 47 25 08   54 3B 25 08
CB EC 01 20   08 E0 00 00
00 00 00 00   00 00 00 00
00 00 00 00   00 00 00 00
```
/////

///// tab | LeafGreen v1.0
``` { .text .copy }
38 58 00 46   01 B4 03 E0
BD E3 E2 E8   AD 00 A2 FF
04 98 02 42   04 30 19 21
6A 46 00 E0   A5 F3 AE 46
00 F8 01 B0   00 20 13 E0
45 FD 03 08   D1 04 04 08
60 47 25 08   C0 3A 25 08
CB EC 01 20   08 E0 00 00
00 00 00 00   00 00 00 00
00 00 00 00   00 00 00 00
```
/////

///// tab | LeafGreen v1.1
``` { .text .copy }
38 58 00 46   01 B4 03 E0
BD E3 E2 E8   AD 00 A2 FF
04 98 02 42   04 30 19 21
6A 46 00 E0   1D F4 AE 46
00 F8 01 B0   00 20 13 E0
59 FD 03 08   E5 04 04 08
D0 47 25 08   30 3B 25 08
CB EC 01 20   08 E0 00 00
00 00 00 00   00 00 00 00
00 00 00 00   00 00 00 00
```
/////

////

///
