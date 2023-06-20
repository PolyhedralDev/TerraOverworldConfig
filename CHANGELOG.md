# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).

## Versioning

This project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

### Before You Update

Modifications made to Terra config packs may introduce changes in world generation.
Updating an installed config pack is regarded as a modification, and may produce
chunk borders between existing chunks and new chunks generated after updating a pack.

In this pack, version numbers are increased according to the degree of generation
changes from the previous version as follows:

#### MAJOR Version (X.-.-)

*Changes that significantly modify generation such that chunk borders in all areas
are guaranteed between versions.*

Examples of this include a complete rewrite of the pack, and or significant
modifications to biome distribution.

#### MINOR Version (-.X.-)

*Changes that modify generation such that localized areas produce chunk borders.*

For example, any modification in biome distribution warrants an increase in the
MINOR version. This includes things like biome additions, as a new biome may
generate in an area where it previously did not (resulting in a chunk border).

#### PATCH Version (-.-.X)

*Changes that produce no significant chunk borders.*

---

## [Unreleased]
### Added


### Changed


### Removed


### Fixed


## [v1.3.1]
### Added
- Re-added biome blending, which was previously removed by accident, resulting in blocky biome transitions (notably around beaches).

## [v1.3.0]
### Added
- Added Shrub Beaches.
- Added Xerophytic Forests.
- Added Iceberg Oceans.
- Added wheat crops to Prairies.
- Added iceberg feature.

### Changed
- Sakura Mountains now contain features from Dark Oak Forests.
- Evergreen Overhangs now generate as an Evergreen variant.
- Dry Rocky Bumpy Mountains now uses it's own grass and foliage color.

### Fixed
- Evergreen biomes generating adjacent to Savanna biomes.
- Prairies and Oak Savannas using incorrect biome colors.

## [v1.2.0]
### Added
- Added Mangrove Swamps.
- Added Dripstone Caves.
- Added Lush Caves.
- Added rare Great Azalea trees.
- Added Deep Dark.
- Added rare giant copper and iron ore veins.
- Added Dark Forests.
- Added texturing to slanted stone areas.

### Changed
- Adjusted the generation of river border biomes (Marshes, Swamps).
- Placed packed mud in many existing arid palettes.
- Placed mud in bamboo jungles, swamps, and river palettes.
- Changed cave generation to include rare giant caverns.

### Fixed
- Snow not generating on trees in polar biomes.
- Trees not generating in Snowy Meadow biome.
- Changed caldera center vanilla biome. (https://github.com/PolyhedralDev/TerraOverworldConfig/issues/97)
- Fixed ore features being overwritten, resulting in some biomes not generating any ores.
- Fixed some palettes missing samplers, resulting in some blocks not generating correctly.

## [1.1.1]
<!-- Needs changelog -->

## [1.1.0]
### Added
- Added Arid Highlands biomes (by @ Eris#0075).
- Added Eucalyptus trees and forests biome.
- Added Sakura biomes.
- Added Palm Forest biome.
- Added new boulder type.
- Added small/big dripleaf features to many jungle-like biomes.

### Changed
- Replaced Warm Hills biomes and variants with Chaparrals.
- Improved Highlands biomes (by @ Eris#0075).
- Improved Autumnal forest density and biome colors.
- Updated Evergreen tree types.
- Evergreen Forests now inherit from Rainforests.
- Amethyst crystals now generate in geodes.

## [1.0.1]
### Fixed
- Fixed Geodes generating in weird places (oceans, mid air, etc).

## [1.0.0]
### Added
- Everything

[Unreleased]: https://github.com/PolyhedralDev/TerraOverworldConfig/compare/v1.3.1...HEAD
[v1.3.1]: https://github.com/PolyhedralDev/TerraOverworldConfig/compare/v1.3.0...v1.3.1
[v1.3.0]: https://github.com/PolyhedralDev/TerraOverworldConfig/compare/v1.2.0...v1.3.0
[v1.2.0]: https://github.com/PolyhedralDev/TerraOverworldConfig/compare/v1.1.1...v1.2.0
[1.1.1]: https://github.com/PolyhedralDev/TerraOverworldConfig/compare/v1.1.0...v1.1.1
[1.1.0]: https://github.com/PolyhedralDev/TerraOverworldConfig/compare/v1.0.1...v1.1.0
[1.0.1]: https://github.com/PolyhedralDev/TerraOverworldConfig/compare/v1.0.0...v1.0.1
[1.0.0]: https://github.com/PolyhedralDev/TerraOverworldConfig/releases/tag/v1.0.0
