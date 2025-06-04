#!/bin/bash

# Moves unreleased section to a new version release section, and updates anchors at the bottom of the changelog

source ./.scripts/lib.sh
source ./.scripts/vars.sh
ensure_env "version"
ensure_env "previous_version"
ensure_env "repo_url"
ensure_file "$CHANGELOG"
ensure_file "$RELEASE_CHANGELOG"

echo "Updating $CHANGELOG for v$version:"

echo '- Clearing unreleased section'
replace_in_file "$CHANGELOG" "$UNRELEASED_SECTION_START_REGEX" "$UNRELEASED_SECTION_END_REGEX" "\
### Added


### Changed


### Removed


### Fixed

"

echo "- Inserting new version section"
append_after "$CHANGELOG" "$VERSIONS_SECTION_START_REGEX" "

## [v$version]
$(cat $RELEASE_CHANGELOG)"

echo '- Adding new version anchor'
sed -i "/^\[Unreleased]/a [v$version]: $repo_url/compare/v$previous_version...v$version" $CHANGELOG

echo '- Updating unreleased anchor'
sed -i "s|^\[Unreleased\]: .*|[Unreleased]: $repo_url/compare/v$version...HEAD|" $CHANGELOG

echo "v$version changelog:"
echo '---'
cat $RELEASE_CHANGELOG 
echo '---'
