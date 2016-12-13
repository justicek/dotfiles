#!/bin/bash

for f in *.csv; do 
    if [[ $f =~ .*_([[:alpha:]]{2,5})\.csv ]]; then 
        echo "lang of ${f}: ${BASH_REMATCH[1]}" 
    else 
        echo "no match - $f"
    fi 
done
