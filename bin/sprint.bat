:: The primary interface for the user
:: sprint edit $2 => edit $2
:: sprint _anything_else_ => print that

@ECHO off
set location=%~dp0..
call "%location%/lib/utility.bat"

IF "%1"=="edit" (
  set user_input=%2
) ELSE (
  set user_input=%1
)

::::::::::::::::::::
:: Construct date ::
::::::::::::::::::::

:: Get current weekday
%lib_dir%\date.exe +%%A >> date.tmp
set /p current_weekday=<date.tmp
del date.tmp

if "%user_input%"=="next" (
  if "%current_weekday%"=="Monday" (
      %lib_dir%\date.exe --date="monday next week" +%%F >> start_date.tmp
  ) ELSE (
      %lib_dir%\date.exe --date="monday this week" +%%F >> start_date.tmp
  )
  %lib_dir%\date.exe --date="2 weeks" +%%F >> end_date.tmp
) ELSE IF "%user_input%"=="last" (
  if "%current_weekday%"=="Monday" (
      %lib_dir%\date.exe --date="monday last week" +%%F >> start_date.tmp
  ) ELSE (
      %lib_dir%\date.exe --date="monday 2 weeks ago" +%%F >> start_date.tmp
  )
  %lib_dir%\date.exe --date="last week" +%%F >> end_date.tmp
) ELSE (
  if "%current_weekday%"=="Monday" (
      %lib_dir%\date.exe --date="monday this week" +%%F >> start_date.tmp
  ) ELSE (
      %lib_dir%\date.exe --date="monday last week" +%%F >> start_date.tmp
  )
  %lib_dir%\date.exe --date="week" +%%F >> end_date.tmp
)
set /p start_date=<start_date.tmp
set /p end_date=<end_date.tmp
del start_date.tmp
del end_date.tmp

set target_file=%start_date%.txt
set target_full_path=%sprints_dir%\%target_file%
call "%location%\lib\create_sprint.bat" %target_file% %start_date% %end_date%

:: Edit it or print it
IF "%1"=="edit" (
  vim "%target_full_path%"
) ELSE (
  type "%target_full_path%"
)
