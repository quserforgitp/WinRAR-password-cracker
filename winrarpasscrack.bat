@ECHO OFF
TITLE WINRAR PASSWORD CRACKER
REM CLEANING SCREEN
CLS

REM CONSTANTS declaring variable for space control, AND for embellish text
SET spc=                
SET embellishInit=-----_
SET embellishFinal=_-----

REM BEGIN comprobing if winrar is installed
IF EXIST "%ProgramFiles%\WinRAR\WinRARs.exe" (GOTO pInitializeBFA) ELSE (GOTO prociPromptingToMakeInstallation)

:prociPromptingToMakeInstallation
CLS
COLOR E
ECHO %embellishInit%WINRAR ISN'T INSTALLED ON YOUR PC, AND IT IS NEEDED TO MAKE BFA ATTACK DO YOU WANT TO INSTALL IT ?%embellishFinal%
CHOICE /C YN /N /T 10 /D N /M "(N/y)-->"



REM este pause es para controlar el flujo del programa mientras se termina de codificar por completo 
pause