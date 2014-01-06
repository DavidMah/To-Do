#!/bin/bash
# Creates some handy variables
location="$(dirname $BASH_SOURCE)/.."
user_dir="$HOME/Dropbox/todo-list/storage"
dates_dir="$user_dir/dates"
current_day="$(date --date="today" +%F)"
