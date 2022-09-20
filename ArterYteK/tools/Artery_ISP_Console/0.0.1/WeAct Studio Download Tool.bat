@echo off
cls
echo.
echo - WeAct Studio Official Link
echo - taobao: weactstudio.taobao.com
echo - aliexpress: weactstudio.aliexpress.com
echo - blog: www.weact-tc.cn"

echo Firmware: %1

rem: Note %~dp0 get path of this hex file
rem: Need to change drive if My Documents is on a drive other than C:
set driverLetter=%~dp0
set driverLetter=%driverLetter:~0,2%
%driverLetter%
cd %~dp0

.\AT32_ISP_Console.exe -dfu -d --fn %1 --v --o -r < nul

echo Upload Quit.
echo Have a good day!