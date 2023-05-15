@echo off
title Windows Driver Restarter
echo You must run this script as administrator, or else it won't work properly.
echo This script will restart most of important devices (drivers). This might make your system run faster.
echo It might take a while to restart all of devices and drivers

pause
rem Restarting

rem Tries to restart "system" devices
pnputil /restart-device /class System
rem Tries to restart "network" devices
pnputil /restart-device /class Net
rem Tries to restart "bluetooth" devices
pnputil /restart-device /class Bluetooth
rem Tries to restart "Drives"
pnputil /restart-device /class Volume
pnputil /restart-device /class SCSIAdapter
pnputil /restart-device /class DiskDrive
rem Tries to restart "Media" devices
pnputil /restart-device /class MEDIA
rem Tries to restart "USB" devices
pnputil /restart-device /class HIDClass
pnputil /restart-device /class USB
rem Tries to restart "Audio" devices
pnputil /restart-device /class AudioEndpoint
 
rem Tries to restart "other" devices

rem softwares
pnputil /restart-device /class SoftwareDevice
rem other softwares
pnputil /restart-device /class WPD
rem mouse
pnputil /restart-device /class Mouse
rem keyboard
pnputil /restart-device /class Keyboard
rem idk
pnputil /restart-device /class Computer
rem ports
pnputil /restart-device /class Ports
rem monitor
pnputil /restart-device /class Monitor
rem other drivers
pnputil /restart-device /class SoftwareComponent
cls
echo Done!
echo You may close this windows now!
pause
exit