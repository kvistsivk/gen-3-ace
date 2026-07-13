/// pokemon | Armaldo

//// tab | :octicons-cpu-24: ARM assembly

///// tab | Emerald
``` { .arm_v4 .annotate linenums="1" }
F0 FF FF FF
00 00 00 00

                RtcGetMinuteCount:
65 F6 02 08     .word   #0x0802F665

                gRngValue:
80 5D 00 03     .word   #0x03005D80
00 00 01 02

                playerMovementId:
56 73 03 02     .word   #0x02037356
00 00 00 FF
2C 43 00 00
77 FE 00 00

                MovementType_Player:
99 A9 08 08     .word   #0x0808A999

                payloadDest:
00 F0 03 02     .word   #0x0203F000

                INTR_VECTOR:
FC 7F 00 03     .word   #0x03007FFC

                IntrMain_Buffer:
50 27 00 03     .word   #0x03002750
00 00 00 00

                interruptHandler:
FE 5F 2D E9     PUSH    { r1-r12, lr }
03 00 00 EB     BL      payload
FE 5F BD E8     POP     { r1-r12, lr }
00 00 9F E5     LDR     r0, IntrMain_Buffer
10 FF 2F E1     BX      r0

                IntrMain_Buffer:
50 27 00 03     .word   #0x03002750
```
/////

///// tab | FireRed/LeafGreen
``` { .arm_v4 .annotate linenums="1" }
```
/////

////

//// tab | :octicons-list-unordered-24: Box code

///// tab | Emerald
```box_code
Box  1: 8P ?? ?w AA
Box  2: AA Bl 9g II
Box  3: gF 0A Aw AA
Box  4: AQ JW cw MC
Box  5: AA AA ?y xD
Box  6: AA B3 ?g AA
Box  7: ma kI CA Dw
Box  8: Aw L8 fw AD
Box  9: UC cA Aw AA
Box 10: AA D! Xy 3p
Box 11: Aw AA 6? 5f
Box 12: ve gA AJ ?l
Box 13: EP 8v 4V An
Box 14: AA MA AA AA
```
/////

///// tab | FireRed/LeafGreen
```box_code
```
/////

////

//// tab | :octicons-apps-24: PokeGlitzer

///// tab | Emerald
``` { .text .copy }
F0 FF FF FF   00 00 00 00
65 F6 02 08   80 5D 00 03
00 00 01 02   56 73 03 02
00 00 00 FF   2C 43 00 00
77 FE 00 00   99 A9 08 08
00 F0 03 02   FC 7F 00 03
50 27 00 03   00 00 00 00
FE 5F 2D E9   03 00 00 EB
FE 5F BD E8   00 00 9F E5
10 FF 2F E1   50 27 00 03
```
/////

///// tab | FireRed/LeafGreen
``` { .text .copy }
```
/////

////

///
