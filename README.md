# Todo App

Written by David Mah from the University of Washington (MahHaha@gmail.com)

Tested in Ubuntu Desktop 12.10

## Setup

* Clone this todo directory and hide it somewhere.
* Add the `bin` directory of the app to your PATH.

## Usage

Every command is under the `todo` binary. You can type `todo edit
_date_` to edit your todo list for some date, or `todo _date_` to dump
your todo list for that date.

Some examples of things to type:

* `todo today`
* `todo edit today`
* `todo tomorrow`
* `todo edit tomorrow`
* `todo edit sunday`
* `todo 2019-05-25`

This is backed by the `date` program, so any date that can be input into
`date` will work.

## Storage

Files are in `$HOME/.todo`

There are two base files that you can modify, `routine.txt` and
`template.txt`.

 The todo list files themselves are on `$HOME/.todo/dates`, and are just
text files that correspond to the actual dates.
