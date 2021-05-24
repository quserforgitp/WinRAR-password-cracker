@ECHO OFF
TITLE WinrarInstallator
REM CLEARING THE SCREEN
CLS

REM delclaring variable for space control, AND for embellish text
SET spc=                
SET embellishInit=-----_
SET embellishFinal=_-----

REM promting to user select the version of winrar that he wnats to install..
COLOR e 
ECHO %spc%%embellishInit%WHICH VERSION DO YOU PREFER?%embellishFinal%
ECHO.
ECHO.
ECHO.
ECHO ^|LANGUAGE ^|%spc%^|VERSION^|%spc%^|ARCHITECTURE^|
ECHO ^|1)SPANISH^|%spc%^|6.01   ^|%spc%^|   x64      ^|
ECHO ^|2)ENGLISH^|%spc%^|6.01   ^|%spc%^|   x64      ^|


REM this pause has been setted in order to control the program flow until finalized
PAUSE