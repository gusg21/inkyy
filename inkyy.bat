@echo off
set /p version= <inkyyconfig.txt
title inkyy %version% - boot
call cc.bat
::REGISTER DOSKEYS OF FUN
doskey ls=dir /b $*
doskey clear=cls $*
doskey alias=doskey $*
doskey label=title $*
doskey disp=echo $*
doskey mkf=copy /y NUL $* >NUL
cls
call big inkyy %version%
ncolor -s "==========================================================" -f 8
echo.
:A
ncolor -s "%CD%" -f 6 -n
ncolor -s "@inkyy %version%" -f 3
set /p cmd=^>^> 
title inkyy %version% - %cmd%
echo %cmd%>>cmdcache
if "%cmd:~0,3%"=="cd " (
echo I'm gonna have to stop you from doing that, inkyy isn't good with out-of-inkyy folders. Sorry...
echo You could try to fix it in the repository here ^-^-^> http:^/^/github.com^/gusg21^/inkyy
) else (
call %cmd%
)
goto A