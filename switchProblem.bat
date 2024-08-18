@echo off

if "%~1"=="" (
    echo Must have exactly 1 argument
    exit /b 1
)

setlocal EnableDelayedExpansion
for /l %%i in (1,1,%1) do (
    if not exist "cp%%i" (
        xcopy /e /i "cp%%i-1" "cp%%i"
    )
)

ren cp cptemp
ren "cp%1" cp
ren cptemp "cp%1"

