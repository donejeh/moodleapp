@echo off
REM Windows batch script to set up Android environment variables
REM Run this before building Android apps

set ANDROID_HOME=%LOCALAPPDATA%\Android\Sdk
set ANDROID_SDK_ROOT=%LOCALAPPDATA%\Android\Sdk

REM Add Android SDK tools to PATH
set PATH=%ANDROID_HOME%\platform-tools;%ANDROID_HOME%\tools;%ANDROID_HOME%\tools\bin;%PATH%

echo ANDROID_HOME set to: %ANDROID_HOME%
echo ANDROID_SDK_ROOT set to: %ANDROID_SDK_ROOT%
echo.
echo Environment variables set for this session.
echo To make permanent, add these to System Environment Variables:
echo   ANDROID_HOME = %ANDROID_HOME%
echo   ANDROID_SDK_ROOT = %ANDROID_HOME%
echo   Add to PATH: %ANDROID_HOME%\platform-tools
echo   Add to PATH: %ANDROID_HOME%\tools
echo   Add to PATH: %ANDROID_HOME%\tools\bin

