/// pokemon | Altaria

//// tab | :octicons-cpu-24: ARM assembly

///// tab | Emerald
``` { .arm_v4 .annotate linenums="1" }
78 47 02 F0     NOP
FF 5F 2D E9     PUSH    { r0-r12, lr }
11 40 8F E2     ADD     r4, pc, #17
02 40 C4 E3     BIC     r4, r4, #0x02
FF FF 01 F2     NOP
14 FF 2F E1     BX      r4

                libraryBox/librarySlot/librarySize/executionMode:
0B 05 07 00     .byte   #0x0B, #0x05, #0x07, #0x00

                _/_/scriptBox/sciptSlot:
56 DB 0D 00     .byte   #0x56, #0xDB, #0x0D, #0x00
21 3C           SUB     r4, #33
A5 7E           LDRB    r5, librarySize
68 46           CPY     r0, sp
29 1D           ADD     r1, r5, #4
89 00           LSL     r1, r1, #2
46 1A           SUB     r6, r0, r1
B5 46           CPY     sp, r6
04 E0           B       #12

                gSaveBlock1Ptr:
8C 5D 00 03     .word   #0x03005D8C

                GetBoxedMonPtr:
95 20 0D 08     .word   #0x080D2095
E0 19
21 6B           LDR     r1, gSaveBlock1Ptr
0E C9           LDMIA   r1, { r1-r3 }
0F C6           STMIA   r6!, { r0-r3 }
67 6B           LDR     r7, GetBoxedMonPtr
20 7E           LDRB    r0, libraryBox
61 7E           LDRB    r1, librarySlot
BE 46           CPY     lr, r7
00 F8           BL      lr
01 E0           B       dragonair.libraryLoop
00 00 00 00
```
/////

///// tab | FireRed/LeafGreen
``` { .arm_v4 .annotate linenums="1" }
78 47 02 F0     NOP
FE 5F 2D E9     PUSH    { r1-r12, lr }
11 40 8F E2     ADD     r4, pc, #17
02 40 C4 E3     BIC     r4, r4, #0x02
FF FF 01 F2     NOP
14 FF 2F E1     BX      r4

                libraryBox/librarySlot/librarySize/executionMode:
0C 0B 07 00     .byte   #0x0C, #0x0B, #0x07, #0x00

                _/_/scriptBox/sciptSlot:
90 4C 0D 00     .byte   #0x90, #0x4C, #0x0D, #0x00
21 3C           SUB     r4, #33
A5 7E           LDRB    r5, librarySize
68 46           CPY     r0, sp
29 1D           ADD     r1, r5, #4
89 00           LSL     r1, r1, #2
46 1A           SUB     r6, r0, r1
B5 46           CPY     sp, r6
04 E0           B       #12

                gSaveBlock1Ptr:
08 50 00 03     .word   #0x03005008

                GetBoxedMonPtr:
45 BD 08 08     .word   #0x0808BD45
E1 19
21 6B           LDR     r1, gSaveBlock1Ptr
0E C9           LDMIA   r1, { r1-r3 }
0F C6           STMIA   r6!, { r0-r3 }
67 6B           LDR     r7, GetBoxedMonPtr
20 7E           LDRB    r0, libraryBox
61 7E           LDRB    r1, librarySlot
BE 46           CPY     lr, r7
00 F8           BL      lr
01 E0           B       dragonair.libraryLoop
00 00 00 00
```
/////

////

//// tab | :octicons-list-unordered-24: Box code

///// tab | Emerald
```box_code
; Box code 1
Box  1: 78 47 02 F0
Box  2: FF 5F 2D E9
Box  3: 11 40 8F E2
Box  4: 02 40 C4 E3
Box  5: FF FF 01 F2
Box  6: 14 FF 2F E1
Box  7: 0B 05 07 00
Box  8: 56 DB 0D 00
Box  9: 21 3C A5 7E
Box 10: 68 46 29 1D

; Box code 2
Box  1: 89 00 46 1A
Box  2: B5 46 04 E0
Box  3: 8C 5D 00 03
Box  4: 95 20 0D 08
Box  5: E0 19 21 6B
Box  6: 0E C9 0F C6
Box  7: 67 6B 20 7E
Box  8: 61 7E BE 46
Box  9: 00 F8 01 E0
Box 10: 00 00 00 00
```
/////

///// tab | FireRed v1.0
```box_code
; Box code 1
Box  1: 78 47 02 F0
Box  2: FE 5F 2D E9
Box  3: 11 40 8F E2
Box  4: 02 40 C4 E3
Box  5: FF FF 01 F2
Box  6: 14 FF 2F E1
Box  7: 0C 0B 07 00
Box  8: 84 4C 0D 00
Box  9: 21 3C A5 7E
Box 10: 68 46 29 1D

; Box code 2
Box  1: 89 00 46 1A
Box  2: B5 46 04 E0
Box  3: 08 50 00 03
Box  4: 31 BD 08 08
Box  5: E1 19 21 6B
Box  6: 0E C9 0F C6
Box  7: 67 6B 20 7E
Box  8: 61 7E BE 46
Box  9: 00 F8 01 E0
Box 10: 00 00 00 00
```
/////

///// tab | FireRed v1.1
```box_code
; Box code 1
Box  1: 78 47 02 F0
Box  2: FE 5F 2D E9
Box  3: 11 40 8F E2
Box  4: 02 40 C4 E3
Box  5: FF FF 01 F2
Box  6: 14 FF 2F E1
Box  7: 0C 0B 07 00
Box  8: 90 4C 0D 00
Box  9: 21 3C A5 7E
Box 10: 68 46 29 1D

; Box code 2
Box  1: 89 00 46 1A
Box  2: B5 46 04 E0
Box  3: 08 50 00 03
Box  4: 45 BD 08 08
Box  5: E1 19 21 6B
Box  6: 0E C9 0F C6
Box  7: 67 6B 20 7E
Box  8: 61 7E BE 46
Box  9: 00 F8 01 E0
Box 10: 00 00 00 00
```
/////

///// tab | LeafGreen v1.0
```box_code
; Box code 1
Box  1: 78 47 02 F0
Box  2: FE 5F 2D E9
Box  3: 11 40 8F E2
Box  4: 02 40 C4 E3
Box  5: FF FF 01 F2
Box  6: 14 FF 2F E1
Box  7: 0C 0B 07 00
Box  8: 50 4C 0D 00
Box  9: 21 3C A5 7E
Box 10: 68 46 29 1D

; Box code 2
Box  1: 89 00 46 1A
Box  2: B5 46 04 E0
Box  3: 08 50 00 03
Box  4: 05 BD 08 08
Box  5: E1 19 21 6B
Box  6: 0E C9 0F C6
Box  7: 67 6B 20 7E
Box  8: 61 7E BE 46
Box  9: 00 F8 01 E0
Box 10: 00 00 00 00
```
/////

///// tab | LeafGreen v1.1
```box_code
; Box code 1
Box  1: 78 47 02 F0
Box  2: FE 5F 2D E9
Box  3: 11 40 8F E2
Box  4: 02 40 C4 E3
Box  5: FF FF 01 F2
Box  6: 14 FF 2F E1
Box  7: 0C 0B 07 00
Box  8: 6C 4C 0D 00
Box  9: 21 3C A5 7E
Box 10: 68 46 29 1D

; Box code 2
Box  1: 89 00 46 1A
Box  2: B5 46 04 E0
Box  3: 08 50 00 03
Box  4: 19 BD 08 08
Box  5: E1 19 21 6B
Box  6: 0E C9 0F C6
Box  7: 67 6B 20 7E
Box  8: 61 7E BE 46
Box  9: 00 F8 01 E0
Box 10: 00 00 00 00
```
/////

////

//// tab | :octicons-apps-24: PokeGlitzer

///// tab | Emerald
``` { .text .copy }
78 47 02 F0   FF 5F 2D E9
11 40 8F E2   02 40 C4 E3
FF FF 01 F2   14 FF 2F E1
0B 05 07 00   56 DB 0D 00
21 3C A5 7E   68 46 29 1D
89 00 46 1A   B5 46 04 E0
8C 5D 00 03   95 20 0D 08
E0 19 21 6B   0E C9 0F C6
67 6B 20 7E   61 7E BE 46
00 F8 01 E0   00 00 00 00
```
/////

///// tab | FireRed v1.0
``` { .text .copy }
78 47 02 F0   FE 5F 2D E9
11 40 8F E2   02 40 C4 E3
FF FF 01 F2   14 FF 2F E1
0C 0B 07 00   84 4C 0D 00
21 3C A5 7E   68 46 29 1D
89 00 46 1A   B5 46 04 E0
08 50 00 03   31 BD 08 08
E1 19 21 6B   0E C9 0F C6
67 6B 20 7E   61 7E BE 46
00 F8 01 E0   00 00 00 00
```
/////

///// tab | FireRed v1.1
``` { .text .copy }
78 47 02 F0   FE 5F 2D E9
11 40 8F E2   02 40 C4 E3
FF FF 01 F2   14 FF 2F E1
0C 0B 07 00   90 4C 0D 00
21 3C A5 7E   68 46 29 1D
89 00 46 1A   B5 46 04 E0
08 50 00 03   45 BD 08 08
E1 19 21 6B   0E C9 0F C6
67 6B 20 7E   61 7E BE 46
00 F8 01 E0   00 00 00 00
```
/////

///// tab | LeafGreen v1.0
``` { .text .copy }
78 47 02 F0   FE 5F 2D E9
11 40 8F E2   02 40 C4 E3
FF FF 01 F2   14 FF 2F E1
0C 0B 07 00   50 4C 0D 00
21 3C A5 7E   68 46 29 1D
89 00 46 1A   B5 46 04 E0
08 50 00 03   05 BD 08 08
E1 19 21 6B   0E C9 0F C6
67 6B 20 7E   61 7E BE 46
00 F8 01 E0   00 00 00 00
```
/////

///// tab | LeafGreen v1.1
``` { .text .copy }
78 47 02 F0   FE 5F 2D E9
11 40 8F E2   02 40 C4 E3
FF FF 01 F2   14 FF 2F E1
0C 0B 07 00   6C 4C 0D 00
21 3C A5 7E   68 46 29 1D
89 00 46 1A   B5 46 04 E0
08 50 00 03   19 BD 08 08
E1 19 21 6B   0E C9 0F C6
67 6B 20 7E   61 7E BE 46
00 F8 01 E0   00 00 00 00
```
/////

////

//// tab | :octicons-star-fill-24: Markings

///// html | div.markings
+-------------------------------+---------------------------+
| Marking                       | Function                  |
+===============================+===========================+
| :material-star-outline:       | Run script in Thumb mode  |
+-------------------------------+---------------------------+
| :material-star:               | Run script in ARM mode    |
+-------------------------------+---------------------------+
/////

////

///
