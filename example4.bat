@echo off
chcp 65001
cls
echo.
echo Wpisz całkowitą jedną liczbę:
set/p liczba1=
echo.
echo Wpisz całkowitą drugą liczbę:
set/p liczba2=
set/a wynik=%liczba1%+%liczba2%
cls
echo.
echo Wynik: %wynik%
pause>>nul
exit