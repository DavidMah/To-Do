#!/bin/bash
file="$1"
location="$(dirname ${BASH_SOURCE[0]})"

mkdir -p "$location/dates"
cp --no-clobber "$location/template.txt" "$location/dates/$file"
