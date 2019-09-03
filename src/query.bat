@echo off

set SELF=%~nx0

@if "%1"=="" (
  echo usage: %SELF% ^<file name^>
  exit /b
)

rem define constants
call %~dp0\env\env.bat

rem execute query
psql -U %PGUSER% -f %1