@echo off
title LTSC 2021 Edge Configurator
color f0
fltmc 1>nul 2>nul || (
  cd /d "%~dp0"
  cmd /u /c echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %_Args%", "", "runas", 1 > "%temp%\GetAdmin.vbs"
  "%temp%\GetAdmin.vbs"
  del /f /q "%temp%\GetAdmin.vbs" 1>nul 2>nul
  exit
)
cls
echo Creating configuration files...
copy "%~dp0bin\Preferences" "C:\Users\%username%\AppData\Local\Microsoft\Edge\User Data\Default\Preferences"
cls
echo Edge now been configured.
echo.
echo Visit https://sysconf16.github.io/ for more resources.
pause
exit