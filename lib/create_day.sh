#!/bin/bash
# Takes one argument -- the filename of the new entry
file="$1"
output_path="$dates_dir/$file"
template_file="$user_dir/template.txt"

# Ensure the directory exists
mkdir -p "$dates_dir"
cp "$location/template.txt" "$template_file"
if [ ! -e "$dates_dir/$file" ]; then
  echo "$file" >> "$output_path"
  echo "----------" >> "$output_path"
  cat "$template_file" >> "$output_path"
fi
