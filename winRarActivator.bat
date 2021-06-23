@ECHO OFF
TITLE WinrarActivator
REM ----------------------------------------------------------------------------
REM |                                                                          |
REM |                                                                          |
REM |                 THIS PROGRAM IS A PART OF WINRARPASSCRACK SUITE          |
REM |                 AUTHOR: AutHOr                                           |
REM |                 GITHUB: https://github.com/quserforgitp                  |
REM |                 THIS PROGRAM WAS CREATED TO MAKE THE WINRAR ACTIVATION   |
REM |                 IN ORDER TO MAKE MORE COMFORTABLE THE USE.               |
REM |                                                                          |
REM |                                                                          |
REM |                                                                          |
REM |                                                                          |                                                            
REM ----------------------------------------------------------------------------

REM THIS program doesn't receive arguments
REM changing to the working directory
SET /P cudi=""<"%userprofile%\currentdir.txt"
ECHO YOU ARE ON %cudi%
echo el contenido es &&type "%userprofile%\currentdir.txt"
echo en el directorio hay 
dir "%userprofile%"
CD "%cudi%"
ECHO PRESS ANY KEY TO CONTINUE...
PAUSE>NUL

REM CONSTANTS declaring variable for space control, AND for embellish text
SET spc=                
SET embellishInit=-----_
SET embellishFinal=_-----

REM CLEANING SCREEN 
CLS

REM THIS program logic
COLOR E
ECHO.

REM checking if the rarreg.key exists 
IF NOT EXIST "%PROGRAMFILES%\WinRAR\Srarreg.key" (GOTO ACTIVATION) ELSE (GOTO KeyIsPresent)


:ACTIVATION
REM showing the rarreg.key content
ECHO %spc%%embellishInit%ADDING THE LICENSIG KEY TO "PROGRAMFILES"\WinRAR\%embellishFinal%
TIMEOUT /T 3 >NUL
CLS
COLOR A 
ECHO.
ECHO.
ECHO CHANGING THE CONTENT TO ANOTHER LICENSED... PRESS ANY KEY TO CONTINUE
PAUSE>NUL 
CLS

REM changing the rarreg.key content (activating)
XCOPY rarreg.key "%PROGRAMFILES%\WinRAR\" /Y
echo %cd% current dir
echo %errorlevel%
REM CAPTURING THE ERROR IN CASE OF ACCESS DENIED -> ERROR CODE =4 nad going to procAccessDenied
IF %ERRORLEVEL% EQU 4 (GOTO procAccessDenied)
REM in case the reeplace was succesful
ECHO DONE!!! ..PRESS ANY KEY TO CONTINUE.. 
PAUSE>NUL

REM showing the new content
ECHO THIS IS THE NEW FILE'S CONTENT
ECHO.
TYPE "%PROGRAMFILES%\WinRAR\rarreg.key"
TIMEOUT /T 3 >NUL
CLS
COLOR 3
ECHO CALLING WINRAR IN ORDER TO CHECK IF IT'S ALREADY LICENSED... WHEN THE PROGRAM IS OPEN, GO TO HELP then GO TO ABOUT WINRAR, you must see if is licensed.
ECHO TYPE ANY KEY WHEN YOU ARE READY...
PAUSE>NUL
CALL "%programfiles%\winrar\winrar.exe"
CLS
ECHO EXITING HOPE YOU GET FUN...!!!!
TIMEOUT /T 3 >NUL
ECHO.
CLS
GOTO EOF

REM END
:procAccessDenied
COLOR C 
ECHO %spo%%embellishInit%THE ACCESS TO THE PATH WAS DENIED TRY TO EXECUTE THIS AS ADMIN%embellishFinal%
ECHO PRESS ANY KEY TO CONTINUE...
PAUSE>NUL
GOTO EOF

:KeyIsPresent
ECHO THE KEY IS ALREADY PRESENT
TIMEOUT /T 5 >NUL

:EOF
COLOR 
cls
EXIT /B 0