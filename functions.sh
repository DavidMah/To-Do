#!/bin/bash
# This should get sourced to add shortcuts
todo_dir="/home/$(whoami)/.todo"

alias todo="echo -e '\033[33m' && cat '$todo_dir/today' && echo -e '\033[0m'"
alias todo-edit="vi '$todo_dir/today'"
alias todo-tomorrow="vi '$todo_dir/tomorrow'"
