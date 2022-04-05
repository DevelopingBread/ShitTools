@echo off

title ShitTools Menu

if not exist "C:\Program Files\Lua\lua.exe" if not exist "C:\Program Files (x86)\Lua\lua.exe" (
    echo "Lua not found, taking you to lua.org"
    start http://www.lua.org/download.html
    pause
    exit
)

chcp 65001
lua "%~dp0\Main.lua"