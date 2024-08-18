@echo off
Color 0A & Mode con cols=120 lines=100
batbox /c 0X06 /d  

IF EXIST quenelle8 RMDIR /s /q quenelle8
timeout /t 2 /nobreak > nul
git clone https://github.com/Darksquall1978/quenelle8.git 
batbox /c 0X02 /d 
cd..




cd..
@echo off
@echo  suppression du .git
@echo off
IF EXIST .git RMDIR /s /q .git

@echo MAJ du --18/08/2024-- 10H43


timeout /t 1 /nobreak > nul

 @echo  Copie des fichiers source
robocopy maj\cmd\quenelle8\.git .git /mt /z /e
timeout /t 1 /nobreak > nul

robocopy maj\cmd\quenelle8 ./ /mt /z /e

::pause

@echo off
IF EXIST maj\cmd\quenelle8 RMDIR /s /q maj\cmd\quenelle8

start launcher.exe
exit
