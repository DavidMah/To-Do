#!/bin/bash
old_file=$(basename $(ls -r dates | head -1))

location="$(dirname ${BASH_SOURCE[0]})"
todo_directory="/home/$(whoami)/.todo"

lead_day=$(date --date="${old_file%.*}" +%F)
new_day=$(date --date="${lead_day} + day" +%F)

new_day_file="$location/$new_day.txt"

cp --no-clobber "$location/template.txt" "$location/dates/$new_day_file"
