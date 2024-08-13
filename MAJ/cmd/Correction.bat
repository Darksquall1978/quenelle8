@echo off
Color 0A & Mode con cols=120 lines=100
batbox /c 0X06 /d  

IF EXIST quenelle5 RMDIR /s /q quenelle5
timeout /t 2 /nobreak > nul
git clone https://github.com/Darksquall1978/quenelle5.git 
batbox /c 0X02 /d 
cd..

::@echo Optimisation du code

::IF EXIST clone.bat del clone.bat
::IF EXIST git.bat del git.bat
::IF EXIST git.exe del git.exe
::IF EXIST "Maj GIT".bat del "Maj GIT".bat
::IF EXIST modif.bat del modif.bat
::IF EXIST Reparer.bat del Reparer.bat
::IF EXIST Reparerfin.bat del Reparerfin.bat
::IF EXIST start-ssh-pageant.cmd del start-ssh-pageant.cmd
::IF EXIST start-ssh-agent.cmd del start-ssh-agent.cmd
::IF EXIST reparation.bat del reparation.bat

cd..
@echo off
@echo  suppression du .git
@echo off
IF EXIST .git RMDIR /s /q .git

@echo MAJ du --21/04/2023-- 17H15
::pause

timeout /t 1 /nobreak > nul

 @echo  Copie des fichiers source
robocopy maj\cmd\quenelle5\.git .git /mt /z /e
timeout /t 1 /nobreak > nul

robocopy maj\cmd\quenelle5 ./



@echo off
IF EXIST maj\cmd\quenelle5 RMDIR /s /q maj\cmd\quenelle5

::start maj\cmd\reparerfin.bat

start launcher.exe
exit
