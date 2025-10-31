# Reset move tutors

Resets all of the move tutors in the game, allowing you to use them again. On
FR/LG this also resets the Blast Burn/Frenzy Plant/Hydro Cannon tutor.

/// pokemon | Gengar ["RstTutors"]
    open: true

//// tab | :octicons-cpu-24: ARM assembly

///// tab | Emerald
``` { .arm_v4 .annotate linenums="1" }
04 4C           LDR     r4, FlagClear
00 46           NOP
1B 25           MOV     r5, #0x1B
07 E0           B       #18
CC E7 E8 CE     .byte   "RstT"
E9 E8 E3 E6     .byte   "utor"
E7 FF 02 02     .byte   "s", #0xFF, #0x02, #0x02

                FlagClear:
69 D7 09 08     .word   #0x0809D769
2D 01           LSL     r5, r5, #4
00 E0           B       #4
3A A7
01 35           ADD     r5, #1
09 26           MOV     r6, #0x09

                moveLoop:
A8 19           ADD     r0, r5, r6
A6 46           CPY     lr, r4
00 F8           BL      lr
01 3E           SUB     r6, #1
00 E0           B       #4
41 69
F8 D5           BPL     moveLoop
00 20           MOV     r0, #0
0D E0           B       nextFreeBoxSlot
00 00 00 00
00 00 00 00
00 00 00 00
00 00 00 00
00 00 00 00
00 00 00 00
00 00 00 00
```
/////

///// tab | FireRed/LeafGreen
``` { .arm_v4 .annotate linenums="1" }
04 4C           LDR     r4, FlagClear
00 46           NOP
2C 25           MOV     r5, #0x2C
07 E0           B       #18
CC E7 E8 CE     .byte   "RstT"
E9 E8 E3 E6     .byte   "utor"
E7 FF 02 02     .byte   "s", #0xFF, #0x02, #0x02

                FlagClear:
BD E6 06 08     .word   #0x0806E6BD
2D 01           LSL     r5, r5, #4
00 E0           B       #4
17 70
0E 26           MOV     r6, #0x0E

                moveLoopA:
A8 19           ADD     r0, r5, r6
A6 46           CPY     lr, r4
00 F8           BL      lr
01 3E           SUB     r6, #1
FA D5           BPL     moveLoopA
00 D4           BMI     #4
76 69
1E 35           ADD     r5, #0x1E
02 26           MOV     r6, #2

                moveLoopB:
A8 19           ADD     r0, r5, r6
A6 46           CPY     lr, r4
00 F8           BL      lr
01 3E           SUB     r6, #1
FA D5           BPL     moveLoopB
00 20           MOV     r0, #0
07 E0           B       nextFreeBoxSlot
00 00 00 00
00 00 00 00
00 00 00 00
00 00 00 00
```
/////

////

//// tab | :octicons-list-unordered-24: Box code

///// tab | Emerald
```box_code
Box  1: BE wA Rh sl
Box  2: B! DM 5! jO
Box  3: 6e jj 5u f?
Box  4: Ag Jp 1w kI
Box  5: LQ EA 4D qn
Box  6: AT UJ Jq gZ
Box  7: pk YA !A E!
Box  8: AO BB af jV
Box  9: AC AN 4A AA
```
/////

///// tab | FireRed/LeafGreen v1.0
```box_code
Box  1: BE wA Ri wl
Box  2: B! DM 5! jO
Box  3: 6e jj 5u f?
Box  4: Ag Kp 5g YI
Box  5: LQ EA 4B dw
Box  6: Di ao Ga ZG
Box  7: AP gB Pv rV
Box  8: AN R2 aR 41
Box  9: Ai ao Ga ZG
Box 10: AP gB Pv rV
Box 11: AC AH 4A AA
```
/////

///// tab | FireRed/LeafGreen v1.1
```box_code
Box  1: BE wA Ri wl
Box  2: B! DM 5! jO
Box  3: 6e jj 5u f?
Box  4: Ag K9 5g YI
Box  5: LQ EA 4B dw
Box  6: Di ao Ga ZG
Box  7: AP gB Pv rV
Box  8: AN R2 aR 41
Box  9: Ai ao Ga ZG
Box 10: AP gB Pv rV
Box 11: AC AH 4A AA
```
/////

////

//// tab | :octicons-apps-24: PokeGlitzer

///// tab | Emerald
``` { .text .copy }
04 4C 00 46   1B 25 07 E0
CC E7 E8 CE   E9 E8 E3 E6
E7 FF 02 02   69 D7 09 08
2D 01 00 E0   3A A7 01 35
09 26 A8 19   A6 46 00 F8
01 3E 00 E0   41 69 F8 D5
00 20 0D E0   00 00 00 00
00 00 00 00   00 00 00 00
00 00 00 00   00 00 00 00
00 00 00 00   00 00 00 00
```
/////

///// tab | FireRed/LeafGreen v1.0
``` { .text .copy }
04 4C 00 46   2C 25 07 E0
CC E7 E8 CE   E9 E8 E3 E6
E7 FF 02 02   A9 E6 06 08
2D 01 00 E0   17 70 0E 26
A8 19 A6 46   00 F8 01 3E
FA D5 00 D4   76 69 1E 35
02 26 A8 19   A6 46 00 F8
01 3E FA D5   00 20 07 E0
00 00 00 00   00 00 00 00
00 00 00 00   00 00 00 00
```
/////

///// tab | FireRed/LeafGreen v1.1
``` { .text .copy }
04 4C 00 46   2C 25 07 E0
CC E7 E8 CE   E9 E8 E3 E6
E7 FF 02 02   BD E6 06 08
2D 01 00 E0   17 70 0E 26
A8 19 A6 46   00 F8 01 3E
FA D5 00 D4   76 69 1E 35
02 26 A8 19   A6 46 00 F8
01 3E FA D5   00 20 07 E0
00 00 00 00   00 00 00 00
00 00 00 00   00 00 00 00
```
/////

///
