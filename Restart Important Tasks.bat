@echo off
title Windows Optimizer
echo This application will restart important tasks to help fix freezing.
echo It's recommended to close all apps and save unsaved stuff.
echo It's also recommended to start this file as adminstator
pause

rem Killing Tasks
taskkill /F /IM WidgetService.exe /T
taskkill /F /IM SearchProtocolHost.exe /T
taskkill /F /IM dwm.exe /T
taskkill /F /IM StartMenuExperienceHost.exe /T
rem Re-running
cd "C:\Windows\"
explorer.exe
cd "C:\Program Files\WindowsApps\MicrosoftWindows.Client.WebExperience_423.11600.0.0_x64__cw5n1h2txyewy\Dashboard"
WidgetService.exe
cd C:\Windows\System32
SearchProtocolHost.exe
dwm.exe
cd "C:\Windows\SystemApps\Microsoft.Windows.StartMenuExperienceHost_cw5n1h2txyewy"
StartMenuExperienceHost.exe
rem Main Part
taskkill /F /IM explorer.exe /T
cd "C:\Windows\"
explorer.exe