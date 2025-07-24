# Change OT name

Sets the OT name of the Pokémon in box 1, slot 1 to the string contained in box
1's name. Player names can be a maximum of 7 characters long, so the last
character will be ignored.

/// pokemon | Ponyta ["SetOtName"]
    open: true

//// tab | :octicons-cpu-24: ARM assembly
``` { .arm_v4 .annotate linenums="1" }
00 20           MOV     r0, #0
04 49           LDR     r1, GetBoxNamePtr
8E 46           CPY     lr, r1
07 E0           B       #18
CD D9 E8 C9     .byte   "SetO"
E8 C8 D5 E1     .byte   "tNam"
D9 FF 02 02     .byte   "e", #0xFF, #0x02, #0x02

                GetBoxNamePtr:
D1 20 0D 08     .word   #0x080D20D1
00 F8           BL      lr
00 E0           B       #4
D2 3D
03 99           LDR     r1, sp.gPokemonStorage
18 31           ADD     r1, #24
06 22           MOV     r2, #6
FF 23           MOV     r3, #0xFF

                terminatorLoop:
8B 54           STRB    r3, [r1, r2]
01 3A           SUB     r2, #1
FC D5           BPL     terminatorLoop
00 22           MOV     r2, #0

                charLoop:
83 5C           LDRB    r3, [r0, r2]
8B 54           STRB    r3, [r1, r2]
FF 2B           CMP     r3, #0xFF
04 D0           BEQ     return
00 D1           BNE     charLoopCoda
C3 66

                charLoopCoda:
01 32           ADD     r2, #1
07 2A           CMP     r2, #7
F6 D3           BLO     charLoop

                return:
00 20           MOV     r0, #0
05 E0           B       nextFreeBoxSlot
00 00 00 00
00 00 00 00
00 00 00 00
```
////

//// tab | :octicons-list-unordered-24: Box code

///// tab | Emerald
```box_code
Box  1: AC AE SY 5G
Box  2: B! DN 2e jJ
Box  3: 6M jV 4d n?
Box  4: Ag LR IA 0I
Box  5: AP gA 4N I9
Box  6: A5 kY MQ Yi
Box  7: ?y OL VA E6
Box  8: ?N UA Io Nc
Box  9: i1 T? Kw TQ
Box 10: AN HD Zg Ey
Box 11: By r2 0w Ag
Box 12: Be AA AA AA
```
/////

///// tab | FireRed v1.0
```box_code
Box  1: AC AE SY 5G
Box  2: B! DN 2e jJ
Box  3: 6M jV 4d n?
Box  4: Ag Jt vQ gI
Box  5: AP gA 4N I9
Box  6: A5 kY MQ Yi
Box  7: ?y OL VA E6
Box  8: ?N UA Io Nc
Box  9: i1 T? Kw TQ
Box 10: AN HD Zg Ey
Box 11: By r2 0w Ag
Box 12: Be AA AA AA
```
/////

///// tab | FireRed v1.1
```box_code
Box  1: AC AE SY 5G
Box  2: B! DN 2e jJ
Box  3: 6M jV 4d n?
Box  4: Ag KB vQ gI
Box  5: AP gA 4N I9
Box  6: A5 kY MQ Yi
Box  7: ?y OL VA E6
Box  8: ?N UA Io Nc
Box  9: i1 T? Kw TQ
Box 10: AN HD Zg Ey
Box 11: By r2 0w Ag
Box 12: Be AA AA AA
```
/////

///// tab | LeafGreen v1.0
```box_code
Box  1: AC AE SY 5G
Box  2: B! DN 2e jJ
Box  3: 6M jV 4d n?
Box  4: Ag JB vQ gI
Box  5: AP gA 4N I9
Box  6: A5 kY MQ Yi
Box  7: ?y OL VA E6
Box  8: ?N UA Io Nc
Box  9: i1 T? Kw TQ
Box 10: AN HD Zg Ey
Box 11: By r2 0w Ag
Box 12: Be AA AA AA
```
/////

///// tab | LeafGreen v1.1
```box_code
Box  1: AC AE SY 5G
Box  2: B! DN 2e jJ
Box  3: 6M jV 4d n?
Box  4: Ag JV vQ gI
Box  5: AP gA 4N I9
Box  6: A5 kY MQ Yi
Box  7: ?y OL VA E6
Box  8: ?N UA Io Nc
Box  9: i1 T? Kw TQ
Box 10: AN HD Zg Ey
Box 11: By r2 0w Ag
Box 12: Be AA AA AA
```
/////

////

//// tab | :octicons-apps-24: PokeGlitzer

///// tab | Emerald
``` { .text .copy }
00 20 04 49   8E 46 07 E0
CD D9 E8 C9   E8 C8 D5 E1
D9 FF 02 02   D1 20 0D 08
00 F8 00 E0   D2 3D 03 99
18 31 06 22   FF 23 8B 54
01 3A FC D5   00 22 83 5C
8B 54 FF 2B   04 D0 00 D1
C3 66 01 32   07 2A F6 D3
00 20 05 E0   00 00 00 00
00 00 00 00   00 00 00 00
```
/////

///// tab | FireRed v1.0
``` { .text .copy }
00 20 04 49   8E 46 07 E0
CD D9 E8 C9   E8 C8 D5 E1
D9 FF 02 02   6D BD 08 08
00 F8 00 E0   D2 3D 03 99
18 31 06 22   FF 23 8B 54
01 3A FC D5   00 22 83 5C
8B 54 FF 2B   04 D0 00 D1
C3 66 01 32   07 2A F6 D3
00 20 05 E0   00 00 00 00
00 00 00 00   00 00 00 00
```
/////

///// tab | FireRed v1.1
``` { .text .copy }
00 20 04 49   8E 46 07 E0
CD D9 E8 C9   E8 C8 D5 E1
D9 FF 02 02   81 BD 08 08
00 F8 00 E0   D2 3D 03 99
18 31 06 22   FF 23 8B 54
01 3A FC D5   00 22 83 5C
8B 54 FF 2B   04 D0 00 D1
C3 66 01 32   07 2A F6 D3
00 20 05 E0   00 00 00 00
00 00 00 00   00 00 00 00
```
/////

///// tab | LeafGreen v1.0
``` { .text .copy }
00 20 04 49   8E 46 07 E0
CD D9 E8 C9   E8 C8 D5 E1
D9 FF 02 02   41 BD 08 08
00 F8 00 E0   D2 3D 03 99
18 31 06 22   FF 23 8B 54
01 3A FC D5   00 22 83 5C
8B 54 FF 2B   04 D0 00 D1
C3 66 01 32   07 2A F6 D3
00 20 05 E0   00 00 00 00
00 00 00 00   00 00 00 00
```
/////

///// tab | LeafGreen v1.1
``` { .text .copy }
```
/////

////

//// tab | :octicons-arrow-switch-24: Signature

///// html | div.signature-typed
+-----------+---------------+-------------------+
| IN        | Type          | Function          |
+===========+===============+===================+
| `BOX1`    | `String`      | Desired OT name   |
+-----------+---------------+-------------------+
/////

////

///
