#!/bin/bash
# 
# baselang_properties: create base language property files by copying associated locale files

### CHANGE THIS to match your foundation root dir ###
FOUNDATION_DIR_ROOT="/home/pie/promethean/foundation"

FILE_PREFIX="${FOUNDATION_DIR_ROOT}/foundation-jpa/src/main/resources/foundation_"
FILE_SUFFIX=".properties"

file_name() {
    echo "${FILE_PREFIX}$1${FILE_SUFFIX}"
}

locales=("cs_CZ" "da_DK" "de_DE" "el_GR" "en_US" "es_es" "fi_FI" "fr_FR" "hu_HU" "it_IT" "lv_LV" "nb_NO" "nl_NL" "pl_PL" "pt_PT" "ru_RU" "sv_SE" "th_TH" "tr_TR" "vi_VN" "zh_CN")

for locale in "${locales[@]}"; do
    lang="${locale:0:2}"

    loc_file="$(file_name ${locale})"
    lang_file="$(file_name ${lang})"

    if [ ! -f "${lang_file}" ]; then
        cp -v "${loc_file}" "${lang_file}"
    fi
done
