@echo off

@if "%1"=="" (
  echo Please set directory name
  exit /b
)

set PGPASSWORD=postgres

%dp0\src\%1\query.sql