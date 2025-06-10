#!/bin/bash

# Grabs the unreleased section from the changelog, and cleans it up for publication

source ./.scripts/lib.sh
source ./.scripts/vars.sh
ensure_file "$CHANGELOG"

# Copy unreleased changelog to temporary file
echo '- Extracting unreleased changelog'
sed "0,/$UNRELEASED_SECTION_START_REGEX/ d; /$UNRELEASED_SECTION_END_REGEX/,$ d" $CHANGELOG > $RELEASE_CHANGELOG

# Remove unused subheadings from new changelog
echo '- Stripping empty titles from changelog'
echo "$(awk '/^$/ {if (i) {b=b $0 "\n"} else {print $0 }; next} \
    /^###/ {i=1; b=$0; next} {if (i) {print b}; i=0; print $0; next}' $RELEASE_CHANGELOG)" > $RELEASE_CHANGELOG 

if ! grep -q '[^[:space:]]' "$RELEASE_CHANGELOG"; then
    echo '- WARNING: Unreleased changelog is empty!'
fi
