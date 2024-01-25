@ECHO OFF
SETLOCAL
set lovedir=D:\Documents\love-11.3-win64

Rem set current dir
set gamedir=%~dp0
Rem set gamedir="cd /d %~dp0"

"%lovedir%\love.exe" --console %gamedir%
ENDLOCAL



