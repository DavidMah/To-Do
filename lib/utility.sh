#!/bin/bash
# Creates some handy variables
location="$(dirname ${BASH_SOURCE[-1]})/.."
user_dir="$HOME/.todo"
dates_dir="$user_dir/dates"
current_day="$(date --date="today" +%F)"
