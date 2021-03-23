@echo off
setlocal enabledelayedexpansion
echo %COMMONPROGRAMFILES%
set replaceSpaces="!COMMONPROGRAMFILES: =%%20!"
echo %replaceSpaces%