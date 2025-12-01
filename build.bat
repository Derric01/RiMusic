@echo off
REM RiMusic Build Script for Windows
REM This script helps build RiMusic APK files

echo 🎵 RiMusic Fork - Build Script
echo ===============================

REM Check if Java is installed
java -version >nul 2>&1
if errorlevel 1 (
    echo ❌ Java is not installed or not in PATH
    echo Please install JDK 11 or higher
    exit /b 1
)

echo ✅ Java version:
java -version

REM Check if ANDROID_HOME is set
if "%ANDROID_HOME%"=="" (
    echo ⚠️  ANDROID_HOME not set. Please set it to your Android SDK path
    echo Example: set ANDROID_HOME=C:\path\to\android-sdk
)

echo.
echo 🔨 Building RiMusic...
echo.

REM Clean previous builds
echo 🧹 Cleaning previous builds...
gradlew.bat clean

REM Build debug APK
echo 🔨 Building debug APK...
gradlew.bat assembleDebug

if errorlevel 0 (
    echo.
    echo ✅ Build successful!
    echo 📱 APK location: composeApp\build\outputs\apk\debug\
    echo.
    echo To install on connected device, run:
    echo    gradlew.bat installDebug
    echo.
    echo To build release APK, run:
    echo    gradlew.bat assembleRelease
) else (
    echo.
    echo ❌ Build failed!
    echo Please check the error messages above and fix any issues.
    echo.
    echo Common issues:
    echo - Make sure Android SDK is installed and ANDROID_HOME is set
    echo - Ensure you have the required Android SDK versions
    echo - Check that all dependencies are available
)

pause