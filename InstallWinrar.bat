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

PAUSE