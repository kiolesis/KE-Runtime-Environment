��&cls
if "%debug%"=="NIE" exit/b
if not "%debugfile%"=="TAK" exit/b
echo Kiolesis Engine: Debugowanie
echo.
echo Data: %date%
echo Godzina: %time%
echo Wciśnij dowolny przycisk, aby rozpocząć debugowanie.
pause>>nul
call %~1
echo.
echo ERRORLEVEL: %ERRORLEVEL%
echo.
echo Wciśnij dowolny przycisk, aby opuścić Debugger
pause>>nul
pause>>nul
exit/b