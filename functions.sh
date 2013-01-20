#!/bin/bash
# This should get sourced to add shortcuts
todo_dir="/home/$(whoami)/.todo"

alias todo="echo -e '\033[33m' && cat '$todo_dir/today' && echo -e '\033[0m'"
alias todo-routines="echo -e '\033[33m' && cat '$todo_dir/routine' && echo -e '\033[0m'"
alias todo-routines-edit="vi '$todo_dir/routine'"
alias todo-edit="vi '$todo_dir/today'"
alias todo-tomorrow="vi '$todo_dir/tomorrow'"
alias todo-yesterday="echo -e '\033[33m' && cat '$todo_dir/yesterday' && echo -e '\033[0m'"
