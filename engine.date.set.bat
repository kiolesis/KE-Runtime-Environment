��&cls
if "%time.zone%"=="NIE" exit/b
if "%security%"=="TAK" goto SECURE
:EXT
date
exit/b
:SECURE
cls
echo.
echo Kiolesis Engine: Komunikat bezpieczeństwa
echo.
echo Czy na pewno chcesz zmienić datę?
echo.
set/p wyb:=wyb:
if %wyb:%==1 goto EXT
if %wyb:%==2 exit/b
goto SECURE