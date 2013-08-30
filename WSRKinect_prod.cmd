cd c:\esther
goto boucle

:relance
echo "Lancement de WSRMacro_kinect"
start %cd%\bin\WSRMacro_Kinect.exe  -kinect

:boucle
ping localhost -n 15 >NUL

tasklist /fi "imagename eq WSRMacro_kinect.exe" | find "WSRMacro"
if %ERRORLEVEL% neq 0 goto relance

goto boucle
