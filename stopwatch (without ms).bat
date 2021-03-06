@echo off
mode 40,1

:reset_everything
set hour=0
set min=0
set sec=0
goto a

:a
title Stopwatch [%hour%:%min%:%sec%]
cls
timeoutms 1000
set /a sec=%sec%+1
if %sec% gtr 59 goto reset_min
goto a

:reset_min
set /a sec=0
set /a min=%min%+1
if %min% gtr 59 goto reset_hour
goto a

:reset_hour
set /a min=0
set /a hour=%hour%+1
if %hour% gtr 23 goto reset_everything
goto a