#!/bin/bash
location="$(dirname ${BASH_SOURCE[0]})"
todo_directory="/home/$(whoami)/.todo"

today=$(date +%F)
today_file="$today.txt"
current="today"

echo "$location"

tomorrow=$(date --date="tomorrow" +%F)
tomorrow_file="$tomorrow.txt"
tomorrow_link="tomorrow"

yesterday=$(date --date="yesterday" +%F)
yesterday_file="$yesterday.txt"
yesterday_link="yesterday"

rm "$todo_directory/routines"
ln -s "$location/routine.txt" "$todo_directory/routine"

. "$location/create_day.sh" "$today_file"
rm "$todo_directory/$current"
ln -s "$location/dates/$today_file" "$todo_directory/$current"

. "$location/create_day.sh" "$tomorrow_file"
rm "$todo_directory/$tomorrow_link"
ln -s "$location/dates/$tomorrow_file" "$todo_directory/$tomorrow_link"

rm "$todo_directory/$yesterday_link"
ln -s "$location/dates/$yesterday_file" "$todo_directory/$yesterday_link"
