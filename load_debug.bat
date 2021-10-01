@echo off
chcp 65001
goto LOAD_DEBUG
:LOAD_DEBUG
cls
echo.
echo Kiolesis Engine 2.0
echo Debugger for code.
echo.
echo Narzędzie to umożliwi Tobie naprawę Twojego kodu za pomocą wyświetlenia wielu rzeczy:
echo -Linijki deklarowane
echo -Kod błędu
echo -Kod wyjątku
echo -Wartość pętli Debug
echo.
echo Kliknij dowolny przycisk, aby rozpocząć.
pause>nul
cls
set debug=YES
start %programfordebug%
timeout 1 >>nul
echo ------------------------------------------------------------------------------------------------
echo # Kiolesis Engine 2.0
echo # Debugger for code.
echo # ( %date% %time% %comspec%
echo # Linijki deklarowane: %program% %debug%
echo # Kod błędu: %ERRORLEVEL%
echo # Kod wyjątku: %module% (załadowane moduły)
echo # Wartość pętli Debug: %debug%
echo #. )
echo # Sukces debugowania
echo -------------------------------------------------------------------------------------------------
echo Kliknij dowolny przycisk trzy razy, aby wyjść z programu.
pause>nul
pause>nul
pause>nul
exit