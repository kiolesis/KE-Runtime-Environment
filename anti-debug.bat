:: ANTI-DEBUG
if defined debug exit
@echo off >>nul
setlocal enabledelayedexpansion >>nul
if defined %~1 exit