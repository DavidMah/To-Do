#!/bin/bash
old_file=$(basename $(ls -r dates | head -1))

location="$(dirname ${BASH_SOURCE[0]})"

today=$(date --date="${old_file%.*} + day" +%F)
today_file="$location/$tomorrow"

tomorrow=$(date --date="${old_fil
tomorrow_file="$location/$date.txt"

echo "$today"

. create_day.sh "$today_file"
. create_day.sh "$tomorrow_file"
