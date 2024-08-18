


@echo off
Color 0A & Mode con cols=90 lines=60
git clone https://github.com/Darksquall1978/quenelle8.git 
cd..
cd..
IF EXIST .git RMDIR /s /q .git

 @echo  Copie des fichiers source
robocopy maj\cmd\quenelle8\.git .git /mt /z /e
timeout /t 1 /nobreak > nul

robocopy maj\cmd\quenelle8 ./ /mt /z /e

::pause

@echo off
IF EXIST maj\cmd\quenelle8 RMDIR /s /q quenelle8
dir
pause
exit


