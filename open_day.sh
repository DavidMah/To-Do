#!/bin/bash
date=$(date +%F)
file="$date.txt"
current="current"
echo $date

. create_day.sh "$file"
rm "$current"
ln -s "dates/$file" "$current"

cat "$current"
