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
set /p cmd=^>^> 
title inkyy %version% - %cmd%
echo %cmd%>>cmdcache
call %cmd%
goto A