@echo off
mode 45,1

:reset_everything
set hour=0
set min=0
set sec=0
set mil=0
goto a

:a
title Stopwatch [%hour%:%min%:%sec%.%mil%]
cls
set /a mil=%mil%+1
if %mil% gtr 30 goto reset_sec
timeoutms 1
goto a

:reset_sec
set /a mil=0
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