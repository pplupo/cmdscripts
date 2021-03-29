@echo off
rem For consistency between "choice" and "set prompt", add a blank space at the end of the question.
set question="Are you sure [Y/N]? "

if exist "%SystemRoot%\System32\choice.exe" goto UseChoice

setlocal EnableExtensions EnableDelayedExpansion
:UseSetPrompt
set "UserChoice="
set /P UserChoice=%question%
set "UserChoice=!UserChoice: =!"
if /I not "!UserChoice!" == "Y" endlocal & goto blockNo
endlocal
goto blockYes

:UseChoice
%SystemRoot%\System32\choice.exe /C YN /N /M %question%
if not errorlevel 2 if errorlevel 1 goto blockYes
goto :blockNo

:blockYes
echo Answer YES
goto skipBlockNo

:blockNo
echo Answer NO
:skipBlockNo