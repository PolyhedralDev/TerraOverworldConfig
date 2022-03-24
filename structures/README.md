# Structures

This directory contains config files intended to be loaded as structures.
A structure can be thought of as any kind of *action* done at and or around any
given block, such as placing a set of blocks like a tree, spawning entities,
etc.

Where these structures get placed in the world during generation is determined
via *features* which can be found in the `features` directory.

The simplest structures that just place blocks can be loaded from Sponge
schematics (`.schem` files, which is also what WorldEdit uses), however most of
the structures in this pack define these 'actions' procedurally via the
TerraScript language (`.tesf` files) instead. Using scripts for structures
allows for great variation and ease of modification without a lot of manual
work. Because of this, most structures from trees to boulders are implemented as
scripts rather than schematics. Understanding and tweaking these scripts may
require a bit of scripting knowledge, however if you just want to use them in a
feature as is then none of that is required.
