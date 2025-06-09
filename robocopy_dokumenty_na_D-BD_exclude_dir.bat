@echo off
title robocopy_adresar_dokumenty_na_D-BD.bat
verify on

REM robocopy "" "" *.* /MIR


copy /V "C:\Users\DELL\Documents\dvd" "D:\RoboCopy\dvd"
copy /V "C:\Users\DELL\Documents\dvd" "D:\dvd"
robocopy "C:\Users\DELL\Documents\zaloha\dvd_katalog" "D:\dvd_katalog" *.* /MIR
robocopy "C:\Users\DELL\Documents\zaloha\login" "D:\login" *.* /MIR

REM robocopy "C:\Users\DELL\Documents" "D:\RoboCopy\Documents" *.* /MIR

robocopy "C:\Users\DELL\Documents" "D:\RoboCopy\Documents" *.* /MIR /XD "C:\Users\DELL\Documents\Visual Studio 2022"
REM /XD exclude directory "C:\Users\DELL\Documents\Visual Studio 2022" FYNGUJE, VYZKOUSENO
REM v adresari "Documents" vynecha slozku "Visual Studio 2022"

date /t > D:\last_sync_time-date_info.txt & time/t >> D:\last_sync_time-date_info.txt

pause
@echo on
