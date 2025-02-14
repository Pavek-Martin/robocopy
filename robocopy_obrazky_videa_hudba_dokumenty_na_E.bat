@echo off
title robocopy_adresar_obrazky_videa_hudba_dokumenty_na_E.bat
verify on

REM robocopy "" "" *.* /MIR


copy "C:\Users\DELL\Documents\dvd" "E:\RoboCopy\dvd"
copy "C:\Users\DELL\Documents\dvd" "E:\dvd"

robocopy "C:\Users\DELL\Documents\zaloha\dvd_katalog" "E:\dvd_katalog" *.* /MIR
robocopy "C:\Users\DELL\Documents\zaloha\login" "E:\login" *.* /MIR

robocopy "C:\Users\DELL\Documents\ps1\_GUI\Sifrovaci_program_GUI" "E:\Sifrovaci_program_GUI" *.* /MIR
robocopy "C:\Users\DELL\Documents\ps1\_GUI\Sifrovaci_program_GUI\Sifrovaci_program_GUI_PowerShell_verze_1.4" "E:\Sifrovaci_program_GUI_PowerShell_verze_1.4" *.* /MIR

robocopy "C:\Users\DELL\Documents" "E:\RoboCopy\Documents" *.* /MIR

robocopy "C:\Users\DELL\Pictures" "E:\RoboCopy\Pictures" *.* /MIR
robocopy "C:\Users\DELL\Videos" "E:\RoboCopy\Videos" *.* /MIR
robocopy "C:\Users\DELL\Music" "E:\RoboCopy\Music" *.* /MIR


REM pridano 10.2.2025
robocopy "C:\Users\DELL\AppData\Roaming\Tomb Raider Gold Collection" "E:\RoboCopy\Tomb Raider Gold Collection" *.* /MIR

date /t > E:\RoboCopy\last_sync_time-date_info.txt & time/t >> E:\Robocopy\last_sync_time-date_info.txt

REM chkdsk E: /F
pause
@echo on

