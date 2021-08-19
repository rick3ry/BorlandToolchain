@echo off
rem called from companion 386asmshim to launch assembler

SETLOCAL
path c:\tnt\bin;c:\bc45\bin;%path%
SET INCLUDE=C:\TNT\INCLUDE;C:\BC45\INCLUDE;%INCLUDE%
echo on
386asm %*
