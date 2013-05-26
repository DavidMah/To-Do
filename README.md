# Todo App

Simple CLI date-centric todo list in `bash`. Viewing your todo list is `cat` to
stdout and editing your todolist is `vi`.

Written by David Mah from the University of Washington (MahHaha@gmail.com)

Tested in Ubuntu Desktop 12.10

## Setup

* Clone this todo directory and hide it somewhere.
* Add the `bin` directory of the app to your PATH.

## Usage

Every command is under the `todo` binary. You can type `todo edit
_date_` to edit your todo list for some date, or `todo _date_` to view
your todo list for that date. With no arguments, `todo` dumps the todo
list for the current day.

The storage directory will be created and initialized upon your first
run of the program. By default, it will be `$HOME/.todo`.

Some examples of things to type:

* `todo`
* `todo today`
* `todo edit today`
* `todo tomorrow`
* `todo edit tomorrow`
* `todo edit sunday`
* `todo 2019-05-25`

This is backed by the `date` program, so any date that can be input into
`date` will work.

## Storage

Files are in `$HOME/.todo` by default.

There is a base file that you can modify, `template.txt`.

 The todo list files themselves are on `$HOME/.todo/dates`, and are just
text files that correspond to the actual dates.

## Configuration

All executing code is in `lib` under the application. Feel free to
modify `utility.sh` to change the directory of storage.
