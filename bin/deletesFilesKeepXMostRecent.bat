@echo off
set keepLastXbackups=10
rem next line deletes files keeping the last 10 (as set in the variable above)
rem for /f "skip=%keepLastXbackups% eol=: delims=" %%F in ('dir /b /o-d c:\path\*.zzz') do @del "%%F"