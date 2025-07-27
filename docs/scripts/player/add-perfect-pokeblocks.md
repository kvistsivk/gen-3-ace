# Fill case with perfect Pokéblocks

Fills your Pokéblock case with perfect Pokéblocks—using one will max out its
recipient's contest stats. These perfect Pokéblocks are gold-colored.

/// pokemon | Milotic ["GetPrfBlks"]
    open: true

//// tab | :octicons-cpu-24: ARM assembly

///// tab | Emerald
``` { .arm_v4 .annotate linenums="1" }
04 4C           LDR     r4, AddPokeblock
00 46           NOP

                pokeblockLoop:
07 A0           ADR     r0, perfectPokeblock
05 E0           B       #14
C1 D9 E8 CA     .byte   "GetP"
E6 DA BC E0     .byte   "rfBl"
DF E7 02 02     .byte   "ks", #0x02, #0x02

                AddPokeblock:
2D 6F 13 08     .word   #0x08136F2D
A6 46           CPY     lr, r4
00 E0           B       #4
80 5A
00 F8           BL      lr
00 28           CMP     r0, #0
04 E0           B       #12

                perfectPokeblock:
0E FF FF FF     .word   #0xFFFFFF0E
FF FF FF 03     .word   #0x03FFFFFF
4A ED
E9 D1           BNE     pokeblockLoop
0E E0           BEQ     nextFreeBoxSlot
00 00
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
```text
Not available
```
/////

////

//// tab | :octicons-list-unordered-24: Box code

///// tab | Emerald
```box_code
Box  1: BE wA Rg eg
Box  2: B! DB 2e jK
Box  3: 5t q8 4N ?n
Box  4: Ag It bx MI
Box  5: pk YA 4J Ba
Box  6: AP gA KA Tg
Box  7: Dv ?? ?? ??
Box  8: ?w NK 7e nR
Box  9: Du AA AA AA
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
04 4C 00 46   07 A0 07 E0
C1 D9 E8 CA   E6 DA BC E0
DF E7 02 02   2D 6F 13 08
A6 46 00 E0   90 5A 00 F8
00 28 04 E0   0E FF FF FF
FF FF FF 03   4A ED E9 D1
0E E0 00 00   00 00 00 00
00 00 00 00   00 00 00 00
00 00 00 00   00 00 00 00
00 00 00 00   00 00 00 00
```
/////

///// tab | FireRed/LeafGreen
```text
Not available
```
/////

////

///
