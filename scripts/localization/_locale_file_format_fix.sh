#!/bin/bash

# locale format fix
#   - script to covert the 10k column localization files to 2 columns

if [ $# -lt 2 ]; then
	echo "Usage: $0 [table] [directory]"
fi

case "$1" in
	gradelevel)
		for f in "$2"/*.csv; do
			awk -v FS='","|^"|"$' '{print "\""$2"\",\""$3"\""}' "$f" | sed -e '/\"\",/d' > "$f".tmp
			mv -v "$f".tmp "$f"
		done
		;;
	references)
		for f in "$2"/*.csv; do
			awk -v FS='","|^"|"$' '{print "\""$2"\",\""$4"\""}' "$f" | sed -e 's/"",""/"id","name"/g' > "$f".tmp
			mv -v "$f".tmp "$f"
		done
		;;
	subject)
		for f in "$2"/*.csv; do
			if [ `grep ',"last_updated_by",' "$f" | wc -l` -gt 0 ]; then
				awk -v FS='","|^"|"$|NULL' '{print "\""$2"\",\""$4"\""}' "$f" | sed -e 's/,\",/,/g' -e 's/lea_subject_code/title/g' > "$f".tmp
				mv -v "$f".tmp "$f"
			fi
		done
		;;
	taxonomy)
		for f in "$2"/*.csv; do
			awk -v FS='","|,|^"|"$' '{print "\""$2"\",\""$3"\""}' "$f" > "$f".tmp
			mv -v "$f".tmp "$f"
		done
		;;
	taxonomy_category)
		for f in "$2"/*.csv; do
			sed -e 's/,[0-9],/,/g' "$f" | awk -v FS='","|,|^"|"$' '{print "\""$2"\",\""$3"\""}' | sed -e '/\"\",/d' -e 's/sort_seq/name/g' > "$f".tmp
			mv -v "$f".tmp "$f"
		done
		;;
	taxonomy_sub_category)
		for f in "$2"/*.csv; do
			awk -v FS='","|,|^"|"$' '{print "\""$2"\",\""$3"\""}' "$f" > "$f".tmp
			mv -v "$f".tmp "$f"
		done
		;;
esac

exit 0;
