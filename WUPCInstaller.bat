title WUPCInstaller
net session >nul 2>&1
if %errorlevel% neq 0 (
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)
mkdir %WUPCTEMP%
curl -L "https://github.com/HeitorGit358/cloud/releases/download/cloud/wucltux.dll" -o "%TEMP%\wucltux.dll"
curl -L "https://github.com/HeitorGit358/cloud/releases/download/cloud/wucltux.dll.mui" -o "%TEMP%\wucltux.dll.mui"

move /Y "%TEMP%\wucltux.dll.mui" "%SystemRoot%\System32\en-US\"
move /Y "%TEMP%\wucltux.dll" "%SystemRoot%\System32\"
regsvr32 C:\Windows\System32\wucltux.dll
explorer.exe shell:::{36EEF7DB-88AD-4E81-AD49-0E313F0C35F8}
exit /b