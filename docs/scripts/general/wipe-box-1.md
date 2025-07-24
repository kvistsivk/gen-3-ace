# Wipe/erase box 1

Wipes the contents of box 1 completely, deleting any Pokémon/eggs found in it.
This is nothing a decloner decamark can't do, but it _is_ a slightly smoother
experience.

This is obviously a fairly dangerous script to have lying around, so I've added
a safeguard to make accidental execution a little less likely: this script will
only run if all four markings on it are toggled on (i.e. <span
class="marking-string">●■▲♥︎</span>). Additionally, every time it's run the
markings will all be switched off. This is as close as I can get to requiring
explicit confirmation for this script, but be careful with it regardless.

/// pokemon | Absol ["WipeBox1"]
    open: true

//// tab | :octicons-cpu-24: ARM assembly
``` { .arm_v4 .annotate linenums="1" }
78 46           CPY     r0, pc
C1 7D           LDRB    r1, [r0, #23]
00 22           MOV     r2, #0
05 E0           B       #14
D1 DD E4 D9     .byte   "Wipe"
BC E3 EC A2     .byte   "Box1"
FF FF 02 02     .byte   #0xFF, #0xFF, #0x02, #0x02
C2 75           STRB    r2, [r0, #23]
0F 29           CMP     r1, #15
01 E0           B       #6
00 00
DF 5E
08 D1           BNE     returnErr
03 98           LDR     r0, sp.gPokemonStorage
04 30           ADD     r0, #4
4B 21           MOV     r1, #75
C9 00           LSL     r1, r1, #3

                zeroLoop:
04 C0           STMIA   r0!, { r2 }
01 39           SUB     r1, #1
FC D8           BHI     zeroLoop
00 20           MOV     r0, #0
0E E0           B       nextBoxSlot

                returnErr:
01 20           MOV     r0, #1
0C E0           B       nextFreeBoxSlot
00 00
00 65 00 00
00 00 00 00
00 00 00 00
00 00 00 00
00 00 00 00
00 00 00 00
```
////

//// tab | :octicons-list-unordered-24: Box code
```box_code
Box  1: eE bB fQ Ai
Box  2: Be DR 3e TZ
Box  3: vO Ps ov ??
Box  4: Ag LC dQ 8p
Box  5: Ae AA AN 9e
Box  6: CN ED mA Qw
Box  7: Sy HJ AA TA
Box  8: AT n8 2A Ag
Box  9: Du AB IA zg
Box 10: AA AA ZQ AA
```
////

//// tab | :octicons-apps-24: PokeGlitzer
``` { .text .copy }
78 46 C1 7D   00 22 05 E0
D1 DD E4 D9   BC E3 EC A2
FF FF 02 02   C2 75 0F 29
01 E0 00 00   DF 5E 08 D1
03 98 04 30   4B 21 C9 00
04 C0 01 39   FC D8 00 20
0E E0 01 20   0C E0 00 00
00 65 00 00   00 00 00 00
00 00 00 00   00 00 00 00
00 00 00 00   00 00 00 00
```
////

///
