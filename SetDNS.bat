@echo off
title SetDNS Utility
color 2
cls
echo Avilable Options:
echo [1] - Shecan
echo [2] - Electro
echo [3] - Google
echo [4] - Cloudflare
echo.
set /p optionx= Enter choose an option: 
if optionx == 1 (echo HI.) ELSE echo no.
pause