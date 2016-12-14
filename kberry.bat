@echo off
java -jar kBerry-1.2.jar 2>nul
if %ERRORLEVEL%==1 (
echo Uh-oh! You don't have Java, or it's not installed correctly.
echo Make sure you have a JDK while you're at it!
)