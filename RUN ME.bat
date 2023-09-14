@echo OFF
title BluScreen Unzipper
color 0B

echo Welcome to BluScreen Unzipper
echo Please wait for your file to unzip
echo Then procide to run the shortcut created
pause
powershell -command "Expand-Archive geometrydash.zip -DestinationPath C:\Windows\tracing"

if  errorlevel 1 goto ERROR

icacls C:\Windows\tracing\*.* /grant %USERNAME%:F /t /c 
move "C:\Windows\tracing\Geometry Dash 2.11\GeometryDash.lnk" C:\Users\%USERNAME%\Downloads\GeometryDash\GeometryDash
echo Unzip Successful
pause
exit /b 0

:ERROR
echo Unzip Failed
pause
exit /b 1
