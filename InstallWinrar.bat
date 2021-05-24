@ECHO OFF
TITLE WinrarInstallator
REM CLEARING THE SCREEN
CLS

REM CONSTANTS delclaring variable for space control, AND for embellish text
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
PAUSE>nul
GOTO MAIN_SELECTION


REM PROCCESS make the spanish version installation
:procInstallSpanishVersion
COLOR 3
ECHO spanish ver installation

pause
GOTO EOF

REM PROCCESS make the english version installation
:procInstallEnglishVersion
COLOR 3 
ECHO english version installation
pause
GOTO EOF

REM the end of file
:EOF

REM this pause has been setted in order to control the program flow until finalized
PAUSE