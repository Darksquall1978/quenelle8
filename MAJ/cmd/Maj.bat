@echo off
Color 0e & Mode con cols=100 lines=40

IF EXIST quenelle5 RMDIR /s /q quenelle5
IF EXIST "Maj GIT".bat del "Maj GIT".bat
IF EXIST reparation.bat del reparation.bat
IF EXIST modif.bat del modif.bat
IF EXIST Reparer.bat del Reparer.bat
IF EXIST Reparerfin.bat del Reparerfin.bat
IF EXIST clone.bat del clone.bat

git pull

::@echo Mise a jour OK
timeout /t 2 /nobreak > nul

cd..
cd..

start Launcher.exe
exit


