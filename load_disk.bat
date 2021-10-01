@echo off
chcp 65001
goto LOAD_DISK
:LOAD_DISK
rem Biblioteka służąca do wykonania zaawansowanych operacji na dysku użytkownika.
set operationaldisk=%systemdrive%