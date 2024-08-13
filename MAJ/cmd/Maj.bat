@echo off
Color 0e & Mode con cols=100 lines=40

IF EXIST quenelle8 RMDIR /s /q quenelle8

git pull

::@echo Mise a jour OK
timeout /t 2 /nobreak > nul

cd..
cd..

start Launcher.exe
exit


