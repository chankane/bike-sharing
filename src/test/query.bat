@echo off

call %~dp0..\env\env.bat

psql -U postgres -f %~dp0\setup.sql
psql -U postgres -f %~dp0\query.sql
psql -U postgres -f %~dp0\reset.sql
