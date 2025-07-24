/// pokemon | Delcatty ["Cont. 1"]<span class="script-pos">2 of 2</span>
    open: true

//// tab | :octicons-cpu-24: ARM assembly
``` { .arm_v4 .annotate linenums="1" }
22 80           STRH    r2, [r4, #0]
FF 2B           CMP     r3, #0xFF
06 D9           BLS     setLevel
03 D8           BHI     capLevel
BD E3 E2 E8     .byte   "Cont"
AD 00 A2 FF     .byte   ". 1", #0xFF

                capLevel:
FF 23           MOV     r3, #0xFF
02 42           NOP

                setLevel:
23 71           STRB    r3, [r4, #4]
0F BC           POP     { r0-r3 }
20 81           STRH    r0, [r4, #8]
00 E0           B       #4
D7 81
61 81           STRH    r1, [r4, #10]
A2 81           STRH    r2, [r4, #12]
E3 81           STRH    r3, [r4, #16]
03 BC           POP     { r0, r1 }
01 E0           B       #6
00 00
00 00
64 28           CMP     r0, #100
00 D9           BLS     #4
64 20           MOV     r0, #100
60 74           STRB    r0, [r4, #17]
FF 20           MOV     r0, #0xFF
00 E0           B       #4
18 58
02 02           LSL     r2, r0, #8
80 18           ADD     r0, r0, r2
81 42           CMP     r1, r0
00 D9           BLS     #4
01 46           CPY     r1, r0
61 82           STRH    r1, [r4, #18]
00 20           MOV     r0, #0
02 E0           B       nextFreeBoxSlot
00 00
00 00 00 00
```
////

//// tab | :octicons-list-unordered-24: Box code

///// tab | Emerald
```box_code
Box  1: Io D? Kw bZ
Box  2: A9 i9 4! Lo
Box  3: rQ Ci ?? 8j
Box  4: Ak Ij cQ !8
Box  5: II EA 4N eB
Box  6: YY Gi ge OB
Box  7: A7 wB 4A AA
Box  8: AA Bk KA DZ
Box  9: ZC Bg dP 8g
Box 10: AO AY WA IC
Box 11: gB iB Qg DZ
Box 12: AU Zh gg Ag
Box 13: Au AA AA AA
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
22 80 FF 2B   06 D9 03 D8
BD E3 E2 E8   AD 00 A2 FF
FF 23 02 42   23 71 0F BC
20 81 00 E0   D7 81 61 81
A2 81 E3 81   03 BC 01 E0
00 00 00 00   64 28 00 D9
64 20 60 74   FF 20 00 E0
18 58 02 02   80 18 81 42
00 D9 01 46   61 82 00 20
02 E0 00 00   00 00 00 00
```
/////

///// tab | FireRed/LeafGreen
```text
Not available
```
/////

////

///
