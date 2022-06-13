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
- Added Mangrove Swamps.
- Added Dripstone Caves.
- Added Lush Caves.
- Added Deep Dark.

### Changed
- Made river border biomes (Marshes, Swamps, Mangrove Swamps) more common.
- Placed packed mud in many existing arid palettes.
- Placed mud in bamboo jungles, swamps, and river palettes.

### Removed


### Fixed
- Snow not generating on trees in polar biomes.
- Trees not generating in Snowy Meadow biome.

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

[Unreleased]: https://github.com/PolyhedralDev/TerraOverworldConfig/compare/v1.1.1...HEAD
[1.1.1]: https://github.com/PolyhedralDev/TerraOverworldConfig/compare/v1.1.0...v1.1.1
[1.1.0]: https://github.com/PolyhedralDev/TerraOverworldConfig/compare/v1.0.1...v1.1.0
[1.0.1]: https://github.com/PolyhedralDev/TerraOverworldConfig/compare/v1.0.0...v1.0.1
[1.0.0]: https://github.com/PolyhedralDev/TerraOverworldConfig/releases/tag/v1.0.0
