@echo off
:loop  
timeout -t 1 >nul  
for %%i in (looper.text) do echo %%~ai|find "a">nul || goto :loop
echo file was changed
Pause
attrib -a looper.txt
goto :loop