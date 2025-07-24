# Toggle music on/off

Toggles the background music on & off. Based on a script written by blisy. The
effect is immediate, and does not require loading a new area to take affect.
Note that this version of the script does _not_ persist across resets.

/// pokemon | Jigglypuff ["TogMusic"]
    open: true

//// tab | :octicons-cpu-24: ARM assembly
``` { .arm_v4 .annotate linenums="1" }
00 46           NOP
0E A0           ADR     r0, gDisableMusic
1E C8           LDMIA   r0!, { r1-r4 }
05 E0           B       #14
CE E3 DB C7     .byte   "TogM"
E9 E7 DD D7     .byte   "usic"
FF FF 02 02     .byte   #0xFF, #0xFF, #0x02, #0x02
08 78           LDRB    r0, [r1]
01 38           SUB     r0, #1
C0 0F           LSR     r0, r0, #31
00 E0           B       #4
4D EA
08 70           STRB    r0, [r1]
00 28           CMP     r0, #0
02 D0           BEQ     startMusic

                stopMusic:
96 46           CPY     lr, r2
00 F8           BL      lr
04 E0           B       return

                startMusic:
9E 46           CPY     lr, r3
00 F8           BL      lr
08 21           MOV     r1, #8
A6 46           CPY     lr, r4
00 F8           BL      lr

                return:
00 20           MOV     r0, #0
0B E0           B       nextFreeBoxSlot
39 8E 00 00

                gDisableMusic:
F8 5D 00 03     .word   #0x03005DF8

                StopMapMusic:
31 2F 0A 08     .word   #0x080A2F31

                GetCurrLocationDefaultMusic:
D5 56 08 08     .word   #0x080856D5

                FadeOutAndPlayNewMapMusic:
89 2F 0A 08     .word   #0x080A2F89
00 00 00 00
```
////

//// tab | :octicons-list-unordered-24: Box code

///// tab | Emerald
```box_code
Box  1: AE YO oB 7I
Box  2: Be DO 49 vH
Box  3: 6e fd 1? ??
Box  4: Ag II eA E4
Box  5: wA 8A 4E 3q
Box  6: CH AA KA LQ
Box  7: lk YA !A Tg
Box  8: nk YA !A gh
Box  9: pk YA !A Ag
Box 10: C! A5 jg AA
Box 11: !F 0A Az Ev
Box 12: Cg jV Vg gI
Box 13: iS 8K CA AA
```
/////

///// tab | FireRed/LeafGreen v1.0
```box_code
Box  1: AE YO oB 7I
Box  2: Be DO 49 vH
Box  3: 6e fd 1? ??
Box  4: Ag II eA E4
Box  5: wA 8A 4K bW
Box  6: CH AA KA LQ
Box  7: lk YA !A Tg
Box  8: nk YA !A gh
Box  9: pk YA !A Ag
Box 10: C! A5 jg AA
Box 11: gF AA A5 Ua
Box 12: Bw iN XQ UI
Box 13: 7R oH CA AA
```
/////

///// tab | FireRed/LeafGreen v1.1
```box_code
Box  1: AE YO oB 7I
Box  2: Be DO 49 vH
Box  3: 6e fd 1? ??
Box  4: Ag II eA E4
Box  5: wA 8A 4C rX
Box  6: CH AA KA LQ
Box  7: lk YA !A Tg
Box  8: nk YA !A gh
Box  9: pk YA !A Ag
Box 10: C! A5 jg AA
Box 11: gF AA A6 ka
Box 12: Bw ih XQ UI
Box 13: AR sH CA AA
```
/////

////

//// tab | :octicons-apps-24: PokeGlitzer

///// tab | Emerald
``` { .text .copy }
00 46 0E A0   1E C8 05 E0
CE E3 DB C7   E9 E7 DD D7
FF FF 02 02   08 78 01 38
C0 0F 00 E0   4D EA 08 70
00 28 02 D0   96 46 00 F8
04 E0 9E 46   00 F8 08 21
A6 46 00 F8   00 20 0B E0
39 8E 00 00   F8 5D 00 03
31 2F 0A 08   D5 56 08 08
89 2F 0A 08   00 00 00 00
```
/////

///// tab | FireRed/LeafGreen v1.0
``` { .text .copy }
00 46 0E A0   1E C8 05 E0
CE E3 DB C7   E9 E7 DD D7
FF FF 02 02   08 78 01 38
C0 0F 00 E0   A6 D6 08 70
00 28 02 D0   96 46 00 F8
04 E0 9E 46   00 F8 08 21
A6 46 00 F8   00 20 0B E0
39 8E 00 00   80 50 00 03
95 1A 07 08   8D 5D 05 08
ED 1A 07 08   00 00 00 00
```
/////

///// tab | FireRed/LeafGreen v1.1
``` { .text .copy }
00 46 0E A0   1E C8 05 E0
CE E3 DB C7   E9 E7 DD D7
FF FF 02 02   08 78 01 38
C0 0F 00 E0   2A D7 08 70
00 28 02 D0   96 46 00 F8
04 E0 9E 46   00 F8 08 21
A6 46 00 F8   00 20 0B E0
39 8E 00 00   80 50 00 03
A9 1A 07 08   A1 5D 05 08
01 1B 07 08   00 00 00 00
```
/////

////

///
