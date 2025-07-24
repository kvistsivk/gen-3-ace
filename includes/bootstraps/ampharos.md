/// pokemon | Ampharos

//// tab | :octicons-cpu-24: ARM assembly

///// tab | Emerald
``` { .arm_v4 .annotate linenums="1" }
78 47 02 F0     NOP
01 10 8F E2     ADD     r1, pc, #1
11 FF 2F E1     BX      r1
44 42           NEG     r4, r0
44 41           ADC     r4, r0
0C 48           LDR     r0, StopCryAndClearCrySongs
01 42           NOP
86 46           CPY     lr, r0
00 F8           BL      lr
20 20           MOV     r0, #0x20
00 E0           B       #4
D7 2A
00 1B           SUB     r0, r0, r4
09 49           LDR     r1, PlaySE
8E 46           CPY     lr, r1
00 F8           BL      lr
01 BC           POP     { r0 }
85 46           CPY     sp, r0
05 98           LDR     r0, [sp, #20]
01 88           LDRH    r1, [r0]
01 22           MOV     r2, #1
91 43           BIC     r1, r2
01 80           STRH    r1, [r0]
78 47           BX      pc
00 00
CC 57 00 F0     NOP
FF 5F BD E8     POP     { r0-r12, lr }
1E FF 2F E1     BX      lr

                StopCryAndClearCrySongs:
9D 36 0A 08     .word   #0x080A369D

                PlaySE:
A5 37 0A 08     .word   #0x080A37A5
00 00 00 00
```
/////

///// tab | FireRed/LeafGreen
``` { .arm_v4 .annotate linenums="1" }
78 47 00 F0     NOP
01 10 8F E2     ADD     r1, pc, #1
11 FF 2F E1     BX      r1
41 42           NEG     r1, r0
41 41           ADC     r1, r0
1A 20           MOV     r0, #0x1A
01 42           NOP
40 1A           SUB     r0, r0, r1
0C 49           LDR     r1, PlaySE
8E 46           CPY     lr, r1
00 E0           B       #4
D6 6C
00 F8           BL      lr
01 BC           POP     { r0 }
85 46           CPY     sp, r0
03 98           LDR     r0, [sp, #12]
01 E0           B       #6
00 00
00 00
00 68           LDR     r0, [r0]
D9 21           MOV     r1, #217
09 01           LSL     r1, r1, #4
06 4A           LDR     r2, markingComboSpritePtr
42 50           STR     r2, [r0, r1]
00 E0
CC 57
00 20           MOV     r0, #0
78 47           BX      pc
00 00
FE 5F BD E8     POP     { r1-r12, lr }
1E FF 2F E1     BX      lr

                PlaySE:
E1 22 07 08     .word   #0x080722E1

                markingComboSpritePtr:
08 07 02 02     .word   #0x02020708
```
/////

////

//// tab | :octicons-list-unordered-24: Box code

///// tab | Emerald
```box_code
; Box code 1
Box  1: 78 47 02 F0
Box  2: 01 10 8F E2
Box  3: 11 FF 2F E1
Box  4: 44 42 44 41
Box  5: 0C 48 01 42
Box  6: 86 46 00 F8
Box  7: 20 20 00 E0
Box  8: D7 2A 00 1B
Box  9: 09 49 8E 46
Box 10: 00 F8 01 BC

; Box code 2
Box  1: 85 46 05 98
Box  2: 01 88 01 22
Box  3: 91 43 01 80
Box  4: 78 47 00 00
Box  5: CC 57 00 F0
Box  6: FF 5F BD E8
Box  7: 1E FF 2F E1
Box  8: 9D 36 0A 08
Box  9: A5 37 0A 08
Box 10: 00 00 00 00
```
/////

///// tab | FireRed/LeafGreen v1.0
```box_code
; Box code 1
Box  1: 78 47 00 F0
Box  2: 01 10 8F E2
Box  3: 11 FF 2F E1
Box  4: 41 42 41 41
Box  5: 1A 20 01 42
Box  6: 40 1A 0C 49
Box  7: 8E 46 00 E0
Box  8: F2 6C 00 F8
Box  9: 01 BC 85 46
Box 10: 03 98 01 E0

; Box code 2
Box  1: 00 00 00 00
Box  2: 00 68 D9 21
Box  3: 09 01 06 4A
Box  4: 42 50 00 E0
Box  5: CC 57 00 20
Box  6: 78 47 00 00
Box  7: FE 5F BD E8
Box  8: 1E FF 2F E1
Box  9: CD 22 07 08
Box 10: 08 07 02 02
```
/////

///// tab | FireRed/LeafGreen v1.1
```box_code
; Box code 1
Box  1: 78 47 00 F0
Box  2: 01 10 8F E2
Box  3: 11 FF 2F E1
Box  4: 41 42 41 41
Box  5: 1A 20 01 42
Box  6: 40 1A 0C 49
Box  7: 8E 46 00 E0
Box  8: D6 6C 00 F8
Box  9: 01 BC 85 46
Box 10: 03 98 01 E0

; Box code 2
Box  1: 00 00 00 00
Box  2: 00 68 D9 21
Box  3: 09 01 06 4A
Box  4: 42 50 00 E0
Box  5: CC 57 00 20
Box  6: 78 47 00 00
Box  7: FE 5F BD E8
Box  8: 1E FF 2F E1
Box  9: E1 22 07 08
Box 10: 08 07 02 02
```
/////

////

//// tab | :octicons-apps-24: PokeGlitzer

///// tab | Emerald
``` { .text .copy }
78 47 02 F0   01 10 8F E2
11 FF 2F E1   44 42 44 41
0C 48 01 42   86 46 00 F8
20 20 00 E0   D7 2A 00 1B
09 49 8E 46   00 F8 01 BC
85 46 05 98   01 88 01 22
91 43 01 80   78 47 00 00
CC 57 00 F0   FF 5F BD E8
1E FF 2F E1   9D 36 0A 08
A5 37 0A 08   00 00 00 00
```
/////

///// tab | FireRed/LeafGreen v1.0
``` { .text .copy }
78 47 00 F0   01 10 8F E2
11 FF 2F E1   41 42 41 41
1A 20 01 42   40 1A 0C 49
8E 46 00 E0   F2 6C 00 F8
01 BC 85 46   03 98 01 E0
00 00 00 00   00 68 D9 21
09 01 06 4A   42 50 00 E0
CC 57 00 20   78 47 00 00
FE 5F BD E8   1E FF 2F E1
CD 22 07 08   08 07 02 02
```
/////

///// tab | FireRed/LeafGreen v1.1
``` { .text .copy }
78 47 00 F0   01 10 8F E2
11 FF 2F E1   41 42 41 41
1A 20 01 42   40 1A 0C 49
8E 46 00 E0   D6 6C 00 F8
01 BC 85 46   03 98 01 E0
00 00 00 00   00 68 D9 21
09 01 06 4A   42 50 00 E0
CC 57 00 20   78 47 00 00
FE 5F BD E8   1E FF 2F E1
E1 22 07 08   08 07 02 02
```
/////

////

//// tab | :octicons-arrow-switch-24: Signature

///// html | div.signature
+-------+-----------------------------------------------------------+
| IN    | Function                                                  |
+=======+===========================================================+
| `r0`  | Value indicating script success/failure; `0` is success,  |
|       | any other value is failure                                |
+-------+-----------------------------------------------------------+
/////

////

///
