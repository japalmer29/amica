@echo off
setlocal enabledelayedexpansion

for /f "tokens=1 delims==" %%I in ('set') do (
    echo %%I | find /i "KMP" >nul
    if not errorlevel 1 (
        set "%%I="
    )
)

%~dp0amica15mkl.exe %*
