#!/bin/bash
# Takes three arguments:
# $1 - the filename of the new entry
# $2 - the starting date of the range
# $3 - the ending date of the range
file="$1"
start_day="$2"
end_day="$3"
output_path="$sprints_dir/$file"
template_file="$user_dir/template.txt"

# Ensure the directory exists
mkdir -p "$sprints_dir"
cp "$location/template.txt" "$template_file"
if [ ! -e "$sprints_dir/$file" ]; then
  echo "$start_day to $end_day" >> "$output_path"
  echo "----------" >> "$output_path"
  cat "$template_file" >> "$output_path"
fi
