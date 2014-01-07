set location=%~dp0..
set lib_dir=%location%\lib
set user_dir=%UserProfile%\Dropbox\todo-list\storage
set dates_dir=%user_dir%\dates
set sprints_dir=%user_dir%\sprints
%lib_dir%\date.exe --date="today" +%%F >> today.tmp
set /p current_day=<today.tmp
del today.tmp
