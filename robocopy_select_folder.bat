@echo off
title copy selected folder
verify on

REM set adresar=C:\Users\DELL\Documents\ps1\_testovani_hesla_v1.4
set adresar="C:\Users\DELL\Documents\Lua52_Win32"

set kam=R:\Lua52_Win32

echo "synchronizuji %adresar% --> %kam%"
sleep 5

REM robocopy "C:\Users\DELL\Documents" "E:\RoboCopy\Documents" *.* /MIR
robocopy  %adresar% %kam% *.* /MIR

REM date /t > %kam%\_last_sync_time-date_info.txt & time/t >> %kam%\_last_sync_time-date_info.txt

echo "cas posledni synchronizace %adresar% --> %kam%" > %kam%\_last_sync_time-date_info.txt
date /t >> %kam%\_last_sync_time-date_info.txt & time/t >> %kam%\_last_sync_time-date_info.txt

REM pause
sleep 3
@echo on
