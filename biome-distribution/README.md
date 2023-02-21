# Biome Distribution

This directory contains configuration files related to **biome distribution**. 
For individual biome configuration, checkout the `biomes` directory instead.

This directory is organized into 3 subdirectories:

## Presets
A collection of preset biome provider configurations. A biome provider is simply
something that tells Terra how to distribute biomes. The provider in use is
determined under the `biomes` parameter in the pack manifest (`pack.yml`). (Only
one can be selected at a time.)

## Stages
Contains various mutation stages that are applied to pipeline biome providers.
These do things such as add different climate zones, add rivers, add volcanoes,
etc. Similarly to sources, the ordering of stages is determined by the provider
preset.

## Extrusions
Contains extrusion stages that relate to 3D biome distribution. This is primarily
for handling the placement of cave biomes.
