#!/bin/bash

SEED_PREFIX="/home/pie/promethean/ddl/src/main/resources/db/activfoundation/changelog/seed/prod"

src="${SEED_PREFIX}/$1_locale.csv"  # eg, subjct
dst="${SEED_PREFIX}/$2_locale.csv"  # eg, subject=subjectorcouse

wc_src="$(cat ${src} | wc -l)"
wc_dst="$(cat ${dst} | wc -l)"

linediff=`echo "$(cat ${dst} | wc -l) - $(cat ${src} | wc -l)" | bc`
grepdiff="$(grep -c ',pt,' ${dst})"

echo "${linediff} vs ${grepdiff}"
