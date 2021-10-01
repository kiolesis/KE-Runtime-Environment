@echo off
chcp 65001
:Menu
cls
echo.
echo Witaj. Wybierz jedną z dostępnych (2) opcji.
echo.
echo 1) Opcja 1
echo 2) Opcja 2
echo.
set/p wyb:=
if %wyb:%==1 goto :Opcja1
if %wyb:%==2 goto :Opcja2
goto :Menu
:Opcja1
cls
echo.
echo Witamy w Opcji 1.
pause>>nul
goto :Menu
:Opcja2
cls
echo.
echo Witamy w Opcji 2.
pause>>nul
goto :Menu