#!/bin/bash

## directory of finished seed files
DIR='/home/pie/tmp/locale_conversion/converted_files'

## removes blank lines in all files anywhere under $DIR
find $DIR -type f -exec sed -i '/^[[:space:]]*$/d' {} \;