# Overview

This tutorial will document my attempt to improve upon the current generation 3
ACE environments. The environment I've designed is meant to be easy to use,
flexible, & easily extensible, using complicated bootstraps to enable the
writing of powerful yet lightweight scripts. It does require quite a bit of
effort to get set up, but I believe that the long-term benefits are well worth
it.

Additionally, I've written a number of scripts that can be used within this
environment. Scripts for common ACE tasks like RNG seeding, static encounter
respawning, item/money generation, & more are already available.

## The problem

The motivating force behind the development of this environment was frustration
with box codes. As I see it, there are several problems with ACE setups that
rely on box names to hold their payloads:

1.  More than anything else, box codes are just incredibly tedious to type out.
    The generation 3 character input interface is clunky & painfully slow to
    use, especially for unstructured text that jumps back and forth between the
    3 panels
2.  Box codes are also difficult to type out _correctly_. Typos come far too
    easily when dealing with character sequences that lack the patterns inherent
    to human language, and even when you know you have a typo somewhere,
    identifying where it is can be an obnoxious process
3.  Box codes are generally _single-use_. Obviously you can run a box code as
    many times as you'd like after entering it, but you'll typically run it
    once, replace it at some point with another code, & then have to re-enter it
    the next time you need it after that.
4.  Box codes are _non-parameterizable_. Or rather, the parameters that a box
    code takes in are fully incorporated into it and modify the _form_ of the
    box code. In other words, all box codes are necessarily 0-arity functions,
    with any parameters fixed as if by partial function application. As an
    example, take the "Get any item" box code from [e‑sh4rk's FR/LG code
    generator](https://e-sh4rk.github.io/CodeGenerator/index_frlg.html). It
    takes two parameters, and item ID & an amount, and changing either will
    change the box code itself, often quite dramatically with changes spread
    across many box names.

## The solution

So, how can we address these issues? The first 3 are actually fairly simple:
instead of writing our payloads to the box names, we'll instead use the hex
writer to write them to the PC. If we're crafty, we can even write them such
that they're read as valid Pokémon rather than bad eggs. For instance, let's
take a look at the following Pokémon's box data:

/// html | div.pseudo-admonition
```text
C5 20 01 21   0E 4A 18 E0
BD C2 BB C8   CD BF D3 FF
FF FF 02 02   C5 EA DD E7
E8 FF FF 00   4A 78 00 00
BA 6A 19 C1   AD 6F 19 C1
CB 95 19 C1   CB 6A 99 E0
D4 96 E6 7E   CB 6A 19 C1
96 46 00 F8   00 46 07 E0
29 69 0D 08   8E 6A 23 C1
97 6A 9E C1   DF 60 13 CB
```
///

The game will happily interpret this data as a perfectly ordinary Chansey
without issue. When executed as _code_, however, this Chansey will result in a
Lucky Egg being placed in the player's bag. This is because the data will
interpreted as code like so:

/// html | div.pseudo-admonition
``` { .arm_v4 .annotate linenums="1" }
C5 20           MOV     r0, #ITEM_LUCKY_EGG
01 21           MOV     r1, #1
0E 4A           LDR     r2, AddBagItem
18 E0           B       callFunction
BD C2 BB C8
CD BF D3 FF
FF FF 02 02
C5 EA DD E7
E8 FF FF 00
4A 78 00 00
BA 6A 19 C1
AD 6F 19 C1
CB 95 19 C1
CB 6A 99 E0
D4 96 E6 7E
CB 6A 19 C1

                callFunction:
96 46           CPY     lr, r2
00 F8           BL      lr
00 46           NOP
07 E0           B       nextBoxSlot

                AddBagItem:
29 69 0D 08     .word   #0x080D6929
8E 6A 23 C1
97 6A 9E C1
DF 60 13 CB
```
///

If we place this Chansey after our ACE entrypoint, every time ACE is triggered
she will be executed and give use another Lucky Egg.

The last problem, parameterization, is a little more difficult to tackle. The
approach I decided upon was to go back to the box names: if we're not using them
to store a payload, could we instead use them to hold parameters to our scripts,
preferably in a human-readable format?

The answer is yes, of course, though the code necessary to do so far from
compact.

The answer, it turns out, is yes. The code required to do so is far from
compact, though, and some form of modularization was necessary to prevent script
sizes from exploding. But by moving the logic for these complicated tasks to
reusable functions made available, somehow, to our scripting environment, we can
provide our scripts with powerful I/O functionality without sacrificing much in
the way of space.
