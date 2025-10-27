@echo off
title %~n0

pushd %~dp0 && powershell.exe -file "%~dp0git_pull.ps1" -executionpolicy bypass && timeout /t 5