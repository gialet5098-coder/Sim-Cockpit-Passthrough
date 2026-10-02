@echo off
rem Sim Cockpit Passthrough: installs the app on the Quest. The work is done by tools\install.ps1;
rem this file stays ASCII so that it runs whatever its line endings and the PC's language.
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0tools\install.ps1"
if errorlevel 9009 (
    echo PowerShell was not found. See "Install manually" in the guide.
    pause
)
