# Biome Providers

This directory contains configuration files related to **biome distribution**. 
For individual biome configuration, checkout the `biomes` directory instead.

This directory is organized into 3 subdirectories:

## Presets
A collection of preset biome provider configurations. A biome provider is simply
something that tells Terra how to distribute biomes. We have a couple presets
available for those who want alternative biome distributions but may not know
how to configure them. The provider in use is determined under the `biomes`
parameter in the pack manifest (`pack.yml`). (Only one can be selected at a time.)

## Sources
Contains various configs that define different base biome distributions used for
'pipeline' biome providers. These are typically used to determine how land,
coasts, and oceans generate. For pipeline providers, The source in use is
determined by the preset.

## Stages
Contains various mutation stages that are applied to pipeline biome providers.
These do things such as add different climate zones, add rivers, add volcanoes,
etc. Similarly to sources, the ordering of stages is determined by the provider
preset.