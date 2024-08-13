@echo off
Color 0e & Mode con cols=100 lines=40

IF EXIST quenelle5 RMDIR /s /q quenelle8
IF EXIST "Maj GIT".bat del "Maj GIT".bat

IF EXIST clone.bat del clone.bat

git pull

::@echo Mise a jour OK
timeout /t 2 /nobreak > nul

cd..
cd..

start Launcher.exe
exit


