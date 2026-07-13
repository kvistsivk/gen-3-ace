# Set interrupt script (via hijacking)

TODO

/// pokemon | Spheal ["SetIntrScr"]
    open: true

//// tab | :octicons-cpu-24: ARM assembly

///// tab | Emerald
``` { .arm_v4 .annotate linenums="1" }
7C 46           CPY     r4, pc
A0 7E           LDRB    r0, cradilyBox
E1 7E           LDRB    r1, cradilySlot
05 E0           B       #14
CD D9 E8 C3     .byte   "SetI"
E2 E8 E6 CD     .byte   "ntrS"
D7 E6 02 02     .byte   "cr", #0x02, #0x02
09 4A           LDR     r2, GetBoxedMonPtr
96 46           CPY     lr, r2
01 E0           B       #6
00 01
E1 7B

                cradilyBox/cradilySlot:
0B 13           .byte   #0x0B, #0x13
00 F8           BL      lr
01 46           CPY     r1, r0
E0 7D           LDRB    r0, [r4, #23]
01 38           SUB     r0, #1
C0 0F           LSR     r0, r0, #31
00 E0           B       #4
C8 39
8E 46           CPY     lr, r1
00 F8           BL      lr
0B 20           MOV     r0, #11
04 49           LDR     r1, playerMovementId
08 70           STRB    r0, [r1]
00 20           MOV     r0, #0
09 E0           B       nextFreeBoxSlot

                GetBoxedMonPtr:
95 20 0D 08    .word   #0x080D2095
A2 9E 9A 9A

                playerMovementId:
56 73 03 02    .word   #0x02037356
```
/////

///// tab | FireRed/LeafGreen
```text
Not available
```
/////

////

//// tab | :octicons-list-unordered-24: Box code

///// tab | Emerald
```box_code
Box  1: fE ag fu F!
Box  2: Be DN 2e jD
Box  3: 4u jm zd fm
Box  4: Ag IJ Sp ZG
Box  5: Ae AA Ae F7
Box  6: Cx MA !A FG
Box  7: 4H 0B OM AP
Box  8: AO DI OY 5G
Box  9: AP gL IA RJ
Box 10: CH AA IA ng
Box 11: lS AN CK Ke
Box 12: mp pW cw MC
Box 13: AA AA AA AA
Box 14: AA AA AA AA
```
/////

///// tab | FireRed/LeafGreen
```text
Not available
```
/////

////

//// tab | :octicons-apps-24: PokeGlitzer

///// tab | Emerald
``` { .text .copy }
7C 46 A0 7E   E1 7E 05 E0
CD D9 E8 C3   E2 E8 E6 CD
D7 E6 02 02   09 4A 96 46
01 E0 00 01   E1 7B 0B 13
00 F8 01 46   E0 7D 01 38
C0 0F 00 E0   C8 39 8E 46
00 F8 0B 20   04 49 08 70
00 20 09 E0   95 20 0D 08
A2 9E 9A 9A   56 73 03 02
00 00 00 00   00 00 00 00
```
/////

///// tab | FireRed/LeafGreen
```text
Not available
```
/////

////

//// tab | :octicons-star-fill-24: Markings

///// html | div.markings
+-------------------------------+-------------------------------+
| Marking                       | Function                      |
+===============================+===============================+
| :material-star-outline:       | Turn on interrupt hijacking   |
+-------------------------------+-------------------------------+
| :material-star:               | Turn off interrupt hijacking  |
+-------------------------------+-------------------------------+
/////

////

///
