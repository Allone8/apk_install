@echo off
set apk_folder=%cd%\apk
set adb=%cd%\tools\Windows\adb.exe

for %%f in ("%apk_folder%\*.apk") do (
    echo Installing "%%~nxf"...
    %adb% install -r -d "%%~f"
)
echo All APKs installed!
pause
