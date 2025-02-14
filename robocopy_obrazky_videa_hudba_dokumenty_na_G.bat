@echo off
title robocopy_adresar_obrazky_videa_hudba_dokumenty_na_G.bat
verify on

REM robocopy "" "" *.* /MIR

copy "C:\Users\DELL\Documents\dvd" "G:\RoboCopy\dvd"
copy "C:\Users\DELL\Documents\dvd" "G:\dvd"
robocopy "C:\Users\DELL\Documents\zaloha\dvd_katalog" "G:\dvd_katalog" *.* /MIR
robocopy "C:\Users\DELL\Documents\zaloha\login" "G:\login" *.* /MIR

robocopy "C:\Users\DELL\Documents\ps1\_GUI\Sifrovaci_program_GUI" "G:\Sifrovaci_program_GUI" *.* /MIR
robocopy "C:\Users\DELL\Documents\ps1\_GUI\Sifrovaci_program_GUI\Sifrovaci_program_GUI_PowerShell_verze_1.4" "G:\Sifrovaci_program_GUI_PowerShell_verze_1.4" *.* /MIR

robocopy "C:\Users\DELL\Documents" "G:\RoboCopy\Documents" *.* /MIR

robocopy "C:\Users\DELL\Pictures" "G:\RoboCopy\Pictures" *.* /MIR
robocopy "C:\Users\DELL\Videos" "G:\RoboCopy\Videos" *.* /MIR
robocopy "C:\Users\DELL\Music" "G:\RoboCopy\Music" *.* /MIR


REM pridano 10.2.2025
robocopy "C:\Users\DELL\AppData\Roaming\Tomb Raider Gold Collection" "G:\RoboCopy\Tomb Raider Gold Collection" *.* /MIR

date /t > G:\RoboCopy\last_sync_time-date_info.txt & time/t >> G:\Robocopy\last_sync_time-date_info.txt

REM chkdsk G: /F
pause
@echo on
