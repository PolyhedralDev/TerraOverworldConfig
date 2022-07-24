#!/bin/bash

# Searches through biome configs contained in biomes/*/ and
# generates a markdown file documenting each biome config.

if [ -z $WIKI_DIRECTORY ]; then
    echo "Environment variable WIKI_DIRECTORY not set.. Aborting"
    exit 1
fi

WIKI_IMAGES_DIRECTORY="images" # Where to search for images, is relative to the WIKI_DIRECTORY
BIOMES_PAGE="$WIKI_DIRECTORY/generated/Biome-List.md"
mkdir "$WIKI_DIRECTORY/generated"
touch $BIOMES_PAGE

biome_config_paths="$(find biomes/*/ -name "*.yml" -not -path "biomes/abstract/*" | sed "s|^biomes/||")"

for path in $biome_config_paths
do
    # Split path into a list
    IFS="/" read -a items <<< $path

    raw_file_name="${items[-1]}"
    file_name="${raw_file_name%.yml}"

    # Humanize each list item
    for (( i=0; i < ${#items[@]}; i++ ))
    do
        items[$i]=$(sed 's/.yml//; s/^./\u&/; s/_\(.\)/ \u\1/g' <<< ${items[$i]})
    done

    biome_name=${items[-1]}
    unset items[-1]

    # ---
    # Generate section
    # ---
    echo "## $biome_name" >> $BIOMES_PAGE

    # Categories are determined by the parent directories of the biome config
    printf "Categories - " >> $BIOMES_PAGE
    for item in ${items[@]}
    do
        printf "\`$item\` " >> $BIOMES_PAGE
    done

    printf "\n" >> $BIOMES_PAGE

    # Add image to section if it exists
    docs_image="$WIKI_IMAGES_DIRECTORY/$file_name.png"
    image_path="$WIKI_DIRECTORY/$docs_image"
    if test -f $image_path; then
        printf "<img src="$docs_image">\n" >> $BIOMES_PAGE
    fi

    printf "\n" >> $BIOMES_PAGE
done