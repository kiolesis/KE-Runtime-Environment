chcp 65001
goto LOAD_ENGINE
:DEBUG
echo.
echo Kiolesis Engine 2.0
echo.
echo Nie można załadować poprawnie biblioteki!
echo W takim przypadku, włączyć debugowanie kodu?
echo.
echo 1) TAK, przejdź w tryb debugowania kodu
echo 2) NIE, wyjdź z programu
set/p wyb:=
if %wyb:%==1 goto DEBUG_START
if %wyb:%==2 goto EXIT
goto DEBUG
:EXIT
set errorlevel=404
exit /b
:DEBUG_START
cls
echo.
echo Ładowanie debugera kodu. Kod zostanie uruchomiony jeszcze raz
:LOAD_ENGINE
@echo off
rem Biblioteka służąca do załadowania głównych modułów Kiolesis Engine 2.0
if "%debug%"=="YES" got DEBUG