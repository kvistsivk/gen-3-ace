# Respawn Southern Island Lati

Respawns the Lati twin found on Southern Island. If marked, it will also swap
which Lati twin appears there.

/// pokemon | Torchic ["RspSthLati"]
    open: true

//// tab | :octicons-cpu-24: ARM assembly
``` { .arm_v4 .annotate linenums="1" }
78 46           CPY     r0, pc
01 99           LDR     r1, sp.gSaveBlock1
C0 7D           LDRB    r0, markings
05 E0           B       #14
CC E7 E4 CD     .byte   "RspS"
E8 DC C6 D5     .byte   "thLa"
E8 DD 02 02     .byte   "ti", #0x02, #0x02
55 22           MOV     r2, #85
92 01           LSL     r2, r2, #6
01 E0           B       #10

                markings:
00 00           .byte   #0x00, #0x00
D6 D6
06 32           ADD     r2, #6
89 18           ADD     r1, r1, r2
DF 22           MOV     r2, #223
92 00           LSL     r2, r2, #2
01 E0           B       #6
00 00
00 00
8A 1A           SUB     r2, r1, r2
DF 32           ADD     r2, #223
00 28           CMP     r0, #0
05 D0           BEQ     respawnLati

                swapLati:
08 88           LDRH    r0, [r1]
00 E0           B       #4
A0 3A
01 23           MOV     r3, #1
58 40           EOR     r0, r3
08 80           STRH    r0, [r1]

                respawnLati:
10 78           LDRB    r0, [r2]
03 23           MOV     r3, #3
98 43           BIC     r0, r3
10 70           STRB    r0, [r2]
00 20           MOV     r0, #0
01 E0           B       nextFreeBoxSlot
00 00 00 00
```
////

//// tab | :octicons-list-unordered-24: Box code
```box_code
Box  1: eE YB mc B9
Box  2: Be DM 5! TN
Box  3: 6N zG 1e jd
Box  4: Ag JV Ip IB
Box  5: Ae AA AN bW
Box  6: Bj KJ GN 8i
Box  7: kg AB 4A AA
Box  8: AA CK Gt 8y
Box  9: AC gF 0A iI
Box 10: AO Cg Og Ej
Box 11: WE AI gB B4
Box 12: Ay OY Qx Bw
Box 13: AC AB 4A AA
```
////

//// tab | :octicons-apps-24: PokeGlitzer
``` { .text .copy }
78 46 01 99   C0 7D 05 E0
CC E7 E4 CD   E8 DC C6 D5
E8 DD 02 02   55 22 92 01
01 E0 00 00   D6 D6 06 32
89 18 DF 22   92 00 01 E0
00 00 00 00   8A 1A DF 32
00 28 05 D0   08 88 00 E0
A0 3A 01 23   58 40 08 80
10 78 03 23   98 43 10 70
00 20 01 E0   00 00 00 00
```
////

//// tab | :octicons-star-fill-24: Markings

///// html | div.markings
+-------------------------------+-------------------------------------------+
| Marking                       | Function                                  |
+===============================+===========================================+
| :material-star-outline:       | Leave Southern Island Lati twin as is     |
+-------------------------------+-------------------------------------------+
| :material-star:               | Swap Lati twin that appears on Southern   |
|                               | Island                                    |
+-------------------------------+-------------------------------------------+
/////

////

///
