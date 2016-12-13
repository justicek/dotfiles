#!/bin/bash

INPUT_DIR=/home/pie/tmp/locale_conversion

## replaces all \r characters with \n for the weird files in database_references 
## that will gave me that have just carrage returns for newlines
find $INPUT_DIR/database_references -type f -exec sed -i 's/\r/\n/g' {} \;