#!/bin/bash

# Moves unreleased section to a new version release section, and updates anchors at the bottom of the changelog

echo "Updating $changelog for v$version:"

echo '- Inserting release changelog'
sed -i "/$start_regex/,/$end_regex/{//!d}" $changelog
sed -i "/$start_regex/ {
        a ### Added
        a
        a
        a ### Changed
        a
        a
        a ### Removed
        a
        a
        a ### Fixed
        a
        a
        a ## [v$version]
        r $release_changelog
        a
    }" $changelog

echo '- Adding new version anchor'
sed -i "/^\[Unreleased]/a [v$version]: $repo_url/compare/v$previous_version...v$version" $changelog

echo '- Updating unreleased anchor'
sed -i "s|^\[Unreleased\]: .*|[Unreleased]: $repo_url/compare/v$version...HEAD|" $changelog

echo "v$version changelog:"
echo '---'
cat $release_changelog 
echo '---'
