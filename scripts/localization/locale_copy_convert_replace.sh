#!/bin/bash

ddl_home='/home/pie/promethean/ddl'
ddl_seed_prod="$ddl_home"/src/main/resources/db/activfoundation/changelog/seed/prod
ddl_localization_folder="$ddl_home"/resources`/localization conversion_folder_in='/home/pie/tmp/locale_conversion'

# clean out any exisitng files in the convert directory
rm -rv "$conversion_folder_in"/*

## copy
cp -rv "$ddl_localization_folder"/database* "$conversion_folder_in"

## convert
java -jar "$ddl_home"/target/LocaleCLI.jar

## clean
find "$conversion_folder_out" -type f -exec sed -i '/^[[:space:]]*$/d' {} \;

## replace
cp -v "$conversion_folder_out"/*.csv "$ddl_seed_prod"
