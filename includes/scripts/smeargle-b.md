/// pokemon | Smeargle ["Cont. 1"]<span class="script-pos">2 of 2</span>

//// tab | :octicons-cpu-24: ARM assembly
``` { .arm_v4 .annotate linenums="1" }
                checkDigit:
1A 35           ADD     r5, #26
0B 2D           CMP     r5, #11
14 D8           BHI     charLoopCoda
03 E0           B       #10
BD E3 E2 E8     .byte   "Cont"
AD 00 A2 FF     .byte   ". 1", #0xFF
34 35           ADD     r5, #52
02 42           NOP

                mixChar:
A4 01           LSL     r4, r4, #6
64 19           ADD     r4, r4, r5
06 33           ADD     r3, #6
00 E0           B       #4
E5 A3
08 2B           CMP     r3, #8
06 D3           BLO     charLoopCoda

                writeChar:
08 3B           SUB     r3, #8
25 46           CPY     r5, r4
DD 40           LSR     r5, r3
05 70           STRB    r5, [r0]
00 E0           B       #4
E5 ED
01 30           ADD     r0, #1

                charLoopCoda:
01 32           ADD     r2, #1
78 2A           CMP     r2, #120
DB D3           BLO     charLoop

                return:
00 20           MOV     r0, #0
0A E0           B       nextFreeBoxSlot
00 00
00 00 00 00
00 00 00 00
00 00 00 00
00 00 00 00
00 00 00 00
```
////

//// tab | :octicons-list-unordered-24: Box code
```box_code
; Box code 1
Box  1: 1A 35 0B 2D
Box  2: 14 D8 03 E0
Box  3: BD E3 E2 E8
Box  4: AD 00 A2 FF
Box  5: 34 35 02 42
Box  6: A4 01 64 19
Box  7: 06 33 00 E0
Box  8: E5 A3 08 2B

; Box code 2
Box  1: 06 D3 08 3B
Box  2: 25 46 DD 40
Box  3: 05 70 00 E0
Box  4: E5 ED 01 30
Box  5: 01 32 78 2A
Box  6: DB D3 00 20
Box  7: 0A E0 00 00
Box  8: 00 00 00 00
```
////

//// tab | :octicons-apps-24: PokeGlitzer
``` { .text .copy }
1A 35 0B 2D   14 D8 03 E0
BD E3 E2 E8   AD 00 A2 FF
34 35 02 42   A4 01 64 19
06 33 00 E0   E5 A3 08 2B
06 D3 08 3B   25 46 DD 40
05 70 00 E0   E5 ED 01 30
01 32 78 2A   DB D3 00 20
0A E0 00 00   00 00 00 00
00 00 00 00   00 00 00 00
00 00 00 00   00 00 00 00
```
////

///
