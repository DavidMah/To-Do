:: The primary interface for the user
:: todo edit $2 => edit $2
:: todo _anything_else_ => print that

@ECHO off
set location=%~dp0..
call "%location%/lib/utility.bat"

IF "%1"=="edit" (
  set user_input=%2
) ELSE (
  set user_input=%1
)

:: Construct date
%lib_dir%\date.exe --date="%user_input%" +%%F >> date.tmp
set /p target_date=<date.tmp
del date.tmp
set target_file=%target_date%.txt
set target_full_path=%dates_dir%\%target_file%
call "%location%\lib\create_day.bat" %target_file%

:: Edit it or print it
IF "%1"=="edit" (
  gvim "%target_full_path%"
) ELSE (
  type "%target_full_path%"
)
