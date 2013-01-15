#!/bin/bash
location="$(dirname ${BASH_SOURCE[0]})"

today=$(date +%F)
today_file="$today.txt"
current="today"

tommorow=$(date --date="tomorrow" +%F)
tomorrow_file="$tomorrow.txt"
tomorrow_link="tomorrow"

echo $today

. "$location/create_day.sh" "$today_file"
rm "$location/$current"
ln -s "$location/dates/$today_file" "$location/$current"

. "$location/create_day.sh" "$tomorrow_file"
rm "$location/$tomorrow_link"
ln -s "$location/dates/$tomorrow_file" "$location/$tomorrow_link"

cat "$location/$current"
alias todo="vi $location/$current"
alias todo-today="vi $location/$current"
alias todo-tomorrow="vi $location/$current"
