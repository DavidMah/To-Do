:: Takes three arguments:
:: $1 - the filename of the new entry
:: $2 - the starting date of the range
:: $3 - the ending date of the range
set file=%1
set start_day=%2
set end_day=%3
set output_path=%sprints_dir%/%file%
set template_file=%user_dir%/template.txt

:: Ensure the directory exists
IF NOT EXIST "%sprints_dir%" mkdir "%dates_dir%"
copy "%location%\template.txt" "%template_file%" > NUL

IF NOT EXIST "%sprints_dir%/%file%" (
  echo %start_day% to %end_day% >> "%output_path%"
  echo ---------- >> "%output_path%"
  type "%template_file%" >> "%output_path%"
  %lib_dir%\sed.exe -i "s/\r//" "%output_path%"
  %lib_dir%\sed.exe -i "s/ $//" "%output_path%"
)
