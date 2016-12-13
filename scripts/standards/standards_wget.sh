#!/bin/bash
####################################################################
### downloads a list of rdf/xml files for use in standards loads ###
####################################################################

LOAD_DIR="/home/pie/promethean/foundation/foundation-load"

# urls for standards in rdf/xml
BASE_URL="http://s3.amazonaws.com/asnstaticd2l/data/rdf/"
declare -a CO_URLs=("D2551566.xml" "D2553729.xml" "D10003F5.xml" "D10003F9.xml" "D10003F8.xml" "D10003F2.xml" "D10003F7.xml" "D10003F6.xml" "D2507287.xml")
declare -a MD_URLs=("D2599722.xml" "D2605338.xml" "D2605466.xml" "D2605590.xml" "D2607039.xml" "D2604890.xml" "D2605668.xml" "D2619005.xml" "D2442634.xml" "D2441223.xml" "D2447897.xml" "D2447901.xml" "D2448583.xml" "D2452746.xml" "D10003C1.xml" "D10002D0.xml" "D2509191.xml" "D1000265.xml" "D10003FC.xml" "D10003FB.xml")
declare -a TX_URLs=("D2616592.xml" "D2569173.xml" "D2616591.xml" "D2486388.xml" "D2483953.xml" "D2485243.xml" "D2485394.xml" "D2488325.xml" "D100036C.xml" "D10003DA.xml" "D2533928.xml" "D2487445.xml" "D2486543.xml" "D2533669.xml")
declare -a NGSCI_URLs=("D2454348.xml")
declare -a NJ_URLs=("D2594343.xml" "D2594344.xml" "D2594345.xml" "D2598911.xml" "D2601489.xml" "D2602363.xml" "D2603532.xml" "D2501119.xml" "D2501823.xml")

## substitute variable as needed
for i in "${MD_URLs[@]}"
do
	url=$BASE_URL$i
	echo "downloading $url"
    wget $url 
done