# Max out money/coins

Maxes out various quantifiable forms of wealth:

1.  Sets your money to $999,999
2.  Sets your Game Corner coint count to 9,999
3.  Sets your BP to 65,535 (Emerald only)

/// pokemon | Murkrow ["MaxWealth"]
    open: true

//// tab | :octicons-cpu-24: ARM assembly

///// tab | Emerald
``` { .arm_v4 .annotate linenums="1" }
01 9C           LDR     r4, sp.gSaveBlock1
00 46           NOP
0A A5           ADR     r5, maxCoins
05 E0           B       #14
C7 D5 EC D1     .byte   "MaxW"
D9 D5 E0 E8     .byte   "eal"
DC FF 02 02     .byte   "th", #0x02, #0x02
03 CD           LDMIA   r5!, { r0, r1 }
8E 46           CPY     lr, r1
00 F8           BL      lr
00 E0           B       #4
F4 0B
49 21           MOV     r1, #73
09 01           LSL     r1, r1, #4
08 19           ADD     r0, r1, r4
06 CD           LDMIA   r5!, { r1, r2 }
96 46           CPY     lr, r2
00 F8           BL      lr
F4 3C           SUB     r4, #244
00 20           MOV     r0, #0
0A E0           B       #24

                maxCoins:
0F 27 00 00     .word   #9999

                SetCoins:
59 5C 14 08     .word   #0x08145C59

                maxMoney:
3F 42 0F 00     .word   #999999

                SetMoney:
29 51 0E 08     .word   #0x080E5129
00 00
00 00
CD 39
41 1E           SUB     r1, r0, #1
21 80           STRH    r1, [r4]
01 E0           B       nextFreeBoxSlot
00 00 00 00
```
/////

///// tab | FireRed/LeafGreen
``` { .arm_v4 .annotate linenums="1" }
01 9C           LDR     r4, sp.gSaveBlock1
00 46           NOP
0A A5           ADR     r5, maxCoins
05 E0           B       #14
C7 D5 EC D1     .byte   "MaxW"
D9 D5 E0 E8     .byte   "eal"
DC FF 02 02     .byte   "th", #0x02, #0x02
03 CD           LDMIA   r5!, { r0, r1 }
8E 46           CPY     lr, r1
00 F8           BL      lr
00 E0           B       #4
5D 18
49 21           MOV     r1, #73
09 01           LSL     r1, r1, #4
08 19           ADD     r0, r1, r4
06 CD           LDMIA   r5!, { r1, r2 }
96 46           CPY     lr, r2
00 F8           BL      lr
00 20           MOV     r0, #0
10 E0           B       nextFreeBoxSlot
00 00

                maxCoins:
0F 27 00 00     .word   #9999

                SetCoins:
91 05 0D 08     .word   #0x080D0591

                maxMoney:
3F 42 0F 00     .word   #999999

                SetMoney:
85 FD 09 08     .word   #0x0809FD85
00 00 00 00
CD 39 00 00
00 00 00 00
00 00 00 00
```
/////

////

//// tab | :octicons-list-unordered-24: Box code

///// tab | Emerald
```box_code
Box  1: AZ wA Rg ql
Box  2: Be DH 1e zR
Box  3: 2d Xg 6N z?
Box  4: Ag ID zY 5G
Box  5: AP gA 4P QL
Box  6: SS EJ AQ gZ
Box  7: Bs 2W Rg D4
Box  8: 9D wA IA rg
Box  9: Dy cA AF lc
Box 10: FA g? Qg 8A
Box 11: KV EO CA AA
Box 12: AA DN OU Ee
Box 13: IY AB 4A AA
```
/////

///// tab | FireRed v1.0
```box_code
Box  1: AZ wA Rg ql
Box  2: Be DH 1e zR
Box  3: 2d Xg 6N z?
Box  4: Ag ID zY 5G
Box  5: AP gA 4C UY
Box  6: SS EJ AQ gZ
Box  7: Bs 2W Rg D4
Box  8: AC AQ 4A AA
Box  9: Dy cA AH 0F
Box 10: DQ g? Qg 8A
Box 11: cf 0J CA AA
Box 12: AA DN OQ AA
```
/////

///// tab | FireRed v1.1
```box_code
Box  1: AZ wA Rg ql
Box  2: Be DH 1e zR
Box  3: 2d Xg 6N z?
Box  4: Ag ID zY 5G
Box  5: AP gA 4E IY
Box  6: SS EJ AQ gZ
Box  7: Bs 2W Rg D4
Box  8: AC AL 4A AA
Box  9: Dy cA AJ EF
Box 10: DQ g? Qg 8A
Box 11: hf 0J CA AA
Box 12: AA DN OQ AA
```
/////

///// tab | LeafGreen v1.0
```box_code
Box  1: AZ wA Rg ql
Box  2: Be DH 1e zR
Box  3: 2d Xg 6N z?
Box  4: Ag ID zY 5G
Box  5: AP gA 4N 0X
Box  6: SS EJ AQ gZ
Box  7: Bs 2W Rg D4
Box  8: AC AQ 4A AA
Box  9: Dy cA AF EF
Box 10: DQ g? Qg 8A
Box 11: Rf 0J CA AA
Box 12: AA DN OQ AA
```
/////

///// tab | LeafGreen v1.1
```box_code
Box  1: AZ wA Rg ql
Box  2: Be DH 1e zR
Box  3: 2d Xg 6N z?
Box  4: Ag ID zY 5G
Box  5: AP gA 4P UX
Box  6: SS EJ AQ gZ
Box  7: Bs 2W Rg D4
Box  8: AC AQ 4A AA
Box  9: Dy cA AG UF
Box 10: DQ g? Qg 8A
Box 11: Wf 0J CA AA
Box 12: AA DN OQ AA
```
/////

////

//// tab | :octicons-apps-24: PokeGlitzer

///// tab | Emerald
``` { .text .copy }
01 9C 00 46   0A A5 05 E0
C7 D5 EC D1   D9 D5 E0 E8
DC FF 02 02   03 CD 8E 46
00 F8 00 E0   F4 0B 49 21
09 01 08 19   06 CD 96 46
00 F8 F4 3C   00 20 0A E0
0F 27 00 00   59 5C 14 08
3F 42 0F 00   29 51 0E 08
00 00 00 00   CD 39 41 1E
21 80 01 E0   00 00 00 00
```
/////

///// tab | FireRed v1.0
``` { .text .copy }
01 9C 00 46   0A A5 05 E0
C7 D5 EC D1   D9 D5 E0 E8
DC FF 02 02   03 CD 8E 46
00 F8 00 E0   25 18 49 21
09 01 08 19   06 CD 96 46
00 F8 00 20   10 E0 00 00
0F 27 00 00   7D 05 0D 08
3F 42 0F 00   71 FD 09 08
00 00 00 00   CD 39 00 00
00 00 00 00   00 00 00 00
```
/////

///// tab | FireRed v1.1
``` { .text .copy }
01 9C 00 46   0A A5 05 E0
C7 D5 EC D1   D9 D5 E0 E8
DC FF 02 02   03 CD 8E 46
00 F8 00 E0   42 18 49 21
09 01 08 19   06 CD 96 46
00 F8 00 20   0B E0 00 00
0F 27 00 00   91 05 0D 08
3F 42 0F 00   85 FD 09 08
00 00 00 00   CD 39 00 00
00 00 00 00   00 00 00 00
```
/////

///// tab | LeafGreen v1.0
``` { .text .copy }
01 9C 00 46   0A A5 05 E0
C7 D5 EC D1   D9 D5 E0 E8
DC FF 02 02   03 CD 8E 46
00 F8 00 E0   DD 17 49 21
09 01 08 19   06 CD 96 46
00 F8 00 20   10 E0 00 00
0F 27 00 00   51 05 0D 08
3F 42 0F 00   45 FD 09 08
00 00 00 00   CD 39 00 00
00 00 00 00   00 00 00 00
```
/////

///// tab | LeafGreen v1.1
``` { .text .copy }
01 9C 00 46   0A A5 05 E0
C7 D5 EC D1   D9 D5 E0 E8
DC FF 02 02   03 CD 8E 46
00 F8 00 E0   F5 17 49 21
09 01 08 19   06 CD 96 46
00 F8 00 20   10 E0 00 00
0F 27 00 00   65 05 0D 08
3F 42 0F 00   59 FD 09 08
00 00 00 00   CD 39 00 00
00 00 00 00   00 00 00 00
```
/////

////

///
