#!/bin/bash

### CHANGE this to the directory containing the output of your sorter program ###
TOP_DIR="/home/pie/promethean/resources/mdthirdwave"

# fixes the blank beginning lines and altered names produced by the sorter program
find $TOP_DIR -iname "*_sorted.csv" -exec sed -i '1d' '{}' \; -exec mv -f '{}' LearningStandardItem.csv \; 