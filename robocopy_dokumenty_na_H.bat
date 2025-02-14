@echo off
title robocopy_adresar_dokumenty_na_H.bat
verify on

REM robocopy "" "" *.* /MIR

copy "C:\Users\DELL\Documents\dvd" "H:\RoboCopy\dvd"
copy "C:\Users\DELL\Documents\dvd" "H:\dvd"
robocopy "C:\Users\DELL\Documents\zaloha\dvd_katalog" "H:\dvd_katalog" *.* /MIR
robocopy "C:\Users\DELL\Documents\zaloha\login" "H:\login" *.* /MIR

robocopy "C:\Users\DELL\Documents\ps1\_GUI\Sifrovaci_program_GUI" "H:\Sifrovaci_program_GUI" *.* /MIR
robocopy "C:\Users\DELL\Documents\ps1\_GUI\Sifrovaci_program_GUI\Sifrovaci_program_GUI_PowerShell_verze_1.4" "H:\Sifrovaci_program_GUI_PowerShell_verze_1.4" *.* /MIR


robocopy "C:\Users\DELL\Documents" "H:\RoboCopy\Documents" *.* /MIR
date /t > H:\RoboCopy\last_sync_time-date_info.txt & time/t >> H:\Robocopy\last_sync_time-date_info.txt

REM chkdsk H: /F
pause
@echo on
