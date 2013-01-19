#!/bin/bash
location="$(dirname ${BASH_SOURCE[0]})"
todo_directory="/home/$(whoami)/.todo"

. "$location/repoint_current.sh"

alias todo="vi $location/$current"
alias todo-today="vi $location/$current"
alias todo-tomorrow="vi $location/$current"
