#!/bin/bash
old_file=$(basename $(ls -r dates | head -1))

location="$(dirname ${BASH_SOURCE[0]})"
todo_directory="/home/$(whoami)/.todo"

lead_day=$(date --date="${old_file%.*}" +%F)
new_day=$(date --date="${lead_day} + day" +%F)

new_day_file="$new_day.txt"

. "$location/create_day.sh" "$new_day_file"
