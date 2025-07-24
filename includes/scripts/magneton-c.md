/// pokemon | Magneton ["Cont. 2"]<span class="script-pos">3 of 3</span>
    open: true

//// tab | :octicons-cpu-24: ARM assembly
``` { .arm_v4 .annotate linenums="1" }
0B 00 00 40

                return:
00 20           MOV     r0, #0
25 E0           B       nextBoxSlot
BD E3 E2 E8    .byte   "Cont"
AD 00 A3 FF    .byte   ". 2", #0xFF
FF FF 02 02    .byte   #0xFF, #0xFF, #0x02, #0x02

                typeNames:
C0 C1 CE C0    .byte   "FGTF"
C6 D3 FF FF    .byte   "LY", #0xFF, #0xFF
C0 9E 00 00
59 20 CA CD    .byte   #0x59, #0x20, "PS"
C8 C1 CC C8    .byte   "NGRN"
CC BD C5 BC    .byte   "RCKB"
CF C1 C1 C2    .byte   "UGGH"
C9 CD CE C6    .byte   "OSTL"
C0 C3 CC D1    .byte   "FIRW"
CE CC C1 CC    .byte   "TRGR"
CD BF C6 BF    .byte   "SELE"
CA CD D3 C3    .byte   "PSYI"
BD BF BE CC    .byte   "CEDR"
BB BE CC C5    .byte   "ADRK"
00 00 00 00
```
////

//// tab | :octicons-list-unordered-24: Box code
```box_code
Box  1: Cw AA QA Ag
Box  2: Je C9 4! Lo
Box  3: rQ Cj ?? ??
Box  4: Ag LA wc 7A
Box  5: xt P? ?8 Ce
Box  6: AA BZ IM rN
Box  7: yM HM yM y9
Box  8: xb zP wc HC
Box  9: yc 3O xs DD
Box 10: zN HO zM HM
Box 11: zb ?G v8 rN
Box 12: 08 O9 v7 7M
Box 13: u7 7M xQ AA
```
////

//// tab | :octicons-apps-24: PokeGlitzer
``` { .text .copy }
0B 00 00 40   00 20 25 E0
BD E3 E2 E8   AD 00 A3 FF
FF FF 02 02   C0 C1 CE C0
C6 D3 FF FF   C0 9E 00 00
59 20 CA CD   C8 C1 CC C8
CC BD C5 BC   CF C1 C1 C2
C9 CD CE C6   C0 C3 CC D1
CE CC C1 CC   CD BF C6 BF
CA CD D3 C3   BD BF BE CC
BB BE CC C5   00 00 00 00
```
////

///
