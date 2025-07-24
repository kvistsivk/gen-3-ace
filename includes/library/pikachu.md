/// pokemon | Pikachu

//// tab | :octicons-cpu-24: ARM assembly
``` { .arm_v4 .annotate linenums="1" }
A1 38           SUB     r0, #161
02 46           NOP
09 28           CMP     r0, #9
0D D9           BLS     return
00 29           CMP     r0, #0
0C D0           BEQ     returnErr
1A 38           SUB     r0, #26
05 28           CMP     r0, #5
07 D9           BLS     addTen
01 42           NOP
1A 38           SUB     r0, #26
05 28           CMP     r0, #5
03 D9           BLS     addTen
04 D8           BHI     returnErr
9C F4
00 00
B1 10

                addTen:
0A 30           ADD     r0, #10

                return:
70 47           BX      lr

                returnErr:
00 20           MOV     r0, #0
01 38           SUB     r0, #1
70 47           BX      lr
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
Box  1: oT gC Rg ko
Box  2: Dd kA KQ zQ
Box  3: Gj gF KA fZ
Box  4: AU Ia OA Uo
Box  5: A9 kE 2J z0
Box  6: AA Cx EA ow
Box  7: cE cA IA E4
Box  8: cE cA AA AA
```
////

//// tab | :octicons-apps-24: PokeGlitzer
``` { .text .copy }
A1 38 02 46   09 28 0D D9
00 29 0C D0   1A 38 05 28
07 D9 01 42   1A 38 05 28
03 D9 04 D8   9C F4 00 00
B1 10 0A 30   70 47 00 20
01 38 70 47   00 00 00 00
00 00 00 00   00 00 00 00
00 00 00 00   00 00 00 00
00 00 00 00   00 00 00 00
00 00 00 00   00 00 00 00
```
////

//// tab | :octicons-arrow-switch-24: Signature

///// html | div.signature
+-------+-----------------------------------------------+
| IN    | Function                                      |
+=======+===============================================+
| `r0`  | Byte containing Game Freak encoded character  |
+-------+-----------------------------------------------+
| `r1`  | Numeric base:                                 |
|       |                                               |
|       | - `0x00` – Decimal                            |
|       | - `0x01` – Hexadecimal                        |
+-------+-----------------------------------------------+
/////

///// html | div.signature
+-------+---------------------------------------------------------------+
| IN    | Function                                                      |
+=======+===============================================================+
| `r0`  | Value of the provided character parsed as per the provided    |
|       | numeric base; invalid characters return `-1`                  |
+-------+---------------------------------------------------------------+
/////

////

///
