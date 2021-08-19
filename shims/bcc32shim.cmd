@echo off
rem called from companion bcc32shim to launch compiler or alternatively a link
rem netbeans insists on using the compiler for linking, which doesn't work for pharlap.
rem Here we detect if a compile was intended by the -c switch.

SETLOCAL
path c:\tnt\bin;c:\bc45\bin;%path%
SET INCLUDE=C:\TNT\INCLUDE;C:\BC45\INCLUDE;%INCLUDE%
SET LIB=C:\TNT\LIB;C:\BC45\LIB;%LIB%
IF "%1" == "-c" GOTO DoCompile
echo on
386Link @pharlap.lnk %*
rebind %2 kernel32.dll user32.dll
goto :EOF

:DoCompile
echo on
bcc32.exe %*

