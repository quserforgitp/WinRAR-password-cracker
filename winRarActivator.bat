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
CD "C:\Users\IBM ThinkPad X230\Desktop\winrarcracker"
CD
pause

REM CONSTANTS declaring variable for space control, AND for embellish text
SET spc=                
SET embellishInit=-----_
SET embellishFinal=_-----

REM CLEANING SCREEN 
CLS

REM THIS program logic
COLOR E
ECHO.
REM showing the rarreg.key content
ECHO %spc%%embellishInit%CHEKING THE RARREG.KEY FILE'S CONTENT%embellishFinal%
TIMEOUT /T 3 >NUL
CLS
COLOR A 
ECHO THIS IS THE CURRENT FILE'S CONTENT.
ECHO.
TYPE "%PROGRAMFILES%\WinRAR\rarreg.key"
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
:EOF
COLOR 
EXIT /B 0