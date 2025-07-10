@echo off
title %~n0
pushd %~dp0
cd 7zA && git pull --verbose && cd ..\automation && git pull --verbose && cd ..\misc && git pull --verbose && timeout /t 11
