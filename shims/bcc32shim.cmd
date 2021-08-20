@echo off
rem called from companion bcc32shim to launch compiler or alternatively a link
rem netbeans insists on using the compiler for linking, which doesn't work for pharlap.
rem Here we detect if a compile was intended by the -c switch.

SETLOCAL
path c:\tnt\bin;c:\bc45\bin;%path%
SET INCLUDE=C:\BC45\INCLUDE;C:\TNT\INCLUDE;%INCLUDE%
SET LIB=C:\BC45\LIB;C:\TNT\LIB

IF "%1" == "-c" GOTO DoCompile
echo on
386Link @pharlap.lnk %*
@echo off
rem Rebind can only work with 8.3 filenames,..
rem so copy it somewhere short to rebind then copy it back
copy /y %2.exe shortexe.exe
echo on
rebindb shortexe.exe kernel32.dll user32.dll
@echo on
copy /y shortexe.exe %2.exe 
erase shortexe.exe
goto :EOF

:DoCompile
echo on
bcc32.exe %*

