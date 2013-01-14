#!/bin/bash
old_file=$(basename $(ls -r dates | head -1))
date=$(date --date="${old_file%.*} + day" +%F)
file="$date.txt"
echo "$date"

. create_day.sh "$file"
