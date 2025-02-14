@echo off
title robocopy_adresar_dokumenty_na_D-BD.bat
verify on

REM robocopy "" "" *.* /MIR


copy "C:\Users\DELL\Documents\dvd" "D:\RoboCopy\dvd"
copy "C:\Users\DELL\Documents\dvd" "D:\dvd"
robocopy "C:\Users\DELL\Documents\zaloha\dvd_katalog" "D:\dvd_katalog" *.* /MIR
robocopy "C:\Users\DELL\Documents\zaloha\login" "D:\login" *.* /MIR

robocopy "C:\Users\DELL\Documents\ps1\_GUI\Sifrovaci_program_GUI" "D:\Sifrovaci_program_GUI" *.* /MIR
robocopy "C:\Users\DELL\Documents\ps1\_GUI\Sifrovaci_program_GUI\Sifrovaci_program_GUI_PowerShell_verze_1.4" "D:\Sifrovaci_program_GUI_PowerShell_verze_1.4" *.* /MIR


robocopy "C:\Users\DELL\Documents" "D:\RoboCopy\Documents" *.* /MIR

date /t > D:\last_sync_time-date_info.txt & time/t >> D:\last_sync_time-date_info.txt

pause
@echo on
