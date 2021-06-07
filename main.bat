@ECHO OFF
REM TITLE
TITLE WINRAR PASSWORD CRACKER

REM CLEANING SCREEN
CLS

REM CONSTANTS declaring CONSTANTS for space control, AND for embellish text
SET spc=                
SET embellishInit=-----_
SET embellishFinal=_-----

REM BEGIN comprobing if winrar is installed
IF EXIST "%ProgramFiles%\WinRAR\WinRARs.exe" (GOTO procInitializeBFA) ELSE (GOTO prociPromptingToMakeInstallation)

:prociPromptingToMakeInstallation
CLS
COLOR E
ECHO %embellishInit%WINRAR ISN'T INSTALLED ON YOUR PC, AND IT IS NEEDED TO MAKE BFA ATTACK DO YOU WANT TO INSTALL IT ?%embellishFinal%
CHOICE /C YN /N /T 10 /D N /M "(N/y)-->"
REM CONDITIONALS redirecting to proccess
IF %ERRORLEVEL% EQU 1 (GOTO callprocMakeInstall) ELSE (GOTO EOF)

:callprocMakeInstall
CLS
COLOR 3
ECHO.
ECHO.
REM CHOICE LANGUAGE ENGLISH = ERRORLEVEL 1 ; SPANISH = ERRORLEVEL 2
CHOICE /C ES /N /T 10 /D E /M " WHICH LANGUAGE DO YOU PREFER ON WINRAR (E/s)? S = spanish ;  E =  english -->"

REM CONDITIONAL checking the language to pass arguments to InstallWinrar.bat
IF %ERRORLEVEL% EQU 1 (CALL InstallWinrar.bat E)
IF %ERRORLEVEL% EQU 2 (CALL InstallWinrar.bat S)

:procInitializeBFA


:EOF
REM SETTING the default config such as color and clearing the screen
COLOR
ECHO EOF
COLOR 
REM este pause es para controlar el flujo del programa mientras se termina de codificar por completo 
EXIT 0
CLS