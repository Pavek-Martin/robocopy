@echo off
title robocopy_adresar_obrazky_videa_hudba_dokumenty_na_F.bat
verify on

REM robocopy "" "" *.* /MIR

copy "C:\Users\DELL\Documents\dvd" "F:\RoboCopy\dvd"
copy "C:\Users\DELL\Documents\dvd" "F:\dvd"
robocopy "C:\Users\DELL\Documents\zaloha\dvd_katalog" "F:\dvd_katalog" *.* /MIR
robocopy "C:\Users\DELL\Documents\zaloha\login" "F:\login" *.* /MIR

robocopy "C:\Users\DELL\Documents\ps1\_GUI\Sifrovaci_program_GUI" "F:\Sifrovaci_program_GUI" *.* /MIR
robocopy "C:\Users\DELL\Documents\ps1\_GUI\Sifrovaci_program_GUI\Sifrovaci_program_GUI_PowerShell_verze_1.4" "F:\Sifrovaci_program_GUI_PowerShell_verze_1.4" *.* /MIR


robocopy "C:\Users\DELL\Documents" "F:\RoboCopy\Documents" *.* /MIR

robocopy "C:\Users\DELL\Pictures" "F:\RoboCopy\Pictures" *.* /MIR
robocopy "C:\Users\DELL\Videos" "F:\RoboCopy\Videos" *.* /MIR
robocopy "C:\Users\DELL\Music" "F:\RoboCopy\Music" *.* /MIR


REM pridano 10.2.2025
robocopy "C:\Users\DELL\AppData\Roaming\Tomb Raider Gold Collection" "F:\RoboCopy\Tomb Raider Gold Collection" *.* /MIR

date /t > F:\RoboCopy\last_sync_time-date_info.txt & time/t >> F:\Robocopy\last_sync_time-date_info.txt

REM chkdsk F: /F
pause
@echo on
