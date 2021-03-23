@echo off
set keepLastXDays=30
set mask=*.zip
rem next line commented for safety purposes, it will DELETE files
rem forfiles /p "c:\pathNotEndingInSlash" /m %mask% /d -%keepLastXDays% /c "cmd /c del @file"