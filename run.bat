@echo off
SETLOCAL ENABLEEXTENSIONS
SET variable__parent=%~dp0
CALL %variable__parent%_functions-Apps.bat :InitiateGlobalVariablesForInstallation
CALL %variable__parent%_functions-Apps.bat :Menu__InstallationsToDo
