@ECHO OFF

call "%CD%\bin\service.config.bat"

IF %SERVICE_WIN% EQU 64 (
SET NSSM="%CD%\bin\nssm64.exe"
) ELSE (
  SET NSSM="%CD%\bin\nssm32.exe"
)

ECHO REMOVING SERVICE %SERVICE_NAME%

%NSSM% stop %SERVICE_NAME%
%NSSM% remove %SERVICE_NAME% confirm

<<<<<<< HEAD
pause
=======
pause
>>>>>>> 401d47d71a988e49f8f73fdf40548ad4a2a714b6
