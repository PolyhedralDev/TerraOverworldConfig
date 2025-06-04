# Terra Overworld Config

The default overworld configuration for Terra 6.0+, containing over _140_ different biomes.

You can find Terra - the main project this config pack is designed for
[here](https://github.com/PolyhedralDev/Terra).

---

## Navigating through the config

This pack is organized into many top level directories, each containing configs
specific to a different domain of configuration:

- `biomes`
  Where all biome configs are defined.

- `biome-providers`
  Contains configuration files related *where* biomes generate.

- `structures`
  Where all files loaded as structures are stored. (This includes things like
  trees, boulders, flower patches, etc.)

- `features`
  Where all feature configs go - These determine *how structures are
  generated in the world.*

- `palettes`
  Contains all palette configs - These are used by biomes to determine what
  blocks make up the base terrain.

- `math`
  Common mathematical functions used in the pack as well as generic noise 
  samplers are defined here.

For more in-depth explanations of each directory's files and subdirectories, you
can refer to their respective README files.

## Customization

### How do I make biomes larger / smaller?

You can find some easy to modify parameters in the [`meta.yml`](./meta.yml) file
under `biome-distribution`, which control the scales of different areas of biome
distribution.

### How do I remove all oceans / all land / all hot biomes / etc?

This pack comes with several biome distribution presets, which can be chosen
within the [`pack.yml`](./pack.yml) file. If none of these presets do exactly
what you want, you can further modify biome distribution presets with alternate
sources and stages. Check out the
[`biome-providers/presets/default.yml`](./biome-providers/presets/default.yml)
config for these alternative sources and stages.

### Where can I learn more about configuration?

If you want more in-depth customization, or simply just want to know what makes
this pack tick, you can check out the
[config development](https://terra.polydev.org/config/development/index.html)
section of the Terra wiki to learn more.
