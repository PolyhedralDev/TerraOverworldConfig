#!/bin/bash

biome_config_paths="$(find biomes/*/ -name "*.yml" -not -path "biomes/abstract/*")"
errors=''
fail=false
color_key='color: \$biomes/colors.yml:'
for path in $biome_config_paths
do
    config_id_line="$(grep 'id: ' $path)"
    config_id="${config_id_line#id: }"
    color_line="$(grep 'color: ' $path)"
    color_id="${color_line#$color_key}"
    if [[ $color_line != *$color_key* ]]; then
        fail=true
        errors+="\n\n$path\nDoes not contain a valid color key"
    elif [[ $color_id != $config_id ]]; then
        fail=true
        errors+="\n\n$path\nColor reference '$color_id' does not match biome id '$config_id'"
    fi
done
if [[ $fail == true ]]; then
    echo -e $errors >&2
    exit 1
fi
