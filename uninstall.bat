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

pause
