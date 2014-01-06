set CYGWIN=nodosfilewarning
set file=%1
set output_path=%dates_dir%\%file%
set template_file=%user_dir%\template.txt

IF NOT EXIST "%dates_dir%" mkdir "%dates_dir%"
copy "%location%\template.txt" "%template_file%" > NUL

if NOT EXIST "%dates_dir%/%file%" (
  echo %file% >> "%output_path%"
  echo ---------- >> "%output_path%"
  type "%template_file%" >> "%output_path%"
  %lib_dir%\sed.exe -i "s/\r//" "%output_path%"
  %lib_dir%\sed.exe -i "s/ $//" "%output_path%"
)
