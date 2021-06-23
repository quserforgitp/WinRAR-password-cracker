@ECHO OFF

SETLOCAL ENABLEDELAYEDEXPANSION

SET RFILE=%1

FOR /F %%a IN (diccionario) DO (
SET PASS=%%a
UNRAR E -inul -p!PASS!  "palrar.rar" "%temp%" 
IF !ERRORLEVEL! EQU 0 (GOTO FOUND) ELSE (ECHO !PASS! descarted^^!) 
)

REM CASE IS THE KEY WASN'T FOUND 
:NOTFOUND
TIMEOUT /T 2 >NUL
ECHO [91mSORRY, THE PASSWORD WASN'T DISCOVERED[0m
CALL cscript voiceunsuccess.vbs //B 
GOTO EOF


REM CASE IF THE KEY WAS FOND
:FOUND
SET /A checker=!checker!+1 & IF !checker! EQU 1 (CALL cscript voicesuccess.vbs //B) 
ECHO 
ECHO [0mTHE PASSWORD IS [32m!PASS![0m^^!^^!^^!
@ECHO [93m
CHOICE /C OC /N /T 3 /D C  /M "PRESS O KEY TO DISMISS THE ALARM (C/o)-->"
IF %ERRORLEVEL% NEQ 1 (GOTO FOUND)
TIMEOUT /T 1 > nul
CLS
ECHO [33mCOPYING PASSWORD TO CLIPBOARD...
TIMEOUT /T 3 > NUL
ECHO !PASS! | CLIP
REM obteninendo nombres de archivos para borrarlos despues
unrar lb -p!PASS! palrar.rar> "%temp%\list.s"
FOR /F "tokens=* delims=" %%c IN (%temp%\list.s) DO (SET flist=%%c&&DEL /Q "%temp%\!flist!") 
DEL /Q "%temp%\list.s"


:EOF
ENDLOCAL
EXIT /B 0
