# Terra Overworld Config

The default overworld configuration for Terra 6.0+. 

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

You can find some easy to modify parameters specific to this pack in the
`meta.yml` file, which also contains annotations for what each parameter does.
In addition to these parameters, this pack comes with several biome distribution
presets, which can be chosen within the `pack.yml` file.

---

You can find Terra - the main project this config pack is designed for
[here](https://github.com/PolyhedralDev/Terra).
