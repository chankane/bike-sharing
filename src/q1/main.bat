@ECHO OFF
set PGPASSWORD=postgres

psql -U postgres -f %~dp0/query.sql
