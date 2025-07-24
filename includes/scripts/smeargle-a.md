/// pokemon | Smeargle ["WriteB64"]<span class="script-pos">1 of 2</span>

//// tab | :octicons-cpu-24: ARM assembly
``` { .arm_v4 .annotate linenums="1" }
00 20           MOV     r0, #0
04 49           LDR     r1, GetFirstFreeBoxSpot
8E 46           CPY     lr, r1
07 E0           B       #18
D1 E6 DD E8     .byte   "Writ"
D9 BC A7 A5     .byte   "eB64"
FF FF 02 02     .byte   #0xFF, #0xFF, #0x02, #0x02

                GetFirstFreeBoxSpot:
D5 6F 0C 08     .word   #0x080C6FD5
00 F8           BL      lr
00 E0           B       #4
A5 78
41 1C           ADD     r1, r0, #1
3E D0           BEQ     nextFreeBoxSlot
50 21           MOV     r1, #80
48 43           MUL     r0, r1
03 99           LDR     r1, sp.gPokemonStorage
04 31           ADD     r1, #4
40 18           ADD     r0, r0, r1
F0 22           MOV     r2, #240
8C 23           MOV     r3, #140
5A 43           MUL     r2, r3
89 18           ADD     r1, r1, r2
00 22           MOV     r2, #0
00 E0           B       #4
65 66
00 23           MOV     r3, #0
00 24           MOV     r4, #0

                charLoop:
8D 5C           LDRB    r5, [r1, r2]
FF 2D           CMP     r5, #0xFF
1D D0           BEQ     charLoopCoda
BB 3D           SUB     r5, #0xBB
33 2D           CMP     r5, #51
0C D9           BLS     smeargleB.mixChar
01 D8           BHI     smeargleB.checkDigit
00 00
00 00
```
////

//// tab | :octicons-list-unordered-24: Box code

///// tab | Emerald
```box_code
; Box code 1
Box  1: 00 20 04 49
Box  2: 8E 46 07 E0
Box  3: D1 E6 DD E8
Box  4: D9 BC A7 A5
Box  5: FF FF 02 02
Box  6: D5 6F 0C 08
Box  7: 00 F8 00 E0
Box  8: A5 78 41 1C
Box  9: 3E D0 50 21
Box 10: 48 43 03 99

; Box code 2
Box  1: 04 31 40 18
Box  2: F0 22 8C 23
Box  3: 5A 43 89 18
Box  4: 00 22 00 E0
Box  5: 65 66 00 23
Box  6: 00 24 8D 5C
Box  7: FF 2D 1D D0
Box  8: BB 3D 33 2D
Box  9: 0C D9 01 D8
Box 10: 00 00 00 00
```
/////

///// tab | FireRed v1.0
```box_code
; Box code 1
Box  1: 00 20 04 49
Box  2: 8E 46 07 E0
Box  3: D1 E6 DD E8
Box  4: D9 BC A7 A5
Box  5: FF FF 02 02
Box  6: 09 C1 08 08
Box  7: 00 F8 00 E0
Box  8: A5 78 41 1C
Box  9: 3E D0 50 21
Box 10: 48 43 03 99

; Box code 2
Box  1: 04 31 40 18
Box  2: F0 22 8C 23
Box  3: 5A 43 89 18
Box  4: 00 22 00 E0
Box  5: 65 66 00 23
Box  6: 00 24 8D 5C
Box  7: FF 2D 1D D0
Box  8: BB 3D 33 2D
Box  9: 0C D9 01 D8
Box 10: 00 00 00 00
```
/////

///// tab | FireRed v1.1
```box_code
; Box code 1
Box  1: 00 20 04 49
Box  2: 8E 46 07 E0
Box  3: D1 E6 DD E8
Box  4: D9 BC A7 A5
Box  5: FF FF 02 02
Box  6: 1D C1 08 08
Box  7: 00 F8 00 E0
Box  8: A5 78 41 1C
Box  9: 3E D0 50 21
Box 10: 48 43 03 99

; Box code 2
Box  1: 04 31 40 18
Box  2: F0 22 8C 23
Box  3: 5A 43 89 18
Box  4: 00 22 00 E0
Box  5: 65 66 00 23
Box  6: 00 24 8D 5C
Box  7: FF 2D 1D D0
Box  8: BB 3D 33 2D
Box  9: 0C D9 01 D8
Box 10: 00 00 00 00
```
/////

///// tab | LeafGreen v1.0
```box_code
; Box code 1
Box  1: 00 20 04 49
Box  2: 8E 46 07 E0
Box  3: D1 E6 DD E8
Box  4: D9 BC A7 A5
Box  5: FF FF 02 02
Box  6: DD C0 08 08
Box  7: 00 F8 00 E0
Box  8: A5 78 41 1C
Box  9: 3E D0 50 21
Box 10: 48 43 03 99

; Box code 2
Box  1: 04 31 40 18
Box  2: F0 22 8C 23
Box  3: 5A 43 89 18
Box  4: 00 22 00 E0
Box  5: 65 66 00 23
Box  6: 00 24 8D 5C
Box  7: FF 2D 1D D0
Box  8: BB 3D 33 2D
Box  9: 0C D9 01 D8
Box 10: 00 00 00 00
```
/////

///// tab | LeafGreen v1.1
```box_code
; Box code 1
Box  1: 00 20 04 49
Box  2: 8E 46 07 E0
Box  3: D1 E6 DD E8
Box  4: D9 BC A7 A5
Box  5: FF FF 02 02
Box  6: F1 C0 08 08
Box  7: 00 F8 00 E0
Box  8: A5 78 41 1C
Box  9: 3E D0 50 21
Box 10: 48 43 03 99

; Box code 2
Box  1: 04 31 40 18
Box  2: F0 22 8C 23
Box  3: 5A 43 89 18
Box  4: 00 22 00 E0
Box  5: 65 66 00 23
Box  6: 00 24 8D 5C
Box  7: FF 2D 1D D0
Box  8: BB 3D 33 2D
Box  9: 0C D9 01 D8
Box 10: 00 00 00 00
```
/////

////

//// tab | :octicons-apps-24: PokeGlitzer

///// tab | Emerald
``` { .text .copy }
00 20 04 49   8E 46 07 E0
D1 E6 DD E8   D9 BC A7 A5
FF FF 02 02   D5 6F 0C 08
00 F8 00 E0   A5 78 41 1C
3E D0 50 21   48 43 03 99
04 31 40 18   F0 22 8C 23
5A 43 89 18   00 22 00 E0
65 66 00 23   00 24 8D 5C
FF 2D 1D D0   BB 3D 33 2D
0C D9 01 D8   00 00 00 00
```
/////

///// tab | FireRed v1.0
``` { .text .copy }
00 20 04 49   8E 46 07 E0
D1 E6 DD E8   D9 BC A7 A5
FF FF 02 02   09 C1 08 08
00 F8 00 E0   A5 78 41 1C
3E D0 50 21   48 43 03 99
04 31 40 18   F0 22 8C 23
5A 43 89 18   00 22 00 E0
65 66 00 23   00 24 8D 5C
FF 2D 1D D0   BB 3D 33 2D
0C D9 01 D8   00 00 00 00
```
/////

///// tab | FireRed v1.1
``` { .text .copy }
00 20 04 49   8E 46 07 E0
D1 E6 DD E8   D9 BC A7 A5
FF FF 02 02   1D C1 08 08
00 F8 00 E0   A5 78 41 1C
3E D0 50 21   48 43 03 99
04 31 40 18   F0 22 8C 23
5A 43 89 18   00 22 00 E0
65 66 00 23   00 24 8D 5C
FF 2D 1D D0   BB 3D 33 2D
0C D9 01 D8   00 00 00 00
```
/////

///// tab | LeafGreen v1.0
``` { .text .copy }
00 20 04 49   8E 46 07 E0
D1 E6 DD E8   D9 BC A7 A5
FF FF 02 02   DD C0 08 08
00 F8 00 E0   A5 78 41 1C
3E D0 50 21   48 43 03 99
04 31 40 18   F0 22 8C 23
5A 43 89 18   00 22 00 E0
65 66 00 23   00 24 8D 5C
FF 2D 1D D0   BB 3D 33 2D
0C D9 01 D8   00 00 00 00
```
/////

///// tab | LeafGreen v1.1
``` { .text .copy }
00 20 04 49   8E 46 07 E0
D1 E6 DD E8   D9 BC A7 A5
FF FF 02 02   F1 C0 08 08
00 F8 00 E0   A5 78 41 1C
3E D0 50 21   48 43 03 99
04 31 40 18   F0 22 8C 23
5A 43 89 18   00 22 00 E0
65 66 00 23   00 24 8D 5C
FF 2D 1D D0   BB 3D 33 2D
0C D9 01 D8   00 00 00 00
```
/////

////

///
