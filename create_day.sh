#!/bin/bash
# Takes one argument -- the filename of the new entry
file="$1"
location="$(dirname ${BASH_SOURCE[0]})"
output_path="$location/dates/$file"

echo "Attempting create of $output_path"


mkdir -p "$location/dates"
if [ ! -e "$location/dates/$file" ]; then
  cat "$location/routine.txt" "$location/template.txt" >> "$output_path"
  echo "created $output_path"
fi


