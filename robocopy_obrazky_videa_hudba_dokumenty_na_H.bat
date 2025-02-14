@echo off
title robocopy_adresar_obrazky_videa_hudba_dokumenty_na_H.bat
verify on

REM robocopy "" "" *.* /MIR

copy "C:\Users\DELL\Documents\dvd" "H:\RoboCopy\dvd"
copy "C:\Users\DELL\Documents\dvd" "H:\dvd"
robocopy "C:\Users\DELL\Documents\zaloha\dvd_katalog" "H:\dvd_katalog" *.* /MIR
robocopy "C:\Users\DELL\Documents\zaloha\login" "H:\login" *.* /MIR

robocopy "C:\Users\DELL\Documents\ps1\_GUI\Sifrovaci_program_GUI" "H:\Sifrovaci_program_GUI" *.* /MIR
robocopy "C:\Users\DELL\Documents\ps1\_GUI\Sifrovaci_program_GUI\Sifrovaci_program_GUI_PowerShell_verze_1.4" "H:\Sifrovaci_program_GUI_PowerShell_verze_1.4" *.* /MIR


robocopy "C:\Users\DELL\Documents" "H:\RoboCopy\Documents" *.* /MIR

robocopy "C:\Users\DELL\Pictures" "H:\RoboCopy\Pictures" *.* /MIR
robocopy "C:\Users\DELL\Videos" "H:\RoboCopy\Videos" *.* /MIR
robocopy "C:\Users\DELL\Music" "H:\RoboCopy\Music" *.* /MIR


REM pridano 10.2.2025
robocopy "C:\Users\DELL\AppData\Roaming\Tomb Raider Gold Collection" "H:\RoboCopy\Tomb Raider Gold Collection" *.* /MIR

date /t > H:\RoboCopy\last_sync_time-date_info.txt & time/t >> H:\Robocopy\last_sync_time-date_info.txt

REM chkdsk H: /F
pause
@echo on
