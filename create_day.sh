#!/bin/bash
# Takes one argument -- the filename of the new entry
file="$1"
location="$(dirname ${BASH_SOURCE[0]})"

mkdir -p "$location/dates"
cp --no-clobber "$location/template.txt" "$location/dates/$file"
cat "$location/routine.txt" >> "$location/dates/$file"
