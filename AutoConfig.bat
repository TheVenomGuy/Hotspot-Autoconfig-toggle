@echo off
setlocal
set "WIFI=Wi-Fi"

:: Check for admin privileges
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Requesting Administrator privileges...
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

:menu
cls
echo ================================
echo       WLAN AutoConfig
echo ================================
echo.
echo 1. Disable WLAN AutoConfig
echo 2. Enable WLAN AutoConfig
echo 3. Exit
echo.
set /p choice="Choose an option [1-3]: "

if "%choice%"=="1" goto disable
if "%choice%"=="2" goto enable
if "%choice%"=="3" goto end

echo.
echo Invalid choice.
pause
goto menu

:disable
echo.
echo Disabling WLAN AutoConfig...
netsh wlan set autoconfig enabled=no interface="%WIFI%"
echo.
pause
goto menu

:enable
echo.
echo Enabling WLAN AutoConfig...
netsh wlan set autoconfig enabled=yes interface="%WIFI%"
echo.
pause
goto menu

:end
exit /b
