@echo off

if not ""%1"" == ""START"" goto stop

cmd.exe /C start /B /MIN "" "D:\Major Program\Xampp\apache\bin\httpd.exe"

if errorlevel 255 goto finish
if errorlevel 1 goto error
goto finish

:stop
cmd.exe /C start "" /MIN call "D:\Major Program\Xampp\killprocess.bat" "httpd.exe"

if not exist "D:\Major Program\Xampp\apache\logs\httpd.pid" GOTO finish
del "D:\Major Program\Xampp\apache\logs\httpd.pid"
goto finish

:error
echo Error starting Apache

:finish
exit
