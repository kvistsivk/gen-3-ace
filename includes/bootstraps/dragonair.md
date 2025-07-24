/// pokemon | Dragonair

//// tab | :octicons-cpu-24: ARM assembly
``` { .arm_v4 .annotate linenums="1" }
                libraryLoop:
00 2D           CMP     r5, #0
08 D0           BEQ     callScript
41 1C           ADD     r1, r0, #1
02 68           LDR     r2, [r0]
0B 2A           ADD     r2, #11
01 D0           BEQ     libraryLoopCoda
02 C6           STMIA   r6!, { r1 }
01 3D           SUB     r5, #1

                libraryLoopCoda:
50 30           ADD     r0, #80
01 42           NOP
F4 E7           libraryLoop

                callScript:
A0 7F           LDR     r0, altaria.scriptBox
E1 7F           LDR     r1, altaria.scriptSlot
02 E0           B       #8
DA C1
00 00
D5 31
BE 46           CPY     lr, r7
00 F8           BL      lr
E1 7E           LDR     r1, altaria.executionMode
01 39           SUB     r1, #1
C9 0F           LSR     r1, r1, #31
40 18           ADD     r0, r0, r1
00 47           BX      r0
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
Box  1: 00 2D 08 D0
Box  2: 41 1C 02 68
Box  3: 0B 2A 01 D0
Box  4: 02 C6 01 3D
Box  5: 50 30 01 42
Box  6: F4 E7 A0 7F
Box  7: E1 7F 02 E0
Box  8: DA C1 00 00
Box  9: D5 31 BE 46
Box 10: 00 F8 E1 7E
Box 11: 01 39 C9 0F
Box 12: 40 18 00 47
```
////

//// tab | :octicons-apps-24: PokeGlitzer
``` { .text .copy }
00 2D 08 D0   41 1C 02 68
0B 2A 01 D0   02 C6 01 3D
50 30 01 42   F4 E7 A0 7F
E1 7F 02 E0   DA C1 00 00
D5 31 BE 46   00 F8 E1 7E
01 39 C9 0F   40 18 00 47
00 00 00 00   00 00 00 00
00 00 00 00   00 00 00 00
00 00 00 00   00 00 00 00
00 00 00 00   00 00 00 00
```
////

///
