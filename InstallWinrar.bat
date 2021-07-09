@ECHO OFF
TITLE WinrarInstallator
REM ----------------------------------------------------------------------------
REM |                                                                          |
REM |                                                                          |
REM |                 THIS PROGRAM IS A PART OF WINRARPASSCRACK SUITE          |
REM |                 AUTHOR: AUTHOR                                           |
REM |                 GITHUB:                                                  |
REM |                 THIS PROGRAM WAS CREATED FOR MAKE THE WINRAR INSTALLATION|
REM |                 WHICH IS REQUIRED TO MAKE THE BRUTE FORCE ATTACK         |
REM |                                                                          |
REM |                                                                          |
REM |                                                                          |
REM |                                                                          |                                                            
REM ----------------------------------------------------------------------------

REM VALIDATING IF ANY ARGUMENT WAS PASSED AS PARAMETER, and redirecting to proccess
SET param=%1
IF [%param%]==[] (COLOR A &&ECHO there are no parameters... going to menu &&TIMEOUT /T 4 >NUL)
IF [%param%]==[S] (GOTO procInstallSpanishVersion)
IF [%param%]==[E] (GOTO procInstallEnglishVersion)

REM CLEANING THE SCREEN
CLS

REM CONSTANTS declaring variable for space control, AND for embellish text
SET spc=                
SET embellishInit=-----_
SET embellishFinal=_-----

REM MENU promting to user select the version of winrar that he wnats to install..
:MAIN_SELECTION
CLS
COLOR e 
ECHO %spc%%embellishInit%WHICH VERSION DO YOU PREFER?%embellishFinal%
ECHO.
ECHO.
ECHO.
ECHO ^|LANGUAGE ^|%spc%^|VERSION^|%spc%^|ARCHITECTURE^|
ECHO ^|1)SPANISH^|%spc%^|6.01   ^|%spc%^|   x64      ^|
ECHO ^|2)ENGLISH^|%spc%^|6.01   ^|%spc%^|   x64      ^|
ECHO.
ECHO.
ECHO.

REM GETTING the user's answer and installing the respective version
SET /P iSelectVersion="TYPE THE RESPECTIVE NUMBER (1 or 2)->"
REM CONDITIONALS to redirect in case of invalid input
IF NOT [%iSelectVersion%]==[1] IF NOT [%iSelectVersion%]==[2] (goto ErrHandiSelectVersion)
REM CONDITIONALS to redirect to the next proccess
IF [%iSelectVersion%]==[1] (goto procInstallSpanishVersion) 
IF [%iSelectVersion%]==[2] (goto procInstallEnglishVersion) 

REM Handling the inputs error that can occur
:ErrHandiSelectVersion
CLS
COLOR C
ECHO.
ECHO.
ECHO %spc%%embellishInit%TYPE 1 OR 2, DON'T TYPE ANY OTHER VALUE OR CHARACTER!!!!%embellishFinal%
ECHO.
ECHO.
ECHO PRESS ANY KEY TO REDIRECT TO MENU
PAUSE>NUL
GOTO MAIN_SELECTION


REM PROCCESS make the spanish version installation
:procInstallSpanishVersion
COLOR 3
ECHO.
ECHO.
ECHO %spc%%embellishInit%MAKING THE SPANISH VERSION INSTALLATION (YOU WILL SEE THE PROGRAM WIZARD)%embellishFinal%
TIMEOUT /T 4 >NUL
CALL winrar-x64-601es.exe
GOTO callprocwinRaractivatorlink

REM PROCCESS make the english version installation
:procInstallEnglishVersion
COLOR 3
ECHO.
ECHO. 
ECHO %spc%%embellishInit%MAKING THE ENGLISH VERSION INSTALLATION (YOU WILL SEE THE PROGRAM WIZARD)%embellishFinal%
TIMEOUT /T 4 >NUL
CALL winrar-x64-601en.exe
GOTO :callprocwinRaractivatorlink

REM prompting to user if he wants to activate winrar 
:callprocwinRaractivatorlink
REM STORING THE currentdir to pass it as argument to the activator
CD > "%userprofile%\currentdir.txt"
echo contenido de curentdir en userprofile&&type "%userprofile%\currentdir.txt"
pause 
CHOICE /C YN /N /T 10 /D N /M "I KNOW, I SHOULDN'T QUESTION THIS TO YOU BUT... YOU WANT ME TO ACTIVATE WINRAR PERMANENTLY? (N/y)-->"
IF %ERRORLEVEL% EQU 1 (CALL winRarActivatorlink.lnk&&DEL "%userprofile%\currentdir.txt"&&GOTO EOF) ELSE (GOTO :noSelected)

:noSelected
ECHO OK GOOD CHOICE... SEE YA ^!!!!!!
TIMEOUT /T 4 >NUL
GOTO EOF

REM the end of file
:EOF
PAUSE
CLS
EXIT /B 0