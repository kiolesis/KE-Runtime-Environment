��&cls
if "%security%"=="NIE" exit/b
certutil -hashfile %~1 SHA1