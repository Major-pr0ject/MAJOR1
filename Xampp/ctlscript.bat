@echo off
rem START or STOP Services
rem ----------------------------------
rem Check if argument is STOP or START

if not ""%1"" == ""START"" goto stop

if exist D:\Major Program\Xampp\hypersonic\scripts\ctl.bat (start /MIN /B D:\Major Program\Xampp\server\hsql-sample-database\scripts\ctl.bat START)
if exist D:\Major Program\Xampp\ingres\scripts\ctl.bat (start /MIN /B D:\Major Program\Xampp\ingres\scripts\ctl.bat START)
if exist D:\Major Program\Xampp\mysql\scripts\ctl.bat (start /MIN /B D:\Major Program\Xampp\mysql\scripts\ctl.bat START)
if exist D:\Major Program\Xampp\postgresql\scripts\ctl.bat (start /MIN /B D:\Major Program\Xampp\postgresql\scripts\ctl.bat START)
if exist D:\Major Program\Xampp\apache\scripts\ctl.bat (start /MIN /B D:\Major Program\Xampp\apache\scripts\ctl.bat START)
if exist D:\Major Program\Xampp\openoffice\scripts\ctl.bat (start /MIN /B D:\Major Program\Xampp\openoffice\scripts\ctl.bat START)
if exist D:\Major Program\Xampp\apache-tomcat\scripts\ctl.bat (start /MIN /B D:\Major Program\Xampp\apache-tomcat\scripts\ctl.bat START)
if exist D:\Major Program\Xampp\resin\scripts\ctl.bat (start /MIN /B D:\Major Program\Xampp\resin\scripts\ctl.bat START)
if exist D:\Major Program\Xampp\jetty\scripts\ctl.bat (start /MIN /B D:\Major Program\Xampp\jetty\scripts\ctl.bat START)
if exist D:\Major Program\Xampp\subversion\scripts\ctl.bat (start /MIN /B D:\Major Program\Xampp\subversion\scripts\ctl.bat START)
rem RUBY_APPLICATION_START
if exist D:\Major Program\Xampp\lucene\scripts\ctl.bat (start /MIN /B D:\Major Program\Xampp\lucene\scripts\ctl.bat START)
if exist D:\Major Program\Xampp\third_application\scripts\ctl.bat (start /MIN /B D:\Major Program\Xampp\third_application\scripts\ctl.bat START)
goto end

:stop
echo "Stopping services ..."
if exist D:\Major Program\Xampp\third_application\scripts\ctl.bat (start /MIN /B D:\Major Program\Xampp\third_application\scripts\ctl.bat STOP)
if exist D:\Major Program\Xampp\lucene\scripts\ctl.bat (start /MIN /B D:\Major Program\Xampp\lucene\scripts\ctl.bat STOP)
rem RUBY_APPLICATION_STOP
if exist D:\Major Program\Xampp\subversion\scripts\ctl.bat (start /MIN /B D:\Major Program\Xampp\subversion\scripts\ctl.bat STOP)
if exist D:\Major Program\Xampp\jetty\scripts\ctl.bat (start /MIN /B D:\Major Program\Xampp\jetty\scripts\ctl.bat STOP)
if exist D:\Major Program\Xampp\hypersonic\scripts\ctl.bat (start /MIN /B D:\Major Program\Xampp\server\hsql-sample-database\scripts\ctl.bat STOP)
if exist D:\Major Program\Xampp\resin\scripts\ctl.bat (start /MIN /B D:\Major Program\Xampp\resin\scripts\ctl.bat STOP)
if exist D:\Major Program\Xampp\apache-tomcat\scripts\ctl.bat (start /MIN /B /WAIT D:\Major Program\Xampp\apache-tomcat\scripts\ctl.bat STOP)
if exist D:\Major Program\Xampp\openoffice\scripts\ctl.bat (start /MIN /B D:\Major Program\Xampp\openoffice\scripts\ctl.bat STOP)
if exist D:\Major Program\Xampp\apache\scripts\ctl.bat (start /MIN /B D:\Major Program\Xampp\apache\scripts\ctl.bat STOP)
if exist D:\Major Program\Xampp\ingres\scripts\ctl.bat (start /MIN /B D:\Major Program\Xampp\ingres\scripts\ctl.bat STOP)
if exist D:\Major Program\Xampp\mysql\scripts\ctl.bat (start /MIN /B D:\Major Program\Xampp\mysql\scripts\ctl.bat STOP)
if exist D:\Major Program\Xampp\postgresql\scripts\ctl.bat (start /MIN /B D:\Major Program\Xampp\postgresql\scripts\ctl.bat STOP)

:end

