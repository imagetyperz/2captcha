@echo off
rem -------------------------
rem Imagetypers captcha gate
rem -------------------------
setlocal EnableDelayedExpansion

set hostsFile=%SYSTEMROOT%\System32\drivers\etc\hosts
set myServer=imagetyperz.xyz

if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit)

echo [+] Imagetypers captcha gate (hostsfile editor)
echo [+] --------------------------------------------

for /f "tokens=1,2 delims=[]" %%a IN ('ping -n 1 !myServer!') DO (
 if "%%b" NEQ "" set ip=%%b
)
echo [+] IP address %ip%
echo.>>%hostsFile%
echo #imagetypers gate>>%hostsFile%
echo !ip! 2captcha.com>>%hostsFile%
echo [+] Appended to hosts file: !hostsFile!
echo [+] Check page and make sure you get the message: Captcha gate enabled ^^!
echo [+] --------------------------------------------------------------------------------
timeout /t 10
start "" http://2captcha.com
pause
