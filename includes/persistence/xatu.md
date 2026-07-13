/// pokemon | Xatu

//// tab | :octicons-cpu-24: ARM assembly

///// tab | Emerald
``` { .arm_v4 .annotate linenums="1" }
FC B4           PUSH    { r2-r7 }
10 B5           PUSH    { r4, lr }
30 A0           ADR     r0, armaldo.payloadDest
03 C8           LDMIA   r0, { r0, r1 }
09 68           LDR     r1, [r1]
88 42           CMP     r0, r1
1A D0           BEQ     return
78 46           CPY     r0, pc
42 7A           LDRB    r2, [r0, #9]
02 42           NOP
27 48           LDR     r0, armaldo.playerMovementId
0B 21           MOV     r1, #11
01 E0           B       #6
00 00
94 76
01 70           STRB    r1, [r0]
00 2A           CMP     r2, #0
0C D0           BEQ     setupHijack
20 A4           ADR     r4, armaldo.RtcGetMinuteCount
30 CC           LDMIA   r4, { r4, r5 }
A6 46           CPY     lr, r4
00 F8           BL      lr
01 0C           LSR     r1, r0, #16
48 40           EOR     r0, r1
00 04           LSL     r0, r0, #16
02 E0           B       #8
00 00
00 00
7E 14
00 0C           LSR     r0, r0, #16
28 60           STR     r0, [r5]

                setupHijack:
00 20           MOV     r0, #0
00 F0 06 F8     BL     skarmory

                return:
FF BC           POP     { r0-r7 }
8E 46           CPY     lr, r1
1E 49           LDR     r1, armaldo.MovementType_Player
08 47           BX      r1
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
Box  1: ?L QQ tT Cg
Box  2: A8 gJ aI hC
Box  3: Gt B4 Rk J6
Box  4: Ak In SA sh
Box  5: Ae AA AJ R2
Box  6: AX AA Kg zQ
Box  7: IK Qw zK ZG
Box  8: AP gB DE hA
Box  9: AA QC 4A AA
Box 10: AA B! FA AM
Box 11: KG AA IA Dw
Box 12: Bv j? vI 5G
Box 13: Hk kI Rw AA
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
FC B4 10 B5   30 A0 03 C8
09 68 88 42   1A D0 78 46
42 7A 02 42   27 48 0B 21
01 E0 00 00   94 76 01 70
00 2A 0C D0   20 A4 30 CC
A6 46 00 F8   01 0C 48 40
00 04 02 E0   00 00 00 00
7E 14 00 0C   28 60 00 20
00 F0 06 F8   FF BC 8E 46
1E 49 08 47   00 00 00 00
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
+-------------------------------+-----------------------+
| Marking                       | Function              |
+===============================+=======================+
| :material-star-outline:       | Start RNG at `0x0000` |
+-------------------------------+-----------------------+
| :material-star:               | Reseed RNG with RTC   |
+-------------------------------+-----------------------+
/////

////

///
