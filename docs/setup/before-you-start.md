# Before you start

I should mention now that this is _not_ a tutorial on how to get ACE up and
running from scratch. This is meant as a tutorial on a setting up a particular
ACE environemnt, and it assumes that you already have the ability to trigger
ACE. Specifically, you'll need:

1.  A method of triggering ACE (a stable ACE species is prefered)
2.  A method of writing box name data to the PC, à la e-sh4rk's hex writer

For those of you lacking these capabilities, I can make some recommendations.
If you're on Emerald, I highly recommend following [e‑sh4rk's ACE tutorial](
https://e-sh4rk.github.io/ACE3/) up through the crafting table bad egg, as this
setup was originally built off of his. For FireRed/LeafGreen, I'd recommend
following the tutorials found on [pokemon‑ace‑notes](
https://pomeg-letterbombers.github.io/pokemon-ace-notes/).

## Restrictions

Currently, this environment only works on English language Emerald & FR/LG.
Porting it to other languages shouldn't be too hard, if you're so inclined,
especially if you have access to high-quality symbol files. With 6 languages &
5 game versions (when including revisions), though, doing so myself just isn't
feasible. Not to mention that I like to test my code on actual hardware when
possible, and I do not have easy access to non-English games.

Speaking of which: this setup is meant for retail hardware! You _can_ use it on
an emulator, but I'd recommend using a modern emulator with a proper GBA BIOS.
I've done quite a bit of testing on mGBA 0.10 without issue.

## Glitch Pokémon in this tutorial

I've done my best to make sure all of my glitch Pokémon are as easy to work with
as posible. Firstly, they are all valid Pokémon rather than bad eggs. This makes
organizing them & keeping track of which is which significantly easier, though
it does mean that we sometimes have to sacrifice payload compactness.

Additionally, you can manipulate these Pokémon fairly freely. You can pick them
up & move them about without worry, using both the white & yellow hands. There
are a handful of things you should avoid, though:

1.  Do not view their summaries. While they may _look_ normal, most of their
    underlying data is nonsense that can't be parsed by the game engine (as this
    "data" is actually code). Rendering any of it to the screen, as in the
    summary, will almost certainly crash the game
2.  Do not move them into your party
3.  Do not modify their held items
4.  Do not change their markings. Some of these Pokémon _can_ have their
    behavior modified by changing their markings, but when this is the case I
    will explicitly call it out. Otherwise, markings should be left alone

## How to read Pokémon admonitions

Before diving in, you should familiarize yourself with the way I present glitch
Pokémon data in this tutorial. All of them are described via _admonitions_,
which are a type of content block like the one[^1] seen below. They are
collapsible, so click it to open it up.

--8<-- "misc/unown.md"

The title of the admonition will contain the species of the Pokémon, and
potentially[^2] the Pokémon's nickname. The adminition itself will contain a
number of tabs, each covering a different aspect of the glitch Pokémon's data.
Not every Pokémon has every tab; some will only show up in particular
circumstances. You'll also notice that some of these tabs have sub-tabs for
different game versions & revisions. This is because a Pokémon's data will
sometimes vary between games due to ROM locations shifting around. Make sure to
select the tab matching the game you're using!

In most cases, the ARM assembly tab will _not_ be broken down by game. I only do
this when the actual logic of the code differs between games. For simple
variants like ROM addresses, I just default to using the Emerald values.

For more information on what you'll find in particular tabs, you can read
through this next admonition, which goes over each in detail:

--8<-- "misc/explanation.md"

[^1]:
    If you're interested, this admonition contains a small test script. All it
    does is parse the first 3 box names as integers (the first 2 as decimal, the
    last as hexadecimal), calculating the value of `((BOX1 * BOX2) + BOX3) % 24`
    and printing it in decimal in the name of box 1. The variance between
    Emerald & the various revisions of FR/LG is due to the ROM address of the
    function `__umodsi3`, which is used to perform the modulus operation

[^2]:
    Nicknames are called out in admonition titles only when they're
    human-readable. Bootstrap & library function Pokémon stuff additional
    instructions into their nicknames, which means their nicknames are printed
    as gibberish. In cases like these, I like to set the origin language to
    Japanese. This is because Japanese nicknames only print the first 5
    characters, which lowers the chances of a control character being printed to
    the screen and causing visual glitches
