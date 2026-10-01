@echo off
title ULTIMATE RAM CLEAN & OPTIMIZER (8GB MODE)
color 0a

echo ==========================================
echo        CLEANING TEMP FILES
echo ==========================================

del /q /f /s %TEMP%\* >nul 2>&1
del /q /f /s C:\Windows\Temp\* >nul 2>&1

echo.
echo ==========================================
echo        FLUSHING SYSTEM CACHE
echo ==========================================

ipconfig /flushdns

echo.
echo ==========================================
echo        STOPPING MEMORY SERVICES
echo ==========================================

net stop SysMain >nul 2>&1
net stop WSearch >nul 2>&1

echo.
echo ==========================================
echo        RESTARTING EXPLORER (FREES RAM)
echo ==========================================

taskkill /f /im explorer.exe >nul 2>&1
start explorer.exe

echo.
echo ==========================================
echo        CLEARING RUNNING MEMORY CACHE
echo ==========================================

echo (Optional advanced RAM clearing requires RAMMap)
echo Download: https://learn.microsoft.com/en-us/sysinternals/downloads/rammap

echo.
echo ==========================================
echo        BASIC PROCESS CLEANUP
echo ==========================================

taskkill /F /IM OneDrive.exe >nul 2>&1
taskkill /F /IM YourPhone.exe >nul 2>&1
taskkill /F /IM Teams.exe >nul 2>&1
taskkill /F /IM Discord.exe >nul 2>&1
taskkill /F /IM chrome.exe >nul 2>&1

echo.
echo ==========================================
echo        SYSTEM FILE CHECK (LIGHT)
echo ==========================================

sfc /scannow

echo.
echo ==========================================
echo        DONE! SYSTEM OPTIMIZED
echo ==========================================
echo.
echo TIP: Restart PC once per day for best performance
echo TIP: Use RAMMap "Empty Standby List" for max effect
echo.
pause