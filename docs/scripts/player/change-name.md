# Change name
Sets the player's name to the string contained in box 1's name. Player names can
be a maximum of 7 characters long, so the last character will be ignored.

/// pokemon | Ditto ["SetPlrName"]
    open: true

//// tab | :octicons-cpu-24: ARM assembly
``` { .arm_v4 .annotate linenums="1" }
00 20           MOV     r0, #0
04 49           LDR     r1, GetBoxNamePtr
8E 46           CPY     lr, r1
07 E0           B       #18
CD D9 E8 CA     .byte   "SetP"
E0 E6 C8 D5     .byte   "lrNa"
E1 D9 02 02     .byte   "me", #0x02, #0x02

                GetBoxNamePtr:
D1 20 0D 08     .word   #0x080D20D1
00 F8           BL      lr
00 E0           B       #4
18 C9
02 99           LDR     r1, sp.gSaveBlock2
00 22           MOV     r2, #0
53 1E           SUB     r3, r2, #1
0B 60           STR     r3, [r1, #0]
4B 60           STR     r3, [r1, #4]

                charLoop:
83 5C           LDRB    r3, [r0, r2]
8B 54           STRB    r3, [r1, r2]
FF 2B           CMP     r3, #0xFF
04 D0           BEQ     return
01 32           ADD     r2, #1
07 2A           CMP     r2, #7
F8 D3           BLO     charLoop
00 D2           BHS     return
0A 66

                return:
00 20           MOV     r0, #0
08 E0           B       nextBoxSlot
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
Box  1: AC AE SY 5G
Box  2: B! DN 2e jK
Box  3: 4O bI 1e HZ
Box  4: Ag LR IA 0I
Box  5: AP gA 4B jJ
Box  6: Ap kA Il Me
Box  7: C2 BL YI Nc
Box  8: i1 T? Kw TQ
Box  9: AT IH Kv jT
Box 10: AN IK Zg Ag
Box 11: CO AA AA AA
```
/////

///// tab | FireRed v1.0
```box_code
Box  1: AC AE SY 5G
Box  2: B! DN 2e jK
Box  3: 4O bI 1e HZ
Box  4: Ag Jt vQ gI
Box  5: AP gA 4B jJ
Box  6: Ap kA Il Me
Box  7: C2 BL YI Nc
Box  8: i1 T? Kw TQ
Box  9: AT IH Kv jT
Box 10: AN IK Zg Ag
Box 11: CO AA AA AA
```
/////

///// tab | FireRed v1.1
```box_code
Box  1: AC AE SY 5G
Box  2: B! DN 2e jK
Box  3: 4O bI 1e HZ
Box  4: Ag KB vQ gI
Box  5: AP gA 4B jJ
Box  6: Ap kA Il Me
Box  7: C2 BL YI Nc
Box  8: i1 T? Kw TQ
Box  9: AT IH Kv jT
Box 10: AN IK Zg Ag
Box 11: CO AA AA AA
```
/////

///// tab | LeafGreen v1.0
```box_code
Box  1: AC AE SY 5G
Box  2: B! DN 2e jK
Box  3: 4O bI 1e HZ
Box  4: Ag JB vQ gI
Box  5: AP gA 4B jJ
Box  6: Ap kA Il Me
Box  7: C2 BL YI Nc
Box  8: i1 T? Kw TQ
Box  9: AT IH Kv jT
Box 10: AN IK Zg Ag
Box 11: CO AA AA AA
```
/////

///// tab | LeafGreen v1.1
```box_code
Box  1: AC AE SY 5G
Box  2: B! DN 2e jK
Box  3: 4O bI 1e HZ
Box  4: Ag JV vQ gI
Box  5: AP gA 4B jJ
Box  6: Ap kA Il Me
Box  7: C2 BL YI Nc
Box  8: i1 T? Kw TQ
Box  9: AT IH Kv jT
Box 10: AN IK Zg Ag
Box 11: CO AA AA AA
```
/////

////

//// tab | :octicons-apps-24: PokeGlitzer

///// tab | Emerald
``` { .text .copy }
00 20 04 49   8E 46 07 E0
CD D9 E8 CA   E0 E6 C8 D5
E1 D9 02 02   D1 20 0D 08
00 F8 00 E0   18 C9 02 99
00 22 53 1E   0B 60 4B 60
83 5C 8B 54   FF 2B 04 D0
01 32 07 2A   F8 D3 00 D2
0A 66 00 20   08 E0 00 00
00 00 00 00   00 00 00 00
00 00 00 00   00 00 00 00
```
/////

///// tab | FireRed v1.0
``` { .text .copy }
00 20 04 49   8E 46 07 E0
CD D9 E8 CA   E0 E6 C8 D5
E1 D9 02 02   6D BD 08 08
00 F8 00 E0   18 C9 02 99
00 22 53 1E   0B 60 4B 60
83 5C 8B 54   FF 2B 04 D0
01 32 07 2A   F8 D3 00 D2
0A 66 00 20   08 E0 00 00
00 00 00 00   00 00 00 00
00 00 00 00   00 00 00 00
```
/////

///// tab | FireRed v1.1
``` { .text .copy }
00 20 04 49   8E 46 07 E0
CD D9 E8 CA   E0 E6 C8 D5
E1 D9 02 02   81 BD 08 08
00 F8 00 E0   18 C9 02 99
00 22 53 1E   0B 60 4B 60
83 5C 8B 54   FF 2B 04 D0
01 32 07 2A   F8 D3 00 D2
0A 66 00 20   08 E0 00 00
00 00 00 00   00 00 00 00
00 00 00 00   00 00 00 00
```
/////

///// tab | LeafGreen v1.0
``` { .text .copy }
00 20 04 49   8E 46 07 E0
CD D9 E8 CA   E0 E6 C8 D5
E1 D9 02 02   41 BD 08 08
00 F8 00 E0   18 C9 02 99
00 22 53 1E   0B 60 4B 60
83 5C 8B 54   FF 2B 04 D0
01 32 07 2A   F8 D3 00 D2
0A 66 00 20   08 E0 00 00
00 00 00 00   00 00 00 00
00 00 00 00   00 00 00 00
```
/////

///// tab | LeafGreen v1.1
``` { .text .copy }
00 20 04 49   8E 46 07 E0
CD D9 E8 CA   E0 E6 C8 D5
E1 D9 02 02   55 BD 08 08
00 F8 00 E0   18 C9 02 99
00 22 53 1E   0B 60 4B 60
83 5C 8B 54   FF 2B 04 D0
01 32 07 2A   F8 D3 00 D2
0A 66 00 20   08 E0 00 00
00 00 00 00   00 00 00 00
00 00 00 00   00 00 00 00
```
/////

////

//// tab | :octicons-arrow-switch-24: Signature

///// html | div.signature-typed
+-----------+---------------+-----------------------+
| IN        | Type          | Function              |
+===========+===============+=======================+
| `BOX1`    | `String`      | Desired player name   |
+-----------+---------------+-----------------------+
/////

////

///
