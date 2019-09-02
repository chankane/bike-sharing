@ECHO OFF
set PGPASSWORD=postgres
echo %PASSWORD%
echo %~dp0

psql -U postgres -f %~dp0/setup.sql
psql -U postgres -f %~dp0/query.sql
psql -U postgres -f %~dp0/reset.sql
