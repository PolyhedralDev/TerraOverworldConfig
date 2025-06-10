#!/bin/bash

source ./.scripts/vars.sh

# Search HEAD diff for a change in the pack version
version_diff=$(git diff HEAD^ HEAD "$PACK_MANIFEST" | grep '^+version: ')
previous_version_diff=$(git diff HEAD^ HEAD "$PACK_MANIFEST" | grep '^-version: ')

# Strip version key to get version strings
version=${version_diff#+version: }
previous_version=${previous_version_diff#-version: }

# Export information to the workflow job environment
if [ -z "$version" ]; then
    echo "No version change detected"
    echo "version-bumped=false" >> "$GITHUB_ENV"
else
    echo "Detected version change v$previous_version -> v$version"
    echo "version-bumped=true" >> "$GITHUB_ENV"
    echo "previous_version=$previous_version" >> "$GITHUB_ENV"
    echo "version=$version" >> "$GITHUB_ENV"
fi
