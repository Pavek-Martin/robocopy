@echo off
title robocopy_adresar_dokumenty_na_E.bat
verify on

REM robocopy "" "" *.* /MIR

copy /V "C:\Users\DELL\Documents\dvd" "E:\RoboCopy\dvd"
copy /V "C:\Users\DELL\Documents\dvd" "E:\dvd"
robocopy "C:\Users\DELL\Documents\zaloha\dvd_katalog" "E:\dvd_katalog" *.* /MIR
robocopy "C:\Users\DELL\Documents\zaloha\login" "E:\login" *.* /MIR


REM robocopy "C:\Users\DELL\Documents" "E:\RoboCopy\Documents" *.* /MIR

robocopy "C:\Users\DELL\Documents" "E:\RoboCopy\Documents" *.* /MIR /XD "C:\Users\DELL\Documents\Visual Studio 2022"
REM /XD exclude directory "C:\Users\DELL\Documents\Visual Studio 2022" FYNGUJE, VYZKOUSENO
REM v adresari "Documents" vynecha slozku "Visual Studio 2022"

date /t > E:\RoboCopy\last_sync_time-date_info.txt & time/t >> E:\Robocopy\last_sync_time-date_info.txt

REM chkdsk E: /F
pause
@echo on
