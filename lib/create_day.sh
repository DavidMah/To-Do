#!/bin/bash
# Takes one argument -- the filename of the new entry
file="$1"
output_path="$dates_dir/$file"
routine_file="$user_dir/routine.txt"
template_file="$user_dir/template.txt"

# echo "Attempting create of $output_path"

# Ensure the directory exists
mkdir -p "$dates_dir"
touch "$routine_file"
touch "$template_file"
if [ ! -e "$dates_dir/$file" ]; then
  echo "$file" >> "$output_path"
  echo "----------" >> "$output_path"
  cat "$routine_file" "$template_file" >> "$output_path"
  # echo "created $output_path"
fi
