@echo off
if [%1]==[] (
set /p input=Query:
) else (
set input=%1
)
set input=%input: =+%
start "" https://www.google.com/#q=%input%