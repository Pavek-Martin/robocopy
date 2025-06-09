@echo off
title robocopy_adresar_dokumenty_na_H.bat
verify on

REM robocopy "" "" *.* /MIR

copy /V "C:\Users\DELL\Documents\dvd" "H:\RoboCopy\dvd"
copy /V "C:\Users\DELL\Documents\dvd" "H:\dvd"
robocopy "C:\Users\DELL\Documents\zaloha\dvd_katalog" "H:\dvd_katalog" *.* /MIR
robocopy "C:\Users\DELL\Documents\zaloha\login" "H:\login" *.* /MIR

REM robocopy "C:\Users\DELL\Documents" "H:\RoboCopy\Documents" *.* /MIR

robocopy "C:\Users\DELL\Documents" "H:\RoboCopy\Documents" *.* /MIR /XD "C:\Users\DELL\Documents\Visual Studio 2022"
REM /XD exclude directory "C:\Users\DELL\Documents\Visual Studio 2022" FYNGUJE, VYZKOUSENO
REM v adresari "Documents" vynecha slozku "Visual Studio 2022"

date /t > H:\RoboCopy\last_sync_time-date_info.txt & time/t >> H:\Robocopy\last_sync_time-date_info.txt

REM chkdsk H: /F
pause
@echo on
