#!/bin/bash

LOAD_DIR="/home/pie/promethean/foundation/foundation-load"

mkdir sorted

for f in *_sorted.csv; do
	tail -q -n +2 "$f" >> sorted/"$f"
	rm "$f"
done