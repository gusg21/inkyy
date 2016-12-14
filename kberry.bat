@echo off

REM A handy little argument system.
REM by gusg21

REM Reset ERRORLEVEL
ver > nul
REM Call argument 1 case
2>NUL CALL :c_%1
REM If nonexistent call default
IF ERRORLEVEL 1 CALL :c_def

if %ERRORLEVEL%==1 (
echo Uh-oh! Either you don't have Java, or it's not installed correctly.
echo Make sure you have a JDK while you're at it!
)
goto :eof

:c_--nogui
java -jar kBerry-1.2.jar 2>nul
:c_--gui
java -jar kBerry-1.2_GUI.jar 2>nul
goto :eof
:c_--help
echo Syntax:
echo.
echo kberry --nogui: Run without GUI
echo kberry --gui: Run with GUI
echo kberry --help: This
echo kberry: Same as --nogui
goto :eof
:c_def
java -jar kBerry-1.2.jar 2>nul
goto :eof