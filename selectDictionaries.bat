REM CALLED FROM [main.bat] ARGS [] LINE [42]
@ECHO OFF
REM ----------------------------------------------------------------------------
REM |                                                                          |
REM |                                                                          |
REM |                 THIS PROGRAM IS A PART OF WINRARPASSCRACK SUITE          |
REM |                 AUTHOR: AutHOr                                           |
REM |                 GITHUB: https://github.com/quserforgitp                  |
REM |                 THIS PROGRAM WAS CREATED FOR MAKE THE BFA TO A WINRAR    |
REM |                                                                          |
REM |                                                                          |
REM |                                                                          |
REM |                                                                          |
REM |                                                                          |                                                            
REM ----------------------------------------------------------------------------

REM CONSTANTS declaring CONSTANTS for space control, AND for embellish text
SET spc=                
SET embellishInit=-----_
SET embellishFinal=_-----
SET FLG=[92m
SET FDG=[32m
SET FDB=[34m
SET FDY=[33m


TITLE %spc%%embellishInit%BFA ATTACKER (THE REAL CRACKER)%embellishFinal%
CLS

REM INITIALIZING CRACKING PROCESS 

ECHO %FDY%%spc%%embellishInit%WHICH WILL BE THE FIRST DICTIONARY?%embellishFinal%
ECHO.
ECHO.
ECHO.
ECHO %FLG%^|   TYPE   ^|%spc%^|  VERSION     ^|%spc%^| (DAYS:HOURS:MIN:SEC) ^|
ECHO %FLG%^|S)SPANISH ^|%spc%^|   1.0        ^|%spc%^|    00:   00: 20: 30  ^|
ECHO %FLG%^|E)ENGLISH ^|%spc%^|   1.0        ^|%spc%^|    00:   00: 15: 30  ^|
ECHO %FLG%^|A)  ALL   ^|%spc%^| NO AVAILABLE ^|%spc%^|    00:   03: 30: 00  ^|
ECHO %FDB%
ECHO.
ECHO.


CHOICE /C SEA /N /T 20 /D S /M " SELECT THE DICTIONARY (S/e/a)? S = SPANISH ; E =  ENGLISH ; A = ALL -->"
IF %ERRORLEVEL% EQU 1 (SET DICTO=SPDICTO)
IF %ERRORLEVEL% EQU 2 (SET DICTO=ENDICTO)
IF %ERRORLEVEL% EQU 3 (SET DICTO=ALLDICTO)
ECHO [0m

:GETFILE
SET RFILE=
CLS
SET /P RFILE="DRAG 'N DROP THE RAR FILE HERE OR ENTER THE ENTIRE PATH --> "
IF [%RFILE%] EQU [] (ECHO WE NEED THE FILE'S PATH TO MAKE THE ATTACK&&ECHO [92mPRESS ANY KEY TO CONTINUE[0m&&PAUSE>NUL &&GOTO GETFILE) ELSE (GOTO %DICTO%)


:SPDICTO
CALL cracker %RFILE% %DICTO%
REM CONTINUE FROM [cracker.bat] LINE [43 -> EOF]
GOTO EOF

:ENDICTO
CALL cracker %RFILE% %DICTO%
REM CONTINUE FROM [cracker.bat] LINE [43 -> EOF]
GOTO EOF

:ALLDICTO
CALL cracker %RFILE% %DICTO%
REM CONTINUE FROM [cracker.bat] LINE [43 -> EOF]
GOTO EOF

:EOF
COLOR 
EXIT /B 0